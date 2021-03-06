//
//  ViewController.m
//  DemoViewControllerTipView
//
//  Created by gus on 2018/4/30.
//  Copyright © 2018年 Gu. All rights reserved.
//

#import "ViewController.h"
#import <VTStatusTipModel.h>
#import <UIViewController+StatusTip.h>
#import "DemoTipModelFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self registerStatusTip];
    [self registerStatusBlock:@"404" block:^{
        NSLog(@"404 operation");
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)button404Clicked:(id)sender {
    [self showStatusView:@"404"];
}

- (IBAction)buttonNoNetworkingClicked:(id)sender {
    [self showStatusView:@"NetDisconnet"];
}

- (void)registerStatusTip {
    NSArray *tipModelArray = [DemoTipModelFactory demoTipModelArray];
    [self registerStatusTipArray:tipModelArray];
}


@end
