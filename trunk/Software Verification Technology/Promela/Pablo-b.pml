
//Define a mtype that describe the choices customers have.
mtype = {starter,main,desert,drink}

//We use two channels : one for send the order from the customer to the chief, the other for sending the meal from chief to customers.
chan order_make = [16] of { mtype, int };
chan service_channel = [16] of { mtype, int };


//This proctype define the chief
proctype chief(){
	//Local variables, use for reading the order channel.
	int id;
	mtype plat;
	printf("\nI'm the chief\n");
	do
	:: order_make?plat,id;
		printf("\nI send this order in the queue : %e %d \n",plat,id);
		service_channel!plat,id;
	od;

}

proctype customer(int id){
	mtype plat;
	int id_in_queue;
	bool wait_order = false;
	int number_of_order=0;
	label1:

	printf("\nI'm the customer %d\n\n",id);
	do	
		::wait_order -> goto pick_order;
		::else -> goto makeOrder_or_leave;
	od;
	
	pick_order:
	do
	::service_channel?plat,id_in_queue;
		if
		:: id_in_queue==id -> 
			printf("\ncommande récupéré %d%d  %e\n",id,id_in_queue,plat);
			wait_order=false;
			goto label1;
		::else -> service_channel!plat,id_in_queue;
		fi;
	od;
	
	makeOrder_or_leave:
	printf("\nI will maybe make an order or leave\n");
	do
	::number_of_order<4 -> order_make!starter,id;number_of_order++;wait_order=true;goto label1;
	::number_of_order<4 -> order_make!main,id;number_of_order++;wait_order=true;goto label1;
	::number_of_order<4 -> order_make!desert,id;number_of_order++;wait_order=true;goto label1;
	::number_of_order<4 -> order_make!drink,id;number_of_order++;wait_order=true;goto label1;
	::(!wait_order || number_of_order>3 ) -> goto leave;
	
	od;
	

	leave:
printf("leaving, customer %d\n",id);
	skip;
	
}

init {
	run chief();
	run customer(1);
	run customer(2);
	run customer(3);
	run customer(4);
	run customer(5);
}
