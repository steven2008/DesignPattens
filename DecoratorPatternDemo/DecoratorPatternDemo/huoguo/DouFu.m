//
//  DouFu.m
//  DecoratorPatternDemo
//
//  Created by rockonterol on 2019/3/6.
//  Copyright © 2019 rockonterol. All rights reserved.
//

#import "DouFu.h"

@implementation DouFu

- (NSString *)getDesc
{
    return [NSString stringWithFormat:@"%@+%@(%lf)",[self.huoGuoObj getDesc],@"豆腐",5.0];
}

- (double)getPrice
{
    return [self.huoGuoObj getPrice] + 5;
}

@end
