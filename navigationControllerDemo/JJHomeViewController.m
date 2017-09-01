//
//  JJHomeViewController.m
//  navigationControllerDemo
//
//  Created by 刘毅 on 2017/9/1.
//  Copyright © 2017年 vpjacob. All rights reserved.
//

#import "JJHomeViewController.h"
#import "JJSecendViewController.h"

@interface JJHomeViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UIView *naviView;
@end

@implementation JJHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    self.view.backgroundColor = [UIColor redColor];
    
//    UIButton *btn = [UIButton buttonWithType:UIButtonTypeContactAdd];
//    btn.center = self.view.center;
//    [self.view addSubview:btn];
//    [btn addTarget:self action:@selector(actionBtn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.tableView];
    [self.view addSubview:self.naviView];
}

- (void)actionBtn{
    JJSecendViewController *vc = [JJSecendViewController new];
    [self.navigationController pushViewController:vc animated:YES];
}


- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [self.navigationController setNavigationBarHidden:YES];
}

- (void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    [self.navigationController setNavigationBarHidden:NO];
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 30;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.textLabel.text = @(indexPath.row).description;
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    JJSecendViewController *vc = [JJSecendViewController new];
    [self.navigationController pushViewController:vc animated:YES];
}



- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    if (scrollView.contentOffset.y < 0) {
        [self showView:_naviView hidden:YES];
    }else if(scrollView.contentOffset.y > 50) {
        [self showView:_naviView hidden:NO];
        CGFloat alpha = MIN(1, 1 - ((50 + 64 - scrollView.contentOffset.y) / 64));
        [_naviView setBackgroundColor:[[UIColor redColor] colorWithAlphaComponent:alpha]];
    }else{
        [self showView:_naviView hidden:NO];
        [_naviView setBackgroundColor:[[UIColor redColor] colorWithAlphaComponent:0.0f]];
    }
}



-(void)showView:(UIView *)view hidden:(BOOL)hidden{
    CATransition *animation = [CATransition animation];
    animation.type = kCATransitionFade;
    animation.duration = 0.4;
    [view.layer addAnimation:animation forKey:nil];
    view.hidden = hidden;
}

- (UIView *)naviView{
    if (!_naviView) {
        _naviView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 375, 64)];
        _naviView.backgroundColor = [UIColor clearColor];
    }
    return _naviView;
}

- (UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc] init];
        _tableView.frame = CGRectMake(0, 0, 375, 667 - 49);
        _tableView.delegate = self;
        _tableView.dataSource = self;
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    }
    return _tableView;
}


@end
