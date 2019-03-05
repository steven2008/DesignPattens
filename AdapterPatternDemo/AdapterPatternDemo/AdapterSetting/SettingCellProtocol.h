//
//  SettingCellProtocol.h
//  AdapterPatternDemo
//
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol SettingCellProtocol <NSObject>

- (NSString *)leftImageName;
- (NSString *)desc;
- (UIView *)rightView;

@end

NS_ASSUME_NONNULL_END
