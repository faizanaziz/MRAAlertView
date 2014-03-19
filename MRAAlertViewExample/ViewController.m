//
//  ViewController.m
//  MRAAlertViewExample
//
//  Created by Faizan Aziz on 19/03/14.
//  Copyright (c) 2014 MetaRain. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [MRAlertView showWithTitle:@"Hello1" message:@"Hi" cancelButtonTitle:@"Dismiss" clickedCompletion:^(UIAlertView *alertView, NSInteger buttonIndex) {
        NSLog(@"Hello1 %d", buttonIndex);
    } otherButtonTitles:@"Ok", nil];
    
    [MRAlertView showWithTitle:@"Hello2" message:@"Hi" cancelButtonTitle:@"Dismiss" clickedCompletion:^(UIAlertView *alertView, NSInteger buttonIndex) {
        NSLog(@"Hello2 %d", buttonIndex);
    } otherButtonTitles:@"Ok", nil];
    
    
    [MRAlertView showWithTitle:@"Hello3" message:@"Hi" cancelButtonTitle:@"Dismiss" clickedCompletion:^(UIAlertView *alertView, NSInteger buttonIndex) {
        NSLog(@"Hello3 %d", buttonIndex);
    } otherButtonTitles:@"Ok", nil];
    
    [MRAlertView showWithTitle:@"Hello4" message:@"Hi" cancelButtonTitle:@"Dismiss" clickedCompletion:^(UIAlertView *alertView, NSInteger buttonIndex) {
        NSLog(@"Hello4 %d", buttonIndex);
    } otherButtonTitles:@"Ok", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
