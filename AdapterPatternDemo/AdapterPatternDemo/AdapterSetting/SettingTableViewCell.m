//
//  SettingTableViewCell.m
//  AdapterPatternDemo
//
//

#import "SettingTableViewCell.h"
#import <Masonry.h>

@implementation SettingTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {
        [self setupCellUI];
    }
    
    return self;
}

- (void)setupCellUI
{
    __weak typeof(self) weakSelf = self;
    
    [self.contentView addSubview:self.leftView];
    [self.leftView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(20);
        make.top.mas_equalTo(20);
        make.bottom.mas_equalTo(-20);
        make.width.mas_equalTo(20);
    }];
    
    [self.contentView addSubview:self.desc];
    [self.contentView addSubview:self.rightView];
    
    [self.desc mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(weakSelf.leftView.mas_right).with.offset(10);
        make.right.mas_equalTo(weakSelf.rightView.mas_left).with.offset(-10);
        //make.right.mas_equalTo(-20);
        make.top.mas_equalTo(10);
        make.bottom.mas_equalTo(-10);
    }];
    
    [self.rightView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(10);
        make.bottom.mas_equalTo(-10);
        make.right.mas_equalTo(-10);
        make.width.mas_equalTo(51);
        //make.left.mas_equalTo(weakSelf.desc.mas_right).with.offset(10);
        make.left.mas_lessThanOrEqualTo(weakSelf.desc.mas_right).with.offset(10);
    }];
}

- (void)setSettingCellData:(id<SettingCellProtocol>)data
{
    self.leftView.image = [UIImage imageNamed:[data leftImageName]];
    self.desc.text = [data desc];
    [self.rightView addSubview:[data rightView]];
}

- (UIImageView *)leftView
{
    if (nil == _leftView) {
        _leftView = [[UIImageView alloc] initWithFrame:CGRectZero];
    }
    
    return _leftView;
}

- (UILabel *)desc
{
    if (nil == _desc) {
        _desc = [[UILabel alloc] initWithFrame:CGRectZero];
        [_desc setFont:[UIFont systemFontOfSize:16]];
        _desc.textColor = [UIColor grayColor];
        _desc.textAlignment = NSTextAlignmentLeft;
    }
    
    return _desc;
}

- (UIView *)rightView
{
    if (nil == _rightView) {
        _rightView = [[UIView alloc] initWithFrame:CGRectZero];
        //_rightView.backgroundColor = [UIColor redColor];
    }
    
    return _rightView;
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
