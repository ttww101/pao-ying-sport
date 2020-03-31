#import "BIMSelectedDTitleView.h"
@interface BIMSelectedDTitleView()<UIScrollViewDelegate,HSTabBarContentViewDelegate,HSTabBarContentViewDataSource,UIGestureRecognizerDelegate>
@property (nonatomic, strong) UIScrollView              *titleScrollView;
@property (nonatomic, strong) BIMHSTabBarContentView       *tabBarContentView;
@property (nonatomic, strong) NSMutableArray            *titleArr;
@end
@implementation BIMSelectedDTitleView
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self buildElements];
    }
    return self;
}
- (BIMHSTabBarContentView *)tabBarContentView {
    if (!_tabBarContentView) {
        _tabBarContentView = [[BIMHSTabBarContentView alloc] init];
        _tabBarContentView.dataSource = self;
        _tabBarContentView.delegate = self;
        _tabBarContentView.backgroundColor = redcolor;
    }
    return _tabBarContentView;
}
- (UIScrollView *)titleScrollView {
    if (!_titleScrollView) {
        _titleScrollView = [[UIScrollView alloc] init];
        _titleScrollView.scrollEnabled = YES;
        _titleScrollView.userInteractionEnabled = YES;
        _titleScrollView.backgroundColor = [UIColor orangeColor];
        _titleScrollView.contentSize = CGSizeMake(-(self.frame.size.width *6/5), 0);
    }
    return _titleScrollView;
}
#pragma mark - buildElements -
- (void)buildElements {
    [self addSubview:self.titleScrollView];
    [self.titleScrollView addSubview:self.tabBarContentView];
    [self.titleScrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self);
    }];
    [self.tabBarContentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.titleScrollView);
    }];
}
#pragma mark - HSTabBarContentViewDelegate -
- (CGFloat)heightForTabBarInTabBarContentView:(BIMHSTabBarContentView *)tabBarContentView {
    return 80;
}
- (UIColor *)colorForTabBarItemTextInTabBarContentView:(BIMHSTabBarContentView *)tabBarContentView {
    return [UIColor blackColor];
}
- (UIColor *)highlightColorForTabBarItemInTabBarContentView:(BIMHSTabBarContentView *)tabBarContentView {
    return [UIColor orangeColor];
}
- (UIView *)highlightViewForTabBarItemInTabBarContentView:(BIMHSTabBarContentView *)tabBarContentView {
    return nil;
}
- (void)tabBarContentView:(BIMHSTabBarContentView *)tabBarContentView didSelectItemAtIndex:(NSInteger)index {
    NSLog(@"%zd",index);
}
#pragma mark - HSTabBarContentViewDataSource -
- (NSInteger)numberOfItemsInTabBarContentView:(BIMHSTabBarContentView *)tabBarContentView {
    return 5;
}
- (NSString *)tabBarContentView:(BIMHSTabBarContentView *)tabBarContentView titleForItemAtIndex:(NSInteger)index {
    return @"测试";
}
- (UIView *)tabBarContentView:(BIMHSTabBarContentView *)tabBarContentView contentViewAtIndex:(NSInteger)index {
    return nil;
}
#pragma mark - UIScrollViewDelegate -
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    NSLog(@"%f",scrollView.contentOffset.x);
}
#pragma mark - UIGestureRecognizerDelegate -
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch {
    if ([NSStringFromClass([touch.view class]) isEqualToString:@"UITableViewCellContentView"]) {
        return NO;
    }
    return YES;
}
@end
