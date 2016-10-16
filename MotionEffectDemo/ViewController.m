//
//  ViewController.m
//  MotionEffectDemo
//
//  Created by 王召洲 on 2016/10/16.
//  Copyright © 2016年 wyzc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,strong) UIView * viewA;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _viewA = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    _viewA.center = self.view.center;
    [self.view addSubview:_viewA];
    _viewA.backgroundColor = [UIColor colorWithRed: arc4random_uniform(256)/255.0  green:arc4random_uniform(256)/255.0 blue: arc4random_uniform(256)/255.0 alpha:1 ];
    //UIMotionEffect 是抽象基类，只能用它的子类或自定义子类
    UIInterpolatingMotionEffect *effect = [[UIInterpolatingMotionEffect alloc]initWithKeyPath:@"center.x" type:(UIInterpolatingMotionEffectTypeTiltAlongHorizontalAxis)];
    effect.maximumRelativeValue = @-300;
    effect.minimumRelativeValue = @300;
    [_viewA addMotionEffect:effect];
    
    effect = [[UIInterpolatingMotionEffect alloc]initWithKeyPath:@"layer.shadowOffset.width" type:(UIInterpolatingMotionEffectTypeTiltAlongHorizontalAxis)];
    _viewA.layer.shadowColor = [UIColor blueColor].CGColor;
    effect.minimumRelativeValue = @100;
    effect.maximumRelativeValue = @-100;
    [_viewA addMotionEffect:effect];
    //_viewA.layer.shadowOffset.width
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
