#import "BIMBasicModel.h"
@interface BIMQiciModel : BIMBasicModel
@property (nonatomic, assign) NSInteger iscurrent;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy)NSString *date;
@property (nonatomic, copy)NSString *week;
@property (nonatomic, copy)NSString *time;


@property (nonatomic, assign) BOOL selected;
@property (nonatomic, copy)NSString *val;
@property (nonatomic, copy)NSString *item;


@end
