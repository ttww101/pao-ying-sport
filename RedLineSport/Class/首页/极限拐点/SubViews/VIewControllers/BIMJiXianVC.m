#import "BIMJiXianVC.h"
#import "BIMTitleIndexView.h"
#import "BIMPageScrollView.h"
#import "BIMJiXianTableView.h"
#import "BIMRecord_OneModel.h"
@interface BIMJiXianVC ()<PageScrollViewDateSource,PageScrollViewDelegate,TitleIndexViewDelegate>
@property (nonatomic, strong) BIMPageScrollView *scrollView;
@property (nonatomic, strong) BIMTitleIndexView *titleView;
@property (nonatomic, strong)BIMJiXianTableView *tabelView1;
@property (nonatomic, strong)BIMJiXianTableView *tabelView2;
@property (nonatomic, strong)BIMJiXianTableView *tabelView3;
@end
@implementation BIMJiXianVC
- (void)viewWillAppear:(BOOL)animated{
    self.navigationController.navigationBar.hidden = YES;
    [super viewWillAppear:animated];
}
- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = false;
}
-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self setNavView];
    self.view.backgroundColor = [UIColor whiteColor];
    _titleView = [[BIMTitleIndexView alloc] initWithFrame:CGRectMake(0, APPDELEGATE.customTabbar.height_myNavigationBar, Width, 44)];
    _titleView.selectedIndex = 0;
    _titleView.nalColor = colorFFD8D6;
    _titleView.seletedColor = [UIColor whiteColor];
    _titleView.lineColor = [UIColor whiteColor];
    _titleView.backgroundColor = redcolor;
    _titleView.arrData = @[@"胜平负",@"亚指",@"进球数"];
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
- (BIMJiXianTableView *)tabelView1
{
    if (!_tabelView1) {
        _tabelView1 = [[BIMJiXianTableView alloc]initWithFrame:CGRectMake(0, 0, Width, Height - APPDELEGATE.customTabbar.height_myNavigationBar - 44) style:UITableViewStylePlain];
    }
    return _tabelView1;
}
- (BIMJiXianTableView *)tabelView2
{
    if (!_tabelView2) {
        _tabelView2 = [[BIMJiXianTableView alloc]initWithFrame:CGRectMake(Width, 0, Width, Height - APPDELEGATE.customTabbar.height_myNavigationBar - 44) style:UITableViewStylePlain];
    }
    return _tabelView2;
}
- (BIMJiXianTableView *)tabelView3
{
    if (!_tabelView3) {
        _tabelView3 = [[BIMJiXianTableView alloc]initWithFrame:CGRectMake(Width * 2, 0, Width, Height - APPDELEGATE.customTabbar.height_myNavigationBar - 44) style:UITableViewStylePlain];
    }
    return _tabelView3;
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
    }else{
    }
    return [UITableView new];
}
- (NSInteger)numberOfIndexInPageSrollView:(BIMPageScrollView *)pageScroll
{
    return 3;
}
- (void)setNavView{
    BIMNavView *nav = [[BIMNavView alloc] init];
    nav.delegate = self;
    nav.labTitle.text = @"极限拐点";
    [nav.btnLeft setBackgroundImage:[UIImage imageNamed:@"backNew"] forState:UIControlStateNormal];
    [nav.btnLeft setBackgroundImage:[UIImage imageNamed:@"backNew"] forState:UIControlStateHighlighted];
    [self.view addSubview:nav];
}
- (void)navViewTouchAnIndex:(NSInteger)index
{
    if (index == 1) {
        [self.navigationController popViewControllerAnimated:YES];
    }else if(index == 2){
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end
