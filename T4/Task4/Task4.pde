/*
4.a Write a method that takes in an integer as a parameter and prints all values between 0 and 100 that are divisible by the parameter received.

4.b add the following array to your code: int[] arr = { 1, 1, 1, 2, 2, 3, 3, 3, 4, 5, 5, 5, 6, 6, 7, 8, 8, 9, 9, 10 }

4.c Write a method that returns a random element from the above array.

4.d Write a function that takes an integer as a parameter and prints the number. After that, it subtracts one from the input and calls itself again (recursion).
If the input is less than zero, it should no longer call itself.

4.e Write a function that takes two integers as parameters and prints both of them seperated by a tab ( \t ).
Then have the function calculate and print the fibunacci sequence by calling itself. If the input is greater than 10000, then stop. 
Start the function by calling it from setup with the input (1, 1). (hint: fibunacci sequence: https://i.pinimg.com/236x/98/82/d5/9882d569f7e0b5665fe3b2edd5069b06.jpg )
*/
void fibunacciSequence(int a, int b)
{
    if(a > 10000) return;
    println(a + "\t" + b);
    fibunacciSequence(b, a+b);
}

void taskE(int a, int b){
  println("AA "+a+"\t"+b);
  if(a+b<=1000){
   taskE(b,a+b); 
  }
  
  
  
}


void taskA(int d){
  for(int i=0; i<=100;i++){
    if(i%d==0){
      println(i);
    }
  }
}

int[] arr = { 1, 1, 1, 2, 2, 3, 3, 3, 4, 5, 5, 5, 6, 6, 7, 8, 8, 9, 9, 10 };

int taskC(){
int index = int(random(arr.length));
println("random index: "+index);
return arr[index];
}

void taskD(int x){  
 println(x);
 x--;
 if(x>=0){
   taskD(x);
 } 
}

void tD (int a){
 if(a>0){
   println(a);
   tD(a-1);
 }
}


void setup(){
  fibunacciSequence(1,1);
  println();
  taskE(1,1);
 taskA(5); 
 println(taskC());
 println();
 println("task D:");
 taskD(10);
 tD (12);
}
