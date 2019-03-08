//
//  DeskComputer.h
//  BridgePatternDemo
//
//  Created by rockonterol on 2019/3/8.
//  Copyright © 2019 rockonterol. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ComputerProtocol.h"
#import "BrandProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface DeskComputer : NSObject<ComputerProtocol>

@property (nonatomic, weak) id<BrandProtocol> brand;

@end

NS_ASSUME_NONNULL_END
