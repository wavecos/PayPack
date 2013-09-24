//
//  PayService.m
//  PayPack
//
//  Created by onixdev on 9/23/13.
//  Copyright (c) 2013 xiobit. All rights reserved.
//

#import "PayService.h"

@implementation PayService


+(NSArray *) calculateFeesWithData:(PayData *)payData {
    NSLog(@"Calculate Fees with PayData");
    NSMutableArray *fees = [[NSMutableArray alloc] init];
    
    NSDateComponents *components = [[NSDateComponents alloc] init];
    [components setDay:[payData.lapseBetweenFees intValue]];
    
    NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    
    for (int idx = 0; payData.feesNumber; idx++) {
        Fee *fee = [[Fee alloc] init];
        
        NSDate *lastDisbursementDate;
        
        [fee setSequence:idx];
        
        if ( idx == 0 ) { // First Fee
            // Fecha
            fee.date = [gregorian dateByAddingComponents:components toDate:payData.disbursementDate options:0];
            // Interes (Fijo)
            if (idx > [payData.fixedRatePeriod doubleValue]) {
                fee.interestFixed = [[payData.creditAmount decimalNumberByMultiplyingBy:[payData.periodVariableRate decimalNumberByMultiplyingBy:payData.lapseBetweenFees]] decimalNumberByDividingBy:[NSDecimalNumber decimalNumberWithString:@"36000"]];
            } else {
                fee.interestFixed = [[payData.creditAmount decimalNumberByMultiplyingBy:[payData.fixedRate decimalNumberByMultiplyingBy:payData.lapseBetweenFees]] decimalNumberByDividingBy:[NSDecimalNumber decimalNumberWithString:@"36000"]];
            }
            // Seguro (Fijo)
            if ([payData.desgravamenInsurance compare:[NSNumber numberWithInt:0]] == NSOrderedSame) {
                fee.interestFixed = [NSDecimalNumber decimalNumberWithString:@"0"];
            } else {

            }
            
        } else {
            fee.date = [gregorian dateByAddingComponents:components toDate:lastDisbursementDate options:0];
        }
        
        
        [fees addObject:fee];

        // Last Values
        lastDisbursementDate = [[NSDate alloc] initWithTimeIntervalSince1970:[fee.date timeIntervalSince1970]];
        
    }
    
    return fees;
}


@end
