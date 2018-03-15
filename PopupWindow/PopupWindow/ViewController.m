//
//  ViewController.m
//  PopupWindow
//
//  Created by edz on 2018/3/14.
//  Copyright © 2018年 ManMeng. All rights reserved.
//

#import "ViewController.h"
#import "DavidPView.h"//课程红包
#import "XhRedEnvelopeView.h"//抢红包
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)sender:(UIButton *)sender {
    
    [self robRedEnvelope];
}
-(void)robRedEnvelope{
    XhRedEnvelopeView*red=[[XhRedEnvelopeView alloc]init];
    [red setRodBox:^{
         NSLog(@"red");
    }];
    [red showWithAnimate];
}
-(void)coucse{
    DavidPView*changNumView=[[DavidPView alloc]init];
    
    [changNumView setCommitBox:^(UITextField *tf, UITextField *phone, UITextField *address) {
        
        NSLog(@"%@,%@%@",tf.text,phone.text,address.text);
        
    }];
    [changNumView showWithAnimate];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
