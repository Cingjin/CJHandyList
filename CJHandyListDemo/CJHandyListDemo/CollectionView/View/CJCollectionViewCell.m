//
//  CJCollectionViewCell.m
//  CJHandyListDemo
//
//  Created by Anmo on 2019/12/17.
//  Copyright © 2019 com.Cingjin. All rights reserved.
//

#import "CJCollectionViewCell.h"
#import "CJCollectionModel.h"
///
#import "CJListHeader.h"


@interface CJCollectionViewCell ()<CJCollectionCellProtocol>

/** titleLabel*/
@property (nonatomic ,strong) UILabel * titleLabel;

@end

@implementation CJCollectionViewCell

-(UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc]initWithFrame:self.contentView.bounds];
        _titleLabel.textColor = [UIColor whiteColor];
        _titleLabel.font = [UIFont boldSystemFontOfSize:20];
        _titleLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _titleLabel;
}

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        
        [self.contentView addSubview:self.titleLabel];
        self.contentView.backgroundColor = UIColor.orangeColor;
        self.contentView.layer.cornerRadius = 10;
    }
    return self;
}

#pragma mark - <CJCollectionCellProtocol>

- (void)cj_setCellConfig:(id<CJCollectionCellConfig>)config {
    CJCollectionModel * model = (CJCollectionModel *)config.cj_cellModel;
    self.titleLabel.text = model.text;
}

+ (CGSize)cj_sizeForCellWithConfig:(id<CJCollectionCellConfig>)config
                  reuseIndentifier:(NSString *)reuseIndentifier
                         indexPath:(NSIndexPath *)indexPath
                       sectionPack:(CJCollectionSection *)sectionPack
                        commonInfo:(CJCommonInfo *)commonInfo {
    // 一排三个
    CGFloat width = commonInfo.maxWidth - sectionPack.minimumInteritemSpacing * 2 - sectionPack.inset.left - sectionPack.inset.right;
    width = floor(width / 3.0);
    return CGSizeMake(width, 80);
}

- (void)cj_didSelectedAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"%ld",indexPath.row);
}

@end
