//
//  SRStateTaxOrderVisitor.m
//  Visitors
//
//  Created by Steven W. Riggins on 10/10/13.
//  Copyright (c) 2013 Steve Riggins. All rights reserved.
//

#import "SRStateTaxOrderVisitor.h"

@interface SRStateTaxOrderVisitor ()
@property (nonatomic, assign) CGFloat totalTax;
@property (nonatomic, assign) CGFloat total;
@end

@implementation SRStateTaxOrderVisitor

- (void)visitOrder:(id<SROrderProtocol>)order
{
    self.total += order.subtotal;
    CGFloat tax = self.taxRate * order.subtotal;
    self.totalTax += tax;
}

- (CGFloat)taxRate
{
    return 0.0;
}

@end
