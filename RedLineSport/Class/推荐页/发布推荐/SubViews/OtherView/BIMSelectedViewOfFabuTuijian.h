#import <UIKit/UIKit.h>
#import "BIMDxModel.h"
@protocol SelectedViewOfFabuTuijianDelegate <NSObject>
@optional
- (void)didselectedAtIndex:(NSInteger)index WithModel:(BIMDxModel *)selectedModel WithCompanyIndex:(NSInteger)companyIndex;
@end
@interface BIMSelectedViewOfFabuTuijian : UIView
@property (nonatomic, assign)NSInteger newTypeNum;
@property (nonatomic, assign)NSInteger companyIndex;
@property (nonatomic, strong) BIMDxModel *model;
@property (nonatomic, weak) id<SelectedViewOfFabuTuijianDelegate> delegate;
- (void)clearbackGroundImage;
- (void)setCurrentIndex:(NSInteger )index;
@end
