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
    
    NSString *bookTitle = @"Brave new world";
    NSString *bookAuthor = @"Aldous Huxley";
    int datePublished = 1932;
    
    NSString *book = [NSString stringWithFormat:@"%@ by %@ (%i)", bookTitle, bookAuthor, datePublished];
    
    NSDictionary *bookDict = [NSDictionary dictionaryWithObjectsAndKeys:
                              bookTitle, @"title", bookAuthor, @"author", 
                              [NSNumber numberWithInt:datePublished], @"datePublished", 
                              nil];
    NSLog(@"bookDict - %@", bookDict);
    NSLog(@"name - %@", [bookDict objectForKey:@"title"]);
    NSLog(@"author - %@", [bookDict objectForKey:@"author"]);
    NSLog(@"published - %i", [[bookDict objectForKey:@"published"] intValue]);
    
    NSMutableDictionary *mutableDict = [NSMutableDictionary 
                                        dictionaryWithDictionary:bookDict];
    
    [mutableDict setValue:@"123123123" forKey:@"isbn"];
    NSLog(@"mutated book - %@", mutableDict);
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
