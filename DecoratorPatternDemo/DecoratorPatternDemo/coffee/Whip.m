//
//  Whip.m
//  DecoratorPatternDemo
//
//  Created by rockonterol on 2019/3/6.
//  Copyright © 2019 rockonterol. All rights reserved.
//

#import "Whip.h"

@implementation Whip

@synthesize beverage;

- (NSString *)getBeverageName
{
    return [NSString stringWithFormat:@"%@+%@(%lf)",[self.beverage getBeverageName], @"Whip",8.0];
}

- (double)getPrice
{
    return [self.beverage getPrice] + 8;
}

@end
