//
//  Contex.h
//  StrategyPatternDemo
//
//  Created by rockonterol on 2019/3/7.
//  Copyright © 2019 rockonterol. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DiscountStrategyProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface Contex : NSObject

- (instancetype)initWithStrategy:(id<DiscountStrategyProtocol>)strategy;
- (double)calculateDiscount;

@end

NS_ASSUME_NONNULL_END
