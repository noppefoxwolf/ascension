#import <UIKit/UIKit.h>

@interface SBFluidSwitcherViewController : UIViewController{}
-(void)setAppKillingModeEnabled:(BOOL)arg1 animated:(BOOL)arg2;
-(void)_updateVisibleItems;
@end

%hook SBFluidSwitcherViewController

-(void)_updateVisibleItems {
	%orig;
	[self setAppKillingModeEnabled: YES animated: YES];
}

%end