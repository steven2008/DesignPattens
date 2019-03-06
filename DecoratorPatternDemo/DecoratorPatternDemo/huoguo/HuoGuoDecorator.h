//
//  HuoGuoDecorator.h
//  DecoratorPatternDemo
//
//  Created by rockonterol on 2019/3/6.
//  Copyright © 2019 rockonterol. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HuoGuoProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface HuoGuoDecorator : NSObject<HuoGuoProtocol>

@property (nonatomic, weak) id<HuoGuoProtocol> huoGuoObj;

- (instancetype)initWithHuoObj:(id<HuoGuoProtocol>)obj;

@end

NS_ASSUME_NONNULL_END
