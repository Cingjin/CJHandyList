//
//  ViewController.m
//  CJListView
//
//  Created by Anmo on 2019/12/12.
//  Copyright © 2019 com.Cingjin. All rights reserved.
//

#import "ViewController.h"
#import "CJTableViewController.h"
#import "CJCollectionViewController.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"CJList";
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self cj_addSubView];
}

- (void)cj_addSubView {
    
    CGFloat screenW = [UIScreen mainScreen].bounds.size.width;
    CGFloat screenH = [UIScreen mainScreen].bounds.size.height;
    UIButton * tableBtn = [[UIButton alloc]initWithFrame:CGRectMake(50, 200, screenW - 100, 60)];
    tableBtn.layer.cornerRadius = 30;
    tableBtn.tag = 1;
    tableBtn.titleLabel.font = [UIFont boldSystemFontOfSize:25];
    tableBtn.backgroundColor = [[UIColor orangeColor]colorWithAlphaComponent:0.8];
    [tableBtn setTitle:@"UITableView Example" forState:UIControlStateNormal];
    [tableBtn addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:tableBtn];
    
    UIButton * collectionBtn = [[UIButton alloc]initWithFrame:CGRectMake(50, CGRectGetMaxY(tableBtn.frame) + 20, screenW - 100, 60)];
    collectionBtn.layer.cornerRadius = 30;
    collectionBtn.tag = 2;
    collectionBtn.titleLabel.font = [UIFont boldSystemFontOfSize:25];
    collectionBtn.backgroundColor = [[UIColor orangeColor]colorWithAlphaComponent:0.8];
    [collectionBtn setTitle:@"UICollectionView Example" forState:UIControlStateNormal];
    [collectionBtn addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:collectionBtn];
    
}

- (void)btnAction:(UIButton *)sender {
    if (sender.tag == 1) {
        CJTableViewController * tableVc = [[CJTableViewController alloc]init];
        [self.navigationController pushViewController:tableVc animated:YES];
    }else {
        CJCollectionViewController * tableVc = [[CJCollectionViewController alloc]init];
        [self.navigationController pushViewController:tableVc animated:YES];
    }
}



@end
