//
//  Dice.h
//  Threelow
//
//  Created by Li Tzu Lin on 2022-05-17.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Dice : NSObject

@property (nonatomic,readwrite, assign) NSInteger randomvalues;
@property (nonatomic, readwrite, copy) NSString *randomimage;
@property (nonatomic, readwrite, copy) NSString* randomVal1;
@property (nonatomic, readwrite) NSString *randomVal2;
@property (nonatomic, readwrite) NSString *randomVal3;
@property (nonatomic, readwrite) NSString *randomVal4;
@property (nonatomic, readwrite) NSString *randomVal5;
@property (nonatomic, readwrite) NSInteger currentValue;
@property NSMutableArray *dicesarr;

- (NSString *) randomimage;
@end

NS_ASSUME_NONNULL_END
