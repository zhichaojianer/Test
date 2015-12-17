//
//  ViewController.m
//  Test
//
//  Created by 刘超-EriC on 15/12/16.
//  Copyright © 2015年 刘超. All rights reserved.
//

#import "ViewController.h"
#import "TestTableViewCell.h"

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *ui_tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.ui_tableView registerNib:[UINib nibWithNibName:@"TestTableViewCell" bundle:nil] forCellReuseIdentifier:TableViewCellIdentifier];
    
    self.ui_tableView.estimatedRowHeight = 44;
    self.ui_tableView.rowHeight = UITableViewAutomaticDimension;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return UITableViewAutomaticDimension;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TestTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:TableViewCellIdentifier];
    
    switch (indexPath.row%5) {
        case 0:
            cell.ui_label1.text = @"这是一条测试UITableViewAutomaticDimension的信息";
            cell.ui_label2.text = @"UITableViewAutomaticDimension";
            
            break;
            
        case 1:
            cell.ui_label1.text = @"UITableViewAutomaticDimensionUITableViewAutomaticDimensionUITableViewAutomaticDimensionUITableViewAutomaticDimensionUITableViewAutomaticDimensionUITableViewAutomaticDimension";
            cell.ui_label2.text = @"UITableViewAutomaticDimension";

            break;
            
        case 2:
            cell.ui_label1.text = @"UITableViewAutomaticDimension";
            cell.ui_label2.text = @"UITableViewAutomaticDimension";

            break;
            
        case 3:
            cell.ui_label1.text = @"UITableViewAutomaticDimension";
            cell.ui_label2.text = @"UITableViewAutomaticDimensionUITableViewAutomaticDimensionUITableViewAutomaticDimensionUITableViewAutomaticDimensionUITableViewAutomaticDimensionUITableViewAutomaticDimension";
            
            break;
            
        case 4:
            cell.ui_label1.text = @"UITableViewAutomaticDimension";
            cell.ui_label2.text = @"UITableViewAutomaticDimension";
            
            break;
            
        default:
            break;
    }

    return cell;
}

@end
