//
//  ChilvVC.m
//  CocoaUtilsCategories
//
//  Created by noughts on 2015/02/26.
//  Copyright (c) 2015年 koichi yamamoto. All rights reserved.
//

#import "ChildVC.h"
#import <UIViewController+NNUtils.h>
#import <NBULog.h>

@implementation ChildVC


- (void)viewDidLoad {
	[super viewDidLoad];
	NBULogVerbose(@"viewDidLoad");
}

-(void)viewWillAppear:(BOOL)animated{
	[super viewWillAppear:animated];
	NBULogVerbose(@"viewWillAppear");
}

-(void)viewDidAppear:(BOOL)animated{
	[super viewDidAppear:animated];
	NBULogVerbose(@"viewDidAppear");
}

-(void)viewWillDisappear:(BOOL)animated{
	[super viewWillDisappear:animated];
	NBULogVerbose(@"viewWillDisappear");
}

-(void)viewDidDisappear:(BOOL)animated{
	[super viewDidDisappear:animated];
	NBULogVerbose(@"viewDidDisappear");
}


-(void)willMoveToParentViewController:(UIViewController *)parent{
	[super willMoveToParentViewController:parent];
	NBULogVerbose(@"willMoveToParentViewController parent=%@", parent);
}


-(void)didMoveToParentViewController:(UIViewController *)parent{
	[super didMoveToParentViewController:parent];
	NBULogVerbose(@"didMoveToParentViewController parent=%@", parent);
}


-(void)dealloc{
	NBULogVerbose(@"dealloc");
}






-(IBAction)onCloseButtonTap:(id)sender{
	[self removeFromContainerControllerAnimated:YES];
}


@end
