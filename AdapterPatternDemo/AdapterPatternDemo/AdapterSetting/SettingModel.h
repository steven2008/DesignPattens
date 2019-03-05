//
//  SettingModel.h
//  AdapterPatternDemo
//
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SettingModel : NSObject

@property (nonatomic, strong) NSString *leftImageName;
@property (nonatomic, strong) NSString *desc;
@property (nonatomic, strong) UIView *rightView;

- (instancetype)initWithImageName:(NSString *)imageName desc:(NSString *)desc rightView:(UIView *)rightView;

@end

NS_ASSUME_NONNULL_END
