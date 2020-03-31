#import <UIKit/UIKit.h>
#import "BIMWithdrawalModel.h"
@interface BIMLiveQuizWithdrawalTableViewCell : UITableViewCell
+ (BIMLiveQuizWithdrawalTableViewCell *)cellForTableView:(UITableView *)tableView;
+ (CGFloat)heightForCell;
- (void)refreshContentData:(id)model;
@end
