#import <UIKit/UIKit.h>
#import "BIMUserTongjiAllModel.h"
@protocol UserTongjiCellDelegate<NSObject>
@optional
- (void)didToTongjiVC;
@end
@interface BIMUserTongjiCell : UITableViewCell
@property (nonatomic, strong) BIMUserTongjiAllModel *model;
@property (nonatomic, weak) id<UserTongjiCellDelegate> delegate;
@property(nonatomic,assign)NSInteger Number;
@end
