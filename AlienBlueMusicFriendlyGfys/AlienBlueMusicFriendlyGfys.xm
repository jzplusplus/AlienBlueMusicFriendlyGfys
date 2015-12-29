
// Logos by Dustin Howett
// See http://iphonedevwiki.net/index.php/Logos

#import <AVFoundation/AVAudioSession.h>

%hook JMOptimalBrowserController

- (bool)contentDisplaysOptimalByDefault
{
    bool shouldBeOptimal = %orig;
    
//    NSLog(@"*********************contentDisplaysOptimalByDefault");
//    NSLog(@"shouldBeOptimal %d", shouldBeOptimal);
//    NSLog(@"isOtherAudioPlaying %d", [[AVAudioSession sharedInstance] isOtherAudioPlaying]);
//    NSLog(@"contentTypeIdentifier %@", [[self optimizer] contentTypeIdentifier]);
    
    if(!shouldBeOptimal &&
       [[AVAudioSession sharedInstance] isOtherAudioPlaying] &&
       ([[[self optimizer] contentTypeIdentifier] isEqualToString:@"photo"] || [[[self optimizer] contentTypeIdentifier] isEqualToString:@"gif"])
       )
    {
        shouldBeOptimal = TRUE;
    }
    
    return shouldBeOptimal;
}

%end
