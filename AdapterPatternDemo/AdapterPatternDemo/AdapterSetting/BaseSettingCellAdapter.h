//
//  SettingCellAdapter.h
//  AdapterPatternDemo
//
//

#import <Foundation/Foundation.h>
#import "SettingCellProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface BaseSettingCellAdapter : NSObject<SettingCellProtocol>

@property (nonatomic, strong) id data;

- (instancetype)initWithData:(id)data;

@end

NS_ASSUME_NONNULL_END
