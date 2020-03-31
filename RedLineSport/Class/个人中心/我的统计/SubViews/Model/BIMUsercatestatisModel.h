#import "BIMBasicModel.h"
#import "BIMStatisticsModel.h"
#import "BIMGoodPlayModel.h"
#import "BIMGoodsclassModel.h"
#import "BIMTotalrateModel.h"
#import "BIMStatisticsSectionTwoModel.h"
@interface BIMUsercatestatisModel : BIMBasicModel
@property (nonatomic, assign) NSInteger avgweeknum;
@property (nonatomic, strong) BIMStatisticsModel *userinfo;
@property (nonatomic, strong) BIMGoodPlayModel *goodplay;
@property (nonatomic, strong) BIMGoodsclassModel *goodsclass;
@property (nonatomic, strong) NSArray *totalrate;
@property (nonatomic, strong) NSArray *nearten;
@property (nonatomic, strong) NSArray *sclassStatis;
@property (nonatomic, strong) NSArray *playStatis0;
@property (nonatomic, strong) NSArray *playStatis1;
@property (nonatomic, strong) NSArray *ouPanStatis;
@property (nonatomic, strong) NSArray *playStatis2;
@property (nonatomic, strong) NSArray *yaPanStatis;
@property (nonatomic, strong) NSArray *playStatis3;
@property (nonatomic, strong) NSArray *dxPanStatis;
@property (nonatomic, strong) NSArray *timeStatis;
@property (nonatomic, strong) NSArray *monthGroup;
@property (nonatomic, strong) NSArray *weekGroup;
@end
