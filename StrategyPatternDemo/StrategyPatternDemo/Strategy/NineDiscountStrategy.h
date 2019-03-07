//
//  NineDiscountStrategy.h
//  StrategyPatternDemo
//
//  Created by rockonterol on 2019/3/7.
//  Copyright © 2019 rockonterol. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DiscountStrategyProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface NineDiscountStrategy : NSObject<DiscountStrategyProtocol>

- (instancetype)initWithOriginalPrice:(double)price count:(NSInteger)count;

@end

NS_ASSUME_NONNULL_END
