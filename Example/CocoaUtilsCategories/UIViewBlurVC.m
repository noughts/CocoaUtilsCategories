//
//  UIViewBlurVC.m
//  CocoaUtilsCategories
//
//  Created by noughts on 2015/02/19.
//  Copyright (c) 2015年 koichi yamamoto. All rights reserved.
//

#import "UIViewBlurVC.h"
#import <UIView+NNUtils.h>
#import <UIImage+NNUtils.h>

@implementation UIViewBlurVC{
	__weak IBOutlet UIView* _stage_view;
	__weak IBOutlet UIImageView* _iv;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)viewDidAppear:(BOOL)animated{
	[super viewDidAppear:animated];
	
	UIImage* img = [_stage_view screenCaptureAfterScreenUpdates:NO];
	img = [img imageByApplyingBlurWithRadius:20 optimized:NO tintColor:nil saturationDeltaFactor:1];
	_iv.image = img;
}


@end
