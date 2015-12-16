//
//  HYHMutilVC.m
//  HYHTableView
//
//  Created by yunhuihuang on 15/12/14.
//  Copyright © 2015年 skyclass. All rights reserved.
//  目的是学习使用多个tableview在同一个view中

#import "HYHMutilVC.h"
#import "HYHTable1VC.h"
#import "HYHTable2VC.h"
#import "HYHTable3VC.h"
@interface HYHMutilVC ()
@property (weak, nonatomic) IBOutlet UIView *tableVCView;

@end

@implementation HYHMutilVC
{

    HYHTable1VC * vcOne ;
    HYHTable2VC * vcTwo ;
    HYHTable3VC * vcThree ;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (IBAction)btn1:(id)sender {
    if (vcOne == nil) {
        vcOne = [[HYHTable1VC alloc]init];
        //将view变合适防止上下移动时文字被底部按钮遮挡
        CGRect rect = vcOne.view.frame;
        rect.size.height = self.tableVCView.frame.size.height;
        vcOne.view.frame = rect;
        //将view添加到tableview中的0最底层
        [self.tableVCView insertSubview:vcOne.view atIndex:0];
    }
    //将该层显示
    [self switchAnimationViewByView:vcOne.view];
    
    NSLog(@"count view %lu",(unsigned long)self.tableVCView.subviews.count);
}
- (IBAction)btn2:(id)sender {
    //vcTwo.view.backgroundColor = [UIColor blueColor];
    //[self.tableVCView bringSubviewToFront:vcTwo.view];
    if (vcTwo == nil) {
        vcTwo = [[HYHTable2VC alloc]init];
        CGRect rect = vcTwo.view.frame;
        rect.size.height = self.tableVCView.frame.size.height;
        vcTwo.view.frame = rect;
        [self.tableVCView insertSubview:vcTwo.view atIndex:0];
    }
    [self switchAnimationViewByView:vcTwo.view];
    
     NSLog(@"count view %lu",(unsigned long)self.tableVCView.subviews.count);
}
- (IBAction)btn3:(id)sender {
    if (vcThree == nil) {
        vcThree = [[HYHTable3VC alloc]init];
        CGRect  rect = vcThree.view.frame;
        rect.size.height = self.tableVCView.frame.size.height;
        vcThree.view.frame = rect;
        [self.tableVCView insertSubview:vcThree.view atIndex:0];
    }
    
    [self switchAnimationViewByView:vcThree.view];
    NSLog(@"count view %lu",(unsigned long)self.tableVCView.subviews.count);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //[self.tableVCView bringSubviewToFront:vcOne.view];

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark 页面 切换到显示层
-(void)switchAnimationViewByView:(UIView *)view
{

    [self.tableVCView bringSubviewToFront:view];
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
