//
//  BlurVC.m
//  CocoaUtilsCategories
//
//  Created by noughts on 2015/02/19.
//  Copyright (c) 2015年 koichi yamamoto. All rights reserved.
//

#import "ImageBlurVC.h"
#import <UIImage+NNUtils.h>


@implementation ImageBlurVC{
	__weak IBOutlet UIImageView* _iv;
}

- (void)viewDidLoad {
    [super viewDidLoad];

	UIImage* img = [UIImage imageNamed:@"screen.jpg"];
	img = [img imageByApplyingBlurWithRadius:10 tintColor:nil saturationDeltaFactor:1];
	_iv.image = img;
}


@end
