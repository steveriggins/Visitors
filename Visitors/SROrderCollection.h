//
//  SROrderCollection.h
//  Visitors
//
//  Created by Steven W. Riggins on 10/10/13.
//  Copyright (c) 2013 Steve Riggins. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SROrderVisiteeProtocol.h"

@interface SROrderCollection : NSObject <SROrderVisiteeProtocol>
- (void)accept:(id<SROrderVisitorProtocol>)visitor; // Fulfills the SROrderVisiteeProtocol

- (void)addOrder:(id<SROrderVisiteeProtocol>)order;
@end
