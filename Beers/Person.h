//
//  Person.h
//  Beers
//
//  Created by Miguel Santiago Rodríguez on 03/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

#pragma mark - Properties

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *address;
@property (nonatomic) NSUInteger age;
@property (nonatomic, getter = isMarried) BOOL married;

#pragma mark - Class Methods

+ (id)personWithName:(NSString *)name;
+ (id)personWithName:(NSString *)name andAddress:(NSString *)address;

#pragma mark - Inits

- (id)initWithName:(NSString *)name;
- (id)initWithName:(NSString *)name andAddress:(NSString *)address;

//Designated initializer
- (id)initWithName:(NSString *)name andAddress:(NSString *)address age:(NSUInteger)age;

@end
