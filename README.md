# MoneySlider

Simple currency slider connected to a label for any iOS application. The currency is set to "currentLocale".


# How to use it

MoneySlider is a UIView subclass.

___

To create a View of the size of your screen and place the MoneySlider at the center of your view :

    [[MoneySlider alloc] init] 

You can also initialize it with a frame (min height and width is 70) : 

    [[MoneySlider alloc] initWithFrame : yourFrame]

___


Here are the properties of the Money Slider :

    • slider : the UISlider

    • valueLabel : the UILabel showing the slider's value

    • valueNumber : the NSNumber containing the slider's value

    • sliderLength : slider's width in pixel. 150 by default, or if you initialized it with a frame it's the frame's width -10

Change the settings of the properties such as slider.minimumvalue or slider.maximumValue to set your range.

___

To add your MoneySlider to your view, simply do : 

    [myView addSubView:moneySlider];

# Wich files should I use

The 2 files you'll need to add to your project are MoneySlider.m and MoneySlider.h

There is an example of use in ViewController.m
