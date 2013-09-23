//
//  PayPackTests.m
//  PayPackTests
//
//  Created by onixdev on 9/22/13.
//  Copyright (c) 2013 xiobit. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "PayData.h"

@interface PayPackTests : XCTestCase

@end

@implementation PayPackTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample
{
    //XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
}

-(void) testPayData {
    
    PayData *payData = [[PayData alloc] init];
    
    [payData setCreditAmount:[NSDecimalNumber decimalNumberWithString:@"100"]];
    [payData setTimeLimit:[NSDecimalNumber decimalNumberWithString:@"25"]];
    [payData setLapseBetweenFees:[NSDecimalNumber decimalNumberWithString:@"30"]];
    
    [payData setFixedRatePeriod:[NSDecimalNumber decimalNumberWithString:@"12"]];
    [payData setFixedRate:[NSDecimalNumber decimalNumberWithString:@"6.00"]];
    [payData setReferenceRate:[NSDecimalNumber decimalNumberWithString:@"1.55"]];
    [payData setSpread:[NSDecimalNumber decimalNumberWithString:@"6.00"]];
    [payData setLapseBetweenFees:[NSDecimalNumber decimalNumberWithString:@"30"]];
    [payData setGracePeriod:[NSDecimalNumber decimalNumberWithString:@"0.00"]];
    [payData setFormCost:[NSDecimalNumber decimalNumberWithString:@"0.00"]];
    [payData setDesgravamenInsurance:[NSDecimalNumber decimalNumberWithString:@"1.00"]];
    
    [payData calculate];
    
    XCTAssertEqual([payData.feesNumber doubleValue], [[NSDecimalNumber decimalNumberWithString:@"300"] doubleValue], @"No Son iguales");
    
    XCTAssertEqual([payData.periodVariableRate doubleValue], [[NSDecimalNumber decimalNumberWithString:@"7.55"] doubleValue], @"La Tasa de Periodo Variable NO es igual!");
    
}

@end
