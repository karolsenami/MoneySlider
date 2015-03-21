//
//  MoneySlider.h
//  MoneySlider
//
//  Created by max jourdain on 13/03/2015.
//  Copyright (c) 2015 max jourdain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MoneySlider : UIView

@property (nonatomic,retain) UISlider *slider;
@property (nonatomic,retain) UILabel *valueLabel;

@property (nonatomic,retain) NSNumber *valueNumber;


@property float sliderLength;

- (id)init;
- (id)initWithFrame:(CGRect)frame;



@end
