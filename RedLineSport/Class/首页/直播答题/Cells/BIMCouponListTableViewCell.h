#import <UIKit/UIKit.h>
#import "BIMCouponModel.h"
@interface BIMCouponListTableViewCell : UITableViewCell
+ (BIMCouponListTableViewCell *)cellForTableView:(UITableView *)tableView;
+ (CGFloat)heightForCell;
- (void)refreshContentData:(id)model;
@end
