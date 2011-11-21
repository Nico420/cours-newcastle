mtype = { milk,lemonade,water };
bool 	bought_milk = false,
	bought_lemonade=false,
	bought_water=false;
int num_drinks = 0;

inline buy_item(a_drink, bought_a_drink){
	(item== a_drink) -> bought_a_drink=true;
}

proctype perhaps_buy(mtype item){
   atomic {
	bool bought_something = true;
   if
	:: buy_item(milk, bought_milk);	
	:: buy_item(lemonade, bought_lemonade);
	:: buy_item(water, bought_water);
	:: true -> bought_something = false;
   fi;
   if
	:: bought_something -> printf("FRED BOUGHT \n");
	:: else -> printf("FRED DID NOT BUY \n");
   fi;
   printm(item);printf("\n");
 if
	:: bought_something ->num_drinks++;;
	:: else -> printf("pas touche\n");
   fi;
   
   }
}

active proctype buy_drinks(){
	run perhaps_buy(milk);
	run perhaps_buy(lemonade);
	run perhaps_buy(water);
if
	:: num_drinks==3 -> printf("FRED HAS FINISHED BUYING THINGS.\n");
fi;
}

