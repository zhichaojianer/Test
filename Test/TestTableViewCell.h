//
//  TestTableViewCell.h
//  Test
//
//  Created by 刘超-EriC on 15/12/16.
//  Copyright © 2015年 刘超. All rights reserved.
//

#import <UIKit/UIKit.h>

static NSString *TableViewCellIdentifier = @"TableViewCellIdentifier";

@interface TestTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *ui_label1;
@property (weak, nonatomic) IBOutlet UILabel *ui_label2;

@end
