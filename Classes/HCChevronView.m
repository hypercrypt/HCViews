//
//  HCChevronView.m
//
//  Created by Klaus-Peter Dudas on 13/11/2012.
//  Copyright (c) 2012 Hypercrypt Solutions Ltd. All rights reserved.
//

#import "HCChevronView.h"

const CGSize HCChevronViewDefaultSize = (CGSize){8.5f, 13.0f};

@implementation HCChevronView

+ (HCChevronView *)chevronView
{
    return [self chevronViewWithColor:[UIColor lightGrayColor] highlightedColor:[UIColor whiteColor]];
}

+ (HCChevronView *)chevronViewWithColor:(UIColor *)color highlightedColor:(UIColor *)highlightedColor
{
    HCChevronView *chevronView = [[self alloc] initWithFrame:(CGRect){CGPointZero, HCChevronViewDefaultSize}];
    
    chevronView.color            = color;
    chevronView.highlightedColor = highlightedColor;
    
    return chevronView;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self)
    {
        [self setup];
    }
    
    return self;
}

- (id)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    
    if (self)
    {
        [self setup];
    }
    
    return self;
}

- (void)setup
{
    self.contentMode = UIViewContentModeRight;
    self.backgroundColor = [UIColor clearColor];
    self.userInteractionEnabled = NO;
}

- (void)drawRect:(CGRect)rect
{
    CGRect bounds = self.bounds;
    CGSize adjustedSize = (CGSize){
        .width  = HCChevronViewDefaultSize.width  / bounds.size.width,
        .height = HCChevronViewDefaultSize.height / bounds.size.height,
    };
    
    UIBezierPath *chevronPath = [UIBezierPath bezierPath];
    [chevronPath moveToPoint:   (CGPoint){0.0f * adjustedSize.width,  2.0f * adjustedSize.height}];
    [chevronPath addLineToPoint:(CGPoint){4.5f * adjustedSize.width,  6.5f * adjustedSize.height}];
    [chevronPath addLineToPoint:(CGPoint){0.0f * adjustedSize.width, 11.0f * adjustedSize.height}];
    [chevronPath addLineToPoint:(CGPoint){2.0f * adjustedSize.width, 13.0f * adjustedSize.height}];
    [chevronPath addLineToPoint:(CGPoint){8.5f * adjustedSize.width,  6.5f * adjustedSize.height}];
    [chevronPath addLineToPoint:(CGPoint){2.0f * adjustedSize.width,  0.0f * adjustedSize.height}];
    [chevronPath addLineToPoint:(CGPoint){0.0f * adjustedSize.width,  2.0f * adjustedSize.height}];
    [chevronPath closePath];
    
    if (self.highlighted)
    {
        [self.highlightedColor setFill];
    }
    else
    {
        [self.color setFill];
    }
    
    [chevronPath fill];
}

- (void)setHighlighted:(BOOL)highlighted
{
    if (self.highlighted != highlighted)
    {
        [super setHighlighted:highlighted];
        [self setNeedsDisplay];
    }
}

@end
