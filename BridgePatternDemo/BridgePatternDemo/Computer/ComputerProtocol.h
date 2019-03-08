//
//  ComputerProtocol.h
//  BridgePatternDemo
//
//  Created by rockonterol on 2019/3/8.
//  Copyright © 2019 rockonterol. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BrandProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@protocol ComputerProtocol <NSObject>
@optional

- (instancetype)initWithBrand:(id<BrandProtocol>)brand;
- (NSString *)computerName;
- (double)computerPrice;

@end

NS_ASSUME_NONNULL_END
