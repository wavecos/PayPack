//
//  PayData.m
//  PayPack
//
//  Created by onixdev on 9/22/13.
//  Copyright (c) 2013 xiobit. All rights reserved.
//

#import "PayData.h"

@implementation PayData

@synthesize creditAmount;
@synthesize timeLimit;
@synthesize feesNumber;
@synthesize disbursementDate;
@synthesize fixedRatePeriod;
@synthesize fixedRate;
@synthesize referenceRate;
@synthesize spread;
@synthesize periodVariableRate;
@synthesize lapseBetweenFees;
@synthesize gracePeriod;
@synthesize formCost;
@synthesize desgravamenInsurance;

-(id)init {
    self = [super init];
    
    if (self != nil) {
        disbursementDate = [NSDate date];
    }
    
    return self;
}

-(void) calculate {
    NSLog(@"Calculte the other values");
    
    feesNumber = [timeLimit decimalNumberByMultiplyingBy:[[NSDecimalNumber decimalNumberWithString:@"360"] decimalNumberByDividingBy:lapseBetweenFees]];
    
    periodVariableRate = [spread decimalNumberByAdding:referenceRate];
    
}

@end
