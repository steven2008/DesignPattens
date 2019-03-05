//
//  SettingViewController.m
//  AdapterPatternDemo
//
//

#import "SettingViewController.h"
#import <Masonry.h>
#import "SettingTableViewCell.h"
#import "SettingModel.h"
#import "SettingCellAdapter.h"

@interface SettingViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *dataSource;

@end

@implementation SettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.dataSource = [self getDataSource];
    
    [self.view addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.bottom.right.mas_equalTo(0);
    }];
}

- (UITableView *)tableView
{
    if (nil == _tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStyleGrouped];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        [_tableView registerClass:[SettingTableViewCell class] forCellReuseIdentifier:@"settingCell"];
        _tableView.rowHeight = 60;
    }
    
    return _tableView;
}

- (NSMutableArray<NSMutableArray *> *)getDataSource
{
    NSMutableArray *dataSource = [NSMutableArray array];
    
    //第一组
    NSMutableArray *group1Array = [NSMutableArray array];
    UISwitch *switch1 = [[UISwitch alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
    switch1.on = NO;
    SettingModel *model1 = [[SettingModel alloc] initWithImageName:@"left.png" desc:@"2G/3G图片显示" rightView:switch1];
    SettingCellAdapter *adapter1 = [[SettingCellAdapter alloc] initWithData:model1];
    
    
    UISwitch *switch2 = [[UISwitch alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
    switch1.on = NO;
    SettingModel *model2 = [[SettingModel alloc] initWithImageName:@"left.png" desc:@"地理位置公开" rightView:switch2];
    SettingCellAdapter *adapter2 = [[SettingCellAdapter alloc] initWithData:model2];
    
    [group1Array addObject:adapter1];
    [group1Array addObject:adapter2];
    
    //第二组
    NSMutableArray *group2Array = [NSMutableArray array];
    UISwitch *switch3 = [[UISwitch alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
    SettingModel *model3 = [[SettingModel alloc] initWithImageName:@"left.png" desc:@"GIF图自动播放" rightView:switch3];
    SettingCellAdapter *adapter3 = [[SettingCellAdapter alloc] initWithData:model3];
    
    
    UISwitch *switch4 = [[UISwitch alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
    switch4.on = NO;
    SettingModel *model4 = [[SettingModel alloc] initWithImageName:@"left.png" desc:@"视频自动播放视频自动播放视频" rightView:switch4];
    SettingCellAdapter *adapter4 = [[SettingCellAdapter alloc] initWithData:model4];
    
    [group2Array addObject:adapter3];
    [group2Array addObject:adapter4];
    
    //第三组
    NSMutableArray *group3Array = [NSMutableArray array];
    UISwitch *switch5 = [[UISwitch alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
    SettingModel *model5 = [[SettingModel alloc] initWithImageName:@"left.png" desc:@"GIF图自动播放" rightView:switch5];
    SettingCellAdapter *adapter5 = [[SettingCellAdapter alloc] initWithData:model5];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
    label.text = @"20";
    label.textAlignment = NSTextAlignmentLeft;
    label.textColor = [UIColor grayColor];
    SettingModel *model6 = [[SettingModel alloc] initWithImageName:@"left.png" desc:@"视频自动播放视频自动播放视频" rightView:label];
    SettingCellAdapter *adapter6 = [[SettingCellAdapter alloc] initWithData:model6];
    
    [group3Array addObject:adapter5];
    [group3Array addObject:adapter6];

    
    [dataSource addObject:group1Array];
    [dataSource addObject:group2Array];
    [dataSource addObject:group3Array];

    return dataSource;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return  self.dataSource.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return ((NSMutableArray *)self.dataSource[section]).count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SettingTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"settingCell"];
    id<SettingCellProtocol> data = self.dataSource[indexPath.section][indexPath.row];
    [cell setSettingCellData:data];
    
    return cell;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
