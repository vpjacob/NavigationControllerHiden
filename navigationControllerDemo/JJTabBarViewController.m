//
//  JJTabBarViewController.m
//  navigationControllerDemo
//
//  Created by 刘毅 on 2017/9/1.
//  Copyright © 2017年 vpjacob. All rights reserved.
//

#import "JJTabBarViewController.h"
#import "JJHomeViewController.h"
#import "JJMeViewController.h"
#import "JJFindViewController.h"
#import "JJLifeViewController.h"

@interface JJTabBarViewController ()

@end

@implementation JJTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    JJHomeViewController *homeVC = [JJHomeViewController new];
    JJMeViewController *meVC = [JJMeViewController new];
    JJFindViewController *findVC = [JJFindViewController new];
    JJLifeViewController *lifeVC = [JJLifeViewController new];

    homeVC.title = @"首页";
    meVC.title = @"我的";
    findVC.title = @"发现";
    lifeVC.title = @"生活";
    self.viewControllers = @[homeVC,findVC,lifeVC,meVC];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
