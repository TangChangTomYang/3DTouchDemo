//
//  AppDelegate.h
//  3DTouchDemo
//
//  Created by yangrui on 2017/8/22.
//  Copyright © 2017年 yangrui. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;


@end



/** 关于 3D touch 功能的说明
 
 1. 3D touch 开发环境及调试设备:
 xcode7 或以上
 ios 9 或以上
 iphone6s 及以上
 
 2. 3D Touch  主要分为两大块:
 1> 主屏幕上的icon 上的快捷标签(home screen quick action)
 2> peek (预览) 和pop (调至预览的详细页面)
 
 
 3. 3D Touch  HOME Screen quick Action 功能的实现
 实现方式有两种:
 1> 在项目 info.plist 中静态的设置
 2> 代码动态的实现
 
 4. 3D Touch 的Peek pop 实现 有三种情况:
    1>第一阶段 预览(peek)
    2>第二阶段 上拉菜单
    3>第三阶段 pop 显示目标控制器

 
 
 */
