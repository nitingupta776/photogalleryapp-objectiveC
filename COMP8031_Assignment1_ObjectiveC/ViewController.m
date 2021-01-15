//
//  ViewController.m
//  COMP8031_Assignment1_ObjectiveC
//
//  Created by Bhavuk Gupta on 2021-01-10.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

int imageInt = 0;

-(void) imageGallery {
    if(imageInt == 1){
        UIImage *img = [UIImage imageNamed: @"beach.jpg"];
        [imageview setImage:img];
    }else if(imageInt == 2){
        UIImage *img = [UIImage imageNamed: @"bridge.jpg"];
        [imageview setImage:img];
    }else if(imageInt == 3){
        UIImage *img = [UIImage imageNamed: @"flower.jpg"];
        [imageview setImage:img];
    }else if(imageInt == 4){
        UIImage *img = [UIImage imageNamed: @"mountain.jpg"];
        [imageview setImage:img];
    }else{
        
    }
}

-(IBAction) previousButton{
    imageInt -= 1;
    [self imageGallery];
}

-(IBAction) nextButton{
    imageInt += 1;
    [self imageGallery];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(doSingleTap:)];
    singleTap.numberOfTapsRequired = 1;
    [self.view addGestureRecognizer:singleTap];

    UITapGestureRecognizer *doubleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(doDoubleTap:)];
    doubleTap.numberOfTapsRequired = 2;
    [self.view addGestureRecognizer:doubleTap];

    [singleTap requireGestureRecognizerToFail:doubleTap];

}

-(void) doSingleTap: (UIGestureRecognizer *)singleTap {
    [self nextButton];
}

-(void) doDoubleTap: (UIGestureRecognizer *)doubleTap {
    [self previousButton];
}


@end
