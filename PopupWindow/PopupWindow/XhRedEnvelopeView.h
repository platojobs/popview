//
//  YXhRedEnvelopeView.h
//  PopupWindow
//
//  Created by edz on 2018/3/15.
//  Copyright © 2018年 ManMeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XhRedEnvelopeView : UIViewController
@property(nonatomic,copy)void(^rodBox)(void);
- (void)showWithAnimate;
- (void)hide;
@end
