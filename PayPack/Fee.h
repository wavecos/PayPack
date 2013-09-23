//
//  Fee.h
//  PayPack
//
//  Created by Tekhne Dev on 9/23/13.
//  Copyright (c) 2013 xiobit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PayData.h"

@interface Fee : NSObject {
    NSInteger sequence;
    NSDate *date;
}

@property NSInteger sequence;
@property (nonatomic, retain) NSDate *date;

-(void) calculateFeeWithData:(PayData *) payData;

@end
