//
//  LSIVersion.h
//  iOS9-macOS-Versions-Objc
//
//  Created by Paul Solt on 11/4/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

// Interface (Class definition)
// Public interface

@interface LSIVersion : NSObject

// NS = Next Step
@property NSString *name;

// Objc will generate three things for a property
// 1. Backing variable (instance variable: _name)

//NSString *_name;

// 2. Getter method

//- (NSString *)name {
//	return _name;
//}

// 3. Setter method

//- (void)setName:(NSString *)name {
//	_name = name;
//}


@property NSString *releaseDate;

// Initializers
//init(name: String, releaseDate: String)	// Swift
- (instancetype)initWithName:(NSString *)name releaseDate:(NSString *)releaseDate;

// +/- = class method/instance method  // Swift: class or static
// (instancetype) = (return type) instancetype means it's returning a LSIVersion object

- (void)printDate;


@end
