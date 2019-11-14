// Copyright (c) 2014 Google. All rights reserved.

@import GoogleMobileAds;

#import "ViewController.h"

@implementation ViewController
@synthesize TextArea,deglabel;


- (void)viewDidLoad {
  [super viewDidLoad];

  // Replace this ad unit ID with your own ad unit ID.
  self.bannerView.adUnitID = @"ca-app-pub-5284441033171047~1958395617";
  self.bannerView.rootViewController = self;

  GADRequest *request = [GADRequest request];
  // Requests test ads on devices you specify. Your test device ID is printed to the console when
  // an ad request is made. GADBannerView automatically returns test ads when running on a
  // simulator.
  request.testDevices = @[
    @"MyTestDivide"  // Eric's iPod Touch
  ];
    
    
  //[self.bannerView loadRequest:request];
    
    
    
    ThirdString = @"";
    A = @"0";
    B = @"0";
    C = @"0";
    D = @"0";
    
    //check = 0.0;
    //temp_fw = 0.0;
    //temp_bw = 0.0;
    //temp_now = 0.0;
    
    bl = false;
    SWITCH = 0;
    CRATE_NUM = 0;
    TAG_NUM = 0;
    deg=0;
    
    //http://stackoverflow.com/questions/5248245/how-to-count-n-in-an-uitextview
    
    
    
    str2 = nil;
    temp2 = nil;
    Init_str=nil;
    ClipedData = nil;
    strToRemoveEMPTY0 = @"";
    strToRemoveSPACE0 = @" ";
    CHECK_STR = nil;
    Calc_ARRAY=nil;
    
    //効果音設定
    
    NSBundle *bundle = [NSBundle mainBundle];
    NSString *path;
    NSURL *url;
    //ページ//
    path = [bundle pathForResource:@"button46" ofType:@"mp3"];
    url = [NSURL fileURLWithPath:path];
    AudioServicesCreateSystemSoundID((CFURLRef)CFBridgingRetain(url),&_pageSound);
    
    
    //http://stackoverflow.com/questions/8162411/how-to-create-border-in-uibutton

    
    //Long Press http://qiita.com/notice_inc/items/b4425988a690e1aa4124
    UILongPressGestureRecognizer *longPress = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(longPress:)];
    
    // ボタンに設定 http://qiita.com/notice_inc/items/b4425988a690e1aa4124
    [del addGestureRecognizer:longPress];
    
    //sinLong Press http://qiita.com/notice_inc/items/b4425988a690e1aa4124
    UILongPressGestureRecognizer *sinPress = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(sinPress:)];
    
    // ボタンに設定 http://qiita.com/notice_inc/items/b4425988a690e1aa4124
    [one addGestureRecognizer:sinPress];
    
    //cosLong Press
    UILongPressGestureRecognizer *cosPress = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(cosPress:)];
    
    // ボタンに設定
    [two addGestureRecognizer:cosPress];
    
    //tanLong Press
    UILongPressGestureRecognizer *tanPress = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(tanPress:)];
    
    // ボタンに設定
    [three addGestureRecognizer:tanPress];
    
    //sqrLong Press
    UILongPressGestureRecognizer *sqrPress = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(sqrPress:)];
    
    // ボタンに設定
    [four addGestureRecognizer:sqrPress];
    
    //arcLong Press
    UILongPressGestureRecognizer *arcPress = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(arcPress:)];
    
    // ボタンに設定
    [plus addGestureRecognizer:arcPress];
    
    //logLong Press
    UILongPressGestureRecognizer *logPress = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(logPress:)];
    
    // ボタンに設定
    [five addGestureRecognizer:logPress];
    
    //lnLong Press
    UILongPressGestureRecognizer *lnPress = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(lnPress:)];
    
    // ボタンに設定
    [six addGestureRecognizer:lnPress];
    
    //powLong Press
    UILongPressGestureRecognizer *powPress = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(powPress:)];
    
    // ボタンに設定
    [times addGestureRecognizer:powPress];
    
    //(Long Press
    UILongPressGestureRecognizer *sbsPress = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(sbsPress:)];
    
    // ボタンに設定
    [seven addGestureRecognizer:sbsPress];
    
    //)Long Press
    UILongPressGestureRecognizer *sbePress = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(sbePress:)];
    
    // ボタンに設定
    [eight addGestureRecognizer:sbePress];
    
    //[Long Press
    UILongPressGestureRecognizer *mbsPress = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(mbsPress:)];
    
    // ボタンに設定
    [nine addGestureRecognizer:mbsPress];
    
    //]Long Press
    UILongPressGestureRecognizer *mbePress = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(mbePress:)];
    
    // ボタンに設定
    [minus addGestureRecognizer:mbePress];
    
    //PILong Press
    UILongPressGestureRecognizer *PIPress = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(PIPress:)];
    
    // ボタンに設定
    [divide addGestureRecognizer:PIPress];
    
    //SWLong Press
    UILongPressGestureRecognizer *SWPress = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(SWPress:)];
    
    // ボタンに設定
    [enter addGestureRecognizer:SWPress];

    
    //SWLong Press
    UILongPressGestureRecognizer *Three0Press = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(Three0Press:)];
    
    // ボタンに設定
    [zero addGestureRecognizer:Three0Press];
    
    
    

}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (void)Three0Press:(UILongPressGestureRecognizer *)gestureRecognizer
{
    switch (gestureRecognizer.state) {
            
        case UIGestureRecognizerStateBegan:
            [self performSelector:@selector(Th0repeat:) withObject:nil afterDelay:0.2];
            break;
            
        case UIGestureRecognizerStateChanged:
            break;
            
        case UIGestureRecognizerStateEnded:
            [NSObject cancelPreviousPerformRequestsWithTarget:self selector:@selector(Th0repeat:) object:nil];
            break;
            
        default:
            break;
    }
}


- (void)SWPress:(UILongPressGestureRecognizer *)gestureRecognizer
{
    switch (gestureRecognizer.state) {
            
        case UIGestureRecognizerStateBegan:
            [self performSelector:@selector(SWrepeat:) withObject:nil afterDelay:0.2];
            break;
            
        case UIGestureRecognizerStateChanged:
            break;
            
        case UIGestureRecognizerStateEnded:
            [NSObject cancelPreviousPerformRequestsWithTarget:self selector:@selector(SWrepeat:) object:nil];
            break;
            
        default:
            break;
    }
}


- (void)PIPress:(UILongPressGestureRecognizer *)gestureRecognizer
{
    switch (gestureRecognizer.state) {
            
        case UIGestureRecognizerStateBegan:
            [self performSelector:@selector(PIrepeat:) withObject:nil afterDelay:0.2];
            break;
            
        case UIGestureRecognizerStateChanged:
            break;
            
        case UIGestureRecognizerStateEnded:
            [NSObject cancelPreviousPerformRequestsWithTarget:self selector:@selector(PIrepeat:) object:nil];
            break;
            
        default:
            break;
    }
}



- (void)mbePress:(UILongPressGestureRecognizer *)gestureRecognizer
{
    switch (gestureRecognizer.state) {
            
        case UIGestureRecognizerStateBegan:
            [self performSelector:@selector(mberepeat:) withObject:nil afterDelay:0.2];
            break;
            
        case UIGestureRecognizerStateChanged:
            break;
            
        case UIGestureRecognizerStateEnded:
            [NSObject cancelPreviousPerformRequestsWithTarget:self selector:@selector(mberepeat:) object:nil];
            break;
            
        default:
            break;
    }
}


- (void)mbsPress:(UILongPressGestureRecognizer *)gestureRecognizer
{
    switch (gestureRecognizer.state) {
            
        case UIGestureRecognizerStateBegan:
            [self performSelector:@selector(mbsrepeat:) withObject:nil afterDelay:0.2];
            break;
            
        case UIGestureRecognizerStateChanged:
            break;
            
        case UIGestureRecognizerStateEnded:
            [NSObject cancelPreviousPerformRequestsWithTarget:self selector:@selector(mbsrepeat:) object:nil];
            break;
            
        default:
            break;
    }
}

- (void)sbePress:(UILongPressGestureRecognizer *)gestureRecognizer
{
    switch (gestureRecognizer.state) {
            
        case UIGestureRecognizerStateBegan:
            [self performSelector:@selector(sberepeat:) withObject:nil afterDelay:0.2];
            break;
            
        case UIGestureRecognizerStateChanged:
            break;
            
        case UIGestureRecognizerStateEnded:
            [NSObject cancelPreviousPerformRequestsWithTarget:self selector:@selector(sberepeat:) object:nil];
            break;
            
        default:
            break;
    }
}


- (void)sbsPress:(UILongPressGestureRecognizer *)gestureRecognizer
{
    switch (gestureRecognizer.state) {
            
        case UIGestureRecognizerStateBegan:
            [self performSelector:@selector(sbsrepeat:) withObject:nil afterDelay:0.2];
            break;
            
        case UIGestureRecognizerStateChanged:
            break;
            
        case UIGestureRecognizerStateEnded:
            [NSObject cancelPreviousPerformRequestsWithTarget:self selector:@selector(sbsrepeat:) object:nil];
            break;
            
        default:
            break;
    }
}

- (void)powPress:(UILongPressGestureRecognizer *)gestureRecognizer
{
    switch (gestureRecognizer.state) {
            
        case UIGestureRecognizerStateBegan:
            [self performSelector:@selector(powrepeat:) withObject:nil afterDelay:0.2];
            break;
            
        case UIGestureRecognizerStateChanged:
            break;
            
        case UIGestureRecognizerStateEnded:
            [NSObject cancelPreviousPerformRequestsWithTarget:self selector:@selector(powrepeat:) object:nil];
            break;
            
        default:
            break;
    }
}

- (void)lnPress:(UILongPressGestureRecognizer *)gestureRecognizer
{
    switch (gestureRecognizer.state) {
            
        case UIGestureRecognizerStateBegan:
            [self performSelector:@selector(lnrepeat:) withObject:nil afterDelay:0.2];
            break;
            
        case UIGestureRecognizerStateChanged:
            break;
            
        case UIGestureRecognizerStateEnded:
            [NSObject cancelPreviousPerformRequestsWithTarget:self selector:@selector(lnrepeat:) object:nil];
            break;
            
        default:
            break;
    }
}


- (void)logPress:(UILongPressGestureRecognizer *)gestureRecognizer
{
    switch (gestureRecognizer.state) {
            
        case UIGestureRecognizerStateBegan:
            [self performSelector:@selector(logrepeat:) withObject:nil afterDelay:0.2];
            break;
            
        case UIGestureRecognizerStateChanged:
            break;
            
        case UIGestureRecognizerStateEnded:
            [NSObject cancelPreviousPerformRequestsWithTarget:self selector:@selector(logrepeat:) object:nil];
            break;
            
        default:
            break;
    }
}



- (void)arcPress:(UILongPressGestureRecognizer *)gestureRecognizer
{
    switch (gestureRecognizer.state) {
            
        case UIGestureRecognizerStateBegan:
            [self performSelector:@selector(arcrepeat:) withObject:nil afterDelay:0.2];
            break;
            
        case UIGestureRecognizerStateChanged:
            break;
            
        case UIGestureRecognizerStateEnded:
            [NSObject cancelPreviousPerformRequestsWithTarget:self selector:@selector(arcrepeat:) object:nil];
            break;
            
        default:
            break;
    }
}


- (void)sqrPress:(UILongPressGestureRecognizer *)gestureRecognizer
{
    switch (gestureRecognizer.state) {
            
        case UIGestureRecognizerStateBegan:
            [self performSelector:@selector(sqrrepeat:) withObject:nil afterDelay:0.2];
            break;
            
        case UIGestureRecognizerStateChanged:
            break;
            
        case UIGestureRecognizerStateEnded:
            [NSObject cancelPreviousPerformRequestsWithTarget:self selector:@selector(sqrrepeat:) object:nil];
            break;
            
        default:
            break;
    }
}


- (void)tanPress:(UILongPressGestureRecognizer *)gestureRecognizer
{
    switch (gestureRecognizer.state) {
            
        case UIGestureRecognizerStateBegan:
            [self performSelector:@selector(tanrepeat:) withObject:nil afterDelay:0.2];
            break;
            
        case UIGestureRecognizerStateChanged:
            break;
            
        case UIGestureRecognizerStateEnded:
            [NSObject cancelPreviousPerformRequestsWithTarget:self selector:@selector(tanrepeat:) object:nil];
            break;
            
        default:
            break;
    }
}



- (void)cosPress:(UILongPressGestureRecognizer *)gestureRecognizer
{
    switch (gestureRecognizer.state) {
            
        case UIGestureRecognizerStateBegan:
            [self performSelector:@selector(cosrepeat:) withObject:nil afterDelay:0.2];
            break;
            
        case UIGestureRecognizerStateChanged:
            break;
            
        case UIGestureRecognizerStateEnded:
            [NSObject cancelPreviousPerformRequestsWithTarget:self selector:@selector(cosrepeat:) object:nil];
            break;
            
        default:
            break;
    }
}

- (void)sinPress:(UILongPressGestureRecognizer *)gestureRecognizer
{
    switch (gestureRecognizer.state) {
            
        case UIGestureRecognizerStateBegan:
            [self performSelector:@selector(sinrepeat:) withObject:nil afterDelay:0.2];
            break;
            
        case UIGestureRecognizerStateChanged:
            break;
            
        case UIGestureRecognizerStateEnded:
            [NSObject cancelPreviousPerformRequestsWithTarget:self selector:@selector(sinrepeat:) object:nil];
            break;
            
        default:
            break;
    }
}


//http://qiita.com/notice_inc/items/b4425988a690e1aa4124
- (void)longPress:(UILongPressGestureRecognizer *)gestureRecognizer
{
    switch (gestureRecognizer.state) {
            
        case UIGestureRecognizerStateBegan:
            [self performSelector:@selector(repeat:) withObject:nil afterDelay:0.5];
            break;
            
        case UIGestureRecognizerStateChanged:
            break;
            
        case UIGestureRecognizerStateEnded:
            [NSObject cancelPreviousPerformRequestsWithTarget:self selector:@selector(repeat:) object:nil];
            break;
            
        default:
            break;
    }
}


- (void)Th0repeat:(id)sender
{
    //  リピート処理を記述
    NSRange bottom = NSMakeRange(TextArea.text.length -1, 1);
    [TextArea scrollRangeToVisible:bottom];
    
    
    if (TextArea.text.length !=0)
    {
        //ThirdString = [TextArea.text stringByAppendingString:@"1"];
        //TextArea.text=ThirdString;
        
        
        
        //http://stackoverflow.com/questions/8846749/how-to-insert-text-at-any-cursor-position-in-uitextview
        //[TextArea.text replaceRange:TextArea.text.selectedTextRange withText:@""];
        
        
        
        NSString * insertingString = [NSString stringWithFormat:@"000"];
        
        
        [self insertString:insertingString intoTextView:TextArea];
        
        
    }
    else
    {
        TextArea.text=@"000";
        
    }
    
    
    
    // 0.5秒後に再度呼出
    [self performSelector:@selector(Th0repeat:) withObject:nil afterDelay:0.5];
    
}


- (void)SWrepeat:(id)sender
{
    //  リピート処理を記述
    
    if(deg==0)
    {
        deg=1;
        self.deglabel.text=@"rad";
    }
    else if(deg==1)
    {
            deg=0;
        self.deglabel.text=@"deg";
    }
    
    
    // 0.5秒後に再度呼出
    [self performSelector:@selector(SWrepeat:) withObject:nil afterDelay:0.5];
    
}


- (void)PIrepeat:(id)sender
{
    //  リピート処理を記述
    NSRange bottom = NSMakeRange(TextArea.text.length -1, 1);
    [TextArea scrollRangeToVisible:bottom];
    
    
    if (TextArea.text.length !=0)
    {
        //ThirdString = [TextArea.text stringByAppendingString:@"1"];
        //TextArea.text=ThirdString;
        
        
        
        //http://stackoverflow.com/questions/8846749/how-to-insert-text-at-any-cursor-position-in-uitextview
        //[TextArea.text replaceRange:TextArea.text.selectedTextRange withText:@""];
        
        
        
        NSString * insertingString = [NSString stringWithFormat:@"PI"];
        
        
        [self insertString:insertingString intoTextView:TextArea];
        
    }
    else
    {
        TextArea.text=@"PI";
        
    }
    
   
    
    // 0.5秒後に再度呼出
    [self performSelector:@selector(PIrepeat:) withObject:nil afterDelay:0.5];
    
}


- (void)sberepeat:(id)sender
{
    //  リピート処理を記述
    NSRange bottom = NSMakeRange(TextArea.text.length -1, 1);
    [TextArea scrollRangeToVisible:bottom];
    
    
    if (TextArea.text.length !=0)
    {
        //ThirdString = [TextArea.text stringByAppendingString:@"1"];
        //TextArea.text=ThirdString;
        
        
        
        //http://stackoverflow.com/questions/8846749/how-to-insert-text-at-any-cursor-position-in-uitextview
        //[TextArea.text replaceRange:TextArea.text.selectedTextRange withText:@""];
        
        
        NSString * insertingString = [NSString stringWithFormat:@")"];
        
       
        
        [self insertString:insertingString intoTextView:TextArea];
        
    }
    else
    {
        TextArea.text=@")";
    }
    
    // 0.5秒後に再度呼出
    [self performSelector:@selector(sberepeat:) withObject:nil afterDelay:0.5];
    
}


- (void)mbsrepeat:(id)sender
{
    //  リピート処理を記述
    NSRange bottom = NSMakeRange(TextArea.text.length -1, 1);
    [TextArea scrollRangeToVisible:bottom];
    
    
    if (TextArea.text.length !=0)
    {
        //ThirdString = [TextArea.text stringByAppendingString:@"1"];
        //TextArea.text=ThirdString;
        
        
        
        //http://stackoverflow.com/questions/8846749/how-to-insert-text-at-any-cursor-position-in-uitextview
        //[TextArea.text replaceRange:TextArea.text.selectedTextRange withText:@""];
        
        
        NSString * insertingString = [NSString stringWithFormat:@"["];
        
        ;
        
        [self insertString:insertingString intoTextView:TextArea];
        
    }
    else
    {
        TextArea.text=@"[";
    }
    
    // 0.5秒後に再度呼出
    [self performSelector:@selector(mbsrepeat:) withObject:nil afterDelay:0.5];
    
}


- (void)mberepeat:(id)sender
{
    //  リピート処理を記述
    NSRange bottom = NSMakeRange(TextArea.text.length -1, 1);
    [TextArea scrollRangeToVisible:bottom];
    
    
    if (TextArea.text.length !=0)
    {
        //ThirdString = [TextArea.text stringByAppendingString:@"1"];
        //TextArea.text=ThirdString;
        
        
        
        //http://stackoverflow.com/questions/8846749/how-to-insert-text-at-any-cursor-position-in-uitextview
        //[TextArea.text replaceRange:TextArea.text.selectedTextRange withText:@""];
        
        
        NSString * insertingString = [NSString stringWithFormat:@"]"];
        
        [self insertString:insertingString intoTextView:TextArea];
        
    }
    else
    {
        TextArea.text=@"]";
    }
    
    // 0.5秒後に再度呼出
    [self performSelector:@selector(mberepeat:) withObject:nil afterDelay:0.5];
    
}


- (void)sbsrepeat:(id)sender
{
    //  リピート処理を記述
    NSRange bottom = NSMakeRange(TextArea.text.length -1, 1);
    [TextArea scrollRangeToVisible:bottom];
    
    
    if (TextArea.text.length !=0)
    {
        //ThirdString = [TextArea.text stringByAppendingString:@"1"];
        //TextArea.text=ThirdString;
        
        
        
        //http://stackoverflow.com/questions/8846749/how-to-insert-text-at-any-cursor-position-in-uitextview
        //[TextArea.text replaceRange:TextArea.text.selectedTextRange withText:@""];
        
        
        
        NSString * insertingString = [NSString stringWithFormat:@"("];
        
        
        [self insertString:insertingString intoTextView:TextArea];
        
    }
    else
    {
        TextArea.text=@"(";
    }
    
    // 0.5秒後に再度呼出
    [self performSelector:@selector(sbsrepeat:) withObject:nil afterDelay:0.5];
    
}

- (void)powrepeat:(id)sender
{
    //  リピート処理を記述
    NSRange bottom = NSMakeRange(TextArea.text.length -1, 1);
    [TextArea scrollRangeToVisible:bottom];
    
    
    if (TextArea.text.length !=0)
    {
        //ThirdString = [TextArea.text stringByAppendingString:@"1"];
        //TextArea.text=ThirdString;
        
        
        
        //http://stackoverflow.com/questions/8846749/how-to-insert-text-at-any-cursor-position-in-uitextview
        //[TextArea.text replaceRange:TextArea.text.selectedTextRange withText:@""];
        
        
        
        NSString * insertingString = [NSString stringWithFormat:@"^"];
        
        
        [self insertString:insertingString intoTextView:TextArea];
        
    }
    else
    {
        TextArea.text=@"^";
    }
    
    // 0.5秒後に再度呼出
    [self performSelector:@selector(powrepeat:) withObject:nil afterDelay:0.5];
    
}


- (void)lnrepeat:(id)sender
{
    //  リピート処理を記述
    NSRange bottom = NSMakeRange(TextArea.text.length -1, 1);
    [TextArea scrollRangeToVisible:bottom];
    
    
    if (TextArea.text.length !=0)
    {
        //ThirdString = [TextArea.text stringByAppendingString:@"1"];
        //TextArea.text=ThirdString;
        
        
        
        //http://stackoverflow.com/questions/8846749/how-to-insert-text-at-any-cursor-position-in-uitextview
        //[TextArea.text replaceRange:TextArea.text.selectedTextRange withText:@""];
        
        
        
        NSString * insertingString = [NSString stringWithFormat:@"ln"];
        
        [self insertString:insertingString intoTextView:TextArea];
        
    }
    else
    {
        TextArea.text=@"ln";
    }
    
    // 0.5秒後に再度呼出
    [self performSelector:@selector(lnrepeat:) withObject:nil afterDelay:0.5];
    
}


- (void)logrepeat:(id)sender
{
    //  リピート処理を記述
    NSRange bottom = NSMakeRange(TextArea.text.length -1, 1);
    [TextArea scrollRangeToVisible:bottom];
    
    
    if (TextArea.text.length !=0)
    {
        //ThirdString = [TextArea.text stringByAppendingString:@"1"];
        //TextArea.text=ThirdString;
        
        
        
        //http://stackoverflow.com/questions/8846749/how-to-insert-text-at-any-cursor-position-in-uitextview
        //[TextArea.text replaceRange:TextArea.text.selectedTextRange withText:@""];
        
        
        
        NSString * insertingString = [NSString stringWithFormat:@"log"];
        
        [self insertString:insertingString intoTextView:TextArea];

        
    }
    else
    {
        TextArea.text=@"log";
    }
    
    // 0.5秒後に再度呼出
    [self performSelector:@selector(logrepeat:) withObject:nil afterDelay:0.5];
    
}


- (void)arcrepeat:(id)sender
{
    //  リピート処理を記述
    NSRange bottom = NSMakeRange(TextArea.text.length -1, 1);
    [TextArea scrollRangeToVisible:bottom];
    
    
    if (TextArea.text.length !=0)
    {
        //ThirdString = [TextArea.text stringByAppendingString:@"1"];
        //TextArea.text=ThirdString;
        
        
        
        //http://stackoverflow.com/questions/8846749/how-to-insert-text-at-any-cursor-position-in-uitextview
        //[TextArea.text replaceRange:TextArea.text.selectedTextRange withText:@""];
        
    
        
        NSString * insertingString = [NSString stringWithFormat:@"a"];
  
        
        [self insertString:insertingString intoTextView:TextArea];
        
    }
    else
    {
        TextArea.text=@"a";
    }
    
    // 0.5秒後に再度呼出
    [self performSelector:@selector(arcrepeat:) withObject:nil afterDelay:0.5];
    
}


- (void)sqrrepeat:(id)sender
{
    //  リピート処理を記述
    NSRange bottom = NSMakeRange(TextArea.text.length -1, 1);
    [TextArea scrollRangeToVisible:bottom];
    
    
    if (TextArea.text.length !=0)
    {
        //ThirdString = [TextArea.text stringByAppendingString:@"1"];
        //TextArea.text=ThirdString;
        
        
        
        //http://stackoverflow.com/questions/8846749/how-to-insert-text-at-any-cursor-position-in-uitextview
        //[TextArea.text replaceRange:TextArea.text.selectedTextRange withText:@""];
        
    
        
        NSString * insertingString = [NSString stringWithFormat:@"√"];
        
        
        [self insertString:insertingString intoTextView:TextArea];
        
    }
    else
    {
        TextArea.text=@"√";
    }
    
    // 0.5秒後に再度呼出
    [self performSelector:@selector(sqrrepeat:) withObject:nil afterDelay:0.5];
    
}


- (void)tanrepeat:(id)sender
{
    //  リピート処理を記述
    NSRange bottom = NSMakeRange(TextArea.text.length -1, 1);
    [TextArea scrollRangeToVisible:bottom];
    
    
    if (TextArea.text.length !=0)
    {
        //ThirdString = [TextArea.text stringByAppendingString:@"1"];
        //TextArea.text=ThirdString;
        
        
        
        //http://stackoverflow.com/questions/8846749/how-to-insert-text-at-any-cursor-position-in-uitextview
        //[TextArea.text replaceRange:TextArea.text.selectedTextRange withText:@""];
        

        
        NSString * insertingString = [NSString stringWithFormat:@"tan"];
        
        
        [self insertString:insertingString intoTextView:TextArea];
        
    }
    else
    {
        TextArea.text=@"tan";
    }
    
    // 0.5秒後に再度呼出
    [self performSelector:@selector(tanrepeat:) withObject:nil afterDelay:0.5];
    
}


- (void)cosrepeat:(id)sender
{
    //  リピート処理を記述
    NSRange bottom = NSMakeRange(TextArea.text.length -1, 1);
    [TextArea scrollRangeToVisible:bottom];
    
    
    if (TextArea.text.length !=0)
    {
        //ThirdString = [TextArea.text stringByAppendingString:@"1"];
        //TextArea.text=ThirdString;
        
        
        
        //http://stackoverflow.com/questions/8846749/how-to-insert-text-at-any-cursor-position-in-uitextview
        //[TextArea.text replaceRange:TextArea.text.selectedTextRange withText:@""];
        
        
        
        NSString * insertingString = [NSString stringWithFormat:@"cos"];

        
        [self insertString:insertingString intoTextView:TextArea];
        
    }
    else
    {
        TextArea.text=@"cos";
    }
    
    // 0.5秒後に再度呼出
    [self performSelector:@selector(cosrepeat:) withObject:nil afterDelay:0.5];
    
}


- (void)sinrepeat:(id)sender
{
    //  リピート処理を記述
    NSRange bottom = NSMakeRange(TextArea.text.length -1, 1);
    [TextArea scrollRangeToVisible:bottom];
    
    
    if (TextArea.text.length !=0)
    {
        //ThirdString = [TextArea.text stringByAppendingString:@"1"];
        //TextArea.text=ThirdString;
        
        
        
        //http://stackoverflow.com/questions/8846749/how-to-insert-text-at-any-cursor-position-in-uitextview
        //[TextArea.text replaceRange:TextArea.text.selectedTextRange withText:@""];
        
        
        
        NSString * insertingString = [NSString stringWithFormat:@"sin"];
        
        
        [self insertString:insertingString intoTextView:TextArea];
        
    }
    else
    {
        TextArea.text=@"sin";
    }
    
    // 0.5秒後に再度呼出
    [self performSelector:@selector(sinrepeat:) withObject:nil afterDelay:0.5];
    
}




//http://qiita.com/notice_inc/items/b4425988a690e1aa4124
- (void)repeat:(id)sender
{
    //  リピート処理を記述
    TextArea.text=@"";
    
    // 0.5秒後に再度呼出
    [self performSelector:@selector(repeat:) withObject:nil afterDelay:0.5];
    
}

- (IBAction)one:(id)sender {
    
    AudioServicesPlaySystemSound(_pageSound);
    
    //http://stackoverflow.com/questions/528277/uitextview-automatic-scroll-down
    NSRange bottom = NSMakeRange(TextArea.text.length -1, 1);
    [TextArea scrollRangeToVisible:bottom];
    
    
    if (TextArea.text.length !=0)
    {
        //ThirdString = [TextArea.text stringByAppendingString:@"1"];
        //TextArea.text=ThirdString;
        
        
        
        //http://stackoverflow.com/questions/8846749/how-to-insert-text-at-any-cursor-position-in-uitextview
        //[TextArea.text replaceRange:TextArea.text.selectedTextRange withText:@""];
        
        
        NSString * insertingString = [NSString stringWithFormat:@"1"];
        
        
        [self insertString:insertingString intoTextView:TextArea];

        
    }
    else
    {
        TextArea.text=@"1";
    }
    
    [TextArea resignFirstResponder];
}

- (IBAction)two:(id)sender {
    
    AudioServicesPlaySystemSound(_pageSound);
    NSRange bottom = NSMakeRange(TextArea.text.length -1, 1);
    [TextArea scrollRangeToVisible:bottom];
    
    if (TextArea.text.length !=0)
    {
        
        NSString * insertingString = [NSString stringWithFormat:@"2"];
  
        
        [self insertString:insertingString intoTextView:TextArea];
    }
    else
    {
        TextArea.text=@"2";
    }
    
    [TextArea resignFirstResponder];
    
}

- (IBAction)three:(id)sender {
    
    AudioServicesPlaySystemSound(_pageSound);
    
    NSRange bottom = NSMakeRange(TextArea.text.length -1, 1);
    [TextArea scrollRangeToVisible:bottom];
    
    if (TextArea.text.length !=0)
    {
        
        NSString * insertingString = [NSString stringWithFormat:@"3"];
        
        [self insertString:insertingString intoTextView:TextArea];
    }
    else
    {
        TextArea.text=@"3";
    }
    
    [TextArea resignFirstResponder];
}

-(IBAction)four:(id)sender {
    
    AudioServicesPlaySystemSound(_pageSound);
    
    NSRange bottom = NSMakeRange(TextArea.text.length -1, 1);
    [TextArea scrollRangeToVisible:bottom];
    
    if (TextArea.text.length !=0)
    {
        
        NSString * insertingString = [NSString stringWithFormat:@"4"];
        
        
        [self insertString:insertingString intoTextView:TextArea];
        
    }
    else
    {
        TextArea.text=@"4";
    }
    
    
}

-(IBAction)five:(id)sender {
    
    AudioServicesPlaySystemSound(_pageSound);
    
    NSRange bottom = NSMakeRange(TextArea.text.length -1, 1);
    [TextArea scrollRangeToVisible:bottom];
    
    if (TextArea.text.length !=0)
    {
        
        NSString * insertingString = [NSString stringWithFormat:@"5"];
       
        
        [self insertString:insertingString intoTextView:TextArea];

        
    }
    else
    {
        TextArea.text=@"5";
    }
    
    
    
}


-(IBAction)six:(id)sender {
    
    AudioServicesPlaySystemSound(_pageSound);
    
    NSRange bottom = NSMakeRange(TextArea.text.length -1, 1);
    [TextArea scrollRangeToVisible:bottom];
    
    if (TextArea.text.length !=0)
    {
        
        NSString * insertingString = [NSString stringWithFormat:@"6"];

        
        [self insertString:insertingString intoTextView:TextArea];
        
    }
    else
    {
        TextArea.text=@"6";
    }
    
    
}

-(IBAction)seven:(id)sender {
    
    AudioServicesPlaySystemSound(_pageSound);
    
    NSRange bottom = NSMakeRange(TextArea.text.length -1, 1);
    [TextArea scrollRangeToVisible:bottom];
    
    if (TextArea.text.length !=0)
    {

        
        NSString * insertingString = [NSString stringWithFormat:@"7"];
        
        [self insertString:insertingString intoTextView:TextArea];
        
        
    }
    else
    {
        TextArea.text=@"7";
    }
    
    
}


-(IBAction)eight:(id)sender {
    
    AudioServicesPlaySystemSound(_pageSound);
    
    NSRange bottom = NSMakeRange(TextArea.text.length -1, 1);
    [TextArea scrollRangeToVisible:bottom];
    
    if (TextArea.text.length !=0)
    {
        
        NSString * insertingString = [NSString stringWithFormat:@"8"];
        
        [self insertString:insertingString intoTextView:TextArea];
    }
    else
    {
        TextArea.text=@"8";
    }
    
}


-(IBAction)nine:(id)sender {
    
    AudioServicesPlaySystemSound(_pageSound);
    
    NSRange bottom = NSMakeRange(TextArea.text.length -1, 1);
    [TextArea scrollRangeToVisible:bottom];
    
    if (TextArea.text.length !=0)
    {
        
        NSString * insertingString = [NSString stringWithFormat:@"9"];
        
        [self insertString:insertingString intoTextView:TextArea];
        
    }
    else
    {
        TextArea.text=@"9";
    }
    
    
}


-(IBAction)zero:(id)sender {
    
    AudioServicesPlaySystemSound(_pageSound);
    
    NSRange bottom = NSMakeRange(TextArea.text.length -1, 1);
    [TextArea scrollRangeToVisible:bottom];
    
    if (TextArea.text.length !=0)
    {
        
        NSString * insertingString = [NSString stringWithFormat:@"0"];
        
        
        [self insertString:insertingString intoTextView:TextArea];
    }
    else
    {
        TextArea.text=@"0";
    }
    
    
}

- (IBAction)plus:(id)sender {
    
    AudioServicesPlaySystemSound(_pageSound);
    
    NSRange bottom = NSMakeRange(TextArea.text.length -1, 1);
    [TextArea scrollRangeToVisible:bottom];
    
    if (TextArea.text.length !=0)
    {
        
        NSString * insertingString = [NSString stringWithFormat:@"+"];
        
        
        [self insertString:insertingString intoTextView:TextArea];
        
        
    }
    else
    {
        
    }
    
    [TextArea resignFirstResponder];
}

- (IBAction)minus:(id)sender {
    
    AudioServicesPlaySystemSound(_pageSound);
    
    NSRange bottom = NSMakeRange(TextArea.text.length -1, 1);
    [TextArea scrollRangeToVisible:bottom];
    
    if (TextArea.text.length !=0)
    {
        NSString * insertingString = [NSString stringWithFormat:@"-"];
       
        [self insertString:insertingString intoTextView:TextArea];
    }
    else
    {
        TextArea.text=@"-";
    }
    
    
}

- (IBAction)times:(id)sender {
    
    AudioServicesPlaySystemSound(_pageSound);
    
    NSRange bottom = NSMakeRange(TextArea.text.length -1, 1);
    [TextArea scrollRangeToVisible:bottom];
    
    if (TextArea.text.length !=0)
    {
        NSString * insertingString = [NSString stringWithFormat:@"×"];
      
        [self insertString:insertingString intoTextView:TextArea];
        
        
    }
    else
    {
        
    }
    
    
}

- (IBAction)divide:(id)sender {
    
    AudioServicesPlaySystemSound(_pageSound);
    
    NSRange bottom = NSMakeRange(TextArea.text.length -1, 1);
    [TextArea scrollRangeToVisible:bottom];
    
    if (TextArea.text.length !=0)
    {
        
        NSString * insertingString = [NSString stringWithFormat:@"÷"];
        [self insertString:insertingString intoTextView:TextArea];
        
        
    }
    else
    {
        
    }
    
}



- (IBAction)DEL:(id)sender {
    UIButton *b = (UIButton *)sender;
    TAG_NUM = b.tag;
    //AudioServicesPlaySystemSound(_pageSound);
    
    [self playSystemSound];
    
    NSRange bottom = NSMakeRange(TextArea.text.length -1, 1);
    [TextArea scrollRangeToVisible:bottom];
    
    
    
    if (TextArea.text.length !=0 )
    {
        NSRange range = TextArea.selectedRange;
        NSString * firstHalfString = [TextArea.text substringToIndex:range.location-1];
        NSString * secondHalfString = [TextArea.text substringFromIndex: range.location];
        TextArea.scrollEnabled = NO;  // turn off scrolling
        
        
        
        TextArea.text = [NSString stringWithFormat: @"%@%@",
                         firstHalfString,
                         secondHalfString];
        range.location--;
        TextArea.selectedRange = range;
        TextArea.scrollEnabled = YES;
        
        
        
    }
    
    [TextArea resignFirstResponder];
    
}

- (IBAction)DOT:(id)sender {
    
    AudioServicesPlaySystemSound(_pageSound);
    
    NSRange bottom = NSMakeRange(TextArea.text.length -1, 1);
    [TextArea scrollRangeToVisible:bottom];
    
    if (TextArea.text.length !=0)
    {
    
        
        NSString * insertingString = [NSString stringWithFormat:@"."];
        
        [self insertString:insertingString intoTextView:TextArea];

    }
    else
    {
        TextArea.text=@".";
        
    }
    
    
    
}

- (IBAction)power:(id)sender {
    
    AudioServicesPlaySystemSound(_pageSound);
    
    if (TextArea.text.length !=0)
    {
        ThirdString = [TextArea.text stringByAppendingString:@"^"];
        TextArea.text=ThirdString;
    }
    else
    {
        
        
    }
    
}

- (IBAction)ln:(id)sender {
    
    AudioServicesPlaySystemSound(_pageSound);
    
    if (TextArea.text.length !=0)
    {
        ThirdString = [TextArea.text stringByAppendingString:@"(ln"];
        TextArea.text=ThirdString;
    }
    else
    {
        TextArea.text=@"(ln";
        
        
    }
    
}

- (IBAction)logten:(id)sender {
    
    AudioServicesPlaySystemSound(_pageSound);
    
    if (TextArea.text.length !=0)
    {
        ThirdString = [TextArea.text stringByAppendingString:@"(log"];
        TextArea.text=ThirdString;
    }
    else
    {
        TextArea.text=@"(log";
        
        
    }
    
}



- (IBAction)A:(id)sender {
    
    AudioServicesPlaySystemSound(_pageSound);
    
    
    NSRange bottom = NSMakeRange(TextArea.text.length -1, 1);
    [TextArea scrollRangeToVisible:bottom];
    
    
    if (TextArea.text.length !=0)
    {
     
        
        NSString * insertingString = [NSString stringWithFormat:@"A"];
       
        
        [self insertString:insertingString intoTextView:TextArea];
    }
    else
    {
        TextArea.text=@"A";
        
        
    }
    
    
}

- (IBAction)B:(id)sender {
    
    AudioServicesPlaySystemSound(_pageSound);
    
    
    NSRange bottom = NSMakeRange(TextArea.text.length -1, 1);
    [TextArea scrollRangeToVisible:bottom];
    
    
    if (TextArea.text.length !=0)
    {
 
        
        NSString * insertingString = [NSString stringWithFormat:@"B"];
        
        
        [self insertString:insertingString intoTextView:TextArea];
    }
    else
    {
        TextArea.text=@"B";
        
        
    }
    
    
}



- (IBAction)SET_VARIABLES:(id)sender {
    
    UIButton *b = (UIButton *)sender;
    TAG_NUM = b.tag;
    
    //AudioServicesPlaySystemSound(_pageSound);
    [self playSystemSound];
    
    if ([TextArea.text containsString:@"\n"])
    {
        
        NSArray *pre_variables_ARRAY =  [TextArea.text  componentsSeparatedByString:@"\n"];
        // now \n desapered
        
        NSMutableArray *variables_ARRAY = [NSMutableArray arrayWithArray:pre_variables_ARRAY];
        
        //REMOVE""
        [variables_ARRAY removeObject:strToRemoveEMPTY0];
        [variables_ARRAY removeObject:strToRemoveSPACE0];
        
        NSString *INSERT_STR =nil;
        
        //for (int i = 0; i < [variables_ARRAY count]; i++)
        //{
        //INSERT_STR = [self SPACE_FILTER:variables_ARRAY [i]];
        
        
        //テキストの一番最後を取りたいのさ
        INSERT_STR = [self SPACE_FILTER:variables_ARRAY [variables_ARRAY.count-1]];
        
        
        NSString *temp_str=variables_ARRAY [variables_ARRAY.count-1];
        NSLog(@"INSERT_STR");
        NSLog(@"%@",INSERT_STR);
        
        if ([INSERT_STR containsString:@"="])
        {
            
        }
        else if ([INSERT_STR containsString:@"A"])
        {
            INSERT_STR = [INSERT_STR stringByReplacingOccurrencesOfString:@"A" withString:@""];
            
            if([self Str_substitute:INSERT_STR]!=nil)
            {
                A = [self Str_substitute:INSERT_STR];
                
                temp_str = [temp_str stringByReplacingOccurrencesOfString:@"A" withString:@"A="];
                
                TextArea.text = [TextArea.text stringByReplacingOccurrencesOfString:variables_ARRAY [variables_ARRAY.count-1] withString:temp_str];
            }
        }
        
        else if ([INSERT_STR containsString:@"B"])
        {
            INSERT_STR = [INSERT_STR stringByReplacingOccurrencesOfString:@"B" withString:@""];
            
            if([self Str_substitute:INSERT_STR]!=nil)
            {
                B = [self Str_substitute:INSERT_STR];
                
                temp_str = [temp_str stringByReplacingOccurrencesOfString:@"B" withString:@"B="];
                
                TextArea.text = [TextArea.text stringByReplacingOccurrencesOfString:variables_ARRAY [variables_ARRAY.count-1] withString:temp_str];
                
            }
            
        }
        
        else if ([INSERT_STR containsString:@"C="])
        {
            INSERT_STR = [INSERT_STR stringByReplacingOccurrencesOfString:@"C=" withString:@""];
            
            C = [self Str_substitute:INSERT_STR];
            
            
        }
        
        else if ([INSERT_STR containsString:@"D="])
        {
            INSERT_STR = [INSERT_STR stringByReplacingOccurrencesOfString:@"D=" withString:@""];
            
            D = [self Str_substitute:INSERT_STR];
            
            
        }
        
        
        else if ([INSERT_STR containsString:@"X="])
        {
            INSERT_STR = [INSERT_STR stringByReplacingOccurrencesOfString:@"X=" withString:@""];
            
            X = [self Str_substitute:INSERT_STR];
            
            
        }
        
        else if ([INSERT_STR containsString:@"Y="])
        {
            INSERT_STR = [INSERT_STR stringByReplacingOccurrencesOfString:@"Y=" withString:@""];
            
            Y = [self Str_substitute:INSERT_STR];
            
            
        }
        
        else if ([INSERT_STR containsString:@"Z="])
        {
            INSERT_STR = [INSERT_STR stringByReplacingOccurrencesOfString:@"Z=" withString:@""];
            
            Z = [self Str_substitute:INSERT_STR];
            
        }
        
        
        ThirdString = [TextArea.text stringByAppendingString:@"\n"];
        
        TextArea.text=ThirdString;
        
        
    }
    else if([TextArea.text isEqual:@""])
    {
        
    }
    else
    {
        NSString *INSERT_STR =TextArea.text;
        
        
        NSLog(@"INSERT_STR");
        NSLog(@"%@",INSERT_STR);
        
        if ([INSERT_STR containsString:@"A"])
        {
            INSERT_STR = [INSERT_STR stringByReplacingOccurrencesOfString:@"A" withString:@""];
            
            A = [self Str_substitute:INSERT_STR];
            
            if([self Str_substitute:INSERT_STR]!=nil)
            {
                TextArea.text = [TextArea.text stringByReplacingOccurrencesOfString:@"A" withString:@"A="];
            }
        }
        
        else if ([INSERT_STR containsString:@"B"])
        {
            INSERT_STR = [INSERT_STR stringByReplacingOccurrencesOfString:@"B" withString:@""];
            
            B = [self Str_substitute:INSERT_STR];
            
            if([self Str_substitute:INSERT_STR]!=nil)
            {
                TextArea.text = [TextArea.text stringByReplacingOccurrencesOfString:@"B" withString:@"B="];
            }
        }
        
        if ([INSERT_STR containsString:@"C="])
        {
            INSERT_STR = [INSERT_STR stringByReplacingOccurrencesOfString:@"C=" withString:@""];
            
            C = [self Str_substitute:INSERT_STR];
            
        }
        
        if ([INSERT_STR containsString:@"D="])
        {
            INSERT_STR = [INSERT_STR stringByReplacingOccurrencesOfString:@"D=" withString:@""];
            
            D = [self Str_substitute:INSERT_STR];
            
        }
        
        
        if ([INSERT_STR containsString:@"X="])
        {
            INSERT_STR = [INSERT_STR stringByReplacingOccurrencesOfString:@"X=" withString:@""];
            
            X = [self Str_substitute:INSERT_STR];
            
        }
        
        if ([INSERT_STR containsString:@"Y="])
        {
            INSERT_STR = [INSERT_STR stringByReplacingOccurrencesOfString:@"Y=" withString:@""];
            
            Y = [self Str_substitute:INSERT_STR];
            
            
        }
        
        if ([INSERT_STR containsString:@"Z="])
        {
            INSERT_STR = [INSERT_STR stringByReplacingOccurrencesOfString:@"Z=" withString:@""];
            
            Z = [self Str_substitute:INSERT_STR];
            
            
        }
        
        ThirdString = [TextArea.text stringByAppendingString:@"\n"];
        
        TextArea.text=ThirdString;
        
    }
    
    
    
    
    //ThirdStirngLength=TextArea.text.length;
    //ThirdString=str2=nil;
    
    
}

- (IBAction)CLEAR:(id)sender {
    
    UIButton *b = (UIButton *)sender;
    TAG_NUM = b.tag;
    
    [self playSystemSound];
    
    //AudioServicesPlaySystemSound(_pageSound);
    
    TextArea.text=@"";
    
    //
    check = 0;
    temp_fw = 0;
    temp_bw = 0;
    temp_now = 0;
    
    bl = false;
    SWITCH = 0;
    CRATE_NUM = 0;
    
    str2 = nil;
    temp2 = nil;
    Init_str=nil;
    ClipedData = nil;
    strToRemoveEMPTY0 = @"";
    strToRemoveSPACE0 = @" ";
    CHECK_STR = nil;
    
    
    
    
}

- (IBAction)ENTER:(id)sender
{
    
    UIButton *b = (UIButton *)sender;
    TAG_NUM = b.tag;
    
    //AudioServicesPlaySystemSound(_pageSound);
    [self playSystemSound];
    
    //
    //RAWTEXT
    //
    
    
    
    
    
    if (TextArea.text.length != 0)
    {
        ClipedData = TextArea.text;
        
    }
    
    
    
    //1-sqrl[(1-4^-2)/(1+3^2)]
    str2= [self SPACE_FILTER:(ClipedData)];
    
    
    if (ClipedData == nil)
    {
        SWITCH = 0;
    }
    else if(str2.length==0)
    {
        SWITCH = 0;
        str2=0;
        
    }
    else
    {
        SWITCH = 1;
        
        
        
        
    }
    
    
    switch (SWITCH)
    {
        case 0:
            break;
            
        case 1:
            
            
            Calc_ARRAY =  [TextArea.text  componentsSeparatedByString:@"\n"];
            
            NSMutableArray *temp_ARRAY = [NSMutableArray arrayWithArray:Calc_ARRAY];
            
            //REMOVE""これ試しになくしたらどうなるかな？
            //[temp_ARRAY removeObject:strToRemoveEMPTY0];
            //[temp_ARRAY removeObject:strToRemoveSPACE0];
            
            NSString *temp_str =nil;
            
            for (int i = 0; i < [temp_ARRAY count]; i++)
            {
                
                //OKOK。ここでフィルターをかければ問題無い。
                temp_str = [self SPACE_FILTER:temp_ARRAY [i]];
                
                
                
                
                if([temp_str containsString:@"="])
                {
                    bl=true;
                    
                    
                    
                    
                }
                else if([temp_str containsString:@"@"])
                {
                    bl=true;
                    
                    
                    
                    
                }
                
                else if(temp_str.length==0)
                {
                    bl=true;
                    
                }
                else
                {
                    
                    bl=false;
                    
                    str2=temp_str;
                    
                    NSLog(@"str2\n");
                    NSLog(@"%@",str2);
                    
                    
                    
                    //INPUT VALUE X
                    
                    
                    
                    
                    str2 = [str2 stringByReplacingOccurrencesOfString:@"PI" withString:[NSString stringWithFormat:@"%f", M_PI]];
                    
                    
                    str2 = [str2 stringByReplacingOccurrencesOfString:@"A" withString:[NSString stringWithFormat:@"%@", A]];
                    str2 = [str2 stringByReplacingOccurrencesOfString:@"B" withString:[NSString stringWithFormat:@"%@", B]];
                    str2 = [str2 stringByReplacingOccurrencesOfString:@"C" withString:[NSString stringWithFormat:@"%@", C]];
                    
                    str2 = [str2 stringByReplacingOccurrencesOfString:@"D" withString:[NSString stringWithFormat:@"%@", D]];
                    
                    str2 = [str2 stringByReplacingOccurrencesOfString:@"X" withString:[NSString stringWithFormat:@"%@", X]];
                    
                    str2 = [str2 stringByReplacingOccurrencesOfString:@"Y" withString:[NSString stringWithFormat:@"%@", Y]];
                    
                    str2 = [str2 stringByReplacingOccurrencesOfString:@"Z" withString:[NSString stringWithFormat:@"%@", Z]];
                    
                    
                    if([str2 containsString:@"√"])
                    {
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"9√" withString:@"9×√"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"8√" withString:@"8×√"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"7√" withString:@"7×√"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"6√" withString:@"6×√"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"5√" withString:@"5×√"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"4√" withString:@"4×√"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"3√" withString:@"3×√"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"2√" withString:@"2×√"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"1√" withString:@"1×√"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"0√" withString:@"0×√"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"-√" withString:@"-1×√"];
                    }
                    
                    if([str2 containsString:@"l"])
                    {
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"9l" withString:@"9×l"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"8l" withString:@"8×l"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"7l" withString:@"7×l"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"6l" withString:@"6×l"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"5l" withString:@"5×l"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"4l" withString:@"4×l"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"3l" withString:@"3×l"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"2l" withString:@"2×l"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"1l" withString:@"1×l"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"0l" withString:@"0×l"];
                    }
                    if([str2 containsString:@"s"])
                    {
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"9s" withString:@"9×s"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"8s" withString:@"8×s"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"7s" withString:@"7×s"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"6s" withString:@"6×s"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"5s" withString:@"5×s"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"4s" withString:@"4×s"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"3s" withString:@"3×s"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"2s" withString:@"2×s"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"1s" withString:@"1×s"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"0s" withString:@"0×s"];
                    }
                    if([str2 containsString:@"c"])
                    {
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"9c" withString:@"9×c"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"8c" withString:@"8×c"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"7c" withString:@"7×c"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"6c" withString:@"6×c"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"5c" withString:@"5×c"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"4c" withString:@"4×c"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"3c" withString:@"3×c"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"2c" withString:@"2×c"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"1c" withString:@"1×c"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"0c" withString:@"0×c"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"-c" withString:@"-1×c"];
                    }
                    if([str2 containsString:@"t"])
                    {
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"9t" withString:@"9×t"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"8t" withString:@"8×t"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"7t" withString:@"7×t"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"6t" withString:@"6×t"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"5t" withString:@"5×t"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"4t" withString:@"4×t"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"3t" withString:@"3×t"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"2t" withString:@"2×t"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"1t" withString:@"1×t"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"0t" withString:@"0×t"];
                    }
                    if([str2 containsString:@"a"])
                    {
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"9a" withString:@"9×a"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"8a" withString:@"8×a"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"7a" withString:@"7×a"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"6a" withString:@"6×a"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"5a" withString:@"5×a"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"4a" withString:@"4×a"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"3a" withString:@"3×a"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"2a" withString:@"2×a"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"1a" withString:@"1×a"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"0a" withString:@"0×a"];
                    }
                    if([str2 containsString:@"PI"])
                    {
                        
                        
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"9PI" withString:@"9×PI"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"8PI" withString:@"8×PI"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"7PI" withString:@"7×PI"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"6PI" withString:@"6×PI"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"5PI" withString:@"5×PI"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"4PI" withString:@"4×PI"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"3PI" withString:@"3×PI"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"2PI" withString:@"2×PI"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"1PI" withString:@"1×PI"];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"0PI" withString:@"0×PI"];
                    }
                    if([str2 containsString:@"("])
                    {
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"9(" withString:@"9×("];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"8(" withString:@"8×("];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"7(" withString:@"7×("];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"6(" withString:@"6×("];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"5(" withString:@"5×("];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"4(" withString:@"4×("];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"3(" withString:@"3×("];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"2(" withString:@"2×("];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"1(" withString:@"1×("];
                        str2 = [str2 stringByReplacingOccurrencesOfString:@"0(" withString:@"0×("];
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    //while (str2.Length >= 3)
                    //10も回せば十分だよね？きっと。それは分からない。
                    int count = 5;
                    
                    //http://dobon.net/vb/dotnet/beginner/exceptionhandling.html Thanks.
                    
                    while (count > 0 && bl == false)
                    {
                        
                        
                        //最初の場合分けだね
                        if ([str2 containsString:@"("])
                        {
                            //戻ってきた文字列ね
                            str2 = [self SetSpaceSB:(str2)];
                            //1+-{ (1+a^b) /[ (1+-1*c^d) * (cosf/sing) ]}^h
                            
                            str2 = [str2 stringByAppendingString:@" "];
                            
                            //       Console.WriteLine("str2");
                            //       Console.WriteLine(str2);
                            
                            
                            //RAWARRAY
                            //(1+a^b), (1+-1*c^d), (cosf/sing)
                            NSArray *pre_str2_ARRAY =  [str2  componentsSeparatedByString:@" "];
                            
                            NSMutableArray *str2_ARRAY = [NSMutableArray arrayWithArray:pre_str2_ARRAY];
                            
                            //REMOVE""
                            [str2_ARRAY removeObject:strToRemoveEMPTY0];
                            [str2_ARRAY removeObject:strToRemoveSPACE0];
                            
                            //1+-{
                            //(1+a^b)
                            ///[
                            //(1+-1*c^d)
                            //*
                            //(cosf/sing)
                            //]}^h
                            
                            for (int i = 0; i < [str2_ARRAY count]; i++)
                            {
                                //いっぺんで全部の（）が外れる。
                                if ([str2_ARRAY[i] containsString:@"("])
                                {
                                    
                                    
                                    temp2 = [self BRACKET_FILTER:str2_ARRAY[i]];
                                    //1+-1*c^d
                                    
                                    //        Console.WriteLine("temp2");
                                    //         Console.WriteLine(temp2);
                                    
                                    
                                    //SETTINGSPACE
                                    temp2 = [self SetSpaceOp:temp2];
                                    //1 + -1 * c ^ d
                                    
                                    temp2 = [temp2 stringByAppendingString:@" "];
                                    //1 +  -1 * c ^ d
                                    
                                    
                                    
                                    //         Console.WriteLine("temp2");
                                    //         Console.WriteLine(temp2);
                                    
                                    
                                    //RAWARRAY
                                    NSArray *pre_temp2_ARRAY =  [temp2  componentsSeparatedByString:@" "];
                                    
                                    NSMutableArray *temp2_ARRAY = [NSMutableArray arrayWithArray:pre_temp2_ARRAY];
                                    
                                    
                                    temp2 = nil;
                                    
                                    //REMOVE""
                                    [temp2_ARRAY removeObject:strToRemoveEMPTY0];
                                    [temp2_ARRAY removeObject:strToRemoveSPACE0];
                                    //1
                                    //-1
                                    //*
                                    //c
                                    //^
                                    //d
                                    
                                    
                                    
                                    if ([temp2_ARRAY count] != 0)
                                    {
                                        
                                        //
                                        NSArray *pre_str4_ARRAY = [self A_OPS:temp2_ARRAY];
                                        
                                        NSMutableArray *str4_ARRAY = [NSMutableArray arrayWithArray:pre_str4_ARRAY];
                                        //         Console.WriteLine("str4_ARRAY.Last");
                                        //         Console.WriteLine(str4_ARRAY.Last());
                                        
                                        //
                                        temp2 = [self BASIC_OPS:str4_ARRAY];
                                        //B-op
                                        
                                        
                                        str2_ARRAY[i] = temp2;
                                        //1-0.0625=0.9375
                                        
                                        temp2 = nil;
                                        
                                    }
                                    
                                }
                                
                            }
                            
                            
                            
                            // //1- { [1- X1 ] / [1+ X2 ^0.5] * X3 }
                            //http://rakuishi.com/archives/5463/
                            temp2 = [str2_ARRAY componentsJoinedByString:@" "];
                            
                            temp2 = [self SPACE_FILTER:temp2];
                            
                            
                            
                            str2 = temp2;
                            
                            temp2 = nil;
                            
                            NSLog(@"str2(");
                            NSLog(@"%@",str2);
                            
                            
                            
                            //次の場合分け[だよ
                            
                            if ([str2 containsString:@"["])
                            {
                                //戻ってきた文字列ね
                                str2 = [self SetSpaceMB:str2];
                                //[1- 9 ]/[1- 9 ]
                                
                                str2 = [str2 stringByAppendingString:@" "];
                                
                                //      Console.WriteLine("str2");
                                //      Console.WriteLine(str2);
                                
                                
                                //RAWARRAY
                                NSArray *pre_str2_ARRAY =  [str2  componentsSeparatedByString:@" "];
                                
                                NSMutableArray *str2_ARRAY = [NSMutableArray arrayWithArray:pre_str2_ARRAY];
                                
                                //REMOVE""
                                [str2_ARRAY removeObject:strToRemoveEMPTY0];
                                [str2_ARRAY removeObject:strToRemoveSPACE0];
                                
                                
                                
                                
                                for (int i = 0; i < [str2_ARRAY count]; i++)
                                {
                                    if ([str2_ARRAY[i] containsString:@"["])
                                    {
                                        
                                        
                                        temp2 = [self BRACKET_FILTER:str2_ARRAY[i]];
                                        //1+-1*c^d
                                        
                                        //    Console.WriteLine("temp2");
                                        //   Console.WriteLine(temp2);
                                        
                                        
                                        //SETTINGSPACE
                                        temp2 = [self SetSpaceOp:temp2];
                                        //1 + -1 * c ^ d
                                        
                                        temp2 = [temp2 stringByAppendingString:@" "];
                                        
                                        //1 +  -1 * c ^ d
                                        
                                        
                                        
                                        //     Console.WriteLine("temp2");
                                        //     Console.WriteLine(temp2);
                                        
                                        
                                        
                                        
                                        //RAWARRAY
                                        NSArray *pre_temp2_ARRAY =  [temp2  componentsSeparatedByString:@" "];
                                        
                                        NSMutableArray *temp2_ARRAY = [NSMutableArray arrayWithArray:pre_temp2_ARRAY];
                                        
                                        
                                        temp2 = nil;
                                        
                                        
                                        //REMOVE""
                                        [temp2_ARRAY removeObject:strToRemoveEMPTY0];
                                        [temp2_ARRAY removeObject:strToRemoveSPACE0];
                                        
                                        
                                        if ([temp2_ARRAY count] != 0)
                                        {
                                            
                                            //
                                            NSArray *pre_str4_ARRAY = [self A_OPS:temp2_ARRAY];
                                            
                                            NSMutableArray *str4_ARRAY = [NSMutableArray arrayWithArray:pre_str4_ARRAY];
                                            //        Console.WriteLine("str4_ARRAY.Last");
                                            //        Console.WriteLine(str4_ARRAY.Last());
                                            
                                            //
                                            temp2 = [self BASIC_OPS:str4_ARRAY];
                                            //B-op
                                            
                                            
                                            str2_ARRAY[i] = temp2;
                                            //1-0.0625=0.9375
                                            
                                            temp2 = nil;
                                            
                                        }
                                        
                                    }
                                    
                                }
                                
                                // //1- { [1- X1 ] / [1+ X2 ^0.5] * X3 }
                                
                                
                                //http://rakuishi.com/archives/5463/
                                temp2 = [str2_ARRAY componentsJoinedByString:@" "];
                                
                                temp2 = [self SPACE_FILTER:temp2];
                                
                                
                                
                                str2 = temp2;
                                
                                temp2 = nil;
                                
                                
                                // Console.WriteLine("str2[");
                                // Console.WriteLine(str2);
                                
                                
                                //最後だよ
                                if ([str2 containsString:@"{"])
                                {
                                    
                                    
                                    
                                    //戻ってきた文字列ね
                                    str2 = [self SetSpaceMB:str2];
                                    //[1- 9 ]/[1- 9 ]
                                    
                                    str2 = [str2 stringByAppendingString:@" "];
                                    
                                    //      Console.WriteLine("str2");
                                    //      Console.WriteLine(str2);
                                    
                                    
                                    //RAWARRAY
                                    NSArray *pre_str2_ARRAY =  [str2  componentsSeparatedByString:@" "];
                                    
                                    NSMutableArray *str2_ARRAY = [NSMutableArray arrayWithArray:pre_str2_ARRAY];
                                    
                                    //REMOVE""
                                    [str2_ARRAY removeObject:strToRemoveEMPTY0];
                                    [str2_ARRAY removeObject:strToRemoveSPACE0];
                                    
                                    
                                    
                                    for (int i = 0; i < [str2_ARRAY count]; i++)
                                    {
                                        if ([str2_ARRAY[i] containsString:@"{"])
                                        {
                                            
                                            
                                            temp2 = [self BRACKET_FILTER:str2_ARRAY[i]];
                                            //1+-1*c^d
                                            
                                            //  Console.WriteLine("temp2");
                                            //  Console.WriteLine(temp2);
                                            
                                            
                                            //SETTINGSPACE
                                            temp2 = [self SetSpaceOp:temp2];
                                            //1 + -1 * c ^ d
                                            
                                            temp2 = [temp2 stringByAppendingString:@" "];
                                            
                                            //1 +  -1 * c ^ d
                                            
                                            
                                            
                                            //  Console.WriteLine("temp2");
                                            //  Console.WriteLine(temp2);
                                            
                                            
                                            
                                            //RAWARRAY
                                            NSArray *pre_temp2_ARRAY =  [temp2  componentsSeparatedByString:@" "];
                                            
                                            NSMutableArray *temp2_ARRAY = [NSMutableArray arrayWithArray:pre_temp2_ARRAY];
                                            
                                            
                                            temp2 = nil;
                                            
                                            
                                            //REMOVE""
                                            [temp2_ARRAY removeObject:strToRemoveEMPTY0];
                                            [temp2_ARRAY removeObject:strToRemoveSPACE0];
                                            
                                            
                                            
                                            if ([temp2_ARRAY count] != 0)
                                            {
                                                
                                                //
                                                //
                                                NSArray *pre_str4_ARRAY = [self A_OPS:temp2_ARRAY];
                                                
                                                NSMutableArray *str4_ARRAY = [NSMutableArray arrayWithArray:pre_str4_ARRAY];
                                                
                                                //    Console.WriteLine("str4_ARRAY.Last");
                                                //    Console.WriteLine(str4_ARRAY.Last());
                                                
                                                //
                                                temp2 = [self BASIC_OPS:str4_ARRAY];
                                                //B-op
                                                
                                                
                                                str2_ARRAY[i] = temp2;
                                                //1-0.0625=0.9375
                                                
                                                temp2 = nil;
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                    // //1- { [1- X1 ] / [1+ X2 ^0.5] * X3 }
                                    
                                    temp2 = [str2_ARRAY componentsJoinedByString:@" "];
                                    
                                    temp2 = [self SPACE_FILTER:temp2];
                                    
                                    
                                    
                                    str2 = temp2;
                                    
                                    temp2 = nil;
                                    
                                    
                                    //    Console.WriteLine("str2");
                                    //    Console.WriteLine(str2);
                                }
                            }
                            
                            count--;
                            
                        }
                        else
                        {
                            str2 = [self SetSpaceOp:str2];
                            //1 -1 + 9 *  -3 / 3.3 + 0.369
                            
                            
                            
                            
                            //最後に空白をつけてるだけ
                            str2 = [str2 stringByAppendingString:@" "];
                            
                            NSLog(@"str2 Last");
                            NSLog(@"%@",str2);
                            /*
                             CHECK_STR = [self BRACKET_FILTER:str2];
                             
                             if ([CHECK_STR containsString:@"E-"])
                             {
                             check = [CHECK_STR doubleValue];
                             
                             if (check <= 1.000000000E-12)
                             str2 = @"0";
                             bl = true;
                             }
                             */
                            
                            /*
                             Console.WriteLine("str2N");
                             Console.WriteLine(str2);
                             Console.WriteLine(CHECK_STR);
                             */
                            
                            
                            
                            
                            //RAWARRAY
                            NSArray *pre_str2_ARRAY =  [str2  componentsSeparatedByString:@" "];
                            
                            NSMutableArray *str2_ARRAY = [NSMutableArray arrayWithArray:pre_str2_ARRAY];
                            
                            //REMOVE""
                            [str2_ARRAY removeObject:strToRemoveEMPTY0];
                            [str2_ARRAY removeObject:strToRemoveSPACE0];
                            
                            
                            
                            //
                            NSArray *pre_str3_ARRAY = [self A_OPS:str2_ARRAY];
                            
                            NSMutableArray *str3_ARRAY = [NSMutableArray arrayWithArray:pre_str3_ARRAY];
                            //    Console.WriteLine("str2_ARRAY.Last");
                            //    Console.WriteLine(str2_ARRAY.Last());
                            
                            //
                            temp2 = [self BASIC_OPS:str3_ARRAY];
                            //B-op
                            
                            NSLog(@"temp2");
                            NSLog(@"%@",temp2);
                            // //1- { [1- X1 ] / [1+ X2 ^0.5] * X3 }
                            
                            
                            str2 = temp2;
                            
                            temp2 = nil;
                            
                            //  Console.WriteLine("str2");
                            //  Console.WriteLine(str2);
                            
                            count--;
                        }
                    }
                    //ここでcount while-loopの終わり
                    NSLog(@"ThirdString");
                    NSLog(@"%@",ThirdString);
                    
                    
                    
                    
                    if ([temp_ARRAY[i] containsString:@"A"]&&[temp_ARRAY[i] containsString:@"B"])
                    {
                        
                        A=str2;
                    }
                    else if ([temp_ARRAY[i] containsString:@"A"])
                    {
                        A=str2;
                        
                    }
                    
                    
                    else if ([temp_ARRAY[i] containsString:@"B"])
                    {
                        
                    }
                    
                    
                    //答えの貼り付け
                    ThirdString = [temp_ARRAY[i] stringByAppendingString:@"="];
                    
                    //これすごい！
                    //http://stackoverflow.com/questions/1448804/how-to-convert-an-nsstring-into-an-nsnumber/1448875#1448875
                    NSNumberFormatter *f = [[NSNumberFormatter alloc] init];
                    f.numberStyle = NSNumberFormatterDecimalStyle;
                    
                    
                    float flt=[str2 floatValue];
                    str2 =  [f stringFromNumber:[NSNumber numberWithFloat:flt]];
                    
                    
                    ThirdString = [ThirdString stringByAppendingString:str2];
                    
                    //ここでArrayに収納
                    temp_ARRAY[i]=ThirdString;
                    
                    
                    
                    
                    //ThirdStirngLength=TextArea.text.length;
                    ThirdString=str2=nil;
                    
                    
                    
                    //
                    check = 0;
                    temp_fw = 0;
                    temp_bw = 0;
                    temp_now = 0;
                    SWITCH = 0;
                    CRATE_NUM = 0;
                    
                    
                    str2 = nil;
                    temp2 = nil;
                    Init_str=nil;
                    ClipedData = nil;
                    strToRemoveEMPTY0 = @"";
                    strToRemoveSPACE0 = @" ";
                    CHECK_STR = nil;
                    
                    
                    
                    
                }//elseおわり
            }
            //for-loop Array end!
            //ここでStringに戻して貼り付けてもいいかも
            
            
            ThirdString=[temp_ARRAY componentsJoinedByString:@"\n"];
            
            TextArea.text=ThirdString;
            ThirdString=nil;
            temp_ARRAY=nil;
            Calc_ARRAY=nil;
            
            //
            check = 0;
            temp_fw = 0;
            temp_bw = 0;
            temp_now = 0;
            
            bl = false;
            SWITCH = 0;
            CRATE_NUM = 0;
            
            str2 = nil;
            temp2 = nil;
            Init_str=nil;
            ClipedData = nil;
            strToRemoveEMPTY0 = @"";
            strToRemoveSPACE0 = @" ";
            CHECK_STR = nil;
            
            
            break;
    }
    //ここでSwitchの終わり
    
    TextArea.text=[TextArea.text stringByAppendingString:@"\n"];
    
}

//Replacing Treatment
-(NSArray *) A_OPS:(NSMutableArray *)TEMP_ARRAY
{
    
    
    
    //ここで対数もついでに変換しちゃうか
    float sin = 0;
    float cos = 0;
    
    float acos_v =0;
    float asin_v =0;
    
    float tan =0;
    float atan_v =0;
    
    float logt=0;
    float loge=0;
    
    float sq=0;
    
    
    
    NSString *istr =nil;
    
    //PERFOMING OPERATIONS
    //INDEXだよ。毎度毎度ここでつまづく
    for (int i = 0; i < [TEMP_ARRAY count]; i++)
    {
        istr = TEMP_ARRAY[i];
        
        
        
        //-があるとcos, -30 になって分かれる。
        NSLog(@"istr");
        NSLog(@"%@",istr);
        
        
        //asin
        if ([istr containsString:@"-asin"])
        {
            //New
            istr = [istr stringByReplacingOccurrencesOfString:@"-asin" withString:@"asin"];
            
            istr = [self NUMBERFILTER:istr];
            
            asin_v = [istr doubleValue];
            
            
            asin_v = asinf(asin_v);
            
            if(deg==0)
            {
                //conversion radian to degree
                
                asin_v=(asin_v*180)/M_PI;
            }
            
            
            asin_v = -asin_v;
            
            //http://stackoverflow.com/questions/27648453/converting-double-to-nsdecimalnumber-while-maintaining-accuracy
            
            
            TEMP_ARRAY[i] = [NSString stringWithFormat:@"%f", asin_v];
            
            
            sum = 0;
            
        }
        else  if ([istr containsString:@"asin"])
        {
            
            
            istr = [self NUMBERFILTER:istr];
            
            asin_v = [istr floatValue];
            
            
            asin_v = asinf(asin_v);
            
            
            
            
            
            // Get the number of decimal digits in the double
            int digits = [self countDigits:asin_v];
            
            // Round based on the number of decimal digits in the double
            NSDecimalNumberHandler *behavior = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundDown scale:digits raiseOnExactness:NO raiseOnOverflow:NO raiseOnUnderflow:NO raiseOnDivideByZero:NO];
            NSDecimalNumber *calcDN = (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:asin_v];
            calcDN = [calcDN decimalNumberByRoundingAccordingToBehavior:behavior];
            
            
            sum =  calcDN;
            
            if(deg==0)
            {
                //conversion radian to degree
                
                asin_v=(asin_v*180)/M_PI;
            }
            
            
            TEMP_ARRAY[i] = [NSString stringWithFormat:@"%f", asin_v];
            
            
            sum = 0;
            
            
            
        }
        
        
        
        //sin
        if ([istr containsString:@"-sin"])
        {
            
            
            
            //New
            istr = [istr stringByReplacingOccurrencesOfString:@"-sin" withString:@"sin"];
            
            
            istr = [self NUMBERFILTER:istr];
            
            
            
            
            sin = [istr floatValue];
            
            if(deg==0)
            {
                //conversion degree to radian
                sin =(M_PI * sin)/180;
            }
            
            NSLog(@"istr_sin");
            NSLog(@"%lf",sin);
            
            sin = sinf(sin);
            sin = -sin;
            
            TEMP_ARRAY[i] = [NSString stringWithFormat:@"%f", sin];
            
            sum = 0;
            
        }
        else if ([istr containsString:@"sin"])
        {
            
            istr = [self NUMBERFILTER:istr];
            
            
            
            
            sin = [istr floatValue];
            
            if(deg==0)
            {
                //conversion degree to radian
                sin =(M_PI * sin)/180;
            }
            
            sin = sinf(sin);
            
            TEMP_ARRAY[i] = [NSString stringWithFormat:@"%f", sin];
            
            sum = 0;
            
            
        }
        
        
        
        
        
        
        
        
        //acos
        if ([istr containsString:@"-acos"])
        {
            
            //New
            istr = [istr stringByReplacingOccurrencesOfString:@"-acos" withString:@"acos"];
            
            istr = [self NUMBERFILTER:istr];
            
            
            
            acos_v = [istr doubleValue];
            
            
            acos_v= acosf(acos_v);
            
            if(deg==0)
            {
                //conversion radian to degree
                
                acos_v=(acos_v*180)/M_PI;
            }
            
            
            acos_v = -acos_v;
            
            
            
            TEMP_ARRAY[i] = [NSString stringWithFormat:@"%f", acos_v];
            
            sum = 0;
            
            
        }
        else if ([istr containsString:@"acos"])
        {
            
            
            
            istr = [self NUMBERFILTER:istr];
            
            acos_v = [istr doubleValue];
            
            
            acos_v = acosf(acos_v);
            
            if(deg==0)
            {
                //conversion radian to degree
                
                acos_v=(acos_v*180)/M_PI;
            }
            
            
            TEMP_ARRAY[i] = [NSString stringWithFormat:@"%f", acos_v];
            
            sum = 0;
            
        }
        
        
        
        
        
        
        
        
        
        //cos
        if ([istr containsString:@"-cos"])
        {
            
            //New
            istr = [istr stringByReplacingOccurrencesOfString:@"-cos" withString:@"cos"];
            
            istr = [self NUMBERFILTER:istr];
            
            
            cos = [istr floatValue];
            
            if(deg==0)
            {
                //conversion degree to radian
                cos =(M_PI * cos)/180;
            }
            
            cos = cosf(cos);
            
            
            
            cos = -cos;
            
            TEMP_ARRAY[i] = [NSString stringWithFormat:@"%f", cos];
            
            
            sum = 0;
            
            
        }
        else if ([istr containsString:@"cos"])
        {
            
            istr = [self NUMBERFILTER:istr];
            
            
            cos = [istr floatValue];
            
            if(deg==0)
            {
                //conversion degree to radian
                cos =(M_PI * cos)/180;
            }
            
            
            cos = cosf(cos);
            
            
            TEMP_ARRAY[i] = [NSString stringWithFormat:@"%f", cos];
            
            
            sum = 0;
            
            
        }
        
        
        
        
        
        
        
        
        //http://simd.jugem.jp/?eid=28 rad to degree
        
        //atan
        if ([istr containsString:@"-atan"])
        {
            
            //New
            istr = [istr stringByReplacingOccurrencesOfString:@"-atan" withString:@"atan"];
            
            istr = [self NUMBERFILTER:istr];
            
            atan_v = [istr doubleValue];
            
            
            
            atan_v = atanf(atan_v);
            
            
            
            atan_v = -atan_v;
            
            if(deg==0)
            {
                //conversion radian to degree
                
                atan_v=(atan_v*180)/M_PI;
            }
            
            
            TEMP_ARRAY[i] = [NSString stringWithFormat:@"%lf", atan_v];
            
            
            sum = 0;
            
            
        }
        else if([istr containsString:@"atan"])
        {
            
            NSLog(@"atan√");
            NSLog(@"%d",deg);
            
            istr = [self NUMBERFILTER:istr];
            
            
            atan_v = [istr doubleValue];
            
            
            
            atan_v = atanf(atan_v);
            
            
            NSLog(@"%lf",atan_v);
            
            if(deg==0)
            {
                //conversion radian to degree
                
                atan_v=(atan_v*180)/M_PI;
            }
            
            
            TEMP_ARRAY[i] = [NSString stringWithFormat:@"%lf", atan_v];
            
            
            sum = 0;
        }
        
        
        //tan
        if ([istr containsString:@"-tan"])
        {
            
            //New
            istr = [istr stringByReplacingOccurrencesOfString:@"-tan" withString:@"tan"];
            
            
            istr = [self NUMBERFILTER:istr];
            
            
            tan = [istr floatValue];
            
            if(deg==0)
            {
                //conversion degree to radian
                tan =(M_PI * tan)/180;
            }
            
            tan = tanf(tan);
            
            
            tan = -tan;
            
            //http://stackoverflow.com/questions/27648453/converting-double-to-nsdecimalnumber-while-maintaining-accuracy
            
            
            TEMP_ARRAY[i] = [NSString stringWithFormat:@"%f", tan];
            
            
            sum = 0;
            
            
            
        }
        else if([istr containsString:@"tan"])
        {
            
            
            istr = [self NUMBERFILTER:istr];
            
            tan = [istr floatValue];
            
            if(deg==0)
            {
                //conversion degree to radian
                tan =(M_PI * tan)/180;
                
            }
            tan = tanf(tan);
            
            
            
            //http://stackoverflow.com/questions/27648453/converting-double-to-nsdecimalnumber-while-maintaining-accuracy
            
            
            TEMP_ARRAY[i] = [NSString stringWithFormat:@"%f", tan];
            
            
            sum = 0;
            
            
            
        }
        
        
        
        
        
        
        //自然対数
        if ([istr containsString:@"-ln"])
        {
            
            istr = [istr stringByReplacingOccurrencesOfString:@"-ln" withString:@"ln"];
            istr = [self NUMBERFILTER:istr];
            //istr = [istr stringByReplacingOccurrencesOfString:@"--" withString:@"-"];
            
            
            
            loge = [istr floatValue];
            
            loge = log(loge);
            
            loge = -loge;
            
            
            TEMP_ARRAY[i] = [NSString stringWithFormat:@"%f", loge];
            
            
            sum = 0;
            
        }
        else if([istr containsString:@"ln"])
        {
            istr = [self NUMBERFILTER:istr];
            
            loge = [istr floatValue];
            
            loge = log(loge);
            
            
            
            
            TEMP_ARRAY[i] = [NSString stringWithFormat:@"%f", loge];
            
            sum = 0;
            
            
        }
        
        //常用対数
        if ([istr containsString:@"-log"])
        {
            
            istr = [istr stringByReplacingOccurrencesOfString:@"-log" withString:@"log"];
            istr = [self NUMBERFILTER:istr];
            //istr = [istr stringByReplacingOccurrencesOfString:@"--" withString:@"-"];
            
            
            
            logt = [istr floatValue];
            
            logt = log10(logt);
            
            logt = -logt;
            
            NSLog(@"logt");
            NSLog(@"%f",logt);
            
            TEMP_ARRAY[i] = [NSString stringWithFormat:@"%f", logt];
            
            sum = 0;
            
        }
        else if([istr containsString:@"log"])
        {
            istr = [self NUMBERFILTER:istr];
            
            logt = [istr floatValue];
            
            logt = log10(logt);
            
            NSLog(@"logt");
            NSLog(@"%f",logt);
            
            
            TEMP_ARRAY[i] = [NSString stringWithFormat:@"%f", logt];
            
            sum = 0;
            
            
            
            
            
        }
        
        
        
        if([istr containsString:@"√"]||[istr containsString:@"sqrt"])
        {
            
            
            istr = [self NUMBERFILTER:istr];
            
            sq = [istr floatValue];
            
            sq = powf(sq, 0.5);
            
            
            TEMP_ARRAY[i] = [NSString stringWithFormat:@"%f", sq];
            
            
            sum=0;
            
        }
    }
    
    //   Console.WriteLine("A_OPS FINISHED");
    
    return TEMP_ARRAY;
    
    
}


//
-(NSString *) BASIC_OPS:(NSMutableArray *)TEMP_ARRAY
{
    sum = 0;
    
    //[TEMP_ARRAY removeObject"NULL"];
    NSString *strToRemoveNULL = @"NULL";
    
    //[TEMP_ARRAY removeObject"NULL"];
    NSString *strToRemoveBLANK = @"";
    
    //
    float temp_bw_pf=0;
    float temp_fw_pf=0;
    float sum_pf=0;
    
    //POWER
    //演算子だからね。配列の最後はありえない。だから-1
    for (int i = 0; i < [TEMP_ARRAY count] - 1; i++)
    {
        
        //^operator... 2^-102 , 2 ^3
        //2,^,-102 -1 ^ 2
        
        //^
        if ([TEMP_ARRAY[i] isEqualToString:@"^"])
        {
            
            
            sum = 0;
            
            temp_bw_pf = [TEMP_ARRAY[i-1] floatValue];
            temp_fw_pf = [TEMP_ARRAY[i+1] floatValue];
            
            
            //temp_bw = [NSDecimalNumber decimalNumberWithString:TEMP_ARRAY[i - 1]];
            
            //temp_fw = [NSDecimalNumber decimalNumberWithString:TEMP_ARRAY[i + 1]];
            /*
             Console.WriteLine(temp_bw);
             Console.WriteLine(temp_fw);
             */
            
            //check = [temp_bw decimalNumberByRaisingToPower:(int)temp_fw];
            
            /*
             // Get the number of decimal digits in the double
             int digits = [self countDigits:check];
             
             // Round based on the number of decimal digits in the double
             NSDecimalNumberHandler *behavior = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundDown scale:digits raiseOnExactness:NO raiseOnOverflow:NO raiseOnUnderflow:NO raiseOnDivideByZero:NO];
             NSDecimalNumber *calcDN = (NSDecimalNumber *)[NSDecimalNumber numberWithDouble:check];
             calcDN = [calcDN decimalNumberByRoundingAccordingToBehavior:behavior];
             
             
             sum =  calcDN;
             */
            
            //sum = check;
            
            sum_pf = powf(temp_bw_pf, temp_fw_pf);
            
            
            TEMP_ARRAY[i+1] = [NSString stringWithFormat:@"%f", sum_pf];
            
            
            TEMP_ARRAY[i] = TEMP_ARRAY[i - 1] = @"NULL";
            
            check = 0;
            sum = 0;
            
            //Console.WriteLine(sum);
            
            
            
        }
        
        
    }
    
    //[TEMP_ARRAY removeObject"NULL"];
    
    //[TEMP_ARRAY removeObject"NULL"];
    
    [TEMP_ARRAY removeObject:strToRemoveNULL];
    [TEMP_ARRAY removeObject:strToRemoveBLANK];
    
    
    //MULTIPLE
    for (int i = 0; i < [TEMP_ARRAY count] - 1; i++)
    {
        
        
        
        //STAR
        if ([TEMP_ARRAY[i] isEqualToString:@"×"])
        {
            
            sum = 0;
            temp_bw = temp_fw = 0;
            
            temp_bw = [NSDecimalNumber decimalNumberWithString:TEMP_ARRAY[i - 1]];
            temp_fw = [NSDecimalNumber decimalNumberWithString:TEMP_ARRAY[i + 1]];
            
            check = [temp_fw decimalNumberByMultiplyingBy:temp_bw];
            
            sum =  check;
            
            TEMP_ARRAY[i+1] = [sum stringValue];
            
            
            TEMP_ARRAY[i] = TEMP_ARRAY[i - 1] = @"NULL";
            
            check = 0;
            sum = 0;
            
            
            
        }
        
        //SLASH
        if ([TEMP_ARRAY[i] isEqualToString:@"÷"])
        {
            
            
            sum = 0;
            temp_bw = temp_fw = 0;
            temp_bw = [NSDecimalNumber decimalNumberWithString:TEMP_ARRAY[i - 1]];
            temp_fw = [NSDecimalNumber decimalNumberWithString:TEMP_ARRAY[i + 1]];
            
            check = [temp_bw decimalNumberByDividingBy: temp_fw];
            
            sum =  check;
            
            TEMP_ARRAY[i+1] = [sum stringValue];
            
            
            TEMP_ARRAY[i] = TEMP_ARRAY[i - 1] = @"NULL";
            
            check = 0;
            sum = 0;
            
            
        }
        
        
        
        
    }
    
    
    
    
    //[TEMP_ARRAY removeObject"NULL"];
    
    //[TEMP_ARRAY removeObject"NULL"];
    
    [TEMP_ARRAY removeObject:strToRemoveNULL];
    [TEMP_ARRAY removeObject:strToRemoveBLANK];
    
    
    
    //ADDITION
    for (int i = 0; i < [TEMP_ARRAY count] - 1; i++)
    {
        
        
        sum = 0;
        temp_fw = temp_now = check = 0;
        
        temp_now= [NSDecimalNumber decimalNumberWithString:TEMP_ARRAY[i]];
        temp_fw = [NSDecimalNumber decimalNumberWithString:TEMP_ARRAY[i + 1]];
        
        
        check = [temp_now decimalNumberByAdding: temp_fw];
        
        NSLog(@"check");
        NSLog(@"%@",check);
        
        NSLog(@"temp_now");
        NSLog(@"%@",temp_now);
        
        NSLog(@"temp_fw");
        NSLog(@"%@",temp_fw);
        
        
        
        
        
        TEMP_ARRAY[i+1] = [check stringValue];
        
        
        TEMP_ARRAY[i] = @"NULL";
        
        check = temp_now = temp_fw = temp_bw = 0;
        //sum = 0;
        
        
        
    }
    
    //EditingArray
    //[TEMP_ARRAY removeObject"NULL"];
    
    //[TEMP_ARRAY removeObject"NULL"];
    
    [TEMP_ARRAY removeObject:strToRemoveNULL];
    [TEMP_ARRAY removeObject:strToRemoveBLANK];
    
    
    
    
    NSLog(@"TEMP_ARRAY_LAST");
    NSLog(@"%@",TEMP_ARRAY.lastObject);
    
    //http://stackoverflow.com/questions/7175256/how-to-get-the-last-object-of-an-nsarray
    return [TEMP_ARRAY lastObject];
}


//Filtering method
-(NSString *)SPACE_FILTER:(NSString *)SB
{
    
    
    
    SB = [[SB componentsSeparatedByCharactersInSet:[[NSCharacterSet characterSetWithCharactersInString:@"/*()[]{}+-÷×.0123456789=sincotalge^ABCPIXYZ\\√qr@"]invertedSet]]componentsJoinedByString:@""];
    
    //NSString *specialCharacterString = @"!~`@#$%^&*-+();:={}[],.<>?\\/\"\'";
    //http://stackoverflow.com/questions/2297102/check-nsstring-for-special-characters
    
    
    
    return SB;
}

//Setting Space method
-(NSString *)SetSpaceOp:(NSString *)str
{
    //
    str = [str stringByReplacingOccurrencesOfString:@"--" withString:@"+"];
    str = [str stringByReplacingOccurrencesOfString:@"^" withString:@" ^ "];
    str = [str stringByReplacingOccurrencesOfString:@"+" withString:@" "];
    str = [str stringByReplacingOccurrencesOfString:@"-" withString:@" -"];
    str = [str stringByReplacingOccurrencesOfString:@"*" withString:@"×"];
    str = [str stringByReplacingOccurrencesOfString:@"/" withString:@"÷"];
    
    str = [str stringByReplacingOccurrencesOfString:@"×" withString:@" × "];
    str = [str stringByReplacingOccurrencesOfString:@"÷" withString:@" ÷ "];
    //三角関数対策で必要
    str = [str stringByReplacingOccurrencesOfString:@"n -" withString:@"n-"];
    str = [str stringByReplacingOccurrencesOfString:@"s -" withString:@"s-"];
    
    
    return str;
}




//Setting Space(
-(NSString *)SetSpaceSB:(NSString *)str
{
    str = [str stringByReplacingOccurrencesOfString:@"(" withString:@" ("];
    str = [str stringByReplacingOccurrencesOfString:@")" withString:@") "];
    
    return str;
}



//Setting Space[
-(NSString *)SetSpaceMB:(NSString *)str
{
    //
    str = [str stringByReplacingOccurrencesOfString:@"[" withString:@" ["];
    str = [str stringByReplacingOccurrencesOfString:@"]" withString:@"] "];
    
    return str;
}



//Setting Space{
-(NSString *)SetSpaceLB:(NSString *)str
{
    //
    str = [str stringByReplacingOccurrencesOfString:@"{" withString:@" {"];
    str = [str stringByReplacingOccurrencesOfString:@"}" withString:@"} "];
    
    return str;
}



//Filtering method2
-(NSString *)BRACKET_FILTER:(NSString *)SB
{
    
    SB = [[SB componentsSeparatedByCharactersInSet:[[NSCharacterSet characterSetWithCharactersInString:@"/*+-÷×.0123456789sincotalge^ABCDPI√qr"]invertedSet]]componentsJoinedByString:@""];
    
    
    return SB;
}




-(NSString *)NUMBERFILTER:(NSString *)SB
{
    
    //SB = [[SB componentsSeparatedByCharactersInSet:[[NSCharacterSet characterSetWithCharactersInString:@"-.0123456789"]invertedSet]]componentsJoinedByString:@" "];
    SB = [[SB componentsSeparatedByCharactersInSet:[[NSCharacterSet characterSetWithCharactersInString:@"-.0123456789"]invertedSet]]componentsJoinedByString:@""];
    
    /*
     if ((c >= '0' && c <= '9') || c == '.' || c == '+' || c == '-' || c == '*' || c == '/' || c == '×' || c == '÷' || c == '^' || c == 'A' || c == 'B' || c == 'C' || c == 'D'
     || c == 'E' || c == 'F' || c == 'G' || c == 'H' || c == 'I' || c == 'J' || c == 'K' || c == 'L' || c == 'M' || c == 'N' || c == 'O' || c == 'P' || c == 'Q'
     || c == 'R' || c == 'S' || c == 'T' || c == 'U' || c == 'V' || c == 'W' || c == 'X' || c == 'Y' || c == 'Z' || c == 's' || c == 'i' || c == 'n' || c == 'c' || c == 'o' || c == 't' || c == 'a' || c == 'l' || c == 'g')
     
     */
    
    
    
    return SB;
}






// Demonstrates SetText, ContainsText, and GetText.
-(NSString *)PREPARATION:(NSString *)str
{
    //
    str = [str stringByReplacingOccurrencesOfString:@"０" withString:@"0"];
    str = [str stringByReplacingOccurrencesOfString:@"１" withString:@"1"];
    str = [str stringByReplacingOccurrencesOfString:@"２" withString:@"2"];
    str = [str stringByReplacingOccurrencesOfString:@"３" withString:@"3"];
    str = [str stringByReplacingOccurrencesOfString:@"４" withString:@"4"];
    str = [str stringByReplacingOccurrencesOfString:@"５" withString:@"5"];
    str = [str stringByReplacingOccurrencesOfString:@"６" withString:@"6"];
    str = [str stringByReplacingOccurrencesOfString:@"７" withString:@"7"];
    str = [str stringByReplacingOccurrencesOfString:@"８" withString:@"8"];
    str = [str stringByReplacingOccurrencesOfString:@"９" withString:@"9"];
    
    return str;
}



// Demonstrates SetText, ContainsText, and GetText.
/*
 -(NSString) CD_FILTERING(NSString ORIGINAL_CD)
 {
 
 NSString *PROCESSED_CD = ORIGINAL_CD.Replace("*", "×").Replace("/", "÷");
 
 return PROCESSED_CD;
 }
 */



//NSDecimal converter http://stackoverflow.com/questions/27648453/converting-double-to-nsdecimalnumber-while-maintaining-accuracy
- (int)countDigits:(double)num {
    int rv = 0;
    const double insignificantDigit = 5; // <-- since you want 18 significant digits
    double intpart, fracpart;
    fracpart = modf(num, &intpart); // <-- Breaks num into an integral and a fractional part.
    
    // While the fractional part is greater than 0.0000001f,
    // multiply it by 10 and count each iteration
    while ((fabs(fracpart) > 0.0000001f) && (rv < insignificantDigit)) {
        num *= 10;
        fracpart = modf(num, &intpart);
        rv++;
    }
    return rv;
    
}

-(NSString *)Str_Trimer:(NSString *)str
{
    NSString *lastChar = [str substringFromIndex:[str length] - 1];
    if (![lastChar  isEqual: @"\n"])
    {
        
        NSRange range1 = [str rangeOfString:@"\n" options:NSBackwardsSearch];//後ろから検索
        
        if (range1.location != NSNotFound)
        {
            str = [str substringFromIndex:range1.location];
            NSLog(@"Str_Trimer");
            NSLog(@"%@",str);
            
        }
        else
        {
            
        }
        
    }
    else
    {
        ClipedData=nil;
    }
    //
    //str = [str stringByReplacingOccurrencesOfString:@"[" withString:@" ["];
    //str = [str stringByReplacingOccurrencesOfString:@"]" withString:@"] "];
    
    return str;
}

-(NSString *)Str_substitute:(NSString *)str_sub
{
    
    
    
    NSString *temp2_sub=@"";
    str_sub = [str_sub stringByReplacingOccurrencesOfString:@"PI" withString:[NSString stringWithFormat:@"%f", M_PI]];
    
    //while (str_sub.Length >= 3)
    //10も回せば十分だよね？きっと。
    int count = 5;
    
    if(str_sub==nil||[str_sub isEqual:@""])
    {
        bl=true;
    }
    
    
    //http://dobon.net/vb/dotnet/beginner/exceptionhandling.html Thanks.
    
    while (count > 0 && bl == false)
    {
        
        //最初の場合分けだね
        if ([str_sub containsString:@"("])
        {
            //戻ってきた文字列ね
            str_sub = [self SetSpaceSB:(str_sub)];
            //1+-{ (1+a^b) /[ (1+-1*c^d) * (cosf/sing) ]}^h
            
            str_sub = [str_sub stringByAppendingString:@" "];
            
            //       Console.WriteLine("str_sub");
            //       Console.WriteLine(str_sub);
            
            
            //RAWARRAY
            //(1+a^b), (1+-1*c^d), (cosf/sing)
            NSArray *pre_str_sub_ARRAY =  [str_sub  componentsSeparatedByString:@" "];
            
            NSMutableArray *str_sub_ARRAY = [NSMutableArray arrayWithArray:pre_str_sub_ARRAY];
            
            //REMOVE""
            [str_sub_ARRAY removeObject:strToRemoveEMPTY0];
            [str_sub_ARRAY removeObject:strToRemoveSPACE0];
            
            //1+-{
            //(1+a^b)
            ///[
            //(1+-1*c^d)
            //*
            //(cosf/sing)
            //]}^h
            
            for (int i = 0; i < [str_sub_ARRAY count]; i++)
            {
                //いっぺんで全部の（）が外れる。
                if ([str_sub_ARRAY[i] containsString:@"("])
                {
                    
                    
                    temp2_sub = [self BRACKET_FILTER:str_sub_ARRAY[i]];
                    //1+-1*c^d
                    
                    //        Console.WriteLine("temp2_sub");
                    //         Console.WriteLine(temp2_sub);
                    
                    
                    //SETTINGSPACE
                    temp2_sub = [self SetSpaceOp:temp2_sub];
                    //1 + -1 * c ^ d
                    
                    temp2_sub = [temp2_sub stringByAppendingString:@" "];
                    //1 +  -1 * c ^ d
                    
                    
                    
                    //         Console.WriteLine("temp2_sub");
                    //         Console.WriteLine(temp2_sub);
                    
                    
                    //RAWARRAY
                    NSArray *pre_temp2_sub_ARRAY =  [temp2_sub  componentsSeparatedByString:@" "];
                    
                    NSMutableArray *temp2_sub_ARRAY = [NSMutableArray arrayWithArray:pre_temp2_sub_ARRAY];
                    
                    
                    temp2_sub = nil;
                    
                    //REMOVE""
                    [temp2_sub_ARRAY removeObject:strToRemoveEMPTY0];
                    [temp2_sub_ARRAY removeObject:strToRemoveSPACE0];
                    //1
                    //-1
                    //*
                    //c
                    //^
                    //d
                    
                    
                    
                    if ([temp2_sub_ARRAY count] != 0)
                    {
                        
                        //
                        NSArray *pre_str4_sub_ARRAY = [self A_OPS:temp2_sub_ARRAY];
                        
                        NSMutableArray *str4_sub_ARRAY = [NSMutableArray arrayWithArray:pre_str4_sub_ARRAY];
                        //         Console.WriteLine("str4_sub_ARRAY.Last");
                        //         Console.WriteLine(str4_sub_ARRAY.Last());
                        
                        //
                        temp2_sub = [self BASIC_OPS:str4_sub_ARRAY];
                        //B-op
                        
                        
                        str_sub_ARRAY[i] = temp2_sub;
                        //1-0.0625=0.9375
                        
                        temp2_sub = nil;
                        
                    }
                    
                }
                
            }
            
            
            
            // //1- { [1- X1 ] / [1+ X2 ^0.5] * X3 }
            //http://rakuishi.com/archives/5463/
            temp2_sub = [str_sub_ARRAY componentsJoinedByString:@" "];
            
            temp2_sub = [self SPACE_FILTER:temp2_sub];
            
            
            
            str_sub = temp2_sub;
            
            temp2_sub = nil;
            
            NSLog(@"str_sub(");
            NSLog(@"%@",str_sub);
            
            
            
            //次の場合分け[だよ
            
            if ([str_sub containsString:@"["])
            {
                //戻ってきた文字列ね
                str_sub = [self SetSpaceMB:str_sub];
                //[1- 9 ]/[1- 9 ]
                
                str_sub = [str_sub stringByAppendingString:@" "];
                
                //      Console.WriteLine("str_sub");
                //      Console.WriteLine(str_sub);
                
                
                //RAWARRAY
                NSArray *pre_str_sub_ARRAY =  [str_sub  componentsSeparatedByString:@" "];
                
                NSMutableArray *str_sub_ARRAY = [NSMutableArray arrayWithArray:pre_str_sub_ARRAY];
                
                //REMOVE""
                [str_sub_ARRAY removeObject:strToRemoveEMPTY0];
                [str_sub_ARRAY removeObject:strToRemoveSPACE0];
                
                
                
                
                for (int i = 0; i < [str_sub_ARRAY count]; i++)
                {
                    if ([str_sub_ARRAY[i] containsString:@"["])
                    {
                        
                        
                        temp2_sub = [self BRACKET_FILTER:str_sub_ARRAY[i]];
                        //1+-1*c^d
                        
                        //    Console.WriteLine("temp2_sub");
                        //   Console.WriteLine(temp2_sub);
                        
                        
                        //SETTINGSPACE
                        temp2_sub = [self SetSpaceOp:temp2_sub];
                        //1 + -1 * c ^ d
                        
                        temp2_sub = [temp2_sub stringByAppendingString:@" "];
                        
                        //1 +  -1 * c ^ d
                        
                        
                        
                        //     Console.WriteLine("temp2_sub");
                        //     Console.WriteLine(temp2_sub);
                        
                        
                        
                        
                        //RAWARRAY
                        NSArray *pre_temp2_sub_ARRAY =  [temp2_sub  componentsSeparatedByString:@" "];
                        
                        NSMutableArray *temp2_sub_ARRAY = [NSMutableArray arrayWithArray:pre_temp2_sub_ARRAY];
                        
                        
                        temp2_sub = nil;
                        
                        
                        //REMOVE""
                        [temp2_sub_ARRAY removeObject:strToRemoveEMPTY0];
                        [temp2_sub_ARRAY removeObject:strToRemoveSPACE0];
                        
                        
                        if ([temp2_sub_ARRAY count] != 0)
                        {
                            
                            //
                            NSArray *pre_str4_sub_ARRAY = [self A_OPS:temp2_sub_ARRAY];
                            
                            NSMutableArray *str4_sub_ARRAY = [NSMutableArray arrayWithArray:pre_str4_sub_ARRAY];
                            //        Console.WriteLine("str4_sub_ARRAY.Last");
                            //        Console.WriteLine(str4_sub_ARRAY.Last());
                            
                            //
                            temp2_sub = [self BASIC_OPS:str4_sub_ARRAY];
                            //B-op
                            
                            
                            str_sub_ARRAY[i] = temp2_sub;
                            //1-0.0625=0.9375
                            
                            temp2_sub = nil;
                            
                        }
                        
                    }
                    
                }
                
                // //1- { [1- X1 ] / [1+ X2 ^0.5] * X3 }
                
                
                //http://rakuishi.com/archives/5463/
                temp2_sub = [str_sub_ARRAY componentsJoinedByString:@" "];
                
                temp2_sub = [self SPACE_FILTER:temp2_sub];
                
                
                
                str_sub = temp2_sub;
                
                temp2_sub = nil;
                
                
                // Console.WriteLine("str_sub[");
                // Console.WriteLine(str_sub);
                
                
                //最後だよ
                if ([str_sub containsString:@"{"])
                {
                    
                    
                    
                    //戻ってきた文字列ね
                    str_sub = [self SetSpaceMB:str_sub];
                    //[1- 9 ]/[1- 9 ]
                    
                    str_sub = [str_sub stringByAppendingString:@" "];
                    
                    //      Console.WriteLine("str_sub");
                    //      Console.WriteLine(str_sub);
                    
                    
                    //RAWARRAY
                    NSArray *pre_str_sub_ARRAY =  [str_sub  componentsSeparatedByString:@" "];
                    
                    NSMutableArray *str_sub_ARRAY = [NSMutableArray arrayWithArray:pre_str_sub_ARRAY];
                    
                    //REMOVE""
                    [str_sub_ARRAY removeObject:strToRemoveEMPTY0];
                    [str_sub_ARRAY removeObject:strToRemoveSPACE0];
                    
                    
                    
                    for (int i = 0; i < [str_sub_ARRAY count]; i++)
                    {
                        if ([str_sub_ARRAY[i] containsString:@"{"])
                        {
                            
                            
                            temp2_sub = [self BRACKET_FILTER:str_sub_ARRAY[i]];
                            //1+-1*c^d
                            
                            //  Console.WriteLine("temp2_sub");
                            //  Console.WriteLine(temp2_sub);
                            
                            
                            //SETTINGSPACE
                            temp2_sub = [self SetSpaceOp:temp2_sub];
                            //1 + -1 * c ^ d
                            
                            temp2_sub = [temp2_sub stringByAppendingString:@" "];
                            
                            //1 +  -1 * c ^ d
                            
                            
                            
                            //  Console.WriteLine("temp2_sub");
                            //  Console.WriteLine(temp2_sub);
                            
                            
                            
                            //RAWARRAY
                            NSArray *pre_temp2_sub_ARRAY =  [temp2_sub  componentsSeparatedByString:@" "];
                            
                            NSMutableArray *temp2_sub_ARRAY = [NSMutableArray arrayWithArray:pre_temp2_sub_ARRAY];
                            
                            
                            temp2_sub = nil;
                            
                            
                            //REMOVE""
                            [temp2_sub_ARRAY removeObject:strToRemoveEMPTY0];
                            [temp2_sub_ARRAY removeObject:strToRemoveSPACE0];
                            
                            
                            
                            if ([temp2_sub_ARRAY count] != 0)
                            {
                                
                                //
                                //
                                NSArray *pre_str4_sub_ARRAY = [self A_OPS:temp2_sub_ARRAY];
                                
                                NSMutableArray *str4_sub_ARRAY = [NSMutableArray arrayWithArray:pre_str4_sub_ARRAY];
                                
                                //    Console.WriteLine("str4_sub_ARRAY.Last");
                                //    Console.WriteLine(str4_sub_ARRAY.Last());
                                
                                //
                                temp2_sub = [self BASIC_OPS:str4_sub_ARRAY];
                                //B-op
                                
                                
                                str_sub_ARRAY[i] = temp2_sub;
                                //1-0.0625=0.9375
                                
                                temp2_sub = nil;
                                
                            }
                            
                        }
                        
                    }
                    
                    // //1- { [1- X1 ] / [1+ X2 ^0.5] * X3 }
                    
                    temp2_sub = [str_sub_ARRAY componentsJoinedByString:@" "];
                    
                    temp2_sub = [self SPACE_FILTER:temp2_sub];
                    
                    
                    
                    str_sub = temp2_sub;
                    
                    temp2_sub = nil;
                    
                    
                    //    Console.WriteLine("str_sub");
                    //    Console.WriteLine(str_sub);
                }
            }
            
            count--;
            
        }
        else
        {
            str_sub = [self SetSpaceOp:str_sub];
            //1 -1 + 9 *  -3 / 3.3 + 0.369
            
            //最後に空白をつけてるだけ
            str_sub = [str_sub stringByAppendingString:@" "];
            
            NSLog(@"str_sub Last");
            NSLog(@"%@",str_sub);
            /*
             CHECK_STR = [self BRACKET_FILTER:str_sub];
             
             if ([CHECK_STR containsString:@"E-"])
             {
             check = [CHECK_STR doubleValue];
             
             if (check <= 1.000000000E-12)
             str_sub = @"0";
             bl = true;
             }
             */
            
            /*
             Console.WriteLine("str_subN");
             Console.WriteLine(str_sub);
             Console.WriteLine(CHECK_STR);
             */
            
            
            
            
            //RAWARRAY
            NSArray *pre_str_sub_ARRAY =  [str_sub  componentsSeparatedByString:@" "];
            
            NSMutableArray *str_sub_ARRAY = [NSMutableArray arrayWithArray:pre_str_sub_ARRAY];
            
            //REMOVE""
            [str_sub_ARRAY removeObject:strToRemoveEMPTY0];
            [str_sub_ARRAY removeObject:strToRemoveSPACE0];
            
            
            
            //
            NSArray *pre_str3_sub_ARRAY = [self A_OPS:str_sub_ARRAY];
            
            NSMutableArray *str3_sub_ARRAY = [NSMutableArray arrayWithArray:pre_str3_sub_ARRAY];
            //    Console.WriteLine("str_sub_ARRAY.Last");
            //    Console.WriteLine(str_sub_ARRAY.Last());
            
            //
            temp2_sub = [self BASIC_OPS:str3_sub_ARRAY];
            //B-op
            
            NSLog(@"temp2_sub");
            NSLog(@"%@",temp2_sub);
            // //1- { [1- X1 ] / [1+ X2 ^0.5] * X3 }
            
            
            str_sub = temp2_sub;
            
            temp2_sub = nil;
            
            //  Console.WriteLine("str_sub");
            //  Console.WriteLine(str_sub);
            
            count--;
        }
    }
    
    
    return str_sub;
    
    
}

- (void)playSystemSound
{
    //https://github.com/TUNER88/iOSSystemSoundsLibrary
    
    
     if(TAG_NUM ==0)
     {
     NSURL *fileURL = [NSURL URLWithString:@"/System/Library/Audio/UISounds/Modern/sms_alert_note.caf"];
     SystemSoundID soundID;
     AudioServicesCreateSystemSoundID((__bridge_retained CFURLRef)fileURL,&soundID);
     AudioServicesPlaySystemSound(soundID);
     //AudioServicesPlaySystemSound(1012);
     }
     else if(TAG_NUM ==1)
     {
     //NSURL *fileURL = [NSURL URLWithString:@"/System/Library/Audio/UISounds/Modern/sms_alert_keys.caf"];
         
     NSURL *fileURL = [NSURL URLWithString:@"/System/Library/Audio/UISounds/Modern/sms_alert_input.caf"];
     SystemSoundID soundID;
     AudioServicesCreateSystemSoundID((__bridge_retained CFURLRef)fileURL,&soundID);
     AudioServicesPlaySystemSound(soundID);
     //AudioServicesPlaySystemSound(1012);
     }
     else if(TAG_NUM ==2)
     {
    
     NSURL *fileURL = [NSURL URLWithString:@"/System/Library/Audio/UISounds/Modern/sms_alert_synth.caf"];
     SystemSoundID soundID;
     AudioServicesCreateSystemSoundID((__bridge_retained CFURLRef)fileURL,&soundID);
     AudioServicesPlaySystemSound(soundID);
     //AudioServicesPlaySystemSound(1012);
     }
     else if(TAG_NUM ==3)
     {
     
     NSURL *fileURL = [NSURL URLWithString:@"/System/Library/Audio/UISounds/ct-keytone2.caf"];
     SystemSoundID soundID;
     AudioServicesCreateSystemSoundID((__bridge_retained CFURLRef)fileURL,&soundID);
     AudioServicesPlaySystemSound(soundID);
     //AudioServicesPlaySystemSound(1012);
     }
     
     else if(TAG_NUM ==4)
     {
     
     NSURL *fileURL = [NSURL URLWithString:@"/System/Library/Audio/UISounds/Modern/sms_alert_complete.caf"];
     SystemSoundID soundID;
     AudioServicesCreateSystemSoundID((__bridge_retained CFURLRef)fileURL,&soundID);
     AudioServicesPlaySystemSound(soundID);
     //AudioServicesPlaySystemSound(1012);
     }
     
     
    
    
}

// Get text data from Pasteboard

-(NSString *) Pasting;
{
    
    UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
    
    // 文字列を取り出す。
    NSString * PAS_TEXT = [pasteboard valueForPasteboardType:@"public.text"];
    
    if (PAS_TEXT == nil)
    {
        PAS_TEXT =@"";
    }
    
    return PAS_TEXT;
}



-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    [TextArea resignFirstResponder];
    
    
    
}

- (void) insertString: (NSString *) insertingString intoTextView: (UITextView *)
textView
{
    [TextArea replaceRange:TextArea.selectedTextRange withText:insertingString];
}

@end
