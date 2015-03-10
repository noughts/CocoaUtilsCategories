//
//  UITableView+NNUtils.m
//  Pods
//
//  Created by noughts on 2015/03/11.
//
//

#import "UITableView+NNUtils.h"

@implementation UITableView (NNUtils)

-(void)setContentInsetTop:(CGFloat)value{
	self.contentInset = UIEdgeInsetsMake( value, self.contentInset.left, self.contentInset.bottom, self.contentInset.right );
}
-(void)setContentInsetLeft:(CGFloat)value{
	self.contentInset = UIEdgeInsetsMake( self.contentInset.top, value, self.contentInset.bottom, self.contentInset.right );
}
-(void)setContentInsetBottom:(CGFloat)value{
	self.contentInset = UIEdgeInsetsMake( self.contentInset.top, self.contentInset.left, value, self.contentInset.right );
}
-(void)setContentInsetRight:(CGFloat)value{
	self.contentInset = UIEdgeInsetsMake( self.contentInset.top, self.contentInset.left, self.contentInset.bottom, value );
}


-(CGFloat)contentInsetTop{
	return self.contentInset.top;
}
-(CGFloat)contentInsetLeft{
	return self.contentInset.left;
}
-(CGFloat)contentInsetBottom{
	return self.contentInset.bottom;
}
-(CGFloat)contentInsetRight{
	return self.contentInset.right;
}



@end
