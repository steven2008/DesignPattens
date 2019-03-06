//
//  ViewController.m
//  DecoratorPatternDemo
//
//  装饰者设计模式
//

#import "ViewController.h"
#import "CoffeeViewController.h"
#import "HuoGuoViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *dataSourceArr;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view addSubview:self.tableView];
    
    self.dataSourceArr = @[@"吃火锅例子",@"星巴克咖啡例子"];
    
}

- (UITableView *)tableView
{
    if (nil == _tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    }
    
    return _tableView;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell  = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    cell.textLabel.text = self.dataSourceArr[indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row) {
        case 0:
        {
            HuoGuoViewController *huoGuoViewController = [[HuoGuoViewController alloc] init];
            [self.navigationController pushViewController:huoGuoViewController animated:YES];
        }
            break;
        case 1:
        {
            CoffeeViewController *coffeeViewController = [[CoffeeViewController alloc] init];
            [self.navigationController pushViewController:coffeeViewController animated:YES];

        }
            break;
            
        default:
            break;
    }
}

@end
