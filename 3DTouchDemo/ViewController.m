//
//  ViewController.m
//  3DTouchDemo
//
//  Created by yangrui on 2017/8/22.
//  Copyright © 2017年 yangrui. All rights reserved.
//

#import "ViewController.h"
#import "PeekPopViewController.h"

@interface ViewController ()<UIViewControllerPreviewingDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    
    [self threeDPeekAndPoP];
}



// 3D touch peek 和POP 实现的四部曲
-(void)threeDPeekAndPoP{

    
   //1> 需要在哪个页面上使用就在哪个页面上注册 (比如 我们让 redView 有3D Touch 的功能)
//    [self registerForPreviewingWithDelegate:self sourceView:self.view];
    
    [self registerForPreviewingWithDelegate:self sourceView:self.redView];


    // 2> 遵守协议UIViewControllerPreviewingDelegate
     
}


// peek 预览(只是起到一个预览的作用)
- (nullable UIViewController *)previewingContext:(id <UIViewControllerPreviewing>)previewingContext viewControllerForLocation:(CGPoint)location NS_AVAILABLE_IOS(9_0){

    // 获取按压的view (在预览的时候, 会将用户触发 3D Touch 的view 回传回来)
    UIView *redView = [previewingContext sourceView];
    
    // 设定预览界面( 预览的控制器  任何你想显示的控制器都可以)
    PeekPopViewController *peekVC = [[PeekPopViewController alloc]init];
    
    // 设定预览页面的大小
//    preVC.preferredContentSize = CGSizeMake(100, 100);
    
    // 调整不被虚化的范围( 就是3D touch )
    CGRect rect = CGRectMake(100, 0, self.view.frame.size.width,240);
    previewingContext.sourceRect = rect;
    //返回预览界面
    return peekVC;
    
}
- (void)previewingContext:(id <UIViewControllerPreviewing>)previewingContext commitViewController:(UIViewController *)viewControllerToCommit NS_AVAILABLE_IOS(9_0){
    
//    [self.navigationController pushViewController:viewControllerToCommit animated:YES];
    [self presentViewController:viewControllerToCommit animated:YES completion:nil];
}




@end
