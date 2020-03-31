#import <UIKit/UIKit.h>
#import "BIMLiveEventMedel.h"
@interface BIMBisaiTongjiCell : UITableViewCell
@property (nonatomic, strong) BIMLiveEventMedel *model;
-(void)tongjimmodel:(BIMLiveEventMedel*)model;
@end
