//
//  HLHomeController.m
//  HLCustomInsetButtonDemo
//
//  Created by cainiu on 2018/12/28.
//  Copyright © 2018 HL. All rights reserved.
//

#import "HLHomeController.h"

@interface HLHomeController ()

@end

@implementation HLHomeController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.marginSlider.minimumValue = 0;
    self.marginSlider.maximumValue = 70;
}

- (IBAction)sementChangeAction:(UISegmentedControl *)sender {
    self.button.titleExtraInsets = UIEdgeInsetsZero;
    self.button.imageExtraInsets = UIEdgeInsetsZero;
    [self.button setNeedsLayout];
}

- (IBAction)topAction:(id)sender {
    if (self.segmentView.selectedSegmentIndex == 0) {
        self.button.imageInsetsType = UIButtonImagePositionTypeTop;
    }else{
        self.button.imageExtraInsets = UIEdgeInsetsMake(self.button.imageExtraInsets.top + 2, self.button.imageExtraInsets.left, self.button.imageExtraInsets.bottom, self.button.imageExtraInsets.right);
    }
    [self.button setNeedsLayout];
}

- (IBAction)rightAction:(id)sender {
    if (self.segmentView.selectedSegmentIndex == 0) {
        self.button.imageInsetsType = UIButtonImagePositionTypeRight;
    }else{
        self.button.imageExtraInsets = UIEdgeInsetsMake(self.button.imageExtraInsets.top, self.button.imageExtraInsets.left, self.button.imageExtraInsets.bottom, self.button.imageExtraInsets.right + 2);
    }
    [self.button setNeedsLayout];
}

- (IBAction)bottomAction:(id)sender {
    if (self.segmentView.selectedSegmentIndex == 0) {
        self.button.imageInsetsType = UIButtonImagePositionTypeBottom;
    }else{
        self.button.imageExtraInsets = UIEdgeInsetsMake(self.button.imageExtraInsets.top, self.button.imageExtraInsets.left, self.button.imageExtraInsets.bottom + 2, self.button.imageExtraInsets.right);
    }
    [self.button setNeedsLayout];
}

- (IBAction)leftAction:(id)sender {
    if (self.segmentView.selectedSegmentIndex == 0) {
        self.button.imageInsetsType = UIButtonImagePositionTypeLeft;
    }else{
        self.button.imageExtraInsets = UIEdgeInsetsMake(self.button.imageExtraInsets.top, self.button.imageExtraInsets.left + 2, self.button.imageExtraInsets.bottom, self.button.imageExtraInsets.right);
    }
    [self.button setNeedsLayout];
}

- (IBAction)changeMarginAction:(UISlider *)sender {
    [self updateMarginTextWithValue:sender.value];
}

- (void)updateMarginTextWithValue:(CGFloat)value{
    self.marginLabel.text = [NSString stringWithFormat:@"%.0f",value];
    self.button.margin = value;
    [self.button setNeedsLayout];
}

@end
