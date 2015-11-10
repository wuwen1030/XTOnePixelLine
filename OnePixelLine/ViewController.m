//
//  ViewController.m
//  OnePixelLine
//
//  Created by Ben on 15/7/12.
//  Copyright (c) 2015年 X-Team. All rights reserved.
//

#import "ViewController.h"
#import "XTOnePixelLine.h"
#import <Masonry/Masonry.h>

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *view2;
@property (weak, nonatomic) IBOutlet UIView *view3;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Left
    XTOnePixelLine *leftLine = [[XTOnePixelLine alloc] init];
    leftLine.lineColor = [UIColor redColor];
    leftLine.linePosition = XTLinePositionLeft;
    [self.view2 addSubview:leftLine];
    
    [leftLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view2.mas_top).with.offset(20.0f);
        make.left.equalTo(self.view2.mas_left).with.offset(10.0f);
        make.bottom.equalTo(self.view2.mas_bottom).with.offset(-20.0f);
        make.width.equalTo(@1.0f);
    }];
    
    // Top
    XTOnePixelLine *topLine = [[XTOnePixelLine alloc] init];
    topLine.lineColor = [UIColor blueColor];
    [self.view2 addSubview:topLine];
    
    [topLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view2.mas_top).with.offset(10.0f);
        make.left.equalTo(self.view2.mas_left).with.offset(20.0f);
        make.right.equalTo(self.view2.mas_right).with.offset(-20.0f);
        make.height.equalTo(@1.0f);
    }];
    
    // Right
    
    XTOnePixelLine *rightLine = [[XTOnePixelLine alloc] init];
    rightLine.lineColor = [UIColor greenColor];
    rightLine.linePosition = XTLinePositionRight;
    [self.view2 addSubview:rightLine];
    
    [rightLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view2.mas_top).with.offset(20.0f);
        make.right.equalTo(self.view2.mas_right).with.offset(-10.0f);
        make.bottom.equalTo(self.view2.mas_bottom).with.offset(-20.0f);
        make.width.equalTo(@1.0f);
    }];

    
    // Bottom
    XTOnePixelLine *bottomLine = [[XTOnePixelLine alloc] init];
    bottomLine.linePosition = XTLinePositionBottom;
    [self.view2 addSubview:bottomLine];
    
    [bottomLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view2.mas_left).with.offset(20.0f);
        make.right.equalTo(self.view2.mas_right).with.offset(-20.0f);
        make.bottom.equalTo(self.view2.mas_bottom).with.offset(-10.0f);
        make.height.equalTo(@1.0f);
    }];

}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    // Left
    XTOnePixelLine *leftLine = [[XTOnePixelLine alloc] initWithFrame:CGRectMake(10, 20, 1, self.view3.frame.size.height - 40)];
    leftLine.linePosition = XTLinePositionLeft;
    leftLine.lineColor = [UIColor redColor];
    [self.view3 addSubview:leftLine];
    
    // Top
    XTOnePixelLine *topLine = [[XTOnePixelLine alloc] initWithFrame:CGRectMake(20, 10, self.view3.frame.size.width - 40, 1)];
    topLine.lineColor = [UIColor blueColor];
    [self.view3 addSubview:topLine];

    // Right
    XTOnePixelLine *rightLine = [[XTOnePixelLine alloc] initWithFrame:CGRectMake(self.view3.frame.size.width - 10, 20, 1, self.view3.frame.size.height - 40)];
    rightLine.linePosition = XTLinePositionRight;
    rightLine.lineColor = [UIColor greenColor];
    [self.view3 addSubview:rightLine];

    // Bottom
    XTOnePixelLine *bottomLine = [[XTOnePixelLine alloc] initWithFrame:CGRectMake(20, self.view3.frame.size.height - 10, self.view3.frame.size.width - 40, 1)];
    bottomLine.linePosition = XTLinePositionBottom;
    [self.view3 addSubview:bottomLine];

}

@end
