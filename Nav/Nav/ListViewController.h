//
//  ListViewController.h
//  Nav
//
//  Created by Mike Han on 12/22/11.
//  Copyright (c) 2011 Comwerks Interactive. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "DetailViewController.h"

@interface ListViewController : UITableViewController

@property (strong, nonatomic) NSArray *data;
@property (strong, nonatomic) DetailViewController *detailViewController;


@end
