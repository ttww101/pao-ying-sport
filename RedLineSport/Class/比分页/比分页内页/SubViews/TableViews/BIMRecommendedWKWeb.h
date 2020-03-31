#import <WebKit/WebKit.h>
#import "BIMWebModel.h"
@interface BIMRecommendedWKWeb : WKWebView
@property (nonatomic, copy) NSString *html5Url;
@property (nonatomic, copy) NSString *urlPath;
@property (nonatomic , strong) BIMWebModel *model;
@property (nonatomic, assign) BOOL cellCanScroll;
- (void)reloadData;
@end
