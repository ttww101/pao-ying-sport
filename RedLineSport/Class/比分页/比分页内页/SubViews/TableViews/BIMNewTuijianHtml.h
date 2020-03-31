#import <UIKit/UIKit.h>
#import "BIMLiveScoreModel.h"
#import <WebKit/WebKit.h>
@interface BIMNewTuijianHtml : UIWebView
@property (nonatomic, strong) BIMLiveScoreModel *model;
@property (nonatomic, assign) NSInteger segIndex;
@property (nonatomic, assign) BOOL cellCanScroll;
@end
