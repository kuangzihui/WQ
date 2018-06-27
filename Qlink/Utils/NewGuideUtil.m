//
//  NewGuideUtil.m
//  Qlink
//
//  Created by Jelly Foo on 2018/6/26.
//  Copyright © 2018年 pan. All rights reserved.
//

#import "NewGuideUtil.h"
#import "UIView+BlockGesture.h"

@implementation NewGuideUtil

+ (UIView *)showNewGuideWithKey:(NSString *)key TapBlock:(void (^)(void))tapB {
    // 这里创建指引在这个视图在window上
    CGRect frame = [UIScreen mainScreen].bounds;
    UIView *bgView = [[UIView alloc]initWithFrame:frame];
//    bgView.backgroundColor = [UIColorFromRGB(0x323232) colorWithAlphaComponent:0.8];
    bgView.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.6];
    [bgView addTapActionWithBlock:^(UIGestureRecognizer *gestureRecoginzer) {
        UIView *tapView = gestureRecoginzer.view;
        [tapView removeFromSuperview];
        [tapView removeGestureRecognizer:gestureRecoginzer];
        [HWUserdefault insertObj:@(YES) withkey:key];
        if (tapB) {
            tapB();
        }
    }];
    [[UIApplication sharedApplication].keyWindow addSubview:bgView];
    
//    //create path 重点来了（**这里需要添加第一个路径）
//    UIBezierPath *path = [UIBezierPath bezierPathWithRect:frame];
//    // 这里添加第二个路径 （这个是圆）
//    [path appendPath:[UIBezierPath bezierPathWithArcCenter:CGPointMake(frame.size.width - 30, 42) radius:30 startAngle:0 endAngle:2*M_PI clockwise:NO]];
//    // 这里添加第二个路径 （这个是矩形）
//    //[path appendPath:[[UIBezierPath bezierPathWithRoundedRect:CGRectMake(frame.size.width/2.0-1, 234, frame.size.width/2.0+1, 55) cornerRadius:5] bezierPathByReversingPath]];
//    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
//    shapeLayer.path = path.CGPath;
//    //shapeLayer.strokeColor = [UIColor blueColor].CGColor;
//    [bgView.layer setMask:shapeLayer];
    
    return bgView;
}

@end
