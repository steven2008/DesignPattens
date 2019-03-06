//
//  DarkRoastCoffee.h
//  DecoratorPatternDemo
//
//  Copyright © 2019 rockonterol. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BeverageProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface DarkRoastCoffee : NSObject<BeverageProtocol>

@property (nonatomic, copy) NSString *coffeeName;

- (instancetype)initWithCoffeeName:(NSString *)coffeeName;

@end

NS_ASSUME_NONNULL_END
