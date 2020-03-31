#import <UIKit/UIKit.h>
#import "BIMPanWangModel.h"
@interface BIMPanwangCell : UITableViewCell
@property (nonatomic, strong)UILabel *labGaiLv;
@property (nonatomic, strong)UILabel *labGaiLvTitle;
@property (nonatomic, assign)NSInteger rankNum;
@property (nonatomic, strong)BIMPanWangModel *model;
@end
