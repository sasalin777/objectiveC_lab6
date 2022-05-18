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
        _dicesarr = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSString *) randomimage {

    switch (_randomvalues) {
        case 1: {
            return (@"​⚀");
            break;
        }
        case 2: {
            return (@"​⚁");
            break;
        }
        case 3: {
            return (@"​⚂");
            break;
        }
        case 4: {
            return (@"​⚃");
            break;
        }
        case 5: {
            return (@"​⚄");
            break;
        }
        defalt: {
            return (@"⚅");
            break;
        }
    }
    return _randomimage;
       
    }



@end
