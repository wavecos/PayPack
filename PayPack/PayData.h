//
//  PayData.h
//  PayPack
//
//  Created by onixdev on 9/22/13.
//  Copyright (c) 2013 xiobit. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PayData : NSObject {
    NSNumber *creditAmount; // Monto del Credito;
    NSNumber *timeLimit; // Plazo
    NSNumber *feesNumber; // Numero de cuotas
    NSDate *disbursementDate; // Fecha de Desembolso
    NSNumber *fixedRatePeriod; // Periodo Tasa Fija
    NSNumber *fixedRate; // Tasa Fija
    NSNumber *referenceRate; // Tasa de Referencia (TRe)
    NSNumber *spread; // Spread - Propagar ?
    NSNumber *periodVariableRate; // Tasa Periodo Variable
    NSNumber *lapseBetweenFees; // Lapso Entre Cuotas
    NSNumber *gracePeriod; // Período de Gracia
    NSNumber *formCost; // Costo del Formulario
    NSNumber *desgravamenInsurance; // Seguro de Desgravamen
}

@property (nonatomic,retain) NSNumber *creditAmount;
@property (nonatomic,retain) NSNumber *timeLimit;
@property (nonatomic,retain) NSNumber *feesNumber;
@property (nonatomic,retain) NSDate *disbursementDate;
@property (nonatomic,retain) NSNumber *fixedRatePeriod;
@property (nonatomic,retain) NSNumber *fixedRate;
@property (nonatomic,retain) NSNumber *referenceRate;
@property (nonatomic,retain) NSNumber *spread;
@property (nonatomic,retain) NSNumber *periodVariableRate;
@property (nonatomic,retain) NSNumber *lapseBetweenFees;
@property (nonatomic,retain) NSNumber *gracePeriod;
@property (nonatomic,retain) NSNumber *formCost;
@property (nonatomic,retain) NSNumber *desgravamenInsurance;

-(void) calculate;

@end
