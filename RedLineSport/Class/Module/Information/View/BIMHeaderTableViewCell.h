#import <UIKit/UIKit.h>
@interface BIMHeaderTableViewCell : UITableViewCell
@property (nonatomic , copy) NSString *title;
+ (BIMHeaderTableViewCell *)cellForTableView:(UITableView *)tableView;
+ (CGFloat)heightForCell;
@end
