#import <UIKit/UIKit.h>
#import "BIMPriceListModel.h"
@protocol ZhumaViewOfFabuTuijianDelegate<NSObject>
@optional
- (void)didselectedZhumaAtIndex:(NSInteger)index;
- (void)didselectedPriceViewWithModel:(BIMPriceListModel *)price;
@end
@interface BIMZhumaViewOfFabuTuijian : UIView
@property (nonatomic, weak) id<ZhumaViewOfFabuTuijianDelegate> delegate;
@property (nonatomic, strong) NSArray *priceList;
@end
