//
//  MoneySlider.m
//  MoneySlider
//
//  Created by max jourdain on 13/03/2015.
//  Copyright (c) 2015 max jourdain. All rights reserved.
//

#import "MoneySlider.h"

@implementation MoneySlider

NSNumberFormatter *numberFormatter;

- (id)init {
    self = [super init];
  if (self) {
        self.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
      
        _sliderLength = 150;

        
      /* _valueLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, [UIScreen mainScreen].bounds.size.height/2 - 40, [UIScreen mainScreen].bounds.size.width, 20)];
        _errorLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, [UIScreen mainScreen].bounds.size.height/2 + 40, [UIScreen mainScreen].bounds.size.width, 20)];
        _slider = [[UISlider alloc] initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width/2 - _sliderLength/2, [UIScreen mainScreen].bounds.size.height/2, _sliderLength, 20)];
      */
      

      _valueLabel.frame = CGRectMake(0, [UIScreen mainScreen].bounds.size.height/2 - 40, [UIScreen mainScreen].bounds.size.width, 20);
      _slider.frame = CGRectMake([UIScreen mainScreen].bounds.size.width/2 - _sliderLength/2, [UIScreen mainScreen].bounds.size.height/2, _sliderLength, 20);
      
      [_slider addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
        [_slider setBackgroundColor:[UIColor clearColor]];
        _slider.minimumValue = 0;
        _slider.maximumValue = 100.0;
        _slider.continuous = YES;
        _slider.value = 50.00;
     
        numberFormatter = [[NSNumberFormatter alloc] init];
        [numberFormatter setNumberStyle:(NSNumberFormatterCurrencyStyle)];
        [numberFormatter setLocale:[NSLocale currentLocale]];
        _valueNumber = [NSNumber numberWithDouble:(round(_slider.value*100)/100)];
        
        _valueLabel.text = [numberFormatter stringFromNumber:_valueNumber];
        _valueLabel.textAlignment = NSTextAlignmentCenter;
        
        [self addSubview:_slider];
        [self addSubview:_valueLabel];
     
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if(self) {
        
        _sliderLength = frame.size.width - 10;
        
        
        _valueLabel = [[UILabel alloc] initWithFrame: CGRectMake(0, frame.size.height/2 - frame.size.height/3, frame.size.width, 20)];

        _slider = [[UISlider alloc] initWithFrame:CGRectMake(frame.size.width/2 - _sliderLength/2, frame.size.height/2, _sliderLength, 20)];
        _slider.frame = CGRectMake(frame.size.width/2 - _sliderLength/2, frame.size.height/2, _sliderLength, 20);
        [_slider addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
        [_slider setBackgroundColor:[UIColor clearColor]];
        _slider.minimumValue = 0;
        _slider.maximumValue = 100.0;
        _slider.continuous = YES;
        _slider.value = 50.00;
        
        numberFormatter = [[NSNumberFormatter alloc] init];
        [numberFormatter setNumberStyle:(NSNumberFormatterCurrencyStyle)];
        [numberFormatter setLocale:[NSLocale currentLocale]];
        _valueNumber = [NSNumber numberWithDouble:(round(_slider.value*100)/100)];
        
        _valueLabel.text = [numberFormatter stringFromNumber:_valueNumber];
        _valueLabel.textAlignment = NSTextAlignmentCenter;
        
        [self addSubview:_slider];
        [self addSubview:_valueLabel];

        self.backgroundColor = [UIColor clearColor];

    }
    return self;
}

- (IBAction)sliderValueChanged:(UISlider *)sender {
    _valueNumber = [NSNumber numberWithDouble:(round(sender.value*100)/100)];
    _valueLabel.text = [numberFormatter stringFromNumber:_valueNumber];
}




@end
