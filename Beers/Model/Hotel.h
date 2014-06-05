//
//  Hotel.h
//  Beers
//
//  Created by Miguel Santiago Rodríguez on 04/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface Hotel : NSObject

- (void)addPerson:(Person *)person ToRoom:(NSString *)room;

- (NSArray *)allRooms;

- (Person *)whoSleepsAtRoom:(NSString *)room;

- (NSUInteger)numberOfOccupiedRooms;

@end
