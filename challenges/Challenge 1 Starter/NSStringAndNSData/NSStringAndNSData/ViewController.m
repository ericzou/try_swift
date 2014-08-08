//
//  ViewController.m
//  NSStringAndNSData
//
//  Created by Brian Douglas Moakley on 5/22/14.
//  Copyright (c) 2014 Razeware LLC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UINavigationControllerDelegate, UIImagePickerControllerDelegate, UITextViewDelegate>

@property (weak, nonatomic) IBOutlet UIImageView * imageView;
@property (weak, nonatomic) IBOutlet UITextView * textView;
@property (weak, nonatomic) IBOutlet UISegmentedControl * segmentedControl;

@end

@implementation ViewController

- (IBAction)importImage:(id)sender
{
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeSavedPhotosAlbum] == YES)
    {
        UIImagePickerController * mediaUI = [[UIImagePickerController alloc] init];
        
        mediaUI.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
        mediaUI.mediaTypes = [UIImagePickerController availableMediaTypesForSourceType:UIImagePickerControllerSourceTypeSavedPhotosAlbum];
        mediaUI.allowsEditing = NO;
        mediaUI.delegate = self;
        [self presentViewController:mediaUI animated:YES completion:nil];
    }
}

- (void) imagePickerController: (UIImagePickerController *) picker didFinishPickingMediaWithInfo: (NSDictionary *) info
{
    __weak ViewController * weakSelf = self;
    [picker dismissViewControllerAnimated:YES completion:^{
        weakSelf.imageView.image = [info objectForKey:UIImagePickerControllerOriginalImage];
    }];
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    if ([text isEqualToString:@"\n"])
    {
        [textView resignFirstResponder];
        return NO;
    }
    return YES;
}

-(IBAction)saveToDisk
{
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.textView.delegate = self;
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
