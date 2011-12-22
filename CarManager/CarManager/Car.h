//
//  Car.h
//  CarManager
//
//  Created by Mike Han on 12/22/11.
//  Copyright (c) 2011 Comwerks Interactive. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject{
    @private
    int _doors;
}

@property int doors;

- (void) drive;
+ (int) wheels;
- (BOOL) flies;

@end
