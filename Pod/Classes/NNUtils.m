//
//  NNUtils.m
//  Pods
//
//  Created by noughts on 2015/02/12.
//
//

#import "NNUtils.h"

@implementation NNUtils

/// JavaScript の setTimetout
+(void)setTimeout:(void(^)(void))block delay:(float)delay{
	[NSTimer scheduledTimerWithTimeInterval:delay target:[NSBlockOperation blockOperationWithBlock:block] selector:@selector(main) userInfo:nil repeats:NO];
}

@end
