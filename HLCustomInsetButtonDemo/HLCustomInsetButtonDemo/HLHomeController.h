//
//  HLHomeController.h
//  HLCustomInsetButtonDemo
//
//  Created by cainiu on 2018/12/28.
//  Copyright © 2018 HL. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HLCustomInsetButton/HLCustomInsetButton.h"

NS_ASSUME_NONNULL_BEGIN

@interface HLHomeController : UIViewController

@property (weak, nonatomic) IBOutlet UISlider *marginSlider;
@property (weak, nonatomic) IBOutlet HLCustomInsetButton *button;
@property (weak, nonatomic) IBOutlet UILabel *marginLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentView;

@end

NS_ASSUME_NONNULL_END
