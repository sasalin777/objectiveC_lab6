//
//  Dice.m
//  Threelow
//
//  Created by Li Tzu Lin on 2022-05-17.
//

#import "Dice.h"

@implementation Dice

- (instancetype)init
{
    self = [super init];
    if (self) {
        _randomVal1 = arc4random_uniform(5) + 1;
        _randomVal2 = arc4random_uniform(5) + 1;
        _randomVal3 = arc4random_uniform(5) + 1;
        _randomVal4 = arc4random_uniform(5) + 1;
        _randomVal5 = arc4random_uniform(5) + 1;
    }
    return self;
}

- (NSInteger) randomizeValues {
    
    return 0; 
}

@end
