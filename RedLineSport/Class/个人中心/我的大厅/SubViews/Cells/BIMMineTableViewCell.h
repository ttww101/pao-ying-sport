#import <UIKit/UIKit.h>
#import "BIMMineModel.h"
@interface BIMMineTableViewCell : UITableViewCell
+ (BIMMineTableViewCell *)cellForTableView:(UITableView *)tableView;
+ (CGFloat)heightForCell;
- (void)refreshContentData:(BIMMineModel *)model;
@end
