//
//  SettingCellAdapter.m
//  AdapterPatternDemo
//
//

#import "BaseSettingCellAdapter.h"

@implementation BaseSettingCellAdapter

- (instancetype)initWithData:(id)data
{
    self = [super init];
    
    if (self) {
        self.data = data;
    }
    
    return self;
}

- (NSString *)leftImageName
{
    return nil;
}
- (NSString *)desc
{
    return nil;
}
- (UIView *)rightView
{
    return nil;
}

@end
