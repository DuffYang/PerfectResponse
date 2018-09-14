//
//  ViewD.m
//  PerfectResponse
//
//  Created by Yang,Dongzheng on 2018/9/13.
//  Copyright © 2018年 Yang,Dongzheng. All rights reserved.
//

#import "ViewD.h"

@implementation ViewD

- (void)layoutSubviews {
    [super layoutSubviews];
    
    UILabel *label = [UILabel new];
    label.text = @"ViewD";
    label.textAlignment = NSTextAlignmentCenter;
    label.frame = CGRectMake(0, CGRectGetHeight(self.bounds) - 44, CGRectGetWidth(self.bounds), 44);
    [self addSubview:label];
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    NSLog(@"hitTest进入D_View");
    UIView * view = [super hitTest:point withEvent:event];
    NSLog(@"hitTest离开D_View");
    return view;
}

- (BOOL)pointInside:(CGPoint)point withEvent:(nullable UIEvent *)event {
    NSLog(@"pointInsideD_view");
    BOOL isInside = [super pointInside:point withEvent:event];
    NSLog(@"pointInsideD_view isInside:%d",isInside);
    return isInside;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
