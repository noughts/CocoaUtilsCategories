//
//  NSURL+Utils.m
//  CocoaUtilsCategoriesDemo
//
//  Created by noughts on 2014/10/14.
//  Copyright (c) 2014年 noughts. All rights reserved.
//

#import "NSObject+NNUtils.h"
#import "NSURL+NNUtils.h"
#import "objc/runtime.h"

@implementation NSURL (NNUtils)

-(void)dump{
	[super dumpWithIgnorePropertyNames:@[@"previewItemTitle", @"fileSystemRepresentation"]];
}

@end
