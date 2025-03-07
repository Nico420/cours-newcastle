
//Define a mtype that describe the choices customers have.
mtype = {starter,main,desert,drink}

//We use two channels : one for send the order from the customer to the chief, the other for sending the meal from chief to customers.
chan order_make = [20] of { mtype, int };
chan service_channel = [20] of { mtype, int };
//To be sure that a customer take his place, we had the id of the customer with each meal in the service channel.


//This proctype define the chief
proctype chief(){
	//Local variables, use for reading the order channel.
	int id;
	mtype plat;
	printf("\nChief proctype launched. \n");
	//We launch here a loop which is gonna check if an order arrive
	end: do
	:: order_make?[plat,id] ->
		order_make?plat,id;
		printf("\nNew meal in the queue : %e for customer[%d].\n",plat,id);
		service_channel!plat,id;
	od;

}

proctype customer(){
	//Local variables for reading the service_channel.
	mtype plat;
	int id_in_queue;

	//Indicate if the customer already placed an order.
	bool wait_order = false;

	printf("\nI am the customer %d\n\n",_pid);

	loopMain:
		//launch a loop for the customer
	do	
		::wait_order -> goto pick_order;
		::else -> goto makeOrder_or_leave;
	od;
	
	pick_order:
	//We check the service channel until we find the good id.
	do
	::service_channel?plat,id_in_queue;
		if
		:: id_in_queue==_pid -> 
			printf("\nCustomer %d picked meal '%e' (associated id : %d)\n",_pid,plat,id_in_queue);
			wait_order=false;
			goto loopMain;
		::else -> service_channel!plat,id_in_queue;
		fi;
	od;
	
	makeOrder_or_leave:
	printf("\nI will maybe make an order or leave (customer %d)\n",_pid);
	do
	:: order_make!starter,_pid;goto makeOrder;
	:: order_make!main,_pid;goto makeOrder;
	::order_make!desert,_pid;goto makeOrder;
	::order_make!drink,_pid;goto makeOrder;
	::!wait_order -> goto leave;
	od;
	makeOrder:
	wait_order=true;
	goto loopMain;
	

	leave:
printf("leaving, customer %d\n",_pid);
	
}

init {
int nb_customer=2;
run chief();	
do	
:: (nb_customer>0) -> run customer();nb_customer--;
:: (nb_customer == 0) -> break
od
}
