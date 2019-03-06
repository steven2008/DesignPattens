//
//  CondimentDecoratorProtocol.h
//  DecoratorPatternDemo
//
//  Created by rockonterol on 2019/3/6.
//  Copyright © 2019 rockonterol. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BeverageProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@protocol CondimentDecoratorProtocol <NSObject,BeverageProtocol>

@property (nonatomic, assign) id<BeverageProtocol> beverage;

@end

NS_ASSUME_NONNULL_END
