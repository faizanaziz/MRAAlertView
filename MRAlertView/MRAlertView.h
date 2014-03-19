//
//  MRAlertView.h
//  MRAAlertViewExample
//
//  Created by Faizan Aziz on 19/03/14.
//  Copyright (c) 2014 MetaRain. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^MRAlertViewCompletionHandler) (UIAlertView *alertView, NSInteger buttonIndex);

@interface MRAlertView : NSObject <UIAlertViewDelegate>{
    NSMutableDictionary *alertViewHolder;
}

+ (void)showWithTitle:(NSString*)aTitle
              message:(NSString*)aMessage
    cancelButtonTitle:(NSString*)aCancelButtonTitle
    clickedCompletion:(MRAlertViewCompletionHandler)aCompletion
    otherButtonTitles:(NSString*)otherTitles, ...;

@end
