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
    [self makeUIStackViewAddViewsWithDistribution:UIStackViewDistributionEqualSpacing];
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
    
    UILabel *blueLable  = [[UILabel alloc] init];
    UILabel *greenLable = [[UILabel alloc] init];
    UILabel *redLable   = [[UILabel alloc] init];
    UILabel *blackLable = [[UILabel alloc] init];
    UILabel *yellowLable = [[UILabel alloc] init];
    UILabel *pinkLable   = [[UILabel alloc] init];
    
    blueLable.backgroundColor  = [UIColor blueColor];
    greenLable.backgroundColor = [UIColor greenColor];
    redLable.backgroundColor   = [UIColor redColor];
    blackLable.backgroundColor  = [UIColor blackColor];
    yellowLable.backgroundColor = [UIColor yellowColor];
    pinkLable.backgroundColor   = [UIColor purpleColor];
    
    blueLable.text = @"1";
    greenLable.text = @"11";
    redLable.text = @"111";
    blackLable.text = @"1";
    yellowLable.text = @"11";
    pinkLable.text = @"111";
    blueLable.textAlignment  = NSTextAlignmentCenter;
    greenLable.textAlignment = NSTextAlignmentCenter;
    redLable.textAlignment   = NSTextAlignmentCenter;
    blackLable.textAlignment  = NSTextAlignmentCenter;
    yellowLable.textAlignment = NSTextAlignmentCenter;
    pinkLable.textAlignment   = NSTextAlignmentCenter;
    
    [m_mainStackView addArrangedSubview:blueLable];
    [m_mainStackView addArrangedSubview:greenLable];
    [m_mainStackView addArrangedSubview:redLable];
    [m_mainStackView addArrangedSubview:blackLable];
    [m_mainStackView addArrangedSubview:yellowLable];
    [m_mainStackView addArrangedSubview:pinkLable];
    
}

@end
