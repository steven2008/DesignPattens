//
//  Milk.m
//  DecoratorPatternDemo
//
//  Created by rockonterol on 2019/3/6.
//  Copyright © 2019 rockonterol. All rights reserved.
//

#import "Milk.h"

@implementation Milk
@synthesize beverage;

- (NSString *)getBeverageName
{
    return [NSString stringWithFormat:@"%@+%@(%lf)",[self.beverage getBeverageName], @"Milk",3.0];
}

- (double)getPrice
{
    return [self.beverage getPrice] + 3;
}


@end
