//
//  PadComputer.m
//  BridgePatternDemo
//
//  Created by rockonterol on 2019/3/8.
//  Copyright © 2019 rockonterol. All rights reserved.
//

#import "PadComputer.h"

@implementation PadComputer

- (instancetype)initWithBrand:(id<BrandProtocol>)brand
{
    self = [super init];
    if (self) {
        _brand = brand;
    }
    
    return self;
}

- (NSString *)computerName
{
    return [NSString stringWithFormat:@"%@%@",self.brand.brandName,[self computerType]];
}

- (NSString *)computerType
{
    return @"平板电脑";
}

- (double)computerPrice
{
    return 0.0;
}

@end
