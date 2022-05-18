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
        _randomvalues = arc4random_uniform(5) + 1;
        _randomVal1 = _randomimage;
        _randomVal2 = _randomimage;
        _randomVal3 = _randomimage;
        _randomVal4 = _randomimage;
        _randomVal5 = _randomimage;
    }
    return self;
}

- (NSString *) randomimage {
    switch (_randomvalues) {
        case 1: {
            NSLog(@"​⚀");
        }
        case 2: {
            NSLog(@"​⚁");
        }
        case 3: {
            NSLog(@"​⚂");
        }
        case 4: {
            NSLog(@"​⚃");
        }
        case 5: {
            NSLog(@"​⚄");
        }
        defalt: {
            NSLog(@"⚅");
        }
    }
    return _randomimage;
}

@end
