//
//  BIMShowSignalS.h
//  GQZhiBo
//
//  Created by genglei on 2019/1/11.
//  Copyright © 2019年 GQXX. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol BIMShowSignalsDelegate <NSObject>

- (void)didSelectItem:(NSDictionary *)data;

@end

@class ItemControl;

@interface BIMShowSignals : UIView

@property (nonatomic, weak) id<BIMShowSignalsDelegate> delegate;


- (instancetype)initWithFrame:(CGRect)frame mid:(NSString *)mid;

- (void)showSignals:(NSArray<NSString *> *)signal;

@end


@interface ItemControl: UIControl

- (instancetype)initWithFrame:(CGRect)frame data:(NSDictionary *)data hideBottomLins:(BOOL)hideLine;

@end

