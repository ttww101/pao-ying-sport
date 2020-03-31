#import <UIKit/UIKit.h>
#import "BIMInfoListModel.h"
@interface BIMNewQBTableViewCell : UITableViewCell
@property (nonatomic, strong) BIMInfoListModel *model;
@property (nonatomic, assign) BOOL hideBottomView;
@end
