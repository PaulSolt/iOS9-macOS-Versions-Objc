//
//  LSIVersion.m
//  iOS9-macOS-Versions-Objc
//
//  Created by Paul Solt on 11/4/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "LSIVersion.h"

// Implementation (Code details)
// Private

// Is there a good rule of thumb about when we should use function syntax (function(arg1, arg2)) and when we should use the message syntax ([object methodNameWithArgs:arg1 arg2:arg2] )?

// Free-standing function
//func logOutput() {
//
//}

// C function (C programming language)
int logOutput(int number) {
	printf("Output!");
	return number + 100;
}


@implementation LSIVersion

//init(name: String, releaseDate: String) { // Swift
//	self.name = name
//	self.releaseDate = releaseDate
//}

- (instancetype)initWithName:(NSString *)name releaseDate:(NSString *)releaseDate {
	self = [super init];
	//if self != nil { // Swift
	if (self) {
		// Setup the object
		
		// self.name = name // Side effects in Objective-C (property setter)
		_name = name;
		_releaseDate = releaseDate;
		count = count + 1;
	}
	return self;
}

// Public method that has no return type
- (void)printDate {
//	print("macOS: \(self.name) was released on \(self.releaseDate)")
	NSLog(@"macOS: %@ was released on %@", self.name, self.releaseDate);  // %@ = Object
	NSLog(@"The date is %i", [self releaseDateToInt]);
}

// Private method that returns an int value
- (int)releaseDateToInt {
	return [self.releaseDate intValue];
}


static int count = 0;

+ (int)versionCount {
	return count;
}



@end
