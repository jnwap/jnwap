//
//  webViewController.h
//  web
//
//  Created by apple on 10-1-28.
//  Copyright girlcar 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface webViewController : UIViewController {
	IBOutlet UIWebView *WebView;
	IBOutlet UINavigationBar *Nav;
	IBOutlet UIBarButtonItem *BackBtn;
}

@property (nonatomic, retain) IBOutlet UIWebView *WebView;
-(IBAction)BtnAction;
-(IBAction)NavURL:(id)sender;

@end

