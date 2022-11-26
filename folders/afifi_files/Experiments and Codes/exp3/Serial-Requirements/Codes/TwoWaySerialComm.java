package twowayserialcomm;

import gnu.io.CommPort;
import gnu.io.CommPortIdentifier;
import gnu.io.SerialPort;
import java.io.InputStream;
import java.io.OutputStream;

public class TwoWaySerialComm { 
	public TwoWaySerialComm() { 
	super();
	} 
	
	void connect ( String portName ) throws Exception { 
                boolean send=false;
		CommPortIdentifier portIdentifier = CommPortIdentifier.getPortIdentifier(portName);
		if ( portIdentifier.isCurrentlyOwned() ) { 
			System.out.println("Error: Port is currently in use");
		} 
		else { //outer else
		CommPort commPort = portIdentifier.open(this.getClass().getName(),2000);
		if ( commPort instanceof SerialPort ) { //outer if
			SerialPort serialPort = (SerialPort) commPort;
			serialPort.setSerialPortParams(9600,SerialPort.DATABITS_8,SerialPort.STOPBITS_1,SerialPort.PARITY_NONE);
			InputStream in = serialPort.getInputStream();
			OutputStream out = serialPort.getOutputStream();
			 byte[] buffer = new byte[1024];
			 int len = -1;
			 byte cmd='d';
			while(true) { 
				if(!send && (len = in.read(buffer))!=-1) { //start of if
                                    cmd= buffer[0];
                                    send=true;
                                    System.out.println("Received: " + (char) cmd);
                                    Thread.sleep(1000);
				} //end of if 
                                else if(send){
                                    if(cmd=='g') { out.write(cmd='e'); send=false; Thread.sleep(1000);}
                                    else { out.write(cmd='d'); send=false; Thread.sleep(1000);}
                                    System.out.println("Sent: " + (char) cmd);
                                }
			} //end of while
		} //outer if
		else 
		System.out.println("Error: Only serial ports are handled by this example.");
		} //outer else  
	} 

	public static void main ( String[] args ) { 
		try { (new TwoWaySerialComm()).connect("COM7");
		} 
		catch ( Exception e ) { 
		e.printStackTrace();
		} 
	} //end of main
} //end of class