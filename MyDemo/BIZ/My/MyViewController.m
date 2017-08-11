//
//  MyViewController.m
//  MyDemo
//
//  Created by sunny on 2017/8/10.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupNav];
    [self setupUI];
}

/// 设置导航栏右边的按钮
- (void)setupNav {
    UIBarButtonItem *settingButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"setting"] style:UIBarButtonItemStylePlain target:self action:@selector(settingBtnClick)];
    self.navigationItem.rightBarButtonItem = settingButton;
}

- (void)settingBtnClick {
    NNsettingViewController *settingVC = [[NNsettingViewController alloc] init];
    [self.navigationController pushViewController:settingVC animated:YES];
}

- (void)setupUI {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:button];
    CGSize size      = CGSizeMake(100, 40);
    [button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.size.mas_equalTo(size);
    }];
    [button setTitle:@"点击进入" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(btnClicked) forControlEvents:UIControlEventTouchUpInside];
}

- (void)btnClicked {
    NNPersonalHomePageController *personHomePageVC = [[NNPersonalHomePageController alloc] init];
    personHomePageVC.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:personHomePageVC animated:YES];
}

@end
