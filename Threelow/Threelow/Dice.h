//
//  Dice.h
//  Threelow
//
//  Created by Li Tzu Lin on 2022-05-17.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Dice : NSObject

@property (nonatomic, readwrite, assign) NSInteger *randomVal1;
@property (nonatomic, readwrite, assign) NSInteger *randomVal2;
@property (nonatomic, readwrite, assign) NSInteger *randomVal3;
@property (nonatomic, readwrite, assign) NSInteger *randomVal4;
@property (nonatomic, readwrite, assign) NSInteger *randomVal5;
@property (nonatomic, readwrite) NSInteger currentValue;

@end

NS_ASSUME_NONNULL_END
