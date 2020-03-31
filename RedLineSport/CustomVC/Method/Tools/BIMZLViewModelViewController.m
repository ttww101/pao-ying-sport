//
//  BIMZLViewModelViewController.m
//  DictPublishAssistant
//
//  Created by Marjoice on 7/19/17.
//  Copyright © 2017 zhuliang. All rights reserved.
//

#import "BIMZLViewModelViewController.h"
#import "BIMNSObject+Perform.h"

@interface BIMZLViewModelViewController (PRIVATE)

@end

@implementation BIMZLViewModelViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    SEL viewModelSel = NSSelectorFromString(@"setupViewModel");
    if([self respondsToSelector:viewModelSel]) {
        [self performSelectorAlongChain:viewModelSel];
    }
}



@end
