//
//  Niurou.m
//  DecoratorPatternDemo
//
//  Created by rockonterol on 2019/3/6.
//  Copyright © 2019 rockonterol. All rights reserved.
//

#import "Niurou.h"

@implementation Niurou

- (NSString *)getDesc
{
    return [NSString stringWithFormat:@"%@+%@(%lf)",[self.huoGuoObj getDesc],@"牛肉",[self.strategyObj getDiscountPrice]];
}

//- (double)getPrice
//{
//    return [self.huoGuoObj getDiscountPrice] + [self getDiscountPrice];
//}

- (double)getDiscountPrice
{
    return [self.huoGuoObj getDiscountPrice] + [self.strategyObj getDiscountPrice];
}

@end
