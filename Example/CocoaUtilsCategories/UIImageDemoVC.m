//
//  UIImageDemoVC.m
//  CocoaUtilsCategories
//
//  Created by noughts on 2015/02/16.
//  Copyright (c) 2015年 koichi yamamoto. All rights reserved.
//

#import "UIImageDemoVC.h"
#import <UIImage+NNUtils.h>
#import <NNProfiler/NNProfiler.h>

@implementation UIImageDemoVC{
	__weak IBOutlet UIImageView* _iv;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	
	UIImage* img = [UIImage imageNamed:@"screen.jpg"];
	NSAssert( img, @"" );
	[NNProfiler start:@"crop"];
	img = [img cropToDeviceAspectRatio];
	[NNProfiler end:@"crop"];
	_iv.image = img;
}


@end
