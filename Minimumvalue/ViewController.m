//
//  ViewController.m
//  Minimumvalue
//
//  Created by Apple on 29/09/16.
//  Copyright © 2016 Apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UILabel *displayLbl;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    }

- (IBAction)resultBtnAction:(id)sender {
    
    NSArray* myWords = [NSArray arrayWithObjects: @"12",@"13",@"14",@"9",@"7",@"15",nil];
    
    int resultValue =0;
    int currentValue;
    int arrayLength = myWords.count;
    for(int i=0; i< arrayLength; i++){
        
        currentValue = [(NSNumber *)[myWords objectAtIndex:i] intValue];
        if(resultValue == 0){
            
            resultValue = currentValue;
            
        }else if(resultValue> currentValue){
            
            resultValue= currentValue;
            
        }else{
            
            resultValue = resultValue;
        }
        
    }
    
    NSString *strFromInt = [NSString stringWithFormat:@"%d",resultValue];
    _displayLbl.text = strFromInt;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
