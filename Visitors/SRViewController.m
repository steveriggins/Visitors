//
//  SRViewController.m
//  Visitors
//
//  Created by Steven W. Riggins on 10/10/13.
//  Copyright (c) 2013 Steve Riggins. All rights reserved.
//

#import "SRViewController.h"
#import "SROrderCollection.h"
#import "SROrder.h"
#import "SRCaliforniaOrderVisitor.h"
#import "SROregonOrderVisitor.h"
#import "SRWashingtonOrderVisitor.h"

@interface SRViewController ()
@property (nonatomic, strong) SROrderCollection *orders;
@property (nonatomic, weak) IBOutlet UILabel *totalTaxLabel;
@property (nonatomic, weak) IBOutlet UILabel *taxRateLabel;
@property (nonatomic, weak) IBOutlet UILabel *totalLabel;
@end

@implementation SRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.orders = [[SROrderCollection alloc] init];
    
    // Fake some orders
    SROrder *order;
    
    order = [[SROrder alloc] init]; order.subtotal = 100;
    [self.orders addOrder:order];
    
    order = [[SROrder alloc] init]; order.subtotal = 50;
    [self.orders addOrder:order];

    order = [[SROrder alloc] init]; order.subtotal = 75;
    [self.orders addOrder:order];

    order = [[SROrder alloc] init]; order.subtotal = 25;
    [self.orders addOrder:order];

}

- (void)visitWithVisitor:(SRStateTaxOrderVisitor *)visitor
{
    [self.orders accept:visitor];
    self.totalTaxLabel.text = [NSString stringWithFormat:@"%.2f", visitor.totalTax];
    self.taxRateLabel.text = [NSString stringWithFormat:@"%.2f", visitor.taxRate * 100];
    self.totalLabel.text = [NSString stringWithFormat:@"%.2f", visitor.total];
}

- (IBAction)californiaAction:(id)sender
{
    SRCaliforniaOrderVisitor *visitor = [[SRCaliforniaOrderVisitor alloc] init];
    [self visitWithVisitor:visitor];
}

- (IBAction)oregonAction:(id)sender
{
    SROregonOrderVisitor *visitor = [[SROregonOrderVisitor alloc] init];
    [self visitWithVisitor:visitor];
}


- (IBAction)washingtonAction:(id)sender
{
    SRWashingtonOrderVisitor *visitor = [[SRWashingtonOrderVisitor alloc] init];
    [self visitWithVisitor:visitor];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
