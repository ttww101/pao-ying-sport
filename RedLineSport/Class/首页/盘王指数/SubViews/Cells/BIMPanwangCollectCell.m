#import "BIMPanwangCollectCell.h"
#import "BIMPanwangZhishuTable.h"
@interface BIMPanwangCollectCell()
@property (nonatomic, strong) BIMPanwangZhishuTable *table;
@end
@implementation BIMPanwangCollectCell
- (void)setType:(NSString *)type
{
    _type = type;
    [self.contentView addSubview:self.table];
    _table.type = _type;
}
- (BIMPanwangZhishuTable *)table
{
    if (!_table) {
        _table = [[BIMPanwangZhishuTable alloc] initWithFrame:CGRectMake(0, 0, Width, Height - APPDELEGATE.customTabbar.height_myNavigationBar - 44) style:UITableViewStylePlain];
    }
    return _table;
}
@end
