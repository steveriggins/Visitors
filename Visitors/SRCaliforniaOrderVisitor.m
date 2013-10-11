//
//  SRCaliforniaOrderVisitor.m
//  Visitors
//
//  Created by Steven W. Riggins on 10/10/13.
//  Copyright (c) 2013 Steve Riggins. All rights reserved.
//

#import "SRCaliforniaOrderVisitor.h"
#import "SRStateTaxOrderVisitor+Protected.h"

@implementation SRCaliforniaOrderVisitor
- (void)visitOrder:(id<SROrderProtocol>)order
{
    CGFloat tax = .5 * order.subtotal;
    self.totalTax += tax;
}

@end
