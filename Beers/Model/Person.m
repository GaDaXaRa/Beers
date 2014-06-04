//
//  Person.m
//  Beers
//
//  Created by Miguel Santiago Rodríguez on 03/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "Person.h"

@implementation Person

#pragma mark - Class Methods

+ (id)personWithName:(NSString *)name {
    return [[Person alloc] initWithName:name];
}

+ (id)personWithName:(NSString *)name andAddress:(NSString *)address {
    return [[Person alloc] initWithName:name andAddress:address];
}

#pragma mark - Inits

- (id)init {
    return [self initWithName:@"John Doe" andAddress:@"" age:18];
}

- (id)initWithName:(NSString *)name {
    return [self initWithName:name andAddress:@"" age:18];
}

- (id)initWithName:(NSString *)name andAddress:(NSString *)address {
    return [self initWithName:name andAddress:address age:18];
}

- (id)initWithName:(NSString *)name
        andAddress:(NSString *)address
               age:(NSUInteger)age {
    
    self = [super init];
    
    if (self) {
        _name = name;
        _address = address;
        _age = age;
    }
    
    return self;
}

@end
