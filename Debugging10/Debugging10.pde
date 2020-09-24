boolean jobsDone = true;

boolean isJobDone()
{
    return jobsDone;    
}

void drawGrid(int numberOfHorizontalCells, int numberOfVerticalCells, int cellSideLength)
{
    for (int x = 0; x < numberOfHorizontalCells; x++)
 {   
        for (int y = 0; y < numberOfVerticalCells; y++)
        {
            if (x == 5 && y == 8)
            {
                fill(255,0,0);
            }
            else
            {
                fill(255);
            }
            rect(x * cellSideLength, y * cellSideLength, cellSideLength, cellSideLength);  
            
        }
    }
}

void setup()
{
    size(1000,1000);
    
    if (isJobDone())
    {
        println("Job's done!"); 
    }
}


void draw() {

drawGrid(15, 15, 40);
    

}
