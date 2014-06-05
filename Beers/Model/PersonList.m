//
//  PersonList.m
//  Beers
//
//  Created by Miguel Santiago Rodríguez on 05/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "PersonList.h"

@interface PersonList ()
@property (strong, nonatomic) NSMutableArray *peopleList;
@end

@implementation PersonList

- (instancetype)init
{
    return [self initWithPeopleArray:@[]];
}

//Designated initializer
- (id)initWithPeopleArray:(NSArray *)peopleArray  {
    self = [super init];
    if (self) {
        _peopleList = [[NSMutableArray alloc] initWithArray:peopleArray];
    }
    return self;
}

- (void)addPerson:(Person *)person {
    [self.peopleList addObject:person];
}

- (void)removePerson:(Person *)person {
    [self.peopleList removeObject:person];
}

- (NSUInteger)count {
    return [self.peopleList count];
}

- (NSArray *)allPeople {
    return self.peopleList;
}

@end
