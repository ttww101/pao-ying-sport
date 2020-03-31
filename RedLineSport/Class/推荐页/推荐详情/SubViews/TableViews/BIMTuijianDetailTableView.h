typedef NS_ENUM(NSInteger, typeTuijianDetailHeaderCell)
{
    typeTuijianDetailHeaderCellDanchang = 0,
    typeTuijianDetailHeaderCellChuanGuan = 1,
    typeTuijianDetailHeaderCellZucai = 2,
};
#import "BIMBasicTableView.h"
#import "BIMTuijiandatingModel.h"
#import "BIMpayUserModel.h"
@interface BIMTuijianDetailTableView : BIMBasicTableView
@property (nonatomic, strong) BIMTuijiandatingModel *headerModel;
@property (nonatomic, strong) NSArray *arrData;
@property (nonatomic, assign) typeTuijianDetailHeaderCell typeTuijianDetailHeader;
@property (nonatomic, strong) BIMTuijiandatingModel *tuijianModel;
@property (nonatomic, strong) BIMpayUserModel *payUsersModel;
@property (nonatomic ,strong) NSArray *arrPic;
@property (nonatomic , strong) NSMutableArray *recs;

@end
