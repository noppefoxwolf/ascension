#import <UIKit/UIKit.h>

@interface SBFluidSwitcherViewController : UIViewController{}
-(void)setAppKillingModeEnabled:(BOOL)arg1 animated:(BOOL)arg2;
-(void)_updateVisibleItems;
-(void)_handleDismissTapGesture:(UITapGestureRecognizer* )arg1;
@end

@interface SBSwitcherCardCloseBox: UIButton {}
-(BOOL)isHidden;
-(void)setHidden:(BOOL)arg1;
@end

%hook SBFluidSwitcherViewController

-(void)_updateVisibleItems {
	%orig;
	[self setAppKillingModeEnabled: YES animated: YES];
}

-(void)_handleDismissTapGesture:(UITapGestureRecognizer* )arg1 {
	[self setAppKillingModeEnabled: NO animated: NO];
	%orig(arg1);
}
%end

%hook SBSwitcherCardCloseBox 
-(BOOL)isHidden {
	return YES;
}
-(void)setHidden:(BOOL)arg1 {
	%orig(YES);
}
%end