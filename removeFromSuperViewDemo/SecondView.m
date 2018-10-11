//
//  SecondView.m
//  removeFromSuperViewDemo
//
//  Created by DQB on 2018/7/23.
//  Copyright © 2018年 QBTech. All rights reserved.
//

#import "SecondView.h"

@implementation SecondView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)dealloc
{
    NSLog(@"[--dealloc: %@--]", NSStringFromClass(self.class));
}

@end
