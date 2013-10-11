//
//  SRVisiteeProtocol.h
//  Visitors
//
//  Created by Steven W. Riggins on 10/10/13.
//  Copyright (c) 2013 Steve Riggins. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SROrderVisitorProtocol.h"

@protocol SROrderVisiteeProtocol <NSObject>
- (void)accept:(id<SROrderVisitorProtocol>)visitor;
@end
