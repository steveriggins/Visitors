//
//  SRWashingtonOrderVisitor.m
//  Visitors
//
//  Created by Steven W. Riggins on 10/10/13.
//  Copyright (c) 2013 Steve Riggins. All rights reserved.
//

#import "SRWashingtonOrderVisitor.h"
#import "SRStateTaxOrderVisitor+Protected.h"

@implementation SRWashingtonOrderVisitor
- (void)visitOrder:(id<SROrderProtocol>)order
{
    CGFloat tax = 0.09 * order.subtotal;
    self.totalTax += tax;
}

@end
