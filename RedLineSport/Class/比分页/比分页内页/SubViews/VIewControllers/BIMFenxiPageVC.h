#import "BIMBasicViewController.h"
#import "BIMViewPagerController.h"
#import "BIMLiveScoreModel.h"
@interface BIMFenxiPageVC : BIMBasicViewController
@property (nonatomic, strong) BIMLiveScoreModel *model;
@property (nonatomic, assign) NSInteger currentIndex;
@property (nonatomic, assign) NSInteger segIndex;
@end
