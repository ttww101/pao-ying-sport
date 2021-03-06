#import <UIKit/UIKit.h>
@protocol GQWebViewDelegate <NSObject>
@optional
- (void)webClose:(id)data;
@end
#import "RLSWebModel.h"
@interface RLSWebView : UIWebView
@property (nonatomic, weak) id <GQWebViewDelegate> webDelegate;
@property (nonatomic , strong) RLSWebModel *model;
@property (nonatomic, copy) NSString *html5Url;
@property (nonatomic, copy) NSString *urlPath;
@property (nonatomic, assign) BOOL cellCanScroll;
- (void)reloadData;
- (void)jsReoload;
@end
