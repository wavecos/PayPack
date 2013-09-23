//
//  Fee.m
//  PayPack
//
//  Created by Tekhne Dev on 9/23/13.
//  Copyright (c) 2013 xiobit. All rights reserved.
//

#import "Fee.h"

@implementation Fee

@synthesize sequence;
@synthesize date;

-(void) calculateFeeWithData:(PayData *)payData {
    NSLog(@"Calculate Fee with PayData");
    
    if (sequence == 1) {
        //date = [payData.disbursementDate dateByAddingTimeInterval:60*60*24*[payData.lapseBetweenFees doubleValue]];
        date = [payData.disbursementDate dateByAddingTimeInterval:60*60*24*30];
    }
    
}

@end
