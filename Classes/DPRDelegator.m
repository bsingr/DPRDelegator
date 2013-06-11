//
//  DPRDelegator.m
//
//  Created by dpree on 08.06.13.
//  Copyright (c) 2013 dpree. All rights reserved.
//

#import "DPRDelegator.h"

@implementation DPRDelegator

+(void)delegate:(id)delegate try:(SEL)selector with:(NSArray *)arguments
{
    if (delegate) {
        if ([delegate respondsToSelector:selector]) {
            NSMethodSignature *signature = [delegate methodSignatureForSelector:selector];
            unsigned long expectedArgCount = [signature numberOfArguments];
            int reservedArgumentCount = 2;
            if (arguments.count == (expectedArgCount - reservedArgumentCount)) {
                NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:signature];
                [invocation setTarget:delegate];
                [invocation setSelector:selector];
                for (int i = 0; i < arguments.count; i++) {
                    id argument = [arguments objectAtIndex:i];
                    [invocation setArgument:&argument atIndex:(i + reservedArgumentCount)];
                }
                [invocation invoke];
            } else {
                [NSException raise:@"Wrong number of arguments" format:@"%@ received %ld instead of %ld", NSStringFromSelector(selector), (unsigned long) arguments.count, expectedArgCount];
            }
        }
    }
}

@end
