//
//  UIAlertView+Context.m
//
//  Created by Klaus-Peter Dudas on 16/11/2013.
//  Copyright (c) 2013 Hypercrypt Solutions Ltd. All rights reserved.
//

#import "UIAlertView+HCContext.h"

#import <objc/runtime.h>

@implementation UIAlertView (HCContext)

static const void *UIAlertViewContextKey = &UIAlertViewContextKey;

- (id)context
{
    return objc_getAssociatedObject(self, UIAlertViewContextKey);
}

- (void)setContext:(id)context
{
    objc_setAssociatedObject(self, UIAlertViewContextKey, context, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
