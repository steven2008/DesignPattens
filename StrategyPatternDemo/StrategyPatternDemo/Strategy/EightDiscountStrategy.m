//
//  EightDiscountStrategy.m
//  StrategyPatternDemo
//
//  Created by rockonterol on 2019/3/7.
//  Copyright © 2019 rockonterol. All rights reserved.
//

#import "EightDiscountStrategy.h"

@interface EightDiscountStrategy()

@property (nonatomic, assign) double originalPrice;
@property (nonatomic, assign) NSInteger account;
@end
@implementation EightDiscountStrategy

- (instancetype)initWithOriginalPrice:(double)price count:(NSInteger)count
{
    self = [super init];
    if (self) {
        _originalPrice = price;
        _account = count;
    }
    
    return self;
}

- (double)getDiscountPrice
{
   return 0.8*_originalPrice*_account;
}

@end
