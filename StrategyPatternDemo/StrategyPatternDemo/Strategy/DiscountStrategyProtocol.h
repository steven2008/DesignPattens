//
//  DiscountStrategyProtocol.h
//  StrategyPatternDemo
//
//  Created by rockonterol on 2019/3/7.
//  Copyright © 2019 rockonterol. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol DiscountStrategyProtocol <NSObject>

@optional
- (NSString *)getDesc;
- (double)getDiscountPrice;

@end

NS_ASSUME_NONNULL_END
