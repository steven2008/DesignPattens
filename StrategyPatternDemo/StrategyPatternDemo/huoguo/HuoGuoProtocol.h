//
//  HuoGuoProtocol.h
//  DecoratorPatternDemo
//
//  Created by rockonterol on 2019/3/6.
//  Copyright © 2019 rockonterol. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol HuoGuoProtocol <NSObject>

@optional

- (NSString *)getDesc;
- (double)getPrice;

@end

NS_ASSUME_NONNULL_END
