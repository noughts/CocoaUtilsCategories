//
//  UIButton+NNUtils.m
//  CocoaUtilsCategoriesDemo
//
//  Created by noughts on 2015/02/12.
//  Copyright (c) 2015年 noughts. All rights reserved.
//

#import "UIButton+NNUtils.h"

@implementation UIButton (NNUtils)

/// 自身が配置されているUICollectionViewCell
-(UICollectionViewCell*)attachedCollectionViewCell{
	UIView* currentView = self;
	while (YES) {
		UIView* superView = currentView.superview;
		if( !superView ){
			return nil;
		}
		if( [superView isKindOfClass:[UICollectionViewCell class]] ){
			return (UICollectionViewCell*)superView;
		} else {
			currentView = superView;
		}
	}
}


@end
