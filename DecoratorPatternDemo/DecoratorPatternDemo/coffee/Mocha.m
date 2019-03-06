//
//  Mocha.m
//  DecoratorPatternDemo
//
//  Created by rockonterol on 2019/3/6.
//  Copyright © 2019 rockonterol. All rights reserved.
//

#import "Mocha.h"

@implementation Mocha

@synthesize beverage;

- (NSString *)getBeverageName
{
    return [NSString stringWithFormat:@"%@+%@(%lf)",[self.beverage getBeverageName], @"Mocha",6.0];
}

- (double)getPrice
{
    return [self.beverage getPrice] + 6;
}


@end
