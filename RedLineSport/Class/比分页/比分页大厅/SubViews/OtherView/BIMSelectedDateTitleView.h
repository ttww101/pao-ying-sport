#import "BIMQiciModel.h"
#import <UIKit/UIKit.h>
@protocol SelectedDateTitleViewDelegate<NSObject>
@optional
- (void)selectedDateViewIndex:(NSInteger)index;
- (void)BIMSelectedDateTitleViewDidAction:(NSArray *)array;
@end
@interface BIMSelectedDateTitleView : UIView
@property (nonatomic, assign) BOOL isSaiguo;
@property (nonatomic, assign) BOOL isBeforeTwo; 
@property (nonatomic, strong) NSArray *arrData;
@property (nonatomic, weak) id<SelectedDateTitleViewDelegate> delegate;
@end
