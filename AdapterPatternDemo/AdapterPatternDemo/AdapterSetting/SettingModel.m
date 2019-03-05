//
//  SettingModel.m
//  AdapterPatternDemo
//
//

#import "SettingModel.h"

@implementation SettingModel

- (instancetype)initWithImageName:(NSString *)imageName desc:(NSString *)desc rightView:(UIView *)rightView
{
    self = [super init];
    
    if (self) {
        _leftImageName = imageName;
        _desc = desc;
        _rightView = rightView;
    }
    
    return self;
}
@end
