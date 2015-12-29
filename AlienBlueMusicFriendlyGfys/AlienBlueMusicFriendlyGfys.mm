#line 1 "/Users/jzplusplus/Documents/jailbreak/AlienBlueMusicFriendlyGfys/AlienBlueMusicFriendlyGfys/AlienBlueMusicFriendlyGfys.xm"




#import <AVFoundation/AVAudioSession.h>

#include <logos/logos.h>
#include <substrate.h>
@class JMOptimalBrowserController; 
static bool (*_logos_orig$_ungrouped$JMOptimalBrowserController$contentDisplaysOptimalByDefault)(JMOptimalBrowserController*, SEL); static bool _logos_method$_ungrouped$JMOptimalBrowserController$contentDisplaysOptimalByDefault(JMOptimalBrowserController*, SEL); 

#line 7 "/Users/jzplusplus/Documents/jailbreak/AlienBlueMusicFriendlyGfys/AlienBlueMusicFriendlyGfys/AlienBlueMusicFriendlyGfys.xm"



static bool _logos_method$_ungrouped$JMOptimalBrowserController$contentDisplaysOptimalByDefault(JMOptimalBrowserController* self, SEL _cmd) {
    bool shouldBeOptimal = _logos_orig$_ungrouped$JMOptimalBrowserController$contentDisplaysOptimalByDefault(self, _cmd);
    




    
    if(!shouldBeOptimal &&
       [[AVAudioSession sharedInstance] isOtherAudioPlaying] &&
       ([[[self optimizer] contentTypeIdentifier] isEqualToString:@"photo"] || [[[self optimizer] contentTypeIdentifier] isEqualToString:@"gif"])
       )
    {
        shouldBeOptimal = TRUE;
    }
    
    return shouldBeOptimal;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$JMOptimalBrowserController = objc_getClass("JMOptimalBrowserController"); MSHookMessageEx(_logos_class$_ungrouped$JMOptimalBrowserController, @selector(contentDisplaysOptimalByDefault), (IMP)&_logos_method$_ungrouped$JMOptimalBrowserController$contentDisplaysOptimalByDefault, (IMP*)&_logos_orig$_ungrouped$JMOptimalBrowserController$contentDisplaysOptimalByDefault);} }
#line 30 "/Users/jzplusplus/Documents/jailbreak/AlienBlueMusicFriendlyGfys/AlienBlueMusicFriendlyGfys/AlienBlueMusicFriendlyGfys.xm"
