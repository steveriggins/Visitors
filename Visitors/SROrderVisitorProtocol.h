//
//  SROrderVisitorProtocol.h
//  Visitors
//
//  Created by Steven W. Riggins on 10/10/13.
//  Copyright (c) 2013 Steve Riggins. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SROrderProtocol.h"

@protocol SROrderVisitorProtocol <NSObject>
- (void)visitOrder:(id<SROrderProtocol>)order;
@end
