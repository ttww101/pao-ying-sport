#import <UIKit/UIKit.h>
#import "BIMInfoModel.h"
@class BIMInfoTableViewCell;
@protocol InfoTableViewCellDelegate <NSObject>
- (void)tableViewCell:(BIMInfoTableViewCell *)cell likeComment:(UIButton *)comment;
- (void)tableViewCell:(BIMInfoTableViewCell *)cell moreComments:(id)moreComments;
@end
@interface BIMInfoTableViewCell : UITableViewCell
@property (nonatomic, weak) id <InfoTableViewCellDelegate> delegate;
@property (nonatomic , strong) InfoGroupModel *model;
+ (BIMInfoTableViewCell *)cellForTableView:(UITableView *)tableView;
+ (CGFloat)heightForCell;
- (void)hideMoreReply;
@end
