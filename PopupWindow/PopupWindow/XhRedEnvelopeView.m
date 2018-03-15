//
//  YXhRedEnvelopeView.m
//  PopupWindow
//
//  Created by edz on 2018/3/15.
//  Copyright © 2018年 ManMeng. All rights reserved.
//

#import "XhRedEnvelopeView.h"

@interface XhRedEnvelopeView ()

@end

@implementation XhRedEnvelopeView

-(instancetype)init {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"XhRedEnvelopeView" bundle:nil];
    self = [storyboard instantiateViewControllerWithIdentifier:@"XhRedEnvelopeView"];
    if (self) {
        
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (void)showWithAnimate {
    UIViewController *rootVC =[[UIApplication sharedApplication]delegate].window.rootViewController;
    [rootVC addChildViewController:self];
    [rootVC.view addSubview:self.view];
    [self didMoveToParentViewController:rootVC];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.01 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
    });
    
}
- (void)hide {
    [self removeFromParentViewController];
    [self.view removeFromSuperview];
}
#pragma mark==取消
- (IBAction)cancelAct:(UIButton *)sender {
    [self hide];
}


#pragma mark==抢红包
- (IBAction)grabRedEnvelope:(UIButton *)sender {
    
    if (self.rodBox) {
        self.rodBox();
    }
    [self hide];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
