//
//  HLCustomInsetButton.h
//  HLCustomInsetButtonDemo
//
//  Created by cainiu on 2018/12/28.
//  Copyright © 2018 HL. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

//图片位置(默认在左边)
typedef NS_ENUM(NSUInteger, UIButtonImagePositionType) {
    UIButtonImagePositionTypeDefault = 0,
    UIButtonImagePositionTypeLeft = 1,
    UIButtonImagePositionTypeRight = 2,
    UIButtonImagePositionTypeTop = 3,
    UIButtonImagePositionTypeBottom = 4
};

@interface HLCustomInsetButton : UIButton

+ (instancetype)buttonWithImagePositionType:(UIButtonImagePositionType)type WithMargin:(CGFloat)margin;

- (instancetype)initWithImagePositionType:(UIButtonImagePositionType)type WithMargin:(CGFloat)margin;

@property (nonatomic, assign) UIButtonImagePositionType imageInsetsType;
@property (nonatomic, assign) CGFloat margin;

/** 图片附加内边距 */
@property (nonatomic, assign) UIEdgeInsets imageExtraInsets;
/** 文字附加内边距 */
@property (nonatomic, assign) UIEdgeInsets titleExtraInsets;

@end

NS_ASSUME_NONNULL_END
