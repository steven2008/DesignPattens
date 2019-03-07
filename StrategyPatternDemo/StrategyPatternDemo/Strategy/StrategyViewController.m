//
//  StrategyViewController.m
//  StrategyPatternDemo
//
//  Created by rockonterol on 2019/3/7.
//  Copyright © 2019 rockonterol. All rights reserved.
//

#import "StrategyViewController.h"
#import "Contex.h"
#import "EightDiscountStrategy.h"
#import "NineDiscountStrategy.h"

@interface StrategyViewController ()

@end

@implementation StrategyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    id<DiscountStrategyProtocol> eightDiscountStategy = [[EightDiscountStrategy alloc] initWithOriginalPrice:10 count:10];
    //id<DiscountStrategyProtocol> nineDiscountStategy = [[NineDiscountStrategy alloc] initWithOriginalPrice:20] count:20];
    
    Contex *contex = [[Contex alloc] initWithStrategy:eightDiscountStategy];
    [contex calculateDiscount];
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
