//
//  HuoGuoDecorator.h
//  DecoratorPatternDemo
//
//  Created by rockonterol on 2019/3/6.
//  Copyright © 2019 rockonterol. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HuoGuoProtocol.h"
#import "DiscountStrategyProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface HuoGuoDecorator : NSObject<DiscountStrategyProtocol>

@property (nonatomic, weak) id<DiscountStrategyProtocol> huoGuoObj;
@property (nonatomic, weak) id<DiscountStrategyProtocol> strategyObj;

- (instancetype)initWithHuoObj:(id<DiscountStrategyProtocol>)obj;

@end

NS_ASSUME_NONNULL_END
