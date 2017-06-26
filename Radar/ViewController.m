//
//  ViewController.m
//  Radar
//
//  Created by 黑炭 on 2017/6/26.
//  Copyright © 2017年 黑炭. All rights reserved.
//

#import "ViewController.h"
#import "Radar.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(doradar) userInfo:nil repeats:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)doradar
{
    CGPoint point = self.view.center;
    Radar *radar = [[Radar alloc] initWithFrame:CGRectMake(point.x-150, point.y-150, 300, 300)];
//    radar.center = point;
    radar.backgroundColor = [UIColor clearColor];
    [self.view addSubview:radar];
    
    
    [UIView animateWithDuration:3 animations:^{
        //CGAffineTransformScale 放大
        radar.transform = CGAffineTransformScale(radar.transform, 4, 4);
        radar.alpha = 0;
    }
    completion:^(BOOL finished)
     {
         [radar removeFromSuperview];
     }];
}

@end
