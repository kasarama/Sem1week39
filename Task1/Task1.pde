/*
1.a Create an integer array with the values { 8, 9, 1, 5, 11, 13, 7, 4, 6, 3, 12, 10, 2 } 
 1.b implement your own sorting algorithm for the int[] array,
 by creating a method that takes in the int[] array and loops through it with a for loop.
 for every step in the for loop, you must compare the values of array[i] and array[i + 1] 
 and swap them if [i] is greater than [i + 1].
 1.c call the method created in 1.b in a while loop from setup(), until the list is sorted.
 1.d Add a boolean to keep track of when the list is sorted to avoid creating an infinite loop.
 
 */

int[] arr = { 8, 9, 1, 5, 11, 13, 7, 4, 6, 3, 12, 10, 2 } ;

boolean swap=true;

void sortMe() {

  for (int i =0; i <arr.length-1; i++) { //jeg tjekker hver element i min array men når jeg når til den før den sidste, skal jeg stoppe, 
    //fordi jeg skal sammenlige den med den næste (som bliver jo til vores sidste element)
    if ( arr[i] > arr [i+1] ) { // hvis element på index i er større end den på den næste index, skal jeg:

      //bytte dem:
      //jeg skal få fat i værdi af element på index i og give den værdi af element på index i+1
      int temporary=arr[i];
      arr[i]=arr[i+1];
      //men høv! min element på index i er nu den samme som den på index i+1!
      // så hvis jeg giver den element på index i+1 værdi af den på index i , får den den samme værdi
      //derfor skal vi FØRST gemme værdi af element på index i i en ny variable (linie21)
      //da begge elementer har den samme værdi, den anden skal få værdi af den gamle værdi på index i:
      arr[i+1]=temporary;
      //jeg har bytted de to elementer, min boolean får true som værdi:
      swap=true;
    } else {
      // her skal vi gøre noget hvis den første elemnt ikke er større end den anden. De skal ikke bytte pladser, boolen bliver så til false:
      swap=false; 
      //men hvad skal jeg bruge de swap til? ( 1.d)
    }
    //jeg vil gerne sorte de ellementer fra tidligere swappings, så kalder jeg min sort metoden hvis der var byttet nogle elementer:
    while (swap==true) {
      sortMe();
    }
  }
 
}
//Virker det?:

void setup(){
 for (int i =0; i <arr.length; i++) {
  print(arr[i]+"  "); 
 }
 println();
 sortMe();
 
 for (int i =0; i <arr.length; i++) {
  print(arr[i]+"  "); 
 }
}
