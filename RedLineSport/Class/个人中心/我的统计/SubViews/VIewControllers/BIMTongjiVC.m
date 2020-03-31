#import "BIMTongjiVC.h"
#import "BIMRoundUserView.h"
#import "BIMTitleIndexView.h"
#import "BIMPageScrollView.h"
#import "WebViewJavascriptBridge.h"
#import "BIMUsercatestatisModel.h"
@interface BIMTongjiVC ()<PageScrollViewDateSource,PageScrollViewDelegate,TitleIndexViewDelegate>
@property (nonatomic, strong) BIMPageScrollView *scrollView;
@property (nonatomic, strong) BIMTitleIndexView *titleView;
@property (nonatomic, strong) BIMUsercatestatisModel *modelWeek;
@property (nonatomic, strong) BIMUsercatestatisModel *modelmonth;
@property (nonatomic, strong) BIMUsercatestatisModel *modelTotal;
@property (nonatomic, strong) UIWebView *webViewWee;
@property (nonatomic, strong) UIWebView *webViewMon;
@property (nonatomic, strong) UIWebView *webViewAll;
@property WebViewJavascriptBridge* bridgeWee;
@property WebViewJavascriptBridge* bridgeMon;
@property WebViewJavascriptBridge* bridgeAll;
@end
@implementation BIMTongjiVC
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = YES;
}
-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    _titleView = [[BIMTitleIndexView alloc] initWithFrame:CGRectMake(0, APPDELEGATE.customTabbar.height_myNavigationBar - 44, Width, 44)];
    _titleView.selectedIndex = 0;
    _titleView.bottomLineColor = colorDD;
    _titleView.arrData = @[@"周统计",@"月统计",@"总统计"];
    _titleView.delegate =self;
    [self.view addSubview:_titleView];
    _scrollView = [[BIMPageScrollView alloc] initWithFrame:CGRectMake(0, _titleView.bottom, Width, Height - _titleView.bottom)];
    _scrollView.dateSource = self;
    _scrollView.pageDelegate = self;
    _scrollView.selectedIndex = 0;
    [self.view addSubview:_scrollView];
    [_scrollView reloadData];
    [self setNavView];
    [self loadDataWithType:self.tongjiType];
}
- (void)didSelectedAtIndex:(NSInteger)index
{
    [_scrollView updateSelectedIndex:index];
}
- (void)scrollToPageIndex:(NSInteger)index
{
    [_titleView updateSelectedIndex:index];
}
- (UIWebView *)webViewWee{
    if (!_webViewWee) {
        _webViewWee = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, 0, _scrollView.height)];
        _bridgeWee = [WebViewJavascriptBridge bridgeForWebView:_webViewWee];
        _webViewWee.backgroundColor = colorTableViewBackgroundColor;
    }
    return _webViewWee;
}
- (UIWebView *)webViewMon{
    if (!_webViewMon) {
        _webViewMon = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, 0, _scrollView.height)];
        _bridgeMon = [WebViewJavascriptBridge bridgeForWebView:_webViewMon];
        _webViewMon.backgroundColor = colorTableViewBackgroundColor;
    }
    return _webViewMon;
}
- (UIWebView *)webViewAll{
    if (!_webViewAll) {
        _webViewAll = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, 0, _scrollView.height)];
        _bridgeAll = [WebViewJavascriptBridge bridgeForWebView:_webViewAll];
        _webViewAll.backgroundColor = colorTableViewBackgroundColor;
    }
    return _webViewAll;
}
- (UIView *)pageScrollView:(BIMPageScrollView *)pageScroll tableViewForIndex:(NSInteger)index
{
            return self.webViewWee;
     return [UITableView new];
}
- (NSInteger)numberOfIndexInPageSrollView:(BIMPageScrollView *)pageScroll
{
    return 1;
}
#pragma mark -- setnavView
- (void)setNavView
{
    BIMNavView *nav = [[BIMNavView alloc] init];
    nav.delegate = self;
    BIMUserModel *user = [BIMMethods getUserModel];
    if (user.idId != _userModel.idId) {
        nav.labTitle.text =[NSString stringWithFormat:@"%@的统计",_userModel.nickname];
    }else{
        nav.labTitle.text =[NSString stringWithFormat:@"%@的统计",@"我"];
    }
    [nav.btnLeft setBackgroundImage:[UIImage imageNamed:@"backNew"] forState:UIControlStateNormal];
    [nav.btnLeft setBackgroundImage:[UIImage imageNamed:@"backNew"] forState:UIControlStateHighlighted];
       [self.view addSubview:nav];
}
- (void)navViewTouchAnIndex:(NSInteger)index
{
    if (index == 1) {
        [self.navigationController popViewControllerAnimated:YES];
    }else if(index == 2){}
}
- (void)loadDataWithType:(NSInteger)selectedType
{
    NSMutableDictionary *parameter = [NSMutableDictionary dictionaryWithDictionary:[BIMHttpString getCommenParemeter]];
    [parameter setObject:[NSString stringWithFormat:@"%ld",(long)_userModel.idId] forKey:@"userId"];
    [parameter setObject:[NSString stringWithFormat:@"%ld",(long)selectedType] forKey:@"type"];
    [[BIMDCHttpRequest shareInstance]sendHtmlGetRequestByMethod:@"get" WithParamaters:parameter PathUrlL:[NSString stringWithFormat:@"%@%@",APPDELEGATE.url_Server, _tongjiType ==0? url_ucenterusercatestatis : url_quizmyQuizStatis] Start:^(id requestOrignal) {
            [BIMLodingAnimateView showLodingView];
    } End:^(id responseOrignal) {
        [BIMLodingAnimateView dissMissLoadingView];
    } Success:^(id responseResult, id responseOrignal) {
                    NSString* path = [[NSBundle mainBundle] pathForResource:@"chengji-list" ofType:@"html"];
                    NSString *htmlString = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
                    [self.webViewWee loadHTMLString:htmlString baseURL:[NSURL URLWithString:path]];
                    NSArray *arr = [[NSArray alloc] initWithObjects:responseOrignal,@{@"type":@"0"}, nil];
                    [_bridgeWee callHandler:@"chengji" data:arr responseCallback:^(id response) {
                        NSLog(@"testJavascriptHandler responded: %@", response);
                    }];
                    [self.webViewWee reload];
                    [self.scrollView reloadData];
    } Failure:^(NSError *error, NSString *errorDict, id responseOrignal) {
        [SVProgressHUD showImage:[UIImage imageNamed:@""] status:errorDict];
    }];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end
