//
//  ViewController.m
//  AlertViewText
//
//  Created by Paul on 2018/8/28.
//  Copyright © 2018年 Paul. All rights reserved.
//

#import "ViewController.h"

#import "PTLAlertView.h"
#import "OneViewController.h"
#import "TwoViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (IBAction)didClickNextBtn:(id)sender {
//    PTLAlertView *alertView = [[PTLAlertView alloc]initWithTitle:@"我是标题" message:@"你好你好吗哈哈你好吗哈哈你好吗哈哈你好吗哈哈你好吗哈哈你好吗哈哈你好吗哈哈你好吗哈哈吗哈哈" cancelButtonTitle:@"取消" otherButtonTitles:nil, nil];
//
//    [alertView setSelctBtnBlock:^(NSInteger index, NSString * _Nullable btnCurrentTitle) {
//        NSLog(@"hha- %zd ---- %@", index, btnCurrentTitle);
//        OneViewController * oneVC = [[OneViewController alloc] init];
//        [self.navigationController pushViewController:oneVC animated:YES];
//
//    }];
//
//    alertView.cancelBtnTextColor = [UIColor redColor];
//    [alertView show];
    
    
    
    PTLAlertView *alertView = [[PTLAlertView alloc]initWithTitle:@"我是标题" message:@"你好你好吗哈哈你好吗哈哈你好吗哈哈你好吗哈哈你好吗哈哈你好吗哈哈你好吗哈哈你好吗哈哈吗哈哈" cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
    
    [alertView setSelctBtnBlock:^(NSInteger index, NSString * _Nullable btnCurrentTitle) {
        NSLog(@"hha- %zd ---- %@", index, btnCurrentTitle);
        OneViewController * oneVC = [[OneViewController alloc] init];
        [self.navigationController pushViewController:oneVC animated:YES];
    }];
    
    alertView.cancelBtnTextColor = [UIColor lightGrayColor];
    [alertView show];
    
    
}


- (IBAction)didClickTwoBtn:(id)sender {
    
    
    PTLAlertView *alertView = [[PTLAlertView alloc]initWithTitle:@"我是标题" message:@"你好你好吗哈哈你好吗哈哈你好吗哈哈你好吗哈哈你好吗哈哈你好吗哈哈你好吗哈哈你好吗哈哈吗哈哈你好你好吗哈哈你好吗哈哈你好吗哈哈你好吗哈哈你好吗哈哈你好吗哈哈你好吗吗哈哈你好吗哈哈你好吗哈哈你好吗哈哈你好吗哈哈你好吗哈哈你好吗哈哈你好吗哈哈吗哈哈" cancelButtonTitle:@"取消" otherButtonTitles:@"确定",@"等一会", nil];
    
    [alertView setSelctBtnBlock:^(NSInteger index, NSString * _Nullable btnCurrentTitle) {
        NSLog(@"hha- %zd ---- %@", index, btnCurrentTitle);
        
        if (index == 0) {
            
        }else if (index == 1) {
            TwoViewController *twoVC = [[TwoViewController alloc] init];
            [self.navigationController pushViewController:twoVC animated:YES];
        }
    }];
    
    //    alertView.titleBackgroundColor = [UIColor redColor];
    //    alertView.titleTextColor = [UIColor greenColor];
    //    alertView.titleTextFont = [UIFont systemFontOfSize:20];
    //    alertView.messageTextColor = [UIColor redColor];
    //    alertView.messageTextFont = [UIFont systemFontOfSize:15];
    alertView.cancelBtnTextColor = [UIColor lightGrayColor];
    //    alertView.cancelBtnTextFont = [UIFont systemFontOfSize:20];
    //    alertView.otherBtnTextColor = [UIColor yellowColor];
    //    alertView.otherBtnTextFont = [UIFont systemFontOfSize:20];
    //    [[PTLAlertView sharedInstance] show];
    [alertView show];

}

- (void)viewDidLoad {
    [super viewDidLoad];

    
}


@end
