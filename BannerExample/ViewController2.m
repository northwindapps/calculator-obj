//
//  ViewController2.m
//  BannerExample
//
//  Created by 矢野悠人 on 2016/09/29.
//  Copyright © 2016年 Google. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    
    self.DetailText.text= [[NSUserDefaults standardUserDefaults]
                    stringForKey:@"preferenceString"];
    
    
    //Connecting UItextview delegate
    self.DetailText.delegate = self;
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    
    
    //NSLog(@"'%@' text:%@ , loc:%d , len:%d",textView.text , text , range.location , range.length);
    if([text isEqualToString:@"!"])
    {
        //textView.text=[textView.text stringByReplacingOccurrencesOfString:@"\n" withString:@"" ];
        
        [self.DetailText resignFirstResponder];
        
        
    }
    
    
    
    //Saving
    [[NSUserDefaults standardUserDefaults] setObject:self.DetailText.text forKey:@"preferenceString"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    

    
    return YES;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    [self.DetailText resignFirstResponder];
    //Saving
    [[NSUserDefaults standardUserDefaults] setObject:self.DetailText.text forKey:@"preferenceString"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    
    
}

@end
