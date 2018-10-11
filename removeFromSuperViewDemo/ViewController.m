//
//  ViewController.m
//  removeFromSuperViewDemo
//
//  Created by DQB on 2018/7/23.
//  Copyright © 2018年 QBTech. All rights reserved.
//

#import "ViewController.h"
#import "FirstView.h"
#import "SecondView.h"

@interface ViewController ()

@property (nonatomic, strong) FirstView *view1;
@property (nonatomic, strong) SecondView *view2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view1 = [[FirstView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    self.view1.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.view1];
    
    self.view2 = [[SecondView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
    self.view2.backgroundColor = [UIColor greenColor];
    [self.view1 addSubview:self.view2];
}

- (IBAction)button1Clicked:(id)sender
{
//    [self.view1.subviews enumerateObjectsUsingBlock:^(__kindof UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//        [obj removeFromSuperview];
//        obj = nil;
//    }];
    
    
//    for (UIView *view in self.view1.subviews) {
//        [view removeFromSuperview];
//    }
    
    for (int i = 0; i < self.view1.subviews.count; i++) {
        UIView *view = self.view1.subviews[i];
        /*
         不会直接触发view的dealloc方法，上面几种遍历方式仍然不会触发
         */
        [view removeFromSuperview];
        view = nil;
    }
}

- (IBAction)button2Clicked:(id)sender {
    
    /*
     父视图调用dealloc方法，并不会触发子视图调用dealloc
     */
    [self.view1 removeFromSuperview];
    self.view1 = nil;
}

- (IBAction)button3Clicked:(id)sender {
    
    [self.view1 removeFromSuperview];
    self.view1 = nil;
    
    [self.view2 removeFromSuperview];
    self.view2 = nil;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
