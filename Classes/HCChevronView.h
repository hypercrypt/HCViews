//
//  HCChevronView.h
//
//  Created by Klaus-Peter Dudas on 13/11/2012.
//  Copyright (c) 2012 Hypercrypt Solutions Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

extern const CGSize HCChevronViewDefaultSize;

@interface HCChevronView : UIControl

+ (HCChevronView *)chevronView;
+ (HCChevronView *)chevronViewWithColor:(UIColor *)color highlightedColor:(UIColor *)highlightedColor;

@property (nonatomic, strong) UIColor *color            UI_APPEARANCE_SELECTOR;
@property (nonatomic, strong) UIColor *highlightedColor UI_APPEARANCE_SELECTOR;

@end
