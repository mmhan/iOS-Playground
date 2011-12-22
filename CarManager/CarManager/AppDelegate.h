//
//  AppDelegate.h
//  CarManager
//
//  Created by Mike Han on 12/22/11.
//  Copyright (c) 2011 Comwerks Interactive. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Car.h"
#import "Sedan.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

- (void)addCarToList: (id) anyCar;

@end
