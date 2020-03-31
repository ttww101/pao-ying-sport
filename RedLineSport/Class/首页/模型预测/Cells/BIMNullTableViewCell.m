#import "BIMNullTableViewCell.h"
@implementation BIMNullTableViewCell
static CGFloat cell_Height = 5;
static NSString *identifier = @"nullCell";
+ (BIMNullTableViewCell *)cellForTableView:(UITableView *)tableView {
    BIMNullTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        cell = [[BIMNullTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return cell;
}
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self configUI];
    }
    return self;
}
#pragma mark - Open Method
+ (CGFloat)heightForCell {
    return cell_Height;
}
#pragma mark - Config UI
- (void)configUI {
    self.contentView.backgroundColor = UIColorFromRGBWithOX(0xebebeb);
}
@end
