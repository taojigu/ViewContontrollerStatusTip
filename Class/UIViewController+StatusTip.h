//
//  UIViewController+StatusTip.h
//  Pods-DemoViewControllerTipView
//
//  Created by gus on 2018/5/1.
//

#import <Foundation/Foundation.h>
#import "VTStatusTipModel.h"

/**
 Message for status operatrions
 */
@interface UIViewController (StatusTip)

/**
 Register shown tip for the status
 */
- (void)registerStatusTip:(VTStatusTipModel *)statusTipModel;

/**
 Register show tips for statuses
 */
- (void)registerStatusTipArray:(NSArray *)statusTipModelArray;

- (void)showStatusView:(NSString *)statusCode;

- (void)hideStausView;

- (void)registerStatusBlock:(NSString *)statusCode block:(void (^)(void))block;

@end
