//
//  BeverageProtocol.h
//  DecoratorPatternDemo
//
//  Copyright © 2019 rockonterol. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol BeverageProtocol <NSObject>

@optional

- (NSString *)getBeverageName;
- (double)getPrice;

@end

NS_ASSUME_NONNULL_END
