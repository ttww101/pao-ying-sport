#import <UIKit/UIKit.h>
@interface BIMDC_JZAPhotoVC : UIViewController
@property(nonatomic, strong) NSMutableArray *imgArr;
@property(nonatomic, strong) UIScrollView *scrollView;
@property(nonatomic, strong) UILabel *sliderLabel;
@property(nonatomic, assign) NSInteger currentIndex;
@end
