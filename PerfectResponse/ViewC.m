//
//  ViewC.m
//  PerfectResponse
//
//  Created by Yang,Dongzheng on 2018/9/13.
//  Copyright © 2018年 Yang,Dongzheng. All rights reserved.
//

#import "ViewC.h"

@implementation ViewC

- (void)layoutSubviews {
    [super layoutSubviews];
    
    UILabel *label = [UILabel new];
    label.text = @"ViewC";
    label.textAlignment = NSTextAlignmentCenter;
    label.frame = CGRectMake(0, CGRectGetHeight(self.bounds) - 44, CGRectGetWidth(self.bounds), 44);
    [self addSubview:label];
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    NSLog(@"hitTest进入C_View");
    UIView * view = [super hitTest:point withEvent:event];
    NSLog(@"hitTest离开C_View");
    return view;
}

- (BOOL)pointInside:(CGPoint)point withEvent:(nullable UIEvent *)event {
    NSLog(@"pointInsideC_view");
    BOOL isInside = [super pointInside:point withEvent:event];
    NSLog(@"pointInsideC_view isInside:%d", isInside);
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
