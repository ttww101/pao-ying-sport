#import "BIMToolKitViewController.h"
#import "BIMUniversaListCell.h"
#import "BIMModelPredictionViewModel.h"
#import "BIMNullTableViewCell.h"
#import "BIMToolKitViewModel.h"
#import "BIMBaolengZhishuVC.h"
#import "BIMTongpeiTongjiVC.h"
#import "BIMYapanZhoushouVC.h"
#import "BIMPeilvYichangVC.h"
#import "BIMJiXianVC.h"
#import "BIMPanwangZhishuVC.h"
#import "BIMJiaoYiViewController.h"
#import "BIMBettingVC.h"
@interface BIMToolKitViewController () <UITableViewDelegate, UITableViewDataSource, DZNEmptyDataSetSource,DZNEmptyDataSetDelegate>
@property (nonatomic, strong) BIMBasicTableView *tableView;
@property (nonatomic, copy) NSArray *contentArray;
@end
@implementation BIMToolKitViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    [self configUI];
    [self loadData];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:false animated:YES];
}
#pragma mark - Config UI
- (void)configUI {
    self.navigationItem.title = @"工具";
    self.view.backgroundColor = UIColorFromRGBWithOX(0xebebeb);
    self.tableView.backgroundColor = self.view.backgroundColor;
    [self.view addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
    adjustsScrollViewInsets_NO(self.tableView, self);
}
#pragma mark - Load Data
- (void)loadData {
    _contentArray = [BIMToolKitViewModel createModelListArray];
    [self.tableView reloadData];
}
#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _contentArray.count * 2;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row % 2 == 0) {
        BIMNullTableViewCell *nullCell = [BIMNullTableViewCell cellForTableView:tableView];
        return nullCell;
    } else {
        BIMUniversaListCell *cell = [BIMUniversaListCell cellForTableView:tableView];
        [cell refreshContentData:_contentArray[indexPath.row / 2]];
        return cell;
    }
}
#pragma mark - UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row % 2 == 0) {
        return [BIMNullTableViewCell heightForCell];
    } else {
        return [BIMUniversaListCell heightForCell];
    }
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSInteger idnex = indexPath.row / 2;
    switch (idnex) {
        case 0: {
            BIMBaolengZhishuVC * jiaoyi = [[BIMBaolengZhishuVC alloc] init];
            [self.navigationController pushViewController:jiaoyi animated:YES];
        }
            break;
        case 1: {
            BIMTongpeiTongjiVC *odd = [[BIMTongpeiTongjiVC alloc] init];
            [self.navigationController pushViewController:odd animated:YES];
        }
            break;
        case 2: {
            BIMYapanZhoushouVC *odd = [[BIMYapanZhoushouVC alloc] init];
           [self.navigationController pushViewController:odd animated:YES];
        }
            break;
        case 3: {
            BIMPeilvYichangVC *odd = [[BIMPeilvYichangVC alloc] init];
            [self.navigationController pushViewController:odd animated:YES];
        }
            break;
        case 4: {
            BIMJiXianVC *jixian = [[BIMJiXianVC alloc] init];
            [self.navigationController pushViewController:jixian animated:YES];
        }
            break;
        case 5: {
            BIMPanwangZhishuVC *record = [[BIMPanwangZhishuVC alloc] init];
            [self.navigationController pushViewController:record animated:YES];
        }
            break;
        case 6: {
            BIMJiaoYiViewController * jiaoyi = [[BIMJiaoYiViewController alloc] init];
            [self.navigationController pushViewController:jiaoyi animated:YES];
        }
            break;
        case 7: {
            BIMBettingVC *odd = [[BIMBettingVC alloc] init];
           [self.navigationController pushViewController:odd animated:YES];
        }
            break;
        default:
            break;
    }
}
#pragma mark - Lazy Load
- (BIMBasicTableView *)tableView
{
    if (!_tableView) {
        _tableView = [[BIMBasicTableView alloc] initWithFrame:CGRectZero];
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _tableView.defaultPage = defaultPageFirst;
        _tableView.defaultTitle = default_isLoading;
        _tableView.showsVerticalScrollIndicator = NO;
        _tableView.delegate =self;
        _tableView.dataSource = self;
        _tableView.emptyDataSetSource = self;
        _tableView.emptyDataSetDelegate = self;
    }
    return _tableView;
}
@end
