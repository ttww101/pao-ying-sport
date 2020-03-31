#import <UIKit/UIKit.h>
#import "BIMLiveListModel.h"
@interface BIMLiveListTableViewCell : UITableViewCell
+ (BIMLiveListTableViewCell *)cellForTableView:(UITableView *)tableView;
+ (CGFloat)heightForCell;
- (void)refreshContentData:(BIMLiveListModel *)model;
@end
