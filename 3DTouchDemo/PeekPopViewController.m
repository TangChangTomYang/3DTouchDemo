//
//  TouchTestViewController.m
//  3DTouchDemo
//
//  Created by yangrui on 2017/8/22.
//  Copyright © 2017年 yangrui. All rights reserved.
//

#import "PeekPopViewController.h"

@interface PeekPopViewController ()

@end

@implementation PeekPopViewController



- (IBAction)dismissBtnClick:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

// 重写方法 提供下拉 功能
-(NSArray<id<UIPreviewActionItem>> *)previewActionItems{

    UIPreviewAction *action1 = [UIPreviewAction actionWithTitle:@"选项一"
                                                          style:UIPreviewActionStyleDefault
                                                        handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        
    }];
    
    UIPreviewAction *action2 = [UIPreviewAction actionWithTitle:@"选项二" style:UIPreviewActionStyleSelected handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        
    }];
    
    UIPreviewAction *action3 = [UIPreviewAction actionWithTitle:@"选项三" style:UIPreviewActionStyleDestructive handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        
    }];
    
    UIPreviewActionGroup *actionGroup = [UIPreviewActionGroup actionGroupWithTitle:@"选项组" style:UIPreviewActionStyleDefault actions:@[action1, action2]];
    
    return @[action1, action2, action3, actionGroup];
}

@end
