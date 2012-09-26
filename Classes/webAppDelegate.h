//
//  webAppDelegate.h
//  web
//
//  Created by apple on 10-1-28.
//  Copyright girlcar 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class webViewController;

@interface webAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    webViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet webViewController *viewController;

@end

