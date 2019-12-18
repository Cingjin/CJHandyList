//
//  CJTableViewCell.m
//  CJListView
//
//  Created by Anmo on 2019/12/13.
//  Copyright © 2019 com.Cingjin. All rights reserved.
//

#import "CJTableViewCell.h"
#import "CJTableModel.h"
#import "CJListHeader.h"

@interface CJTableViewCell ()<CJTableCellProtocol>



@end

@implementation CJTableViewCell

#pragma mark - <CJTableCellProtocol>

- (void)cj_setCellConfig:(id<CJTableCellConfig>)config {
    CJTableModel * model = config.cj_cellModel;
    self.textLabel.text = model.text;
}

- (void)cj_didSelectedAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"%ld",indexPath.row);
}


@end
