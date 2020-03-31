#import <Foundation/Foundation.h>
typedef void(^requestCallBack)(BOOL isSucess, id response);
@interface BIMInfoViewModel : NSObject
- (void)fetchRecommendedReviewsWithParameter:(NSDictionary *)param
                                    callBack:(requestCallBack)response;
@end
