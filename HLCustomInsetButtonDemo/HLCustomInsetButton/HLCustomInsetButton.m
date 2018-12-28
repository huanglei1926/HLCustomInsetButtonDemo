//
//  HLCustomInsetButton.m
//  HLCustomInsetButtonDemo
//
//  Created by cainiu on 2018/12/28.
//  Copyright © 2018 HL. All rights reserved.
//

#import "HLCustomInsetButton.h"

@implementation HLCustomInsetButton


- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        _imageInsetsType = UIButtonImagePositionTypeLeft;
        _margin = 5;
        _imageExtraInsets = UIEdgeInsetsZero;
        _titleExtraInsets = UIEdgeInsetsZero;
    }
    return self;
}

+ (instancetype)buttonWithImagePositionType:(UIButtonImagePositionType)type WithMargin:(CGFloat)margin{
    return [[HLCustomInsetButton alloc] initWithImagePositionType:type WithMargin:margin];
}

- (instancetype)initWithImagePositionType:(UIButtonImagePositionType)type WithMargin:(CGFloat)margin{
    if (self = [super init]) {
        self.imageInsetsType = type;
        self.margin = margin;
    }
    return self;
}


//- (void)setImageInsetsType:(UIButtonImagePositionType)imageInsetsType{
//    _imageInsetsType = imageInsetsType;
//}
//
//- (void)setMargin:(CGFloat)margin{
//    _margin = margin;
//}

- (void)layoutSubviews{
    [super layoutSubviews];
    [self updateButtonLayout];
}

- (void)updateButtonLayout{
    CGSize imageSize = self.imageView.frame.size;
    CGSize titleSize = self.titleLabel.frame.size;
    CGFloat imageX = 0;
    CGFloat imageY = 0;
    CGFloat titleX = 0;
    CGFloat titleY = 0;
    switch (self.imageInsetsType) {
        case UIButtonImagePositionTypeDefault:
        {
            imageX = self.imageView.frame.origin.x;
            imageX = self.imageView.frame.origin.y;
            titleX = self.titleLabel.frame.origin.x;
            titleY = self.titleLabel.frame.origin.y;
        }
            break;
        case UIButtonImagePositionTypeLeft:
        {
            imageX = self.bounds.size.width * 0.5 - imageSize.width - self.margin * 0.5;
            imageY = (self.bounds.size.height - imageSize.height) * 0.5;
            titleX = self.bounds.size.width * 0.5 + self.margin * 0.5;
            titleY = (self.bounds.size.height - titleSize.height) * 0.5;
        }
            break;
        case UIButtonImagePositionTypeRight:
        {
            imageX = self.bounds.size.width * 0.5 + self.margin * 0.5;
            imageY = (self.bounds.size.height - imageSize.height) * 0.5;
            titleX = self.bounds.size.width * 0.5 - titleSize.width - self.margin * 0.5;
            titleY = (self.bounds.size.height - titleSize.height) * 0.5;
        }
            break;
        case UIButtonImagePositionTypeTop:
        {
            imageX = (self.bounds.size.width - imageSize.width) * 0.5;
            imageY = self.bounds.size.height * 0.5 - imageSize.height - self.margin * 0.5;
            titleX = (self.bounds.size.width - titleSize.width) * 0.5;
            titleY = self.bounds.size.height * 0.5 + self.margin * 0.5;
        }
            break;
        case UIButtonImagePositionTypeBottom:
        {
            imageX = (self.bounds.size.width - imageSize.width) * 0.5;
            imageY = self.bounds.size.height * 0.5 + self.margin * 0.5;
            titleX = (self.bounds.size.width - titleSize.width) * 0.5;
            titleY = self.bounds.size.height * 0.5 - titleSize.height - self.margin * 0.5;
        }
            break;
        default:
            break;
    }
    imageX = imageX + self.imageExtraInsets.left - self.imageExtraInsets.right;
    imageY = imageY + self.imageExtraInsets.top - self.imageExtraInsets.bottom;
    self.imageView.frame = CGRectMake(imageX, imageY, imageSize.width, imageSize.height);
    titleX = titleX + self.titleExtraInsets.left - self.titleExtraInsets.right;
    titleY = titleY + self.titleExtraInsets.top - self.titleExtraInsets.bottom;
    self.titleLabel.frame = CGRectMake(titleX, titleY, titleSize.width, titleSize.height);
}

@end
