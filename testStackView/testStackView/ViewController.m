//
//  ViewController.m
//  testStackView
//
//  Created by WoodGao on 15/12/25.
//  Copyright © 2015年 wood. All rights reserved.
//

#import "ViewController.h"

struct FRAMESIZE_INFO{
    /**
     *  整个视图的宽度
     */
    float width;
    
    /**
     *  整个视图的高度
     */
    float height;
};

@interface ViewController (){
    struct FRAMESIZE_INFO m_frameInfo;
    UIStackView *m_mainStackView;
}

@end

@implementation ViewController

#pragma mark - 创建界面
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self makeUI];
}

/**
 *  初始化界面布局参数
 */
-(void)initFrameInfo{
    m_frameInfo.width  = self.view.bounds.size.width;
    m_frameInfo.height = self.view.bounds.size.height;
}

/**
 *  创建UI界面
 */
-(void)makeUI{
    [self initFrameInfo];
    [self makeUIofStackView];
    [self makeUIStackViewAddViewsWithDistribution:UIStackViewDistributionFillProportionally];
}

/**
 *  创建stackView布局视图
 */
-(void)makeUIofStackView{
    CGRect rect = CGRectMake(0, 0, m_frameInfo.width, m_frameInfo.height);
    m_mainStackView = [[UIStackView alloc] initWithFrame:rect];
    
    /**
     *  因为继承于UIView，所以有backgroundColor属性。
     *  布局控件，设置背景色也是没有用的
     */
    m_mainStackView.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:m_mainStackView];
}

/**
 *  在stackview中添加视图，并设置布局属性
 */
-(void)makeUIStackViewAddViewsWithDistribution:(UIStackViewDistribution)distribution{
    
    m_mainStackView.distribution = distribution;
    
    CGRect rectBlue  = CGRectMake(0, 0, m_frameInfo.width/6 * 3, m_frameInfo.height);
    CGRect rectGreen = CGRectMake(0, 0, m_frameInfo.width/6 * 2, m_frameInfo.height);
    CGRect rectRed   = CGRectMake(0, 0, m_frameInfo.width/6 * 1, m_frameInfo.height);
    
    UILabel *blueLable  = [[UILabel alloc] initWithFrame:rectBlue];
    UILabel *greenLable = [[UILabel alloc] initWithFrame:rectGreen];
    UILabel *redLable   = [[UILabel alloc] initWithFrame:rectRed];
    blueLable.backgroundColor  = [UIColor blueColor];
    greenLable.backgroundColor = [UIColor greenColor];
    redLable.backgroundColor   = [UIColor redColor];
    blueLable.text = @"1";
    greenLable.text = @"11";
    redLable.text = @"111";
    blueLable.textAlignment  = NSTextAlignmentCenter;
    greenLable.textAlignment = NSTextAlignmentCenter;
    redLable.textAlignment   = NSTextAlignmentCenter;
    
    [m_mainStackView addArrangedSubview:blueLable];
    [m_mainStackView addArrangedSubview:greenLable];
    [m_mainStackView addArrangedSubview:redLable];
    
}

@end
