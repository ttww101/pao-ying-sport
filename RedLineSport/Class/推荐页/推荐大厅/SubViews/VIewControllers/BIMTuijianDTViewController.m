#import "BIMTuijianDTViewController.h"
#import "BIMSearchViewController.h"
#import "BIMBIfenSelectedSaishiModel.h"
#import "BIMFabuTuijianSelectedItemVC.h"
#import "BIMToAnalystsVC.h"
#import "BIMFaBuSucceedVCViewController.h"
#import "BIMPeiLvDetailVC.h"
#import "BIMJiShiPeiLvVC.h"
#import "BIMDoubleBattleVC.h"
@interface BIMTuijianDTViewController ()
 @end
@implementation BIMTuijianDTViewController
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:false animated:YES];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:[UIImage imageNamed:@"publish"] forState:UIControlStateNormal];
    btn.frame = CGRectMake(0, 0, 22, 22);
    [btn addTarget:self action:@selector(publishRecommend) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc]initWithCustomView:btn];
    self.navigationItem.rightBarButtonItem = rightItem;
}
-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"推荐大厅";
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.tableViewV];
    [[NSUserDefaults standardUserDefaults] setBool:NO forKey:@"tuijianDTShowProfit"];
    [self.tableViewV addSelectedView];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(setSetConSize) name:@"tuijianSetSize" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(setTableViewContentOffsetZero) name:NotificationsetForthTableViewContentOffsetZero object:nil];
}
- (void)setTableViewContentOffsetZero
{
    [self.tableViewV setContentOffset:CGPointZero animated:YES];
}
- (void)setSetConSize{
    [self.tableViewV setContentOffset:CGPointMake(0, 0)];
}
- (void)navViewTouchAnIndex:(NSInteger)index
{
    if (index == 1) {
    }else if(index == 2){
        BIMWebVC *webV = [[BIMWebVC alloc] init];
        webV.strtitle = @"推荐市场规则";
        webV.strurl=TUIJIAN_API_HTML;
        webV.hidesBottomBarWhenPushed = YES;
        [APPDELEGATE.customTabbar pushToViewController:webV animated:YES];
    }
}
- (BIMTuijianDatingTable *)tableViewV {
    if (!_tableViewV) {
        _tableViewV = [[BIMTuijianDatingTable alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain playType:_playType];
    }
    return _tableViewV;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
#pragma mark - Events
- (void)publishRecommend {
    if (![BIMMethods login]) {
        [BIMMethods toLogin];
        return;
    }
    BIMFabuTuijianSelectedItemVC *jinCai = [[BIMFabuTuijianSelectedItemVC alloc] init];
    jinCai.hidesBottomBarWhenPushed = YES;
    [APPDELEGATE.customTabbar pushToViewController:jinCai animated:YES];
}
@end
