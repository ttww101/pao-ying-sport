#import <UIKit/UIKit.h>
@class BIMDSCollectionViewIndex;
@protocol DSCollectionViewIndexDelegate <NSObject>
-(void)collectionViewIndex:(BIMDSCollectionViewIndex *)collectionViewIndex didselectionAtIndex:(NSInteger)index withTitle:(NSString *)title;
- (void)collectionViewIndexTouchesBegan:(BIMDSCollectionViewIndex *)collectionViewIndex;
- (void)collectionViewIndexTouchesEnd:(BIMDSCollectionViewIndex *)collectionViewIndex;
@end
@interface BIMDSCollectionViewIndex : UIView
@property(nonatomic, assign)BOOL isFrameLayer;
@property(nonatomic, strong)NSArray *titleIndexes;
@property(nonatomic, weak)id<DSCollectionViewIndexDelegate>collectionDelegate;
@end
