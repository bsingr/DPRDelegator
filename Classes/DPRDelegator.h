//
//  DPRDelegator.h
//
//  Created by dpree on 08.06.13.
//  Copyright (c) 2013 dpree. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DPRDelegator : NSObject

+(void)tryInvoke:(id)delegate withSelector:(SEL)selector arguments:(NSArray *)arguments;

@end
