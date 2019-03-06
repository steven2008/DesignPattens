//
//  HouseBlendCoffee.m
//  DecoratorPatternDemo
//
//  Copyright © 2019 rockonterol. All rights reserved.
//

#import "HouseBlendCoffee.h"

@implementation HouseBlendCoffee

- (instancetype)initWithCoffeeName:(NSString *)coffeeName
{
    self = [super init];
    
    if (self) {
        _coffeeName = coffeeName;
    }
    
    return self;
}

- (NSString *)getBeverageName
{
    return [NSString stringWithFormat:@"%@(%lf)",_coffeeName,[self getPrice]];
}

- (double)getPrice
{
    return 5.0;
}

@end
