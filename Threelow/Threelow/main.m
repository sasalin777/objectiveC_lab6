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
       NSLog(@"--------------------");
       NSLog(@"--  Current Dice  --");
       NSLog(@"  %@  %@  %@  %@  %@",index1,index2,index3,index4,index5);
       NSLog(@"");
       NSLog(@"--  Total Score   --");
       NSLog(@"Score:");
       NSLog(@"--------------------");
           // NSString *dices5 = [dice randomimage];
           // NSInteger test = [dice randomvalues];
            
////        NSLog(@"%li",(long)dice1);
//        NSLog(@"%li",(long)dice2);
//        NSLog(@"%li",(long)dice3);
//        NSLog(@"%li",(long)dice4);
//        NSLog(@"%li",(long)dice5);
     
            NSString *inputString = getUserInput(@"\n'roll' to roll the dice\n'hold' to hold a dice\n'rest' to un-hold all dice\n'done' to end the game\n'display' to show current stats");
        KeepGoing:
                if ([inputString  isEqual: @"done\n"]) {
                    gameOn = NO;

                } else if ([inputString isEqual: @"roll\n"]) {
               
//                    NSLog(@"\n %@,%@,%@,%@,%@ \nEnter the number of the dic:",dices1,dices2,dices3,dices4,dices5);
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
                }
                    
              
        }
        
    }
    return 0;
}
