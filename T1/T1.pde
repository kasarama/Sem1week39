/*
1.a Create an integer array with the values { 8, 9, 1, 5, 11, 13, 7, 4, 6, 3, 12, 10, 2 } 
 1.b implement your own sorting algorithm for the int[] array, by creating a method 
 that takes in the int[] array and loops through it with a for loop. 
 for every step in the for loop, you must compare the values of array[i] and array[i + 1] 
 and swap them if [i] is greater than [i + 1]. 1.c call the method created in 1.b in a while loop from setup(), 
 until the list is sorted. 
 1.d Add a boolean to keep track of when the list is sorted to avoid creating an infinite loop.
 */
int[] arr = { 8, 9, 1, 5, 11, 13, 7, 4, 6, 3, 12, 10, 2 } ;
int[] brr = { 8, 9, 1, 5, 11, 13, 7, 4, 6, 3, 12, 10, 2 } ;
boolean swap =true;


void sort() {
  for (int i = 0; i< brr.length-1; i++) {
    if (brr[i]>brr[i+1]) {
      int tmp=brr[i];
      brr[i]=brr[i+1];
      brr[i+1]=tmp;
      swap=true;
    } else {
      swap=false;
    }
    while (swap) {
      sort();
    }
  }
}


void setup() {
  sort();
  for (int x=0; x<brr.length; x++) {
    println(brr[x]);
  }



  for (int i=0; i<arr.length; i++) {
    for (int j=i+1; j<arr.length; j++) {
      if (arr[i]>arr[j]) {
        int tmpI=arr[j];
        int tmpJ=arr[i];
        arr[i]=tmpI;
        arr[j]=tmpJ;
      }
    }
  }
    println("nested loop");
    for (int x=0; x<arr.length; x++) {
    println(brr[x]);
  }
  
}
    /*

     int[] arr = { 8, 9, 1, 5, 11, 13, 7, 4, 6, 3, 12, 10, 2 } ;
     
     */
    //{ 1, 9, 8, 5, 11, 13, 7, 4, 6, 3, 12, 10, 2 } 
    //{ 1, 8, 9, 5, 11, 13, 7, 4, 6, 3, 12, 10, 2 } 
    //{ 1, 5, 9, 8, 11, 13, 7, 4, 6, 3, 12, 10, 2 } 
    //{ 1, 4, 9, 8, 11, 13, 7, 5, 6, 3, 12, 10, 2 } 
    //{ 1, 3, 9, 8, 11, 13, 7, 5, 6, 4, 12, 10, 2 } 
    //{ 1, 2, 9, 8, 11, 13, 7, 5, 6, 4, 12, 10, 3 } 
    //{ 1, 2, 8, 9, 11, 13, 7, 5, 6, 4, 12, 10, 3 } 
    //{ 1, 2, 7, 9, 11, 13, 8, 5, 6, 4, 12, 10, 3 } 
    //{ 1, 2, 5, 9, 11, 13, 8, 7, 6, 4, 12, 10, 3 } 
    //{ 1, 2, 4, 9, 11, 13, 8, 7, 6, 5, 12, 10, 3 } 
    //{ 1, 2, 3, 9, 11, 13, 8, 7, 6, 5, 12, 10, 4 } 
    //{ 1, 2, 3, 8, 11, 13, 9, 7, 6, 5, 12, 10, 4 }
    //{ 1, 2, 3, 7, 11, 13, 9, 8, 6, 5, 12, 10, 4 } 
    //{ 1, 2, 3, 6, 11, 13, 9, 8, 7, 5, 12, 10, 4 } 
    //{ 1, 2, 3, 5, 11, 13, 9, 8, 7, 6, 12, 10, 4 } 

    //{ 1, 2, 3, 4, 11, 13, 9, 8, 7, 6, 12, 10, 5 } 
    // ...

    /*
for (int i=0; i<arr.length; i++) {
     for (int j=i+1; j<arr.length; j++) {
     if (arr[i]>arr[j]) {
     println("here");
     int tmpI=arr[j];
     int tmpJ=arr[i];
     arr[i]=tmpI;
     arr[j]=tmpJ;
     */
