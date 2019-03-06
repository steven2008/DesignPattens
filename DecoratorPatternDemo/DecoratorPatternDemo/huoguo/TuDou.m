//
//  TuDou.m
//  DecoratorPatternDemo
//
//  Created by rockonterol on 2019/3/6.
//  Copyright © 2019 rockonterol. All rights reserved.
//

#import "TuDou.h"

@implementation TuDou

- (NSString *)getDesc
{
    return [NSString stringWithFormat:@"%@+%@(%lf)",[self.huoGuoObj getDesc],@"土豆",2.0];
}

- (double)getPrice
{
    return [self.huoGuoObj getPrice] + 2;
}


@end
