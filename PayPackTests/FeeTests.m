//
//  FeeTests.m
//  PayPack
//
//  Created by Tekhne Dev on 9/23/13.
//  Copyright (c) 2013 xiobit. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Fee.h"
#import "PayData.h"

@interface FeeTests : XCTestCase

@end

@implementation FeeTests {
    PayData *payData;
    Fee *fee;
    NSDateFormatter *dateFormatter;
}

- (void)setUp
{
    [super setUp];
    // Put setup code here; it will be run once, before the first test case.
    
    // Setup Date Format
    dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateStyle:NSDateFormatterShortStyle];
    
    
    fee = [[Fee alloc] init];

    payData = [[PayData alloc] init];
    
    [payData setCreditAmount:[NSDecimalNumber decimalNumberWithString:@"100"]];
    [payData setTimeLimit:[NSDecimalNumber decimalNumberWithString:@"25"]];
    [payData setLapseBetweenFees:[NSDecimalNumber decimalNumberWithString:@"30"]];
    
    // Fecha de Desembolso
    [payData setDisbursementDate:[dateFormatter dateFromString:@"10/23/2013"]];
    
    [payData setFixedRatePeriod:[NSDecimalNumber decimalNumberWithString:@"12"]];
    [payData setFixedRate:[NSDecimalNumber decimalNumberWithString:@"6.00"]];
    [payData setReferenceRate:[NSDecimalNumber decimalNumberWithString:@"1.55"]];
    [payData setSpread:[NSDecimalNumber decimalNumberWithString:@"6.00"]];
    [payData setLapseBetweenFees:[NSDecimalNumber decimalNumberWithString:@"30"]];
    [payData setGracePeriod:[NSDecimalNumber decimalNumberWithString:@"0.00"]];
    [payData setFormCost:[NSDecimalNumber decimalNumberWithString:@"0.00"]];
    [payData setDesgravamenInsurance:[NSDecimalNumber decimalNumberWithString:@"1.00"]];
    
    [payData calculate];
}

- (void)tearDown
{
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
}

- (void) testExample {
    
    [fee setSequence:1];
    [fee calculateFeeWithData:payData];
    
    
    XCTAssertEqual(fee.sequence, 1, @"No es la Cuota # 001");
    
    NSDate *evalDate = [dateFormatter dateFromString:@"10/23/2013"];
    
    XCTAssertEqual(fee.date, evalDate, @"Las Fechas no son iguales");
    
}

@end
