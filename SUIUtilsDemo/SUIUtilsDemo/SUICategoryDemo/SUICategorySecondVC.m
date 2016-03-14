//
//  SUICategorySecondVC.m
//  SUIUtilsDemo
//
//  Created by RandomSuio on 16/2/19.
//  Copyright © 2016年 RandomSuio. All rights reserved.
//

#import "SUICategorySecondVC.h"
#import "SUIUtils.h"

@interface SUICategorySecondVC ()

@end

@implementation SUICategorySecondVC


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
//    SUILogObj(self.sui_tableView);
//    
//    SUILogObj(self.sui_sourceVC);
//
//    SUILogLine
    
    [self.sui_tableView registerNib:[UINib nibWithNibName:@"SUICategorySecondCell" bundle:nil] forCellReuseIdentifier:@"SUICategorySecondCell"];
    self.sui_tableView.sui_autoSizingCell = YES;
    [self.sui_tableView sui_reloadDataAry:@[@"1", @"2"]];
    [self.sui_tableView.sui_tableHelper didSelect:^(NSIndexPath * _Nonnull cIndexPath, id  _Nonnull model) {
       NSLog(@"dddd");
    }];
}


@end
