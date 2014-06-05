//
//  PersonListTests.m
//  Beers
//
//  Created by Miguel Santiago Rodríguez on 05/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "PersonList.h"

@interface PersonListTests : XCTestCase

@end

@implementation PersonListTests

- (void)testCanCreatePeopleList {
    PersonList *people = [[PersonList alloc] init];
    
    XCTAssertNotNil(people, @"OMG 💀");
    XCTAssertEqual(0, [people count], @"");
}

- (void)testCanAddPersonToPeopleList {
    Person *person = [[Person alloc] init];
    PersonList *people = [[PersonList alloc] init];
    
    [people addPerson:person];
    XCTAssertEqual(1, [people count], @"");
}

- (void)testCanRemovePersonFromPeopleList {
    Person *person = [[Person alloc] init];
    PersonList *people = [[PersonList alloc] init];
    
    [people addPerson:person];
    XCTAssertEqual(1, [people count], @"");
    
    [people removePerson:person];
    XCTAssertEqual(0, people.count, @"Expected %i, found %lu", 0, (unsigned long)people.count);
}

- (void)testCanReturnAllPeople {
    int peopleCount = 100;
    PersonList *people = [[PersonList alloc] init];
    
    for (int i = 0; i < peopleCount; i++) {
        Person *person = [[Person alloc] init];
        person.name = [NSString stringWithFormat:@"%i", i];
        [people addPerson:person];
    }
    
    [[people allPeople]enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        Person *person = (Person *)obj;
        NSString *formattedIndex = [NSString stringWithFormat:@"%lu", (unsigned long)idx];
        XCTAssertEqualObjects(person.name, formattedIndex, @"Expected %@, found %@", person.name, formattedIndex);
        
        *stop = idx > 50;
        NSLog(@"%lu", (unsigned long)idx);
    }];
}

- (void)testCanCountPeople {
    PersonList *people = [[PersonList alloc] init];
    Person *person = [[Person alloc] init];
    
    [people addPerson:person];
    people.count = 45;
    
    XCTAssertEqual(1, people.count, @"Expected %i, found %lu", 1, (unsigned long)people.count);
}

@end
