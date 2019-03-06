//
//  DarkRoastCoffee.m
//  DecoratorPatternDemo
//
//  Copyright © 2019 rockonterol. All rights reserved.
//

#import "DarkRoastCoffee.h"

@implementation DarkRoastCoffee

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
    return 15.0;
}


@end
