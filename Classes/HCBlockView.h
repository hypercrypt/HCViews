//
//  HCBlockView.h
//  HCViews
//
//  Created by Klaus-Peter Dudas on 17/10/2012.
//  Copyright (c) 2012 Hypercrypt Solutions Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class HCBlockView;

typedef void(^HCBlockViewDrawRectBlock)(HCBlockView *blockView, CGContextRef context, CGRect rect);

@interface HCBlockView : UIView

- (instancetype)initWithFrame:(CGRect)frame drawRectBlock:(HCBlockViewDrawRectBlock)drawRectBlock;

@property (nonatomic, copy) HCBlockViewDrawRectBlock drawRectBlock;

@end
