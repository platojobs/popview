//
//  DCousePopWView.h
//  PopupWindow
//
//  Created by edz on 2018/3/14.
//  Copyright © 2018年 ManMeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DavidPView : UIViewController


@property (weak, nonatomic) IBOutlet UITextField *nameTf;


@property (weak, nonatomic) IBOutlet UITextField *phoneTF;

@property (weak, nonatomic) IBOutlet UITextField *addressTF;


@property(nonatomic,copy)void(^commitBox)(UITextField*tf,UITextField*phone,UITextField*address);

- (void)showWithAnimate;
- (void)hide;
@end
