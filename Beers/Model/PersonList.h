//
//  PersonList.h
//  Beers
//
//  Created by Miguel Santiago Rodríguez on 05/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"



@interface PersonList : NSObject

@property(nonatomic) NSUInteger count;

- (id)initWithPeopleArray:(NSArray *)peopleArray;

#pragma mark - Instance Methods

- (void)addPerson:(Person *)person;

- (NSUInteger)count;

- (void)removePerson:(Person *)person;

- (NSArray *)allPeople;

@end