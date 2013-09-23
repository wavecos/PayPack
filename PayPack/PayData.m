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

-(void) calculate {
    NSLog(@"Calculte the other values");
    feesNumber = [NSNumber numberWithFloat:timeLimit.doubleValue * (360 / lapseBetweenFees.doubleValue)];
    periodVariableRate = [NSNumber numberWithFloat:spread.doubleValue * referenceRate.doubleValue];
}

@end
