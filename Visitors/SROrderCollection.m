//
//  SROrderCollection.m
//  Visitors
//
//  Created by Steven W. Riggins on 10/10/13.
//  Copyright (c) 2013 Steve Riggins. All rights reserved.
//

#import "SROrderCollection.h"

@interface SROrderCollection ()
@property (nonatomic, strong) NSMutableArray *orders;
@end

@implementation SROrderCollection

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        _orders = [NSMutableArray arrayWithCapacity:5];
    }
    return self;
}

- (void)addOrder:(id<SROrderVisiteeProtocol>)order
{
    [self.orders addObject:order];
}

- (void)accept:(id<SROrderVisitorProtocol>)visitor
{
    for (id<SROrderVisiteeProtocol>order in self.orders)
    {
        [order accept:visitor];
    }
}

@end
