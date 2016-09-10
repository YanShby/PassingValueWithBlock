//
//  SecondViewController.h
//  ValuePassingWithBlock
//
//  Created by Yans on 16/9/7.
//  Copyright © 2016年 Yans. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^SYBlockText)(NSString *value);

@interface SecondViewController : UIViewController
@property (strong, nonatomic) UITextField *textField;
@property (strong, nonatomic) UIButton *button;
@property (copy, nonatomic) SYBlockText myBlock;
@end
