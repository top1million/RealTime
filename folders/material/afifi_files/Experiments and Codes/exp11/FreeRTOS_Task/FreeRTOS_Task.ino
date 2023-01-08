/*
 * Example of a basic FreeRTOS queue
 * https://www.freertos.org/Embedded-RTOS-Queues.html
 */

// Include Arduino FreeRTOS library
#include <Arduino_FreeRTOS.h>

// Include queue support
#include <queue.h>

#include <semphr.h> 
// Define a Array
int pinReadArray[4]={0,0,0,0};
SemaphoreHandle_t xSerialSemaphore;

//Function Declaration
void TaskBlink1(void *pvParameters);
void TaskBlink2(void *pvParameters);
void TaskBlink3(void *pvParameters);
void TaskQueue(void *pvParameters);

/* 
 * Declaring a global variable of type QueueHandle_t 
 * 
 */
QueueHandle_t arrayQueue;

void setup() {

if ( xSerialSemaphore == NULL ) 
 {
   // Create a mutex semaphore we will use to manage the Serial Port
   xSerialSemaphore = xSemaphoreCreateMutex();
   if ( ( xSerialSemaphore ) != NULL )
   // Make the Serial Port available for use, by "Giving" 
   // the Semaphore.
   xSemaphoreGive( ( xSerialSemaphore ) ); 
 }


  
Serial.begin(9600);
 /**
   * Create a queue.
   * https://www.freertos.org/a00116.html
   */
arrayQueue=xQueueCreate(10, //Queue length
                        sizeof(int)); //Queue item size
if(arrayQueue!=NULL){

  // Create task that consumes the queue if it was created.
  xTaskCreate(TaskQueue,// Task function
              "QueueTask",// Task name
              128,// Stack size 
              NULL,
              1,// Priority
              NULL);

   xTaskCreate(TaskBlink1,// Task function
              "Blink1", // Task name
              128,// Stack size 
              NULL,
              1,// Priority
              NULL);
   xTaskCreate(TaskBlink2,// Task function
              "Blink2", // Task name
              128,// Stack size 
              NULL,
              1,// Priority
              NULL);
   xTaskCreate(TaskBlink3,// Task function
              "Blink3", // Task name
              128,// Stack size 
              NULL,
              1,// Priority
              NULL);

}

}

void loop() {}


/**
 * Serial task.
 * Prints the received items from the queue to the serial monitor.
 */
void TaskQueue(void *pvParameters){
  (void) pvParameters;

  int var = 500;
  for (;;){
//     if ( xSemaphoreTake( xSerialSemaphore, ( TickType_t ) 5 ) == pdTRUE)
//     {
        for(int i = 1; i < 6; i++)
        {
          int temp = rand()*1000;
          xQueueSend(arrayQueue,&temp,portMAX_DELAY);
        }
//        xSemaphoreGive( xSerialSemaphore ); 
//     }
    
    vTaskDelay(1000/portTICK_PERIOD_MS);
  }
}

/* 
 * Blink task. 
 * See Blink_AnalogRead example. 
 */
void TaskBlink1(void *pvParameters){
  (void) pvParameters;
  int LED = 7;
  pinMode(LED,OUTPUT);
  digitalWrite(LED,LOW);
  int delay_period = 100;
  
  for (;;){
    for(int i = 0; i < 5000/delay_period;i++)
    {
      digitalWrite(LED,HIGH);
      vTaskDelay(delay_period/portTICK_PERIOD_MS);
      digitalWrite(LED,LOW);
      vTaskDelay(delay_period/portTICK_PERIOD_MS);
    }
//    if ( xSemaphoreTake( xSerialSemaphore, ( TickType_t ) 5 ) == pdTRUE)
//    {
      xQueueReceive(arrayQueue,&delay_period,portMAX_DELAY);
      Serial.print("LED1");
      Serial.print(delay_period);
      Serial.print("|");
//      xSemaphoreGive( xSerialSemaphore ); 
//    }
  }
}
void TaskBlink2(void *pvParameters){
  (void) pvParameters;
  int LED = 9;
  pinMode(LED,OUTPUT);
  digitalWrite(LED,LOW);
  int delay_period = 200;
  for (;;){
    for(int i = 0; i < 5000/delay_period;i++)
    {
      digitalWrite(LED,HIGH);
      vTaskDelay(delay_period/portTICK_PERIOD_MS);
      digitalWrite(LED,LOW);
      vTaskDelay(delay_period/portTICK_PERIOD_MS);
    }
//    if ( xSemaphoreTake( xSerialSemaphore, ( TickType_t ) 5 ) == pdTRUE)
//    {
      xQueueReceive(arrayQueue,&delay_period,portMAX_DELAY);
      Serial.print("LED2");
      Serial.print(delay_period);
      Serial.print("|");
//      xSemaphoreGive( xSerialSemaphore ); 
//    }
  }
}
void TaskBlink3(void *pvParameters){
  (void) pvParameters;
  int LED = 11;
  pinMode(LED,OUTPUT);
  digitalWrite(LED,LOW);
  int delay_period = 300;
  for (;;){
    for(int i = 0; i < 5000/delay_period;i++)
    {
      digitalWrite(LED,HIGH);
      vTaskDelay(delay_period/portTICK_PERIOD_MS);
      digitalWrite(LED,LOW);
      vTaskDelay(delay_period/portTICK_PERIOD_MS);
    }
//    if ( xSemaphoreTake( xSerialSemaphore, ( TickType_t ) 5 ) == pdTRUE)
//    {
      Serial.print("LED3");
      xQueueReceive(arrayQueue,&delay_period,portMAX_DELAY);
      Serial.print(delay_period);
      Serial.print("|");
//      xSemaphoreGive( xSerialSemaphore ); 
//    }
  }
}
