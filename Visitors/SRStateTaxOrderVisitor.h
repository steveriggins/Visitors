//
//  SRStateTaxOrderVisitor.h
//  Visitors
//
//  Created by Steven W. Riggins on 10/10/13.
//  Copyright (c) 2013 Steve Riggins. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SROrderVisitorProtocol.h"

@interface SRStateTaxOrderVisitor : NSObject <SROrderVisitorProtocol>
@property (nonatomic, readonly, assign) CGFloat totalTax;
@property (nonatomic, readonly, assign) CGFloat total;
@property (nonatomic, readonly, assign) CGFloat taxRate;

- (void)visitOrder:(id<SROrderProtocol>)order;              // Fulfills SROrderVisitorProtocol
@end
