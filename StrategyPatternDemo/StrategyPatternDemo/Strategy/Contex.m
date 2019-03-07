//
//  Contex.m
//  StrategyPatternDemo
//
//  Created by rockonterol on 2019/3/7.
//  Copyright © 2019 rockonterol. All rights reserved.
//

#import "Contex.h"

@interface Contex()

@property (nonatomic, weak) id<DiscountStrategyProtocol> strategy;

@end
@implementation Contex

- (instancetype)initWithStrategy:(id<DiscountStrategyProtocol>)strategy
{
    self = [super init];
    if (self) {
        _strategy = strategy;
    }
    
    return self;
}

- (double)calculateDiscount
{
   return [self.strategy getDiscountPrice];
}

@end
