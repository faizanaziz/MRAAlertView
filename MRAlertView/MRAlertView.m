//
//  MRAlertView.m
//  MRAAlertViewExample
//
//  Created by Faizan Aziz on 19/03/14.
//  Copyright (c) 2014 MetaRain. All rights reserved.
//

#import "MRAlertView.h"

//static NSMutableDictionary *alertViewHolderDictionary;
static MRAlertView *selfHolder;

@implementation MRAlertView

- (id)init{
    if(self = [super init]){
        alertViewHolder = [[NSMutableDictionary alloc] init];
    }
    return self;
}

+ (void)showWithTitle:(NSString*)aTitle
              message:(NSString*)aMessage
    cancelButtonTitle:(NSString*)aCancelButtonTitle
    clickedCompletion:(MRAlertViewCompletionHandler)aCompletion
    otherButtonTitles:(NSString*)otherTitles, ...{
    if(selfHolder == nil)
        selfHolder = [[MRAlertView alloc] init];
    [selfHolder showWithTitle:aTitle message:aMessage cancelButtonTitle:aCancelButtonTitle clickedCompletion:aCompletion otherButtonTitles:otherTitles];
}

- (void)showWithTitle:(NSString*)aTitle
              message:(NSString*)aMessage
    cancelButtonTitle:(NSString*)aCancelButtonTitle
    clickedCompletion:(MRAlertViewCompletionHandler)aCompletion
    otherButtonTitles:(NSString*)otherTitles, ...{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:aTitle message:aMessage delegate:self cancelButtonTitle:aCancelButtonTitle otherButtonTitles:otherTitles, nil];
    alertView.delegate = self;
    alertViewHolder[[NSValue valueWithNonretainedObject:alertView]] = aCompletion;
    [alertView show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    MRAlertViewCompletionHandler aCompletion = alertViewHolder[[NSValue valueWithNonretainedObject:alertView]];
    if(aCompletion){
        aCompletion(alertView, buttonIndex);
        [alertViewHolder removeObjectForKey:[NSValue valueWithNonretainedObject:alertView]];
        alertView.delegate = nil;
    }
}

@end
