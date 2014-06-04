//
//  PersonTests.m
//  Beers
//
//  Created by Miguel Santiago Rodríguez on 04/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Person.h"

@interface PersonTests : XCTestCase

@end

@implementation PersonTests

static NSString *name = @"Yeah";
static NSString *address = @"Ronda";
static int age = 34;

static NSString *initName = @"John Doe";
static NSString *initAddress = @"";
static int initAge = 18;

- (void)testCanCreateAPerson {
    Person *person = [[Person alloc] init];
    
    XCTAssertNotNil(person, @"OMG 💀");
    XCTAssertEqualObjects(initName, person.name, @"Expected %@, found %@", initName, person.name);
    XCTAssertEqual(initAge, person.age, @"Expected %i, found %lu", initAge, (unsigned long)person.age);
    XCTAssertEqualObjects(initAddress, person.address, @"Expected %@, found %@", initAddress, person.address);
}

- (void)testCanCreatePersonWithName {
    Person *person = [[Person alloc] initWithName:name];
    
    XCTAssertNotNil(person, @"OMG 💀");
    XCTAssertEqualObjects(name, person.name, @"Expected %@, found %@", name, person.name);
    XCTAssertEqual(initAge, person.age, @"Expected %i, found %lu", initAge, (unsigned long)person.age);
    XCTAssertEqualObjects(initAddress, person.address, @"Expected %@, found %@", initAddress, person.address);
}

- (void)testCanCreatePersonWithNameAndAddress {
    Person *person = [[Person alloc] initWithName:name andAddress:address];
    
    XCTAssertNotNil(person, @"OMG 💀");
    XCTAssertEqualObjects(name, person.name, @"Expected %@, found %@", name, person.name);
    XCTAssertEqual(initAge, person.age, @"Expected %i, found %lu", initAge, (unsigned long)person.age);
    XCTAssertEqualObjects(address, person.address, @"Expected %@, found %@", address, person.address);
}

- (void)testCanCreatePersonWithNameAndAddressAge {
    Person *person = [[Person alloc] initWithName:name andAddress:address age:age];
    
    XCTAssertNotNil(person, @"OMG 💀");
    XCTAssertEqualObjects(name, person.name, @"Expected %@, found %@", name, person.name);
    XCTAssertEqual(age, person.age, @"Expected %i, found %lu", age, (unsigned long)person.age);
    XCTAssertEqualObjects(address, person.address, @"Expected %@, found %@", address, person.address);
}

- (void)testCanCreateAPersonWithMethodClassAndName {
    Person *person = [Person personWithName:name];
    
    XCTAssertNotNil(person, @"OMG 💀");
    XCTAssertEqualObjects(name, person.name, @"Expected %@, found %@", name, person.name);
    XCTAssertEqual(initAge, person.age, @"Expected %i, found %lu", initAge, (unsigned long)person.age);
    XCTAssertEqualObjects(initAddress, person.address, @"Expected %@, found %@", initAddress, person.address);
}

- (void)testCanCreateAPersonWithMethodClassAndNameAndAddress {
    Person *person = [Person personWithName:name andAddress:address];
    
    XCTAssertNotNil(person, @"OMG 💀");
    XCTAssertEqualObjects(name, person.name, @"Expected %@, found %@", name, person.name);
    XCTAssertEqual(initAge, person.age, @"Expected %i, found %lu", initAge, (unsigned long)person.age);
    XCTAssertEqualObjects(address, person.address, @"Expected %@, found %@", address, person.address);
}

@end