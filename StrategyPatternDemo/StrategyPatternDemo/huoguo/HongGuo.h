//
//  HongGuo.h
//  DecoratorPatternDemo
//
//  Created by rockonterol on 2019/3/6.
//  Copyright © 2019 rockonterol. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "HuoGuoProtocol.h"
#import "DiscountStrategyProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface HongGuo : NSObject<DiscountStrategyProtocol>

- (instancetype)initWithType:(NSString *)type;

@end

NS_ASSUME_NONNULL_END
