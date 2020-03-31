#import "BIMBasicModel.h"
@interface BIMBIfenSelectedSaishiModel : BIMBasicModel
@property (nonatomic, copy) NSString *index;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *tag;
@property (nonatomic, assign) NSInteger count;
@property (nonatomic, copy) NSString *idId;
@property (nonatomic, assign) NSInteger order;
@property (nonatomic, assign) BOOL isSelected;
@end

@interface FilterModel: NSObject

@property (nonatomic , copy) NSArray<BIMBIfenSelectedSaishiModel *> *hot_items;
@property (nonatomic , copy) NSArray<BIMBIfenSelectedSaishiModel *> *other_items;
@property (nonatomic , copy) NSArray<BIMBIfenSelectedSaishiModel *> *items;

@end

@interface FilterData: NSObject

@property (nonatomic, copy) NSArray<BIMBIfenSelectedSaishiModel *> *dataList;
@property (nonatomic , copy) NSString *title;

@end
