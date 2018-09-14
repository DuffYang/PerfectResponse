//
//  ViewController.m
//  PerfectResponse
//
//  Created by Yang,Dongzheng on 2018/9/13.
//  Copyright © 2018年 Yang,Dongzheng. All rights reserved.
//

#import "ViewController.h"
#import "ViewA.h"
#import "ViewB.h"
#import "ViewC.h"
#import "ViewD.h"

@interface ViewController ()

@property (nonatomic, strong) ViewA *viewA;
@property (nonatomic, strong) ViewB *viewB;
@property (nonatomic, strong) ViewC *viewC;
@property (nonatomic, strong) ViewD *viewD;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"响应链";
    
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
    [self.view addSubview:self.viewA];
    [self.viewA addSubview:self.viewB];
    [self.viewB addSubview:self.viewC];
    [self.viewC addSubview:self.viewD];
}

- (ViewA *)viewA {
    if (_viewA == nil) {
        _viewA = [ViewA new];
        _viewA.frame = self.view.bounds;
        _viewA.backgroundColor = [UIColor whiteColor];
    }
    return _viewA;
}

- (ViewB *)viewB {
    if (_viewB == nil) {
        _viewB = [ViewB new];
        CGFloat height = CGRectGetHeight(self.view.bounds);
        CGFloat width = CGRectGetWidth(self.view.bounds);
        _viewB.frame = CGRectMake(10, 10, width - 20, height / 2 - 20);
        _viewB.backgroundColor = [UIColor orangeColor];
    }
    return _viewB;
}

- (ViewC *)viewC {
    if (_viewC == nil) {
        _viewC = [ViewC new];
        CGFloat height = CGRectGetHeight(self.view.bounds);
        CGFloat width = CGRectGetWidth(self.view.bounds);
        _viewC.frame = CGRectMake(10, 10, width - 40, height / 4 - 20);
        _viewC.backgroundColor = [UIColor blueColor];
    }
    return _viewC;
}

- (ViewD *)viewD {
    if (_viewD == nil) {
        _viewD = [ViewD new];
        CGFloat height = CGRectGetHeight(self.view.bounds);
        CGFloat width = CGRectGetWidth(self.view.bounds);
        _viewD.frame = CGRectMake(10, 10, width - 60, height / 8);
        _viewD.backgroundColor = [UIColor greenColor];
    }
    return _viewD;
}

@end
