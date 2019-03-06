//
//  CoffeeViewController.m
//  DecoratorPatternDemo
//
//  Created by rockonterol on 2019/3/6.
//  Copyright © 2019 rockonterol. All rights reserved.
//

#import "CoffeeViewController.h"
#import "HouseBlendCoffee.h"
#import "DarkRoastCoffee.h"
#import "Milk.h"
#import "Mocha.h"
#import "Whip.h"

@interface CoffeeViewController ()

@end

@implementation CoffeeViewController

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
    
    //id<BeverageProtocol> houseBlendCoffee = [[HouseBlendCoffee alloc] initWithCoffeeName:@"混合咖啡"];
    id<BeverageProtocol> houseBlendCoffee = [[DarkRoastCoffee alloc] initWithCoffeeName:@"礁炒咖啡"];
    Milk *milk = [[Milk alloc] init];
    milk.beverage = houseBlendCoffee;
    
    Mocha *mocha = [[Mocha alloc] init];
    mocha.beverage = milk;
    
    Whip *whip = [[Whip alloc] init];
    whip.beverage = mocha;
    
    typeLabel.text = [whip getBeverageName];
    priceLabel.text = [NSString stringWithFormat:@"price:%lf",[whip getPrice]];
    
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
