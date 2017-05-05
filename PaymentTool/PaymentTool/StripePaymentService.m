//
//  StripePaymentService.m
//  PaymentTool
//
//  Created by Mandeep on 2017-05-05.
//  Copyright © 2017 Mandeep. All rights reserved.
//

#import "StripePaymentService.h"

@implementation StripePaymentService

-(void)processPaymentAmount:(NSInteger)payment{
    NSLog(@"Payment amount: $%lu.00\nStatus: Processed\nMethod of Payment: Stripe",payment);
}

-(BOOL)canProcessPayment{
    NSInteger possible = arc4random_uniform(2);
    
    return possible ? YES : NO;
}

@end
