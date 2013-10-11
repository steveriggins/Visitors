//
//  SROregonOrderVisitor.m
//  Visitors
//
//  Created by Steven W. Riggins on 10/10/13.
//  Copyright (c) 2013 Steve Riggins. All rights reserved.
//

#import "SROregonOrderVisitor.h"
#import "SRStateTaxOrderVisitor+Protected.h"

@implementation SROregonOrderVisitor

- (void)visitOrder:(id<SROrderProtocol>)order
{
    CGFloat tax = 0.0 * order.subtotal;
    self.totalTax += tax;
}

@end
