#import "BIMBasicTableView.h"
#import "BIMLiveScoreModel.h"
#import "SRWebSocket.h"
@interface BIMZhiboTableView : UITableView
@property (nonatomic, strong) BIMLiveScoreModel *model;
@property (nonatomic,strong) SRWebSocket*webSocket;
@property (nonatomic, assign) BOOL cellCanScroll;
- (void)addSegMent;
@end
