//
//  UIButtonDemoVC.m
//  CocoaUtilsCategoriesDemo
//
//  Created by noughts on 2015/02/12.
//  Copyright (c) 2015年 noughts. All rights reserved.
//

#import "UIButtonDemoVC.h"
#import <UIButton+NNUtils.h>
#import <UIGestureRecognizer+NNUtils.h>

@implementation UIButtonDemoVC

-(IBAction)onIndicatorTap:(UIGestureRecognizer*)sender{
	UITableViewCell* cell = [sender attachedTableViewCell];
	NSLog( @"%@", [self.tableView indexPathForCell:cell] );
}


-(IBAction)onButtonTap:(UIButton*)sender{
	UITableViewCell* cell = [sender attachedTableViewCell];
	NSLog( @"%@", [self.tableView indexPathForCell:cell] );
}



@end
