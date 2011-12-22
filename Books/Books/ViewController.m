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
    NSString *bookTitle2 = bookTitle;
    bookTitle2 = @"Catch-22";
    
    
    //looking at string that is alloc in memory.
    NSLog(@"%p - %@", bookTitle, bookTitle);
    NSLog(@"%p - %@", bookTitle2, bookTitle2);
    
    NSString *bookAuthor = @"Aldous Huxley";
    int datePublished = 1932;
    
    NSString *book = [NSString stringWithFormat:@"%@ by %@ (%i)", bookTitle, bookAuthor, datePublished];
    NSLog(@"%@", book);
    
    
    NSMutableString *bookMutable = [NSMutableString stringWithString:bookTitle];
    NSLog(@"%p - %@", bookMutable, bookMutable);
    
    [bookMutable appendString:bookAuthor];
    NSLog(@"%p - %@", bookMutable, bookMutable);
    
    [bookMutable appendFormat:[NSString stringWithFormat:@"%i", datePublished]];
    NSLog(@"%p - %@", bookMutable, bookMutable);
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
