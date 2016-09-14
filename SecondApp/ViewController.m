//
//  ViewController.m
//  SecondApp
//
//  Created by Student P_07 on 08/09/16.
//  Copyright © 2016 Gunchai. All rights reserved.
//

//defining constant
#define kHeightOfResetbutton 80.0
#define kHeightOfStatusbar 20.0
#define kHeightToReducefrom (kHeightOfResetbutton + kHeightOfStatusbar)

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //standard heigth
    CGFloat HeightOfScreen =[[UIScreen mainScreen]bounds].size.height;
    CGFloat WidthOfScreen =[[UIScreen mainScreen]bounds].size.width;
    
    //frame size
    CGRect labelNumberFrame= CGRectMake(0, kHeightOfStatusbar,WidthOfScreen, HeightOfScreen - kHeightToReducefrom);
    
    //defining label
    labelNumber = [[UILabel alloc]initWithFrame:labelNumberFrame];
    
    //defining properties
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"wave.jpg"]];

    //labelNumber.backgroundColor=[UIImage ];
    [labelNumber setTextColor:[UIColor whiteColor]];
    [self handleReset];
    
    //defining label text
    labelNumber.textAlignment=NSTextAlignmentCenter;
    labelNumber.font=[UIFont systemFontOfSize:100];
    [self.view addSubview:labelNumber];
    
    /*
    ////label2
    CGRect labelLimitFrame= CGRectMake(40, 100, 100, 100);
    
    labelLimit =[[UILabel alloc]initWithFrame:labelLimitFrame];
    
    labelLimit.backgroundColor=[UIColor yellowColor];
    [labelLimit setTextColor:[UIColor whiteColor]];
    [self.view addSubview:labelLimit];
    
    
    //
    CGRect limitButtonFrame=CGRectMake(100, 200, 200, 200);
    buttonEnter =[[UIButton alloc]initWithFrame:limitButtonFrame];
    //[buttonEnter addTarget:self action:handleEnter forControlEvents:UIControlEventTouchUpInside];
    buttonEnter.backgroundColor=[UIColor whiteColor];
    [buttonEnter setTintColor:[UIColor blackColor]];
    [buttonEnter setTitle:@"enter" forState:UIControlStateNormal];
    
    
    [self.view addSubview:buttonEnter];*/
    
    
    //defining button for tap
    buttonTap =[[UIButton alloc]initWithFrame:labelNumberFrame];
    
    [buttonTap addTarget:self action: @selector(handleTap) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:buttonTap];
    
    //button size
    CGRect resetButtonFrame=CGRectMake(0, HeightOfScreen-kHeightOfResetbutton, WidthOfScreen, kHeightOfResetbutton);
    

    buttonReset=[[UIButton alloc]initWithFrame:resetButtonFrame];
    
    //button properities
    [buttonReset setTitle:@"RESET" forState:UIControlStateNormal];
    [buttonReset setTitle:@"RESETING.." forState:UIControlStateHighlighted];
    [buttonReset setTintColor:[UIColor greenColor]];
    [buttonReset setBackgroundColor:[UIColor magentaColor]];
    [buttonReset addTarget:self action:@selector(handleReset) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:buttonReset];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    // Dispose of any resources that can be recreated.
}


//method for button tap

-(void)handleTap{
    
    NSString *currentValueString =
    labelNumber.text;
    //converting string to integer
    int currentValueInt = currentValueString.intValue;
    currentValueInt = currentValueInt+1;
    //converting integer to string
    NSString *newValueString= [NSString stringWithFormat:@"%d",currentValueInt];
    labelNumber.text= newValueString;
    
    
}

//method for reset

-(void)handleReset{
    labelNumber.text=@"0";
}

@end


