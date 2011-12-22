//
//  ViewController.m
//  Books
//
//  Created by Mike Han on 12/22/11.
//  Copyright (c) 2011 Comwerks Interactive. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    NSArray *bookTitles = [NSArray arrayWithObjects:@"Brave new world", @"Call of the Wild", @"Catch-22", @"Atlas Shrugged", nil];
    NSLog(@"%@", bookTitles);
    
    NSLog(@"%i", [bookTitles count]);
    
    NSString *string = [bookTitles objectAtIndex:3];
    NSLog(@"%@", string);
    
    int index = [bookTitles indexOfObject:@"Catch-22"];
    NSLog(@"Index of Catch-22 %@", index);
    
    bool ret = [bookTitles containsObject:@"Catch-22"];
    if(ret){
        NSLog(@"bookTitles contain Catch-22");
    }else{
        NSLog(@"bookTitles does not contain Catch-22");
    }
    
    
    NSMutableArray *booksMutable = [NSMutableArray arrayWithCapacity:0];
    
    [booksMutable addObject:@"Brave new World"]; //adds to end of the array.
    [booksMutable insertObject:@"Call of the Wild" atIndex:0];
    [booksMutable removeObjectAtIndex:0];
    [booksMutable removeLastObject];
    [booksMutable removeAllObjects];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
