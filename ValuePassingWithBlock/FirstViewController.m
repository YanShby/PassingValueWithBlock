//
//  ViewController.m
//  ValuePassingWithBlock
//
//  Created by Yans on 16/9/7.
//  Copyright © 2016年 Yans. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()
@property (strong, nonatomic) UILabel *lable;
@property (strong, nonatomic) UIButton *button;
@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    self.lable = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 150, 30)];
    self.lable.center = self.view.center;
    self.lable.text = @"第一个界面的lable";
    self.lable.textAlignment = NSTextAlignmentCenter;
    
    self.button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.button.frame = CGRectMake(0, 0, 100, 30);
    CGPoint buttonPoint;
    buttonPoint.x = self.view.center.x;
    buttonPoint.y = self.view.center.y + 50;
    self.button.center = buttonPoint;
    [self.button setTitle:@"界面一button" forState:UIControlStateNormal];
    [self.button addTarget:self action:@selector(tapButton) forControlEvents:UIControlEventTouchUpInside];
    
    
    [self.view addSubview:self.lable];
    [self.view addSubview:self.button];
    
}

- (void)tapButton {
    SecondViewController *SecondVC = [[SecondViewController alloc] init];
    __weak FirstViewController *weakSelf = self;
    SecondVC.myBlock = ^(NSString *value) {
        weakSelf.lable.text = value;
    };
    
    [self presentViewController:SecondVC animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
