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
        Dice *dice = [Dice new];
        NSInteger *dice1 = [dice randomVal1];
        NSInteger *dice2 = [dice randomVal2];
        NSInteger *dice3 = [dice randomVal3];
        NSInteger *dice4 = [dice randomVal4];
        NSInteger *dice5 = [dice randomVal5];
        NSLog(@"%li",(long)dice1);
        NSLog(@"%li",(long)dice2);
        NSLog(@"%li",(long)dice3);
        NSLog(@"%li",(long)dice4);
        NSLog(@"%li",(long)dice5);
        
        
    }
    return 0;
}
