//
//  ViewController.m
//  MyButton
//
//  Created by 刘浩浩 on 2017/2/7.
//  Copyright © 2017年 CodingFire. All rights reserved.
//

#import "ViewController.h"
#import "LHButton.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    LHButton *myBtn = [LHButton buttonWithType:UIButtonTypeCustom];
    myBtn.frame = CGRectMake(20, 100, 320 - 40, 40);
    [myBtn addTarget:self action:@selector(myBtnAction) forControlEvents:UIControlEventTouchUpInside];
    [myBtn setMyButtonIcon:[UIImage imageNamed:@"icon-email.png"] titleTest:@"Sign up with Email" titleFont:13 titleColor:[UIColor colorWithRed:0.49f green:0.48f blue:0.46f alpha:1.00f]];
    [self.view addSubview:myBtn];
}

- (void)myBtnAction
{
    NSLog(@"This is my Button");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
