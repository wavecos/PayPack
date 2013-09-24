//
//  Fee.h
//  PayPack
//
//  Created by Tekhne Dev on 9/23/13.
//  Copyright (c) 2013 xiobit. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fee : NSObject {
    NSInteger sequence; // No
    NSDate *date; // Fecha
    NSDecimalNumber *toCapitalFixed; // A Capital (Fijo)
    NSDecimalNumber *interestFixed; // Interés (Fijo)
    NSDecimalNumber *insuranceFixed; // Seguro (Fijo)
    NSDecimalNumber *feeFixed; // Cuota (Fijo)
    NSDecimalNumber *balanceFixed; // Saldo (Fijo)
    
    NSDecimalNumber *toCapitalVariable; // A Capital (Variable)
    NSDecimalNumber *interestVariable; // Interés (Variable)
    NSDecimalNumber *insuranceVariable; // Seguro (Variable)
    NSDecimalNumber *feeVariable; // Cuota (Variable)
    NSDecimalNumber *balanceVariable; // Saldo (Variable)
}

@property NSInteger sequence;
@property (nonatomic, retain) NSDate *date;
@property (nonatomic, retain) NSDecimalNumber *toCapitalFixed;
@property (nonatomic, retain) NSDecimalNumber *interestFixed;
@property (nonatomic, retain) NSDecimalNumber *insuranceFixed;
@property (nonatomic, retain) NSDecimalNumber *feeFixed;
@property (nonatomic, retain) NSDecimalNumber *balanceFixed;

@property (nonatomic, retain) NSDecimalNumber *toCapitalVariable;
@property (nonatomic, retain) NSDecimalNumber *interestVariable;
@property (nonatomic, retain) NSDecimalNumber *insuranceVariable;
@property (nonatomic, retain) NSDecimalNumber *feeVariable;
@property (nonatomic, retain) NSDecimalNumber *balanceVariable;

@end
