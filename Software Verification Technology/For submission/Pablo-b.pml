
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
	int order_starter = 0;
	int order_main = 0;
	int order_desert = 0;
	int order_drink = 0;
	
	//Check what the customer picks
	chan order_pick = [4] of  {mtype};
	
	int number_of_order=0;

	
	//Indicate if the customer already placed an order.
	bool wait_order = false;

	
	printf("\nI'm the customer %d\n\n",_pid);

	main:
		//Verification for the number of order
		assert(number_of_order<5 
			&& order_starter<2 
			&& order_main<2
			&& order_desert<2
			&& order_drink<2);
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
			order_pick!plat;
			goto main;
		::else -> service_channel!plat,id_in_queue;
		fi;
	od;
	
	makeOrder_or_leave:
	printf("\nI will maybe make an order or leave\n");
	do
	:: (order_starter==0) && number_of_order<4 -> order_starter++;order_make!starter,_pid;goto makeOrder;
	:: (order_main==0) && number_of_order<4 -> order_main++;order_make!main,_pid;goto makeOrder;
	:: (order_desert==0) && number_of_order<4 -> order_desert++;order_make!desert,_pid;goto makeOrder;
	:: (order_drink==0) && number_of_order<4 -> order_drink++;order_make!drink,_pid;goto makeOrder;
	::!wait_order -> goto leave;
	od;
	makeOrder:
	number_of_order++;
	wait_order=true;
	goto main;
	

	leave:
printf("leaving, customer %d\n",_pid);
	
}

init {
int nb_customer=6;
run chief();	
do	
:: (nb_customer>0) -> run customer();nb_customer--;
:: (nb_customer == 0) -> break
od
}
