//
//  main.m
//  PaymentTool
//
//  Created by Mandeep on 2017-05-05.
//  Copyright © 2017 Mandeep. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "AmazonPaymentService.h"
#import "StripePaymentService.h"
#import "PaypalPaymentService.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...

    
        NSInteger randomDollarValue =arc4random_uniform(900);
        randomDollarValue +=100;
        
        NSLog(@"Thank you for shopping at Acme.com! \n Your total today is $%lu.00\n Please select your payment method:\n 1: Paypal\n 2: Stripe\n 3: Amazon\n",randomDollarValue);
        
        
        char inputChars[255];
        printf("Please enter the number corresponding to your desired method of payment: ");
        fgets(inputChars, 255, stdin);
        printf("You've selected method #%s \n", inputChars);
        NSString *inputString = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
        inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        NSInteger inputInt = [inputString integerValue];
        
        PaymentGateway *paymentGateway = [PaymentGateway new];
        AmazonPaymentService *amazonGatway = [AmazonPaymentService new];
        StripePaymentService *stripeGatway = [StripePaymentService new];
        PaypalPaymentService *paypalGatway = [PaypalPaymentService new];
        
        
        
        switch (inputInt) {
            case 1:
                paymentGateway.delegatePayment = paypalGatway;
                [paymentGateway processPaymentAmount:randomDollarValue];
                break;
            
            case 2:
                paymentGateway.delegatePayment = stripeGatway;
                [paymentGateway processPaymentAmount:randomDollarValue];
                break;
            
            case 3:
                paymentGateway.delegatePayment = amazonGatway;
                [paymentGateway processPaymentAmount:randomDollarValue];
                break;
                
            default:
                NSLog(@"Purchase cancelled");
                break;
        }
        
        
        NSLog(@"Take care and have a nice day!");
        
        
        
      
    
    
    }
    return 0;
}
