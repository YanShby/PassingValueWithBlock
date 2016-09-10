//
//  SecondViewController.m
//  ValuePassingWithBlock
//
//  Created by Yans on 16/9/7.
//  Copyright © 2016年 Yans. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor colorWithRed:0.6195 green:0.9948 blue:1.0 alpha:1.0];
    self.textField = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, 150, 30)];
    self.textField.center = self.view.center;
    self.textField.backgroundColor = [UIColor grayColor];
    
    self.button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.button.frame = CGRectMake(0, 0, 100, 30);
    CGPoint buttonPoint;
    buttonPoint.x = self.view.center.x;
    buttonPoint.y = self.view.center.y + 50;
    self.button.center = buttonPoint;
    [self.button setTitle:@"界面二button" forState:UIControlStateNormal];
    [self.button addTarget:self action:@selector(tapButton) forControlEvents:UIControlEventTouchUpInside];
    
    
    [self.view addSubview:self.textField];
    [self.view addSubview:self.button];
}

- (void)tapButton{
    self.myBlock(self.textField.text);
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
