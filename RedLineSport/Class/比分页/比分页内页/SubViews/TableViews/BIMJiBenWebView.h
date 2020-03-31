#import <UIKit/UIKit.h>
#import "BIMLiveScoreModel.h"
#import <WebKit/WebKit.h>
@interface BIMJiBenWebView : UIWebView
@property (nonatomic, strong) BIMLiveScoreModel *model;
@property (nonatomic, assign) BOOL cellCanScroll;
@end
