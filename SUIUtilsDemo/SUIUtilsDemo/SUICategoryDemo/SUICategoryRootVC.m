//
//  SUICategoryRootVC.m
//  SUIUtilsDemo
//
//  Created by RandomSuio on 16/2/19.
//  Copyright © 2016年 RandomSuio. All rights reserved.
//

#import "SUICategoryRootVC.h"
#import "SUIUtils.h"

@interface SUICategoryRootVC ()

@end

@implementation SUICategoryRootVC


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    SUILogObj(self.sui_tableView);
    
    SUILogObj(self.sui_sourceVC);

    SUILogLine
}


@end


@interface SUICategoryRootTableVC : UITableViewController

@end

@implementation SUICategoryRootTableVC


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    SUILogObj(self.sui_tableView);
    
    SUILogObj(self.sui_sourceVC);
    
    SUILogLine
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    switch (indexPath.row) {
        case 0:
            [self sui_storyboardInstantiate:@"CategorySecond"];
            break;
        case 1:
            [self sui_storyboardInstantiate:@"SUICategoryDemo.CategorySecond" segueType:SUISegueTypeModal];
            break;
        case 2:
            [self sui_storyboardInstantiate:@"CategorySecondNav"];
            break;
        default:
            break;
    }
}


@end



