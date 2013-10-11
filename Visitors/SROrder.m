//
//  SROrder.m
//  Visitors
//
//  Created by Steven W. Riggins on 10/10/13.
//  Copyright (c) 2013 Steve Riggins. All rights reserved.
//

#import "SROrder.h"

@implementation SROrder

// We are being asked to accept this visitor
// We do, so tell the visitor to visit us
- (void)accept:(id<SROrderVisitorProtocol>)visitor
{
    [visitor visitOrder:self];
}
@end
