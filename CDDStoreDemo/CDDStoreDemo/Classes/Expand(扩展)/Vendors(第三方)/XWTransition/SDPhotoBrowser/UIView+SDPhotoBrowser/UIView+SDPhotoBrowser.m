//
//  UIView+SDPhotoBrowser.m
//  CDDStoreDemo
//
//  Created by chengw on 2017/12/6.
//  Copyright © 2017年 RocketsChen. All rights reserved.
//

#import "UIView+SDPhotoBrowser.h"
#import "SDPhotoBrowser.h"

@interface UIView ()<SDPhotoBrowserDelegate>


@end
@implementation UIView (SDPhotoBrowser)

- (void)showImageArray:(NSArray *)imageArr atInder:(int)index{
    
    SDPhotoBrowser *browser = [[SDPhotoBrowser alloc] init];
    browser.currentImageIndex = index;
    browser.sourceImagesContainerView = self;
    browser.isCascadingShow = YES; //层叠
    browser.imageCount = imageArr.count;
    browser.delegate = self;
    [browser show];
}



@end
