//
//  HuoGuoViewController.m
//  DecoratorPatternDemo
//
//  Created by rockonterol on 2019/3/6.
//  Copyright © 2019 rockonterol. All rights reserved.
//

#import "HuoGuoViewController.h"
#import "DouFu.h"
#import "Niurou.h"
#import "TuDou.h"
#import "HuoGuoDecorator.h"
#import "HongGuo.h"
#import "YuanYangGuo.h"
#import "NineDiscountStrategy.h"
#import "EightDiscountStrategy.h"

@interface HuoGuoViewController ()

@end

@implementation HuoGuoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    UILabel *typeLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 100, self.view.bounds.size.width-20, 100)];
    typeLabel.lineBreakMode = NSLineBreakByCharWrapping;
    typeLabel.numberOfLines = 0;
    [self.view addSubview:typeLabel];
    
    UILabel *priceLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 200, 200, 40)];
    [self.view addSubview:priceLabel];
    
    HongGuo *hongGuo = [[HongGuo alloc] initWithType:@"红锅"];
    //YuanYangGuo *hongGuo = [[YuanYangGuo alloc] initWithType:@"鸳鸯锅"];
    HuoGuoDecorator *decorator = [[HuoGuoDecorator alloc] initWithHuoObj:hongGuo];
    
    NineDiscountStrategy *nineDiscountStrategy = [[NineDiscountStrategy alloc] initWithOriginalPrice:10.0 count:20];
    DouFu *doufu = [[DouFu alloc] init];
    doufu.strategyObj = nineDiscountStrategy;
    doufu.huoGuoObj = decorator;
    
    EightDiscountStrategy *eightDiscountStrategy = [[EightDiscountStrategy alloc] initWithOriginalPrice:20 count:50];
    Niurou *niuRou = [[Niurou alloc] init];
    niuRou.huoGuoObj = doufu;
    niuRou.strategyObj = eightDiscountStrategy;
    
    EightDiscountStrategy *eightDiscountStrategy2 = [[EightDiscountStrategy alloc] initWithOriginalPrice:5 count:100];
    TuDou *tudou = [[TuDou alloc] init];
    tudou.huoGuoObj = niuRou;
    tudou.strategyObj = eightDiscountStrategy2;
    
    typeLabel.text = [tudou getDesc];
    priceLabel.text = [NSString stringWithFormat:@"price:%lf",[tudou getDiscountPrice]];
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
