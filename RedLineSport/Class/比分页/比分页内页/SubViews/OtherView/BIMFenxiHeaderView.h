@protocol FenxiHeaderViewDelegate <NSObject>

- (void)backClick:(NSInteger)btnTag;

- (void)tapPlayVideoAction:(NSString *)signal;

@end

#import <UIKit/UIKit.h>
#import "BIMLiveScoreModel.h"



@interface BIMFenxiHeaderView : UIView
@property (nonatomic, strong) UIButton *imageRight;
@property (nonatomic, weak)id<FenxiHeaderViewDelegate>delegate;
@property (nonatomic, strong) BIMLiveScoreModel *model;
- (void)hideBottom;
- (void)showBottom;
- (void)changeCountTimeWithTime:(NSString *)countTime;
- (void)updateScroeWithmodel:(BIMLiveScoreModel *)liviModel;
@end
