//
//  SROrder.h
//  Visitors
//
//  Created by Steven W. Riggins on 10/10/13.
//  Copyright (c) 2013 Steve Riggins. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SROrderProtocol.h"
#import "SROrderVisiteeProtocol.h"

@interface SROrder : NSObject <SROrderProtocol, SROrderVisiteeProtocol>
@property (assign) CGFloat subtotal;                    // Fulfills the SROrderProtocol
- (void)accept:(id<SROrderVisitorProtocol>)visitor;     // Fulfills the SROrderVisitorProtocol
@end
