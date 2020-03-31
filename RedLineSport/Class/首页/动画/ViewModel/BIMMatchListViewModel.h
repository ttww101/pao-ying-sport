#import <Foundation/Foundation.h>
#import "BIMLiveListModel.h"
typedef void (^requestCallBack)(BOOL isSuccess, id response);
@interface BIMMatchListViewModel : NSObject
- (void)fetchMatchDateInterfaceWithParameter:(id)parameter  callBack:(requestCallBack)response;
@end
