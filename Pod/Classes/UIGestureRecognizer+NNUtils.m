//
//  UIGestureRecognizer+NNUtils.m
//  Pods
//
//  Created by noughts on 2015/02/12.
//
//

#import "UIGestureRecognizer+NNUtils.h"

@implementation UIGestureRecognizer (NNUtils)

/// 自身に関連付けられているUICollectionViewCell
-(UICollectionViewCell*)attachedCollectionViewCell{
	UIView* currentView = self.view;
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

/// 自身に関連付けられているUITableViewCell
-(UITableViewCell*)attachedTableViewCell{
	UIView* currentView = self.view;
	while (YES) {
		UIView* superView = currentView.superview;
		if( !superView ){
			return nil;
		}
		if( [superView isKindOfClass:[UITableViewCell class]] ){
			return (UITableViewCell*)superView;
		} else {
			currentView = superView;
		}
	}
}

@end
