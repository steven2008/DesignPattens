//
//  ViewController.m
//  BridgePatternDemo
//
//  Created by rockonterol on 2019/3/8.
//  Copyright © 2019 rockonterol. All rights reserved.
//

#import "ViewController.h"
#import "Computer/Lenovo.h"
#import "Computer/Dell.h"
#import "Computer/Shenzhou.h"
#import "Computer/DeskComputer.h"
#import "Computer/LaptopComputer.h"
#import "Computer/PadComputer.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UILabel *computerNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 100, 200, 50)];
    computerNameLabel.lineBreakMode = NSLineBreakByWordWrapping;
    computerNameLabel.numberOfLines = 0;
    [self.view addSubview:computerNameLabel];
    
    Lenovo *lenovoBrand = [[Lenovo alloc] init];
    LaptopComputer *computer = [[LaptopComputer alloc] init];
    computer.brand = lenovoBrand;
    
    computerNameLabel.text = [computer computerName];
    
}


@end
