#import <UIKit/UIKit.h>
@interface BIMMineHeaderView : UIView

- (instancetype)initWithFrame:(CGRect)frame;

@property (nonatomic , strong) BIMUserModel *model;

@property (nonatomic , copy) NSDictionary *dic;


@end
