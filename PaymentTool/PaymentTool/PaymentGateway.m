//
//  PaymentGateway.m
//  PaymentTool
//
//  Created by Mandeep on 2017-05-05.
//  Copyright © 2017 Mandeep. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

-(void)processPaymentAmount:(NSInteger)payment{
    
    if ([self.delegatePayment canProcessPayment]) {
        [self.delegatePayment processPaymentAmount:payment];
    } else {
        NSLog(@"Unable to process payment.\nPlease try again soon or choose a different available method");
    }

}



@end
