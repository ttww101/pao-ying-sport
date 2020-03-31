#import <UIKit/UIKit.h>
#import "BIMWebModel.h"
#import "BIMSelectPayMentView.h"
#import "BIMBasicViewController.h"
#import <WebKit/WebKit.h>
#import "BIMFabuTuijianSelectedItemVC.h"
@interface BIMToolWebViewController : BIMBasicViewController
@property (nonatomic , strong) WKWebView *wkWeb;
@property (nonatomic, copy) NSString *webTitle;
@property (nonatomic, copy) NSString *html5Url;
@property (nonatomic, copy) NSString *urlPath;
@property (nonatomic , copy) NSDictionary *parameterDic;
@property (nonatomic , strong) BIMWebModel *model;
@property (nonatomic , strong) UIWebView *webView;
- (void)reload;
@end
