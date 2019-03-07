//
//  HuoGuoDecorator.m
//  DecoratorPatternDemo
//
//  Created by rockonterol on 2019/3/6.
//  Copyright © 2019 rockonterol. All rights reserved.
//

#import "HuoGuoDecorator.h"

@implementation HuoGuoDecorator

- (instancetype)initWithHuoObj:(id<DiscountStrategyProtocol>)obj
{
    self = [super init];
    
    if (self) {
        _huoGuoObj = obj;
    }
    
    return self;
}

- (NSString *)getDesc
{
    return [self.huoGuoObj getDesc];
}

//- (double)getPrice
//{
//    if (self.huoGuoObj)
//    {
//     return [self.huoGuoObj getPrice];
//    }
//    
//    return 0;
//}

- (double)getDiscountPrice
{
    if (self.huoGuoObj)
    {
        return [self.huoGuoObj getDiscountPrice];
    }
    
    return 0;
}

@end
