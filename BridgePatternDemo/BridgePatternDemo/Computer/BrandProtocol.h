//
//  BrandProtocol.h
//  BridgePatternDemo
//
//  Created by rockonterol on 2019/3/8.
//  Copyright © 2019 rockonterol. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol BrandProtocol <NSObject>

- (NSString *)brandName;
- (void)saleBrand;

@end

NS_ASSUME_NONNULL_END
