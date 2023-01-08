
#include <stdio.h>
#include <stdlib.h>
#include <linux/ipc.h>
#include <linux/msg.h>
#include <fcntl.h>


/*THEY MUST HAVE THE SAME KEY*/
#define KEY 500
#define PUBLIC_PORT 1
struct msg
{
	long int type;
	char message[1024]; // actual message 
	int marks[4];
	int calc_avg;
	int submitted_avg;
	int final_mark;
	int pid; // to know to which client to return the file data
}p;


int main()
{

	pid_t s1,s2,ta;
	int p,n,fd,m1;
	p = msgget(KEY,0666|IPC_CREAT); //create new queue char [1032] => 1024 => a, 
	
	s1 = fork();
	if(s1 < 0)
	{
		printf("error creating student 1\n");
		return 1;
	}
	else if(s1 == 0)
	{
		struct msg m2;
		srand(time(NULL));
		m2.pid = getpid();
		m2.type = 1;//teacher assistant
		for (int i = 0; i < 4; i++)
		{
			//num = (rand() %(upper - lower + 1)) + lower;
			m2.marks[i] = (rand()%(99 - 10 + 1)) + 10;
		}
		m2.submitted_avg = (rand()%(99 - 10 + 1)) + 10;
		m2.type = 1;
		msgsnd(m2, &p, sizeof(p), 0);
	}
	else
	{
		s2 = fork();
		if(s2 < 0)
		{
			printf("error creating student 2\n");
			return 1;
		}
		else if(s2 == 0)
		{
			struct msg m2;
			srand(time(NULL));
			m2.pid = getpid();
			m2.type = 1;//teacher assistant
			for (int i = 0; i < 4; i++)
			{
				//num = (rand() %(upper - lower + 1)) + lower;
				m2.marks[i] = (rand()%(99 - 10 + 1)) + 10;
			}
			m2.submitted_avg = (rand()%(99 - 10 + 1)) + 10;
			m2.type = 1;
			msgsnd(m2, &p, sizeof(p), 0);
		}
		else
		{
			ta = fork();
			if(ta < 0)
			{
				printf("error creating teacher assistant\n");
				return 1;
			}
			else if(ta == 0)
			{
				while(1)
				{
					struct msg m;
					struct msg tm;
					msgrcv(m, &p, sizeof(p), 2, 0); 
					tm.calc_avg = m.marks[0]+ m.marks[1]+ m.marks[2]+ m.marks[3];
					tm.calc_avg/=4;
					int mark = tm.calc_avg - tm.submitted_avg;
					if(mark < 0)
					{
						tm.final_mark = 100 + mark;
					}
					else
					{
						tm.final_mark = 100 - mark;
					}
					tm.pid = m.pid;
					tm.type = 3;
					msgsnd(tm, &p, sizeof(p), 0);
					
				}
			}
			else
			{
				struct msg m; 
				while(1)
				{
					msgrcv(m, &p, sizeof(p), 1, 0); 
					msgsnd(m, &p, sizeof(p), 2, 0); 
					msgrcv(m, &p, sizeof(p), 3, 0); 
					
					printf("ID = %d, Array = {%d,%d,%d,%d}, AVG_CALC = %d\t Submitted Avg = %d\t Final Mark = %d",m.pid,m.marks[0],m.marks[1],m.marks[2],m.marks[3]),m.calc_avg,m.submitted_avg,m.final_mark;
				}
			}
			
		}
	}
}
