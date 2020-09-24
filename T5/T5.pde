/*
In this task you will create an integer array with 2 dimensions, 
that holds values of 0, 1, 0, 1, etc. The instructions below will help you get started. 
What has been left out, is how to assign the alternating value of 0's and 1's.

5.a Create a double int called board[][] with the length of 8 in both arrays. 
5.b In setup() set the size to 350, 350 
5.c In setup() create a double for loop that loops through the board 
and alternates between assigning the value of 0 and 1 (e.g. board[x][y] = 0;). 
5.d In draw() create a double for loop that loops through the board and draws a rect 
for each element with the sideLength of 40 (e.g. rect(x * sideLength, y * sideLength, sideLength, sideLength); )
5.e Before drawing the rect in the previous step, add a fill() statement, that fills with the value of 0 if the board[x][y] == 0.
*/
//instantieing a double board of size 8x8
int[][] board = new int[8][8];
int sideL=40;
void setup(){
  size(350,350);
  
  //for each element x
  for (int x=0;x<8;x++){
    //for each element y
    for(int y=0;y<8;y++){
      //if sum of indexes is even(lige) the value of element on those indexes is 0
      if( (x+y)%2==0){
        board[x][y]=0;
      }else 
      {
        //if sum of indexes is odd(ulige) the value of element on those indexes is 1
        board[x][y]=1;
      }
    }
  }  
 
}

void draw(){
  
  for(int x=0;x<8;x++){
    for(int y=0;y<8;y++){
      //for each element if value is 0, the color is white, otherwise color is black
      if(board[x][y]==0){
        fill(255);
      }else{
      fill(50);
    } 
    //drow a rectangle that has the fill color definde above
    rect(x*sideL,y*sideL,sideL,sideL);
    }
  }
 
}
