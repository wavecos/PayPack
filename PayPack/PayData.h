//
//  PayData.h
//  PayPack
//
//  Created by onixdev on 9/22/13.
//  Copyright (c) 2013 xiobit. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PayData : NSObject {
    NSDecimalNumber *creditAmount; // Monto del Credito;
    NSDecimalNumber *timeLimit; // Plazo
    NSDecimalNumber *feesNumber; // Numero de cuotas
    NSDate *disbursementDate; // Fecha de Desembolso
    NSDecimalNumber *fixedRatePeriod; // Periodo Tasa Fija
    NSDecimalNumber *fixedRate; // Tasa Fija
    NSDecimalNumber *referenceRate; // Tasa de Referencia (TRe)
    NSDecimalNumber *spread; // Spread - Propagar ?
    NSDecimalNumber *periodVariableRate; // Tasa Periodo Variable
    NSDecimalNumber *lapseBetweenFees; // Lapso Entre Cuotas
    NSDecimalNumber *gracePeriod; // Período de Gracia
    NSDecimalNumber *formCost; // Costo del Formulario
    NSDecimalNumber *desgravamenInsurance; // Seguro de Desgravamen
}

@property (nonatomic,retain) NSDecimalNumber *creditAmount;
@property (nonatomic,retain) NSDecimalNumber *timeLimit;
@property (nonatomic,retain) NSNumber *feesNumber;
@property (nonatomic,retain) NSDate *disbursementDate;
@property (nonatomic,retain) NSDecimalNumber *fixedRatePeriod;
@property (nonatomic,retain) NSDecimalNumber *fixedRate;
@property (nonatomic,retain) NSDecimalNumber *referenceRate;
@property (nonatomic,retain) NSDecimalNumber *spread;
@property (nonatomic,retain) NSDecimalNumber *periodVariableRate;
@property (nonatomic,retain) NSDecimalNumber *lapseBetweenFees;
@property (nonatomic,retain) NSDecimalNumber *gracePeriod;
@property (nonatomic,retain) NSDecimalNumber *formCost;
@property (nonatomic,retain) NSDecimalNumber *desgravamenInsurance;

-(void) calculate;

@end
