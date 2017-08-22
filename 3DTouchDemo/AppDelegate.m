//
//  AppDelegate.m
//  3DTouchDemo
//
//  Created by yangrui on 2017/8/22.
//  Copyright © 2017年 yangrui. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


// 3D  touch 首次启动APP 调用

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
   
    // 动态创建应用图标上的 3D touch 快捷选项
    [self createShortcutItem];
    
    UIApplicationShortcutItem *shortcutItem = launchOptions[UIApplicationLaunchOptionsShortcutItemKey];
   // 如果从快捷选项标签启动app ,则根据不同的标签执行不同的操作
    
    if(shortcutItem != nil){
        
        //判断设置的快捷选项标签唯一标识,根据不同的标签执行不同的操作
        
        if([shortcutItem.type isEqualToString:@"com.yang.one"]){
            
            NSLog(@"启动 点击  com.yang.one");
            
        }
        else if([shortcutItem.type isEqualToString:@"com.yang.two"]){
            NSLog(@"启动 点击  com.yang.two");
        }
        else if([shortcutItem.type isEqualToString:@"com.yang.three"]){
            NSLog(@"启动 点击  com.yang.three");
        }
        
        
    }
    
    
    return YES;
}

/** 如果 APP 没有被杀死,还在后台,点开 3D Touch 会调用这个方法 */
-(void)application:(UIApplication *)application performActionForShortcutItem:(nonnull UIApplicationShortcutItem *)shortcutItem completionHandler:(nonnull void (^)(BOOL))completionHandler{
    
    if(shortcutItem != nil){
        
        //判断设置的快捷选项标签唯一标识,根据不同的标签执行不同的操作
        
        if([shortcutItem.type isEqualToString:@"com.yang.one"]){
            
              NSLog(@"后台点击  com.yang.one");
            
        }
        else if([shortcutItem.type isEqualToString:@"com.yang.two"]){
            NSLog(@"后台点击  com.yang.two");
        }
        else if([shortcutItem.type isEqualToString:@"com.yang.three"]){
             NSLog(@"后台点击  com.yang.three");
        }
        
        
    }
    
    if(completionHandler != nil){
        completionHandler(YES);
    }
    
    

}



-(void)createShortcutItem{

    //创建系统风格的icon
    UIApplicationShortcutIcon *shortcutIcon1 = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeMessage];

    //创建快捷选项
    UIApplicationShortcutItem *shortcutItem1 = [[UIApplicationShortcutItem alloc]initWithType:@"com.yang.one"
                                                                              localizedTitle:@"消息"
                                                                           localizedSubtitle:@"分享副标题"
                                                                                        icon:shortcutIcon1
                                                                                    userInfo:nil];
    //创建系统风格的icon
    UIApplicationShortcutIcon *shortcutIcon2 = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeMessage];
    
    //创建快捷选项
    UIApplicationShortcutItem *shortcutItem2 = [[UIApplicationShortcutItem alloc]initWithType:@"com.yang.two"
                                                                              localizedTitle:@"消息"
                                                                           localizedSubtitle:@"分享副标题"
                                                                                        icon:shortcutIcon2
                                                                                    userInfo:nil];
    //创建系统风格的icon
    UIApplicationShortcutIcon *shortcutIcon3 = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeMessage];
    
    //创建快捷选项
    UIApplicationShortcutItem *shortcutItem3 = [[UIApplicationShortcutItem alloc]initWithType:@"com.yang.three"
                                                                              localizedTitle:@"消息"
                                                                           localizedSubtitle:@"分享副标题"
                                                                                        icon:shortcutIcon3
                                                                                    userInfo:nil];
    
    //添加到快捷选项数组中
    [UIApplication sharedApplication].shortcutItems = @[shortcutItem1,shortcutItem2,shortcutItem3];
    
    
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
