//
//  DCousePopWView.m
//  PopupWindow
//
//  Created by edz on 2018/3/14.
//  Copyright © 2018年 ManMeng. All rights reserved.
//

#import "DavidPView.h"
#import <UIKit/UIKit.h>
@interface DavidPView ()

@end

@implementation DavidPView

-(instancetype)init {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"DavidPView" bundle:nil];
    self = [storyboard instantiateViewControllerWithIdentifier:@"DavidPView"];
    if (self) {
        
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor clearColor];
}
- (void)showWithAnimate {
    UIViewController *rootVC =[[UIApplication sharedApplication]delegate].window.rootViewController;
    [rootVC addChildViewController:self];
    [rootVC.view addSubview:self.view];
    [self didMoveToParentViewController:rootVC];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.01 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
    });
    
}
- (IBAction)commitBt:(UIButton *)sender {
    
    if (self.commitBox) {
        self.commitBox(self.nameTf, self.phoneTF, self.addressTF);
    }
    [self hide];
  
}
- (void)hide {
    [self removeFromParentViewController];
    [self.view removeFromSuperview];
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
   // [self hide];
}
- (IBAction)cancel:(UIButton *)sender {
    
    [self hide];
}

@end
