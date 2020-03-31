#import "BIMMessageViewController.h"
#import "BIMInfoViewModel.h"
#import "BIMInfoTableViewCell.h"
#import <YYModel/YYModel.h>
#import "BIMHeaderTableViewCell.h"
#import "BIMCommentsViewController.h"
#import "BIMCommentsDetailViewController.h"
@interface BIMMessageViewController () <UITableViewDataSource, UITableViewDelegate, InfoTableViewCellDelegate>
@property (nonatomic , strong) BIMInfoViewModel *viewModel;
@property (nonatomic , strong) UITableView *tableView;
@property (nonatomic , strong) BIMInfoModel *model;
@end
@implementation BIMMessageViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    [self configUI];
    [self loadData];
}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:false animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
#pragma mark - Load Data
- (void)loadData {
    __weak BIMMessageViewController *weakSelf = self;
    NSMutableDictionary *parameter = [NSMutableDictionary dictionaryWithDictionary:[BIMHttpString getCommenParemeter]];
    [parameter setValue:_newsID forKey:@"newsid"];
    [parameter setValue:@"true" forKey:@"hot"];
    [parameter setValue:@"-1" forKey:@"parentid"];
    [self.viewModel fetchRecommendedReviewsWithParameter:parameter callBack:^(BOOL isSucess, id response) {
        if (isSucess) {
            weakSelf.model = [BIMInfoModel yy_modelWithDictionary:(NSDictionary *)response];
            [weakSelf.tableView reloadData];
        } else {
        }
    }];
}
#pragma mark - Config UI
- (void)configUI {
    self.navigationItem.title = @"测试代码";
    [self.view addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
}
#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.model.data.count + 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        BIMHeaderTableViewCell *cell = [BIMHeaderTableViewCell cellForTableView:tableView];
        cell.title = @"全部评论";
        return cell;
    }
    BIMInfoTableViewCell *cell = [BIMInfoTableViewCell cellForTableView:tableView];
    cell.delegate = self;
    cell.model = self.model.data[indexPath.row - 1];
    return cell;
}
#pragma mark - UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        return [BIMHeaderTableViewCell heightForCell];
    }
    return [BIMInfoTableViewCell heightForCell];
}
#pragma mark - InfoTableViewCellDelegate
- (void)tableViewCell:(BIMInfoTableViewCell *)cell likeComment:(UIButton *)comment {
     NSMutableDictionary *parameter = [NSMutableDictionary dictionaryWithDictionary:[BIMHttpString getCommenParemeter]];
    [parameter setValue:_newsID forKey:@"newsid"];
    [parameter setValue:cell.model.commentId forKey:@"parentid"];
    [[BIMDCHttpRequest shareInstance]sendRequestByMethod:@"post" WithParamaters:parameter PathUrlL:[NSString stringWithFormat:@"%@%@",APPDELEGATE.url_Server,info_like_url] ArrayFile:nil Start:^(id requestOrignal) {
    } End:^(id responseOrignal) {
    } Success:^(id responseResult, id responseOrignal) {
        if ([responseOrignal[@"code"] isEqualToString:@"200"]) {
            cell.model.likeCount = cell.model.likeCount + 1;
            cell.model.liked = YES;
            NSIndexPath *index = [self.tableView indexPathForCell:cell];
            [self.tableView reloadRowsAtIndexPaths:@[index] withRowAnimation:UITableViewRowAnimationFade];
        } else {
            [SVProgressHUD showImage:[UIImage imageNamed:@""] status:responseOrignal[@"msg"]];
        }
    } Failure:^(NSError *error, NSString *errorDict, id responseOrignal) {
       [SVProgressHUD showImage:[UIImage imageNamed:@""] status:responseOrignal[@"msg"]];
    }];
}
- (void)tableViewCell:(BIMInfoTableViewCell *)cell moreComments:(id)moreComments {
    BIMCommentsViewController *control = [[BIMCommentsViewController alloc]init];
    control.ID = _newsID;
    [self.navigationController pushViewController:control animated:YES];
}
#pragma mark - Lazy Load
- (BIMInfoViewModel *)viewModel {
    if (_viewModel == nil) {
        _viewModel = [[BIMInfoViewModel alloc]init];
    }
    return _viewModel;
}
- (UITableView *)tableView {
    if (_tableView == nil) {
        _tableView = [[UITableView alloc]initWithFrame:CGRectZero style:UITableViewStylePlain];
        _tableView.dataSource = self;
        _tableView.delegate = self;
        _tableView.separatorStyle = UITableViewCellSelectionStyleNone;
    }
    return _tableView;
}
@end
