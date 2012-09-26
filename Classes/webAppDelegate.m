//
//  webAppDelegate.m
//  web
//
//  Created by apple on 10-1-28.
//  Copyright girlcar 2010. All rights reserved.
//

#import "webAppDelegate.h"
#import "webViewController.h"

@implementation webAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
