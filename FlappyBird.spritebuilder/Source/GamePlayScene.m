#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"
@implementation GamePlayScene

- (void)initialize
{
  //  delta = 1/60;
    // your code here
    [self addObstacle];
    timeSinceObstacle = 0.0f;
    count = 10;
character = (Character*)[CCBReader load:@"Character"];
[physicsNode addChild:character];

//timeSinceObstacle += delta;
    
    
        

}

-(void)update:(CCTime)delta
{
     //put update   code here
  //  character = (Character*)[CCBReader load:@"Character"];
    
    //if ( count == 2)
    
    {
        
  // [physicsNode addChild:character];
    }
    count++;
    timeSinceObstacle += delta; // delta is approximately 1/60th of a second
 
    // Check to see if two seconds have passed
    if (timeSinceObstacle > 2.0f)
    {
  
         // Add a new obstacle
           [self addObstacle];
        
    
    }

        // Then reset the timer.
        timeSinceObstacle = 0.0f;
    
}


// put new methods here
- (void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event {
    
    // this will get called every time the player touches the screen
    [character flap];
}
    


@end
