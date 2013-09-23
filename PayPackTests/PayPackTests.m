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
    
    [payData setCreditAmount:[NSNumber numberWithDouble:100]];
    [payData setTimeLimit:[NSNumber numberWithDouble:25]];
    [payData setLapseBetweenFees:[NSNumber numberWithDouble:30]];
    
    [payData calculate];
    
    XCTAssertEqual([payData.feesNumber doubleValue], [[NSNumber numberWithDouble:300] doubleValue], @"Son iguales");
    
}

@end
