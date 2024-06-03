
#include "xparameters.h"
#include "xgpio.h"
#include "xil_printf.h"

XGpio Gpio0; /* The Instance of the 4-bits LEDs */
XGpio Gpio1; /* The Instance of the 4-bits Switch */

int main(void)
{
	int Status;
	xil_printf("Gpio Switch and LED\r\n");

	/* Initialize the GPIO drivers */
	Status = XGpio_Initialize(&Gpio0, XPAR_GPIO_0_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		xil_printf("Gpio Initialization Failed\r\n");
		return XST_FAILURE;
	}
	Status = XGpio_Initialize(&Gpio1, XPAR_GPIO_1_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		xil_printf("Gpio Initialization Failed\r\n");
		return XST_FAILURE;
	}

	/* Set the direction for all signals */
	XGpio_SetDataDirection(&Gpio0, 1, 0x0);
	XGpio_SetDataDirection(&Gpio1, 1, 0xf);

	/* Loop forever detect switch and blink the corresponding LED */
	u32 sw_data;
	while (1) {
		/* Read the data from Switch */
		sw_data = XGpio_DiscreteRead(&Gpio1, 1);
		/* Set the LED to the switch value */
		switch(sw_data){
			case 0:
				XGpio_DiscreteWrite(&Gpio0, 1, 1);
				break;
			case 1:
				XGpio_DiscreteWrite(&Gpio0, 1, 2);
				break;
			case 2:
				XGpio_DiscreteWrite(&Gpio0, 1, 4);
				break;
			case 3:
				XGpio_DiscreteWrite(&Gpio0, 1, 8);
				break;
			default:
				XGpio_DiscreteWrite(&Gpio0, 1, 0);
				break;
		}

	}

}
