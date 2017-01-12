//
//  ViewController.m
//  CHTRingLoadingViewDemo
//
//  Created by cht on 17/1/12.
//  Copyright © 2017年 cht. All rights reserved.
//

#import "ViewController.h"
#import "CHTRingLoadingView.h"

@interface ViewController ()

@end

@implementation ViewController{
    
    CHTRingLoadingView *_ringView;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor grayColor];
    
    _ringView = [[CHTRingLoadingView alloc]init];
    _ringView.animationDuration = 3;
    [self.view addSubview: _ringView];
    
    _ringView.center = self.view.center;
    
}

- (IBAction)btnClick:(UIButton *)sender {
    
    sender.selected = !sender.selected;
    if (sender.selected) {
        [_ringView stopLoading];
    }else{
        [_ringView startLoading];
    }
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
