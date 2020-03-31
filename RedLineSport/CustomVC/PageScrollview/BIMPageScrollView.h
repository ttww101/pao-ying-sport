#import <UIKit/UIKit.h>
@class BIMPageScrollView;
@protocol PageScrollViewDateSource <NSObject>
@required
- (UIView *)pageScrollView:(BIMPageScrollView *)pageScroll tableViewForIndex:(NSInteger)index;
- (NSInteger)numberOfIndexInPageSrollView:(BIMPageScrollView *)pageScroll;
@end
@protocol PageScrollViewDelegate <NSObject>
@optional
- (void)scrollToPageIndex:(NSInteger)index;
@end
@interface BIMPageScrollView : BIMDCScrollVIew
@property (nonatomic, strong) id<PageScrollViewDateSource> dateSource;
@property (nonatomic, strong) id<PageScrollViewDelegate> pageDelegate;
@property (nonatomic, assign) NSInteger selectedIndex;
- (void)reloadData;
- (void)updateSelectedIndex:(NSInteger)index;
@end
