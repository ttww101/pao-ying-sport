#import "BIMBasicViewController.h"
@class BIMDCPageViewController;
#pragma mark View Pager Delegate
@protocol  DCPageViewControllerDelegate <NSObject>
@optional
-(void)viewPagerViewController:(BIMDCPageViewController *)viewPager didFinishScrollWithCurrentViewController:(UIViewController *)viewController;
-(void)viewPagerViewController:(BIMDCPageViewController *)viewPager willScrollerWithCurrentViewController:(UIViewController *)BIMViewController;
@end
#pragma mark View Pager DataSource
@protocol DCPageViewControllerDataSource <NSObject>
@required
-(NSInteger)numberViewControllersInViewPager:(BIMDCPageViewController *)viewPager;
-(UIViewController *)viewPager:(BIMDCPageViewController *)viewPager indexViewControllers:(NSInteger)index;
-(NSString *)viewPager:(BIMDCPageViewController *)viewPager titleWithIndexViewControllers:(NSInteger)index;
@optional
-(UIButton *)viewPager:(BIMDCPageViewController *)viewPager titleButtonStyle:(NSInteger)index;
-(CGFloat)heightForTitleViewPager:(BIMDCPageViewController *)viewPager;
-(UIView *)headerViewForInViewPager:(BIMDCPageViewController *)viewPager;
-(CGFloat)heightForHeaderViewPager:(BIMDCPageViewController *)viewPager;
@end
@interface BIMDCPageViewController : BIMBasicViewController
@property (nonatomic,weak) id<DCPageViewControllerDataSource> dataSource;
@property (nonatomic,weak) id<DCPageViewControllerDelegate> delegate;
-(void)reloadScrollPage;
@property(nonatomic,assign) NSInteger selectIndex;
@property (nonatomic,assign) CGFloat lineHeight;
@property (nonatomic,assign) CGFloat lineWidth;
@property (nonatomic,strong) UIFont *titleFont;
@property (nonatomic,strong) UIColor *defaultColor;
@property (nonatomic,strong) UIColor *chooseColor;
@end
#pragma mark 标题按钮
@interface XLBasePageTitleButton : UIButton
@property (nonatomic,assign) CGFloat buttonlineHeight;
@property (nonatomic,assign) CGFloat buttonlineWidth;
@end
