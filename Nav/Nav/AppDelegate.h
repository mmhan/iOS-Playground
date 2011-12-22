//
//  AppDelegate.h
//  Nav
//
//  Created by Mike Han on 12/22/11.
//  Copyright (c) 2011 Comwerks Interactive. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ListViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>{
    
}

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) UINavigationController *navController;
@property (strong, nonatomic) ListViewController *listController;

@end
