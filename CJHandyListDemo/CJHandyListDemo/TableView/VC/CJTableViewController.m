//
//  CJTableViewController.m
//  CJListView
//
//  Created by Anmo on 2019/12/13.
//  Copyright © 2019 com.Cingjin. All rights reserved.
//

#import "CJTableViewController.h"
#import "CJTableModel.h"
#import "CJTableViewCell.h"

///
#import "CJListHeader.h"

@interface CJTableViewController ()

/** UITableView*/
@property (nonatomic ,strong) UITableView   * tableView;

@end

@implementation CJTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"TableView";
 
    [self cj_addSubView];
    [self cj_getData];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    
    self.tableView.frame = self.view.bounds;
    
}

- (void)cj_addSubView {
    [self.view addSubview:self.tableView];
}

- (void)cj_getData {
    
    
    
    // ① 模拟构建数据模型
    
    NSMutableArray *modelArray = [NSMutableArray array];
    for (int i = 0; i < 20; ++i) {
        CJTableModel *model = [CJTableModel new];
        model.text = [NSString stringWithFormat:@"CJ_第_%d_个", i];
        [modelArray addObject:model];
    }
    // ② 构建配置对象
    //使用默认实现的配置对象（能满足大部分需求）
    NSMutableArray *configArray = [NSMutableArray array];
    for (int i = 0; i<modelArray.count;i++) {
        
        CJTableModel *model = modelArray[i];
        CJTableCellConfig * cellConfig = [CJTableCellConfig new];
        cellConfig.model = model;
        cellConfig.cellClass = CJTableViewCell.self;
        cellConfig.defaultHeight = i%2==0?100:200;
        [configArray addObject:cellConfig];
    }
    
    [self.tableView.cj_rowArray addObjectsFromArray:configArray];
//    [self.tableView reloadData];
}

- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        _tableView.backgroundColor = [UIColor whiteColor];
        _tableView.rowHeight = 60;
        _tableView.estimatedSectionFooterHeight = 0;
        _tableView.estimatedSectionHeaderHeight = 0;
    }
    return _tableView;
}


@end
