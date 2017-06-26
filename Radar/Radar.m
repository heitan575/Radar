//
//  Radar.m
//  Radar
//
//  Created by 黑炭 on 2017/6/26.
//  Copyright © 2017年 黑炭. All rights reserved.
//

#import "Radar.h"

@implementation Radar

- (void)drawRect:(CGRect)rect {
    
    // 半径
    CGFloat rabius = 60;
    // 开始角
    CGFloat startAngle = 0;
    // 中心点
    CGPoint point = CGPointMake(150, 150);  // 中心点我手动写的,你看看怎么弄合适 自己在搞一下
    
    // 结束角
    CGFloat endAngle = 2*M_PI;
    
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:point radius:rabius startAngle:startAngle endAngle:endAngle clockwise:YES];
    
    CAShapeLayer *layer = [[CAShapeLayer alloc]init];
    layer.path = path.CGPath;       // 添加路径 下面三个同理
    
    layer.strokeColor = [UIColor redColor].CGColor;
    layer.fillColor = [UIColor clearColor].CGColor;
    layer.lineWidth = 0.1f;
    
    [self.layer addSublayer:layer];
    
}
@end
