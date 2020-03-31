#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
#import "BIMWebModel.h"
@interface BIMRecommendedWebView : WKWebView
@property (nonatomic , strong) BIMWebModel *model;
@property (nonatomic, copy) NSString *html5Url;
@property (nonatomic, copy) NSString *urlPath;
@property (nonatomic, assign) BOOL cellCanScroll;
- (void)reloadData;
- (void)cancleLoadData;
@end
