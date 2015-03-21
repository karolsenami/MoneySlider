//
//  ViewController.m
//  MoneySlider
//
//  Created by max jourdain on 13/03/2015.
//  Copyright (c) 2015 max jourdain. All rights reserved.
//

#import "ViewController.h"
#import "MoneySlider.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //MoneySlider example of Use

    MoneySlider *moneySlider1;
    MoneySlider *moneySlider2;
    MoneySlider *moneySlider3;
    
    moneySlider1 = [[MoneySlider alloc] init];
    [self.view addSubview:moneySlider1];
    
    moneySlider2 = [[MoneySlider alloc] initWithFrame:CGRectMake(10, 10, 70, 70)];
    moneySlider2.backgroundColor = [UIColor redColor];
    [self.view addSubview:moneySlider2];
    
    moneySlider3 = [[MoneySlider alloc] initWithFrame:CGRectMake(100, 150, 150, 100)];
    moneySlider3.slider.minimumValue = 10;
    moneySlider3.slider.maximumValue = 30;
    moneySlider3.backgroundColor = [UIColor yellowColor];

    [self.view addSubview:moneySlider3];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
