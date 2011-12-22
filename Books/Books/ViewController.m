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
	// Do any additional setup after loading the view, typically from a nib.
    NSString *bookTitle = @"Brave new world";
    NSString *bookAuthor = @"Aldous Huxley";
    int datePublished = 1932;
    
    NSString *book = [NSString stringWithFormat:@"%@ by %@ (%i)", bookTitle, bookAuthor, datePublished];
    
    NSLog(@"%@", book);
    
    //Substring Function
    NSLog(@"%@", [book substringFromIndex:5]);
    NSLog(@"%@", [book substringToIndex:2]);
    
    //starting point and length
    NSLog(@"%@", [book substringWithRange:NSMakeRange(6, 3)]);
    
    NSLog(@"%@", [book stringByReplacingOccurrencesOfString:@" " withString:@"!"]);
    
    if (
        [bookTitle isEqualToString:@"Brave new world"]
        ==
        [@"Brave new world" isEqualToString:bookTitle]
    ){ 
        NSLog(@"You can use interchangebly for [@\"\" isEqualTString:stringVar]");
    }
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
