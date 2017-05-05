//
//  StripePaymentService.h
//  PaymentTool
//
//  Created by Mandeep on 2017-05-05.
//  Copyright © 2017 Mandeep. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"


@interface StripePaymentService : NSObject <PaymentDelegate>

-(void)processPaymentAmount:(NSInteger)payment;
-(BOOL)canProcessPayment;

@end
