//
//  YuanYangGuo.m
//  DecoratorPatternDemo
//
//  Created by rockonterol on 2019/3/6.
//  Copyright © 2019 rockonterol. All rights reserved.
//

#import "YuanYangGuo.h"

@interface YuanYangGuo()

@property (nonatomic, copy) NSString *type;

@end

@implementation YuanYangGuo

- (instancetype)initWithType:(NSString *)type
{
    self = [super init];
    if (self) {
        _type = type;
    }
    
    return self;
}
- (NSString *)getDesc
{
    return [NSString stringWithFormat:@"%@(%lf)",self.type,[self getDiscountPrice]];
}

- (double)getDiscountPrice
{
    return 50;
}

@end
