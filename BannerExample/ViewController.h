// Copyright (c) 2014 Google. All rights reserved.

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>
#import <QuartzCore/QuartzCore.h>


@class GADBannerView;

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource,UITextViewDelegate>
{
    IBOutlet UITextView *TextArea;
    
    IBOutlet UITableView *ResultTable;
    NSString *ThirdString;
    //NSDecimalNumber *X;
    NSDecimalNumber *X2;
    NSDecimalNumber *sum;
    NSDecimalNumber *X_INIT;
    
    NSString *A;
    NSString *B;
    NSString *C;
    NSString *D;
    NSString *X;
    NSString *Y;
    NSString *Z;
    NSDecimalNumber *check;
    NSDecimalNumber *temp_fw;
    NSDecimalNumber *temp_bw;
    NSDecimalNumber *temp_now;
    bool bl;
    int SWITCH;
    int CRATE_NUM;
    int deg;
    
    NSUInteger TAG_NUM;
    
    
    NSString *str2;
    NSString *temp2;
    NSString *Init_str;
    NSString *ClipedData;
    NSString *strToRemoveEMPTY0;
    NSString *strToRemoveSPACE0;
    NSString *CHECK_STR;
    
    NSArray *Calc_ARRAY;
    
    
    SystemSoundID _pageSound;
    
    __weak IBOutlet UIButton *one;
    __weak IBOutlet UIButton *two;
    __weak IBOutlet UIButton *three;
    __weak IBOutlet UIButton *four;
    
    __weak IBOutlet UIButton *five;
    
    __weak IBOutlet UIButton *six;
    __weak IBOutlet UIButton *seven;
    
    __weak IBOutlet UIButton *eight;
    __weak IBOutlet UIButton *nine;
    __weak IBOutlet UIButton *point;
    __weak IBOutlet UIButton *zero;
    __weak IBOutlet UIButton *enter;
    
    __weak IBOutlet UIButton *plus;
    
    __weak IBOutlet UIButton *times;
    
    __weak IBOutlet UIButton *minus;
    
    __weak IBOutlet UIButton *divide;
    __weak IBOutlet UIButton *del;
    __weak IBOutlet UIButton *set;
    __weak IBOutlet UIButton *memoryA;
    
    __weak IBOutlet UIButton *memoryB;
    __weak IBOutlet UILabel *deglabel;
    
    NSMutableArray *HeadArray;
    NSInteger memoryBvalue;

}


@property(nonatomic, weak) IBOutlet GADBannerView *bannerView;
@property (retain, nonatomic) IBOutlet UITextView *TextArea;
@property (weak, nonatomic) IBOutlet UILabel *deglabel;
@property (retain, nonatomic) IBOutlet UITableView *ResultTable;

- (IBAction)one:(id)sender;
- (IBAction)two:(id)sender;
- (IBAction)three:(id)sender;
- (IBAction)four:(id)sender;
- (IBAction)five:(id)sender;
- (IBAction)six:(id)sender;
- (IBAction)seven:(id)sender;
- (IBAction)eight:(id)sender;
- (IBAction)nine:(id)sender;
- (IBAction)zero:(id)sender;
- (IBAction)plus:(id)sender;
- (IBAction)minus:(id)sender;
- (IBAction)times:(id)sender;
- (IBAction)divide:(id)sender;

- (IBAction)ENTER:(id)sender;
//-(NSString *)SPACE_FILTER:(NSString *)SB;

- (IBAction)DEL:(id)sender;
- (IBAction)DOT:(id)sender;

- (IBAction)A:(id)sender;
- (IBAction)B:(id)sender;
- (IBAction)SET_VARIABLES:(id)sender;
- (IBAction)segueaction:(id)sender;

@end

