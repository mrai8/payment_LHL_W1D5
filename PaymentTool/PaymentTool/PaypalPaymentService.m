//
//  PaypalPaymentService.m
//  PaymentTool
//
//  Created by Mandeep on 2017-05-05.
//  Copyright © 2017 Mandeep. All rights reserved.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

-(void)processPaymentAmount:(NSInteger)payment{
    NSLog(@"Payment amount: $%lu.00\nStatus: Processed\nMethod of Payment: PayPal",payment);
}

-(BOOL)canProcessPayment{
    NSInteger possible = arc4random_uniform(2);
    
    return possible ? YES : NO;
}

@end
