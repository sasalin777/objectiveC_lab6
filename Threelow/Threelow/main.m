//
//  main.m
//  Threelow
//
//  Created by Li Tzu Lin on 2022-05-17.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
NSString *getUserInput(NSString *prompt) {
    
    // 1. array of chars
    char inputChars[255];
    NSLog(@"%@", prompt);
    fgets(inputChars, 255, stdin);
    // covert char array (c string) to a NSString object
    return [NSString stringWithUTF8String:inputChars];

}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
 
        BOOL gameOn = YES;
       // NSString *rolldice = @"Y";
    reset:
   while(gameOn) {
       Dice *dice = [Dice new];
       NSMutableArray *sotrearr = [dice dicesarr];
           // NSString *dices =[dice randomimage];
            int i = 1;
       
       while(i <= 5){
                Dice *dice = [Dice new];
                NSString *dices =[dice randomimage];
                [sotrearr addObject:(dices)];
                i += 1;
            }
       NSString *index1 = [sotrearr objectAtIndex:0];
       NSString *index2 = [sotrearr objectAtIndex:1];
       NSString *index3 = [sotrearr objectAtIndex:2];
       NSString *index4 = [sotrearr objectAtIndex:3];
       NSString *index5 = [sotrearr objectAtIndex:4];
   Display:
       NSLog(@"--------------------");
       NSLog(@"--  Current Dice  --");
       NSLog(@"  %@  %@  %@  %@  %@",index1,index2,index3,index4,index5);
       NSLog(@"");
       NSLog(@"--  Total Score   --");
       NSLog(@"Score:");
       NSLog(@"--------------------");
     
            NSString *inputString = getUserInput(@"\n'roll' to roll the dice\n'hold' to hold a dice\n'reset' to un-hold all dice\n'done' to end the game\n'display' to show current stats");
        KeepGoing:
                if ([inputString  isEqual: @"done\n"]) {
                    NSLog(@"Bye-bye.");
                    gameOn = NO;

                } else if ([inputString isEqual: @"roll\n"]) {
               
                    NSLog(@"\nEnter the number of the dic:");
                        int inputInt;
                        scanf("%i", &inputInt);
                    switch (inputInt) {
                            
                        case 1: {
                           // NSLog(@"%li",(long)[dice randomvalues]);
                          //  NSLog(@"%@", dices1);
                            //goto KeepGoing;
                        }
                        default: {
                            NSLog(@"Please input number of dic again(1 - 5)!");
                            goto KeepGoing;
                        }
                    }
                } else if ([inputString isEqual: @"hold\n"]) {
                    NSLog(@"do hold");
                    
                } else if  ([inputString isEqual:@"reset\n"]) {
                    goto reset;
                } else if ([inputString isEqual:@"display\n"]) {
                    goto Display;
                }
       
    
                    
              
        }
        
    }
    return 0;
}
