#import "BIMPageScrollView.h"
#import "BIMTitleIndexView.h"
#import "BIMBaolengTable.h"
#import "BIMBaolengZhishuVC.h"
@interface BIMBaolengZhishuVC ()<PageScrollViewDateSource,PageScrollViewDelegate,TitleIndexViewDelegate>
@property (nonatomic, strong) BIMPageScrollView *scrollView;
@property (nonatomic, strong) BIMTitleIndexView *titleView;
@property (nonatomic, strong)BIMBaolengTable *tabelView1;
@property (nonatomic, strong)BIMBaolengTable *tabelView2;
@property (nonatomic, strong)BIMBaolengTable *tabelView3;
@property (nonatomic, strong)BIMBaolengTable *tabelView4;
@end
@implementation BIMBaolengZhishuVC
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = YES;
}
-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}
#pragma mark -- setnavView
- (void)setNavView
{
    BIMNavView *nav = [[BIMNavView alloc] init];
    nav.delegate = self;
    nav.labTitle.text = @"爆冷指数";
    [nav.btnLeft setBackgroundImage:[UIImage imageNamed:@"backNew"] forState:UIControlStateNormal];
    [nav.btnLeft setBackgroundImage:[UIImage imageNamed:@"backNew"] forState:UIControlStateHighlighted];
    [nav.btnRight setBackgroundImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    [nav.btnRight setBackgroundImage:[UIImage imageNamed:@""] forState:UIControlStateHighlighted];
    [self.view addSubview:nav];
}
- (void)navViewTouchAnIndex:(NSInteger)index
{
    if (index == 1) {
        [self.navigationController popViewControllerAnimated:YES];
    }else if(index == 2){
    }
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self setNavView];
    _titleView = [[BIMTitleIndexView alloc] initWithFrame:CGRectMake(0, APPDELEGATE.customTabbar.height_myNavigationBar, Width, 44)];
    _titleView.selectedIndex = 0;
    _titleView.nalColor = colorFFD8D6;
    _titleView.seletedColor = [UIColor whiteColor];
    _titleView.lineColor = [UIColor whiteColor];
    _titleView.backgroundColor = redcolor;
    _titleView.arrData = @[@"全部",@"热门",@"竞彩",@"北单",];
    _titleView.delegate =self;
    [self.view addSubview:_titleView];
    _scrollView = [[BIMPageScrollView alloc] initWithFrame:CGRectMake(0, _titleView.bottom , Width, Height - _titleView.bottom)];
    _scrollView.dateSource = self;
    _scrollView.pageDelegate = self;
    _scrollView.selectedIndex = 0;
    [self.view addSubview:_scrollView];
    [_scrollView reloadData];
}
- (void)didSelectedAtIndex:(NSInteger)index
{
    [_scrollView updateSelectedIndex:index];
}
- (void)scrollToPageIndex:(NSInteger)index
{
    [_titleView updateSelectedIndex:index];
}
- (BIMBaolengTable *)tabelView1
{
    if (!_tabelView1) {
        _tabelView1 = [[BIMBaolengTable alloc]initWithFrame:CGRectMake(0, 0, Width, Height - APPDELEGATE.customTabbar.height_myNavigationBar - 44) style:UITableViewStylePlain];
    }
    return _tabelView1;
}
- (BIMBaolengTable *)tabelView2
{
    if (!_tabelView2) {
        _tabelView2 = [[BIMBaolengTable alloc]initWithFrame:CGRectMake(Width, 0, Width, Height - APPDELEGATE.customTabbar.height_myNavigationBar - 44) style:UITableViewStylePlain];
    }
    return _tabelView2;
}
- (BIMBaolengTable *)tabelView3
{
    if (!_tabelView3) {
        _tabelView3 = [[BIMBaolengTable alloc]initWithFrame:CGRectMake(Width * 2, 0, Width, Height - APPDELEGATE.customTabbar.height_myNavigationBar - 44) style:UITableViewStylePlain];
    }
    return _tabelView3;
}
- (BIMBaolengTable *)tabelView4
{
    if (!_tabelView4) {
        _tabelView4 = [[BIMBaolengTable alloc]initWithFrame:CGRectMake(Width * 2, 0, Width, Height - APPDELEGATE.customTabbar.height_myNavigationBar - 44) style:UITableViewStylePlain];
    }
    return _tabelView4;
}
- (UITableView *)pageScrollView:(BIMPageScrollView *)pageScroll tableViewForIndex:(NSInteger)index
{
    if (index== 0) {
        [self.tabelView1 updateWithType:0];
        return self.tabelView1;
    }else if(index == 1){
        [self.tabelView2 updateWithType:1];
        return self.tabelView2;
    }else if(index == 2){
        [self.tabelView3 updateWithType:2];
        return self.tabelView3;
    }else if(index == 3){
        [self.tabelView4 updateWithType:3];
        return self.tabelView4;
    }else{
    }
    return [UITableView new];
}
- (NSInteger)numberOfIndexInPageSrollView:(BIMPageScrollView *)pageScroll
{
    return 4;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end
