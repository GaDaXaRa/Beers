//
//  EuroConverter.h
//  Beers
//
//  Created by Miguel Santiago Rodríguez on 03/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EuroConverter : NSObject
@property(nonatomic)CGFloat money;

-(float)convertToEuro;
-(int)convertToPeseta;

+(int)convertFromEuroToPeseta:(float)euros;
+(float)convertFromPesetaToEuro:(int)pesetas;

@end
