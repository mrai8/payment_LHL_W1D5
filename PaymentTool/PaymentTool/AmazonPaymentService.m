//
//  AmazonPaymentService.m
//  PaymentTool
//
//  Created by Mandeep on 2017-05-05.
//  Copyright © 2017 Mandeep. All rights reserved.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService

-(void)processPaymentAmount:(NSInteger)payment{
    NSLog(@"Payment amount: $%lu.00\nStatus: Processed\nMethod of Payment: Amazon Payments",payment);
}

-(BOOL)canProcessPayment{
    NSInteger possible = arc4random_uniform(2);
    
    return possible ? YES : NO;
}

@end
