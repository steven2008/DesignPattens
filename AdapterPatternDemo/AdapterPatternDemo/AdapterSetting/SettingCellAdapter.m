//
//  SettingCellAdapter.m
//  AdapterPatternDemo
//
//

#import "SettingCellAdapter.h"

@interface  SettingCellAdapter()

@property (nonatomic, strong) SettingModel *dataModel;

@end

@implementation SettingCellAdapter
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
    SettingModel *model = self.data;
    return model.leftImageName;
}
- (NSString *)desc
{
    SettingModel *model = self.data;
    return model.desc;
}
- (UIView *)rightView
{
    SettingModel *model = self.data;
    return model.rightView;
}

@end
