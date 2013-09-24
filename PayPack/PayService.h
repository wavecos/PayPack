//
//  PayService.h
//  PayPack
//
//  Created by onixdev on 9/23/13.
//  Copyright (c) 2013 xiobit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PayData.h"
#import "Fee.h"

@interface PayService : NSObject

+(NSArray *) calculateFeesWithData:(PayData *)payData;

@end
