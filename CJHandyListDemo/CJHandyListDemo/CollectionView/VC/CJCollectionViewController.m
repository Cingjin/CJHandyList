//
//  CJCollectionViewController.m
//  CJHandyListDemo
//
//  Created by Anmo on 2019/12/17.
//  Copyright © 2019 com.Cingjin. All rights reserved.
//

#import "CJCollectionViewController.h"
#import "CJCollectionModel.h"
#import "CJCollectionViewCell.h"

///
#import "CJListHeader.h"

@interface CJCollectionViewController ()

@property (nonatomic, strong) UICollectionView *collectionView;

@end

@implementation CJCollectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"CollectionView";
    
    [self cj_addSubView];
    [self cj_getData];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    
    self.collectionView.frame = self.view.bounds;
    
}

- (void)cj_addSubView {
    [self.view addSubview:self.collectionView];
}

- (void)cj_getData {
    
    
    
    // ① 模拟构建数据模型
    
    NSMutableArray *modelArray = [NSMutableArray array];
    for (int i = 0; i < 20; ++i) {
        CJCollectionModel *model = [CJCollectionModel new];
        model.text = [NSString stringWithFormat:@"CJ_第_%d_个", i];
        [modelArray addObject:model];
    }
    // ② 构建配置对象
    //使用默认实现的配置对象（能满足大部分需求）
    NSMutableArray *configArray = [NSMutableArray array];
    for (int i = 0; i<modelArray.count;i++) {
        
        CJCollectionModel *model = modelArray[i];
        CJCollectionCellConfig * cellConfig = [CJCollectionCellConfig new];
        cellConfig.model = model;
        cellConfig.cellClass = CJCollectionViewCell.self;
        [configArray addObject:cellConfig];
    }
    
    self.collectionView.cj_minimumLineSpacing = 10;
    self.collectionView.cj_minimumInteritemSpacing = 15;
    self.collectionView.cj_inset = UIEdgeInsetsMake(10, 15, 10, 15);
    [self.collectionView.cj_rowArray addObjectsFromArray:configArray];
    [self.collectionView reloadData];
    
}

#pragma mark - getter

- (UICollectionView *)collectionView {
    if (!_collectionView) {
        UICollectionViewFlowLayout *layout = UICollectionViewFlowLayout.new;
        _collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:layout];
        _collectionView.backgroundColor = UIColor.whiteColor;
        
        //        layout.itemSize = CGSizeMake(60, 60);
        //        layout.sectionInset = UIEdgeInsetsMake(10, 10, 10, 10);
        //        layout.minimumInteritemSpacing = 50;
        //        layout.minimumLineSpacing = 50;
        //将该属性设置为 NO 来让 UICollectionViewFlowLayout 的布局属性有效。
        //        _collectionView.ybhc_collectionIMP.enabledFlowLayoutProperties = YES;
    }
    return _collectionView;
}


@end
