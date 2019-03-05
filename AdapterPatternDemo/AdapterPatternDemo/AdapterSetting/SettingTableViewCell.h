//
//  SettingTableViewCell.h
//  AdapterPatternDemo
//
//

#import <UIKit/UIKit.h>
#import "SettingCellProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface SettingTableViewCell : UITableViewCell<SettingCellProtocol>

@property (nonatomic, strong) UIImageView *leftView;
@property (nonatomic, strong) UILabel *desc;
@property (nonatomic, strong) UIView *rightView;

- (void)setSettingCellData:(id<SettingCellProtocol>)data;

@end

NS_ASSUME_NONNULL_END
