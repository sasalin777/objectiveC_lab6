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
        Dice *dice = [Dice new];
        NSString *dices =[dice randomimage];
        
        while(gameOn) {
        NSString *dice1 = [dice randomVal1];
        NSString *dice2 = [dice randomVal2];
        NSString *dice3 = [dice randomVal3];
        NSString *dice4 = [dice randomVal4];
        NSString *dice5 = [dice randomVal5];
//        NSLog(@"%li",(long)dice1);
//        NSLog(@"%li",(long)dice2);
//        NSLog(@"%li",(long)dice3);
//        NSLog(@"%li",(long)dice4);
//        NSLog(@"%li",(long)dice5);
     
            NSString *inputString = getUserInput(@"\n'roll' to roll the dice\n'hold' to hold a dice\n'rest' to un-hold all dice\n'done' to end the game\n'display' to show current stats");
        KeepGoing:
                if ([inputString  isEqual: @"done\n"]) {
                    gameOn = NO;

                } else if ([inputString isEqual: @"roll\n"]) {
               
                    NSLog(@"\nEnter the number of the dic:");
                        int inputInt;
                        scanf("%i", &inputInt);
                    switch (inputInt) {
                            
                        case 1: {
                            NSLog(@"%@",dice1);
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
