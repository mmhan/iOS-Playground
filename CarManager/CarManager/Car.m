//
//  Car.m
//  CarManager
//
//  Created by Mike Han on 12/22/11.
//  Copyright (c) 2011 Comwerks Interactive. All rights reserved.
//

#import "Car.h"

@implementation Car

@synthesize doors;

// Setter for doors.
- (void) doors:(int)anInt{
    if (anInt >= 2){
        _doors = anInt;
    }
}

+ (int) wheels {
    return 4;
}

@end
