//
//  JJFindViewController.m
//  navigationControllerDemo
//
//  Created by 刘毅 on 2017/9/1.
//  Copyright © 2017年 vpjacob. All rights reserved.
//

#import "JJFindViewController.h"
#import "JJSecendViewController.h"

@interface JJFindViewController ()

@end

@implementation JJFindViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeContactAdd];
    btn.center = self.view.center;
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(actionBtn) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)actionBtn{
    JJSecendViewController *vc = [JJSecendViewController new];
    [self.navigationController pushViewController:vc animated:YES];
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
