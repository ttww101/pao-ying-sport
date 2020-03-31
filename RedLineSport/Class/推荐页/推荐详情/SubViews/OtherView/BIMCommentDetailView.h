#import <UIKit/UIKit.h>
#import "BIMCommentChildModel.h"
@protocol CommentDetailViewDelegate <NSObject>
@optional
- (void)didTouchCommentDetailViewWithUserId:(BIMCommentChildModel*)userId commentTag:(CGFloat)commentTag;
- (void)touchChildCommentViewWithIdid:(NSInteger)Idid;
@end
@interface BIMCommentDetailView : UIView
@property (nonatomic, strong) BIMCommentChildModel *model;
@property (nonatomic, weak) id<CommentDetailViewDelegate> delegate;
- (void)hideHudView;
@end
