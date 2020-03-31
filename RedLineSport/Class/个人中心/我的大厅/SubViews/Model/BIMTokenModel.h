#import <Foundation/Foundation.h>
@interface BIMTokenModel : BIMBasicModel
@property (nonatomic, strong)NSString *token;
@property (nonatomic, strong)NSString *refreshToken;
@end
