//
//  NineDiscountStrategy.m
//  StrategyPatternDemo
//
//  Created by rockonterol on 2019/3/7.
//  Copyright © 2019 rockonterol. All rights reserved.
//

#import "NineDiscountStrategy.h"

@interface NineDiscountStrategy()

@property (nonatomic, assign) double originalPrice;
@property (nonatomic, assign) NSInteger account;

@end

@implementation NineDiscountStrategy

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
    return 0.9*_originalPrice*_account;
}

@end
