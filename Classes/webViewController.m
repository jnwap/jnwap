//
//  webViewController.m
//  web
//
//  Created by apple on 10-1-28.
//  Copyright girlcar 2010. All rights reserved.
//

#import "webViewController.h"

@implementation webViewController
@synthesize WebView;

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	[WebView setOpaque:NO];
	[WebView setBackgroundColor:[UIColor clearColor]];
	[self BtnAction];
}

-(IBAction)BtnAction{
	NSString *resourcePath = [ [NSBundle mainBundle] resourcePath];
	NSString *filePath = [resourcePath stringByAppendingPathComponent:@"index.html"];
	NSString *htmlstring=[[NSString alloc] initWithContentsOfFile:filePath  encoding:NSUTF8StringEncoding error:nil];   
	[WebView loadHTMLString:htmlstring  baseURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] bundlePath]]];	
	Nav.topItem.title=@"掌上泉城";
	Nav.topItem.leftBarButtonItem=nil;
}


-(IBAction)NavURL:(id)sender{
	switch ([sender tag]) {
		case 1:
			[WebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://wapnews.jn.sd.cn/?action-news"]]];
			Nav.topItem.title=@"泉天下";
			Nav.topItem.leftBarButtonItem=BackBtn;
			break;
		case 2:
			[WebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://wapnews.jn.sd.cn/?action-ent"]]];
			Nav.topItem.title=@"娱乐风";
			Nav.topItem.leftBarButtonItem=BackBtn;
			break;
		case 3:
			[WebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://wapnews.jn.sd.cn/?action-life"]]];
			Nav.topItem.title=@"生活站";
			Nav.topItem.leftBarButtonItem=BackBtn;
			break;
		case 4:
			[WebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://wapnews.jn.sd.cn/?action-video"]]];
			Nav.topItem.title=@"沃视频";
			Nav.topItem.leftBarButtonItem=BackBtn;
			break;
		case 5:
			[WebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://wap.jn.sd.cn/iphone/"]]];
			Nav.topItem.title=@"更多";
			Nav.topItem.leftBarButtonItem=BackBtn;
			break;
			
	}
	
}


// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];	
	// Release any cached data, images, etc that aren't in use.
}


- (BOOL)webView:(UIWebView*)webView shouldStartLoadWithRequest:(NSURLRequest*)request navigationType:(UIWebViewNavigationType)navigationType {
	if (navigationType == UIWebViewNavigationTypeLinkClicked) {
		Nav.topItem.title=@"掌上泉城";
		Nav.topItem.leftBarButtonItem=BackBtn;
	}	
	return YES;
}

- (void)dealloc {
    [super dealloc];
}

@end
