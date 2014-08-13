.class public Lcom/android/internal/policy/impl/PhoneWindowManager;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$LgeInputEventMonitor;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;
    }
.end annotation


# static fields
.field private static final ACTION_EXCESS_SPC_FAIL_EVENT:Ljava/lang/String; = "com.lge.intent.action.EXCESS_SPC_FAIL_EVENT"

.field public static final ACTION_QUICK_BUTTON_SETTING:Ljava/lang/String; = "com.lge.phone.action.QUICK_BUTTON_SETTING"

.field private static final ACTION_SLIDE_ASIDE_HOME_PRESSED:Ljava/lang/String; = "com.lge.slideaside.HOME_PRESSED"

.field private static final ACTION_TOGGLE_QUICKCLIP:Ljava/lang/String; = "com.lge.QuickClip.action.TOGGLE_QUICKCLIP"

.field static final APPLICATION_MEDIA_OVERLAY_SUBLAYER:I = -0x1

.field static final APPLICATION_MEDIA_SUBLAYER:I = -0x2

.field static final APPLICATION_PANEL_SUBLAYER:I = 0x1

.field static final APPLICATION_SUB_PANEL_SUBLAYER:I = 0x2

.field private static final BIT_HEADSET:I = 0x1

.field private static final BIT_HEADSET_NO_MIC:I = 0x2

.field private static final BUILD_TYPE_ENG:Ljava/lang/String; = "eng"

.field private static final BUILD_TYPE_USERDEBUG:Ljava/lang/String; = "userdebug"

.field static final DEBUG:Z = false

.field static final DEBUG_EASY_ACCESS:Z = true

.field static final DEBUG_INPUT:Z = true

.field static final DEBUG_LAYOUT:Z = false

.field static final DEBUG_STARTING_WINDOW:Z = false

.field private static final DEVICE_NAME:Ljava/lang/String; = null

.field private static final DISMISS_KEYGUARD_CONTINUE:I = 0x2

.field private static final DISMISS_KEYGUARD_NONE:I = 0x0

.field private static final DISMISS_KEYGUARD_START:I = 0x1

.field private static final EASY_ACCESS_DEBOUNCE_DELAY_MILLIS:J = 0x384L

.field private static final EASY_ACCESS_INITIATE_INTERVAL_MILLIS:J = 0x12cL

.field static final ENABLE_CAR_DOCK_HOME_CAPTURE:Z = true

.field static final ENABLE_DESK_DOCK_HOME_CAPTURE:Z = false

.field public static final EXTRA_QUICK_BUTTON_SETTING_VALUE:Ljava/lang/String; = "com.lge.phone.extra.QUICK_BUTTON_SETTING_VALUE"

.field private static final INTENT_TOUCH_PALM_SWIPE_DOWN:Ljava/lang/String; = "com.lge.android.intent.action.TOUCH_PALM_SWIPE_DOWN"

.field private static final INTENT_TOUCH_PALM_SWIPE_UP:Ljava/lang/String; = "com.lge.android.intent.action.TOUCH_PALM_SWIPE_UP"

.field private static final KEYGUARD_SCREENSHOT_CHORD_DELAY_MULTIPLIER:F = 2.5f

.field static final LONG_PRESS_HOME_NOTHING:I = 0x0

.field static final LONG_PRESS_HOME_RECENT_DIALOG:I = 0x1

.field static final LONG_PRESS_HOME_RECENT_SYSTEM_UI:I = 0x2

.field static final LONG_PRESS_POWER_GLOBAL_ACTIONS:I = 0x1

.field static final LONG_PRESS_POWER_NOTHING:I = 0x0

.field static final LONG_PRESS_POWER_SHUT_OFF:I = 0x2

.field static final LONG_PRESS_POWER_SHUT_OFF_NO_CONFIRM:I = 0x3

.field private static final MSG_DISABLE_HIDE_DISPLAY:I = 0x66

.field private static final MSG_DISABLE_POINTER_LOCATION:I = 0x2

.field private static final MSG_DISABLE_SLIDE_ASIDE:I = 0x6a

.field private static final MSG_DISABLE_TAKE_SCREENSHOT:I = 0x68

.field private static final MSG_DISPATCH_MEDIA_KEY_REPEAT_WITH_WAKE_LOCK:I = 0x4

.field private static final MSG_DISPATCH_MEDIA_KEY_WITH_WAKE_LOCK:I = 0x3

.field private static final MSG_ENABLE_HIDE_DISPLAY:I = 0x65

.field private static final MSG_ENABLE_POINTER_LOCATION:I = 0x1

.field private static final MSG_ENABLE_SLIDE_ASIDE:I = 0x69

.field private static final MSG_ENABLE_TAKE_SCREENSHOT:I = 0x67

.field private static final MSG_FUSING_STATE:I = 0xc9

.field private static final MVP_REPOST_TIME:I = 0x64

.field private static final MVP_SYS_CLOSING_TIMEOUT:I = 0x258

#the value of this static final field might be set in the static constructor
.field static final NOTUSER_DEBUG:Z = false

.field private static final POLICE_112APP_CHORD_DEBOUNCE_DELAY_MILLIS:I = 0x3e8

.field private static final POLICE_112APP_RUN_DELAY_MILLIS:I = 0xbb8

.field static final PRINT_ANIM:Z = false

.field private static final QFUSING_DEVICE_NODE_PATH:Ljava/lang/String; = "/sys/devices/platform/lge-msm8974-qfprom/qfusing"

.field private static final QUICKCLIP_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x96L

.field static final RECENT_APPS_BEHAVIOR_DISMISS:I = 0x2

.field static final RECENT_APPS_BEHAVIOR_DISMISS_AND_SWITCH:I = 0x3

.field static final RECENT_APPS_BEHAVIOR_EXIT_TOUCH_MODE_AND_SHOW:I = 0x1

.field static final RECENT_APPS_BEHAVIOR_SHOW_OR_DISMISS:I = 0x0

.field private static final SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x96L

.field static final SHOW_PROCESSES_ON_ALT_MENU:Z = false

.field static final SHOW_STARTING_ANIMATIONS:Z = true

.field static SPC_ERR_FREEZE:Z = false

.field private static final SUPPORTED_HEADSETS:I = 0x3

#the value of this static final field might be set in the static constructor
.field private static final SUPPORT_TRANSPARENT_NAVIGATION:Z = false

.field private static final SW_HEADPHONE_INSERT:I = 0x2

.field private static final SW_HEADPHONE_INSERT_BIT:I = 0x4

.field private static final SW_HEADSET_INSERT:I = 0x6

.field private static final SW_JACK_BITS:I = 0x94

.field private static final SW_JACK_PHYSICAL_INSERT:I = 0x7

.field private static final SW_JACK_PHYSICAL_INSERT_BIT:I = 0x80

.field private static final SW_MICROPHONE_INSERT:I = 0x4

.field private static final SW_MICROPHONE_INSERT_BIT:I = 0x10

.field public static final SYSTEM_DIALOG_REASON_ASSIST:Ljava/lang/String; = "assist"

.field public static final SYSTEM_DIALOG_REASON_GLOBAL_ACTIONS:Ljava/lang/String; = "globalactions"

.field public static final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String; = "homekey"

.field public static final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String; = "reason"

.field public static final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String; = "recentapps"

.field static final SYSTEM_UI_CHANGING_LAYOUT:I = 0xe

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final TOUCH_PALM_COVER:Ljava/lang/String; = "com.lge.android.intent.action.TOUCH_PALM_COVER"

.field private static final TOUCH_PALM_SWIPE_DOWN:Ljava/lang/String; = "com.lge.android.intent.action.TOUCH_PALM_SWIPE_DOWN"

.field private static final TOUCH_PALM_SWIPE_UP:Ljava/lang/String; = "com.lge.android.intent.action.TOUCH_PALM_SWIPE_UP"

.field private static final VOLUME_KEY_LONG_PRESS_DELAY_MILLIS:J = 0x3e8L

.field private static final VOL_LONG_CANCEL_BY_112APP:I = 0x6

.field private static final VOL_LONG_CANCEL_BY_INCALL:I = 0x4

.field private static final VOL_LONG_CANCEL_BY_KEYUP:I = 0x1

.field private static final VOL_LONG_CANCEL_BY_MUSIC:I = 0x2

.field private static final VOL_LONG_CANCEL_BY_RINGING:I = 0x3

.field private static final VOL_LONG_CANCEL_BY_SCREENSHOT:I = 0x5

.field private static final VOL_LONG_NO_CANCEL:I

.field private static final WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

.field static final isOverlapPolicy:Z

.field static final localLOGV:Z

.field private static mHeadsetJackState:I

.field static final mTmpContentFrame:Landroid/graphics/Rect;

.field static final mTmpDisplayFrame:Landroid/graphics/Rect;

.field static final mTmpNavigationFrame:Landroid/graphics/Rect;

.field static final mTmpParentFrame:Landroid/graphics/Rect;

.field static final mTmpVisibleFrame:Landroid/graphics/Rect;

.field static sApplicationLaunchKeyCategories:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private CAPP_TILT:Z

.field private CAPP_TOUCH_PALM_COVER:Z

.field private CAPP_TOUCH_PALM_SWIPE:Z

.field private CAPP_TOUCH_SLIDEASIDE:Z

.field INSECURE_CAMERA_INTENT:Landroid/content/Intent;

.field SECURE_CAMERA_INTENT:Landroid/content/Intent;

.field private isReversed:Z

.field isSplitWindowLoaded:Z

.field m112AppAvailable:Z

.field private final m112AppChordLongPress:Ljava/lang/Runnable;

.field m112AppReceiver:Landroid/content/BroadcastReceiver;

.field private m112AppStartedByReservedKey:Z

.field private mAATIsRunning:Z

.field mAboveStatusBarFullScreenWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mAccelerometerDefault:Z

.field mAllowAllRotations:I

.field mAllowLockscreenWhenOn:Z

.field final mAllowSystemUiDelay:Ljava/lang/Runnable;

.field mAssistKeyLongPressed:Z

.field mAutocallReceiver:Landroid/content/BroadcastReceiver;

.field mAutocallTest:Z

.field mBlockingLcdoff:Z

.field mBootMsgDialog:Landroid/app/ProgressDialog;

.field mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mBuildType:Ljava/lang/String;

.field private mCameraCoverOpened:Z

.field mCanHideNavigationBar:Z

.field private final mCancel_112AppChordLongPress:Ljava/lang/Runnable;

.field mCarDockEnablesAccelerometer:Z

.field mCarDockIntent:Landroid/content/Intent;

.field mCarDockRotation:I

.field mConsumeSearchKeyUp:Z

.field mContentBottom:I

.field private mContentFrameChanged:Z

.field mContentLeft:I

.field mContentRight:I

.field mContentTop:I

.field mContext:Landroid/content/Context;

.field mCurBottom:I

.field private mCurHeadsetState:I

.field mCurLeft:I

.field mCurRight:I

.field mCurTop:I

.field mCurrentAppOrientation:I

.field private mCurrentDisplayRotation:I

.field mDeskDockEnablesAccelerometer:Z

.field mDeskDockIntent:Landroid/content/Intent;

.field mDeskDockRotation:I

.field mDismissKeyguard:I

.field mDisplay:Landroid/view/Display;

.field mDockBottom:I

.field mDockLayer:I

.field mDockLeft:I

.field mDockMode:I

.field mDockReceiver:Landroid/content/BroadcastReceiver;

.field mDockRight:I

.field mDockTop:I

.field mDreamReceiver:Landroid/content/BroadcastReceiver;

.field mDreamingLockscreen:Z

.field private mEasyAccessEnabled:Z

.field private final mEasyAccessEntry:Ljava/lang/Runnable;

.field mEnableShiftMenuBugReports:Z

.field mEndcallBehavior:I

.field private final mFallbackActions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/KeyCharacterMap$FallbackAction;",
            ">;"
        }
    .end annotation
.end field

.field mFocusedApp:Landroid/view/IApplicationToken;

.field mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mForceClearedSystemUiFlags:I

.field mForceStatusBar:Z

.field mForceStatusBarFromKeyguard:Z

.field mForcingShowNavBar:Z

.field mForcingShowNavBarLayer:I

.field private mFusingState:Ljava/lang/String;

.field mGlobalActionReceiver:Landroid/content/BroadcastReceiver;

.field mGlobalActions:Lcom/android/internal/policy/impl/MiuiGlobalActions;

.field mGlobalActions2:Lcom/android/internal/policy/impl/GlobalActions;

.field mGoHomeDialog:Landroid/app/AlertDialog;

.field mGoHomeDialog2:Landroid/app/AlertDialog;

.field private mHDMIObserver:Landroid/os/UEventObserver;

.field mHWKeyControlMode:Z

.field mHandler:Landroid/os/Handler;

.field mHasNavigationBar:Z

.field mHasSoftInput:Z

.field mHasSystemNavBar:Z

.field mHaveBuiltInKeyboard:Z

.field mHavePendingMediaKeyRepeatWithWakeLock:Z

.field mHdmiPlugged:Z

.field mHdmiRotation:I

.field mHdmiRotationLock:Z

.field mHeadless:Z

.field private mHeadsetIntent:Z

.field private final mHeadsetLock:Ljava/lang/Object;

.field private mHeadsetName:Ljava/lang/String;

.field private mHideDisplayMode:I

.field mHideLockScreen:Z

.field mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

.field final mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

.field mHomeIntent:Landroid/content/Intent;

.field private mHomeKeyintent:Landroid/content/Intent;

.field mHomeLongPressed:Z

.field mHomePressed:Z

.field private mHomeUpKeyConsumedByEasyAccess:Z

.field private mHomeUpKeyTime:[J

.field mHotKeyCustomizing:Z

.field mIMEInset:I

.field mIncallPowerBehavior:I

.field mInitialContentBottom:I

.field mInitialCurBottom:I

.field private final mIntentHandler:Landroid/os/Handler;

.field private mIsExpanded:Z

.field private mIsTargetTmoUs:Z

.field private mKeepHidingNavInputChannel:Landroid/view/InputChannel;

.field private mKeepHidingNavInputEventReceiver:Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver;

.field mKeyboardTapVibePattern:[J

.field mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

.field mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

.field mLandscapeRotation:I

.field mLanguageSwitchKeyPressed:Z

.field mLastFocusNeedsMenu:Z

.field mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mLastSystemUiFlags:I

.field final mLgeGestureLock:Ljava/lang/Object;

.field mLgeInputEventMonitor:Lcom/android/internal/policy/impl/PhoneWindowManager$LgeInputEventMonitor;

.field mLgeInputEventMonitorChannel:Landroid/view/InputChannel;

.field mLidControlsSleep:Z

.field mLidKeyboardAccessibility:I

.field mLidNavigationAccessibility:I

.field mLidOpenRotation:I

.field mLidState:I

.field final mLock:Ljava/lang/Object;

.field mLockScreenTimeout:I

.field mLockScreenTimerActive:Z

.field private mLockscreenDisplayHeight:I

.field private mLongPressOnHomeBehavior:I

.field mLongPressOnPowerBehavior:I

.field mLongPressVibePattern:[J

.field mMenuLongPress:Ljava/lang/Runnable;

.field mMenuLongPressing:Z

.field mMenulongEnabled:Z

.field mMenulongToSearch:Z

.field mMultiuserReceiver:Landroid/content/BroadcastReceiver;

.field mNaviReceiver:Landroid/content/BroadcastReceiver;

.field mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

.field mNavigationBarCanMove:Z

.field mNavigationBarHeightForRotation:[I

.field mNavigationBarOnBottom:Z

.field mNavigationBarWidthForRotation:[I

.field mNeedToChargeDialog:Landroid/app/AlertDialog;

.field private mOperator:Ljava/lang/String;

.field mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

.field mOrientationSensorEnabled:Z

.field mPalmGestureReceiver:Landroid/content/BroadcastReceiver;

.field mPendingPowerKeyUpCanceled:Z

.field mPointerLocationInputChannel:Landroid/view/InputChannel;

.field mPointerLocationInputEventReceiver:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;

.field mPointerLocationMode:I

.field mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

.field mPortraitRotation:I

.field private final mPower8SecLongPress:Ljava/lang/Runnable;

.field mPower8SecLongPressHandled:Z

.field volatile mPowerKeyHandled:Z

.field mPowerKeyIntent:Landroid/content/Intent;

.field mPowerKeyPress:Ljava/lang/Runnable;

.field mPowerKeyScreenOn:Z

.field private mPowerKeyTime:J

.field private mPowerKeyTriggered:Z

.field private mPowerLongPress:Ljava/lang/Runnable;

.field mPowerManager:Landroid/os/PowerManager;

.field private mPrevHeadsetState:I

.field private mProximityNear:Z

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorEnabled:Z

.field private final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field mQucikBTNAnswerSettingReceiver:Landroid/content/BroadcastReceiver;

.field private mQuickBTNAnswserMode:I

.field private final mQuickClipChordLongPress:Ljava/lang/Runnable;

.field mQuickClipHotKeyDisable:Z

.field mQuickClipLongPress:Ljava/lang/Runnable;

.field private mQuickclipPressed:Z

.field mRearSideKeyEnable:Z

.field mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

.field mRecentAppsDialogHeldModifiers:I

.field mResettingSystemUiFlags:I

.field mRestartAction:Lcom/android/internal/policy/impl/RestartAction;

.field mRestrictedScreenHeight:I

.field mRestrictedScreenLeft:I

.field mRestrictedScreenTop:I

.field mRestrictedScreenWidth:I

.field mSafeMode:Z

.field mSafeModeDisabledVibePattern:[J

.field mSafeModeEnabledVibePattern:[J

.field mSafetyCareIntent:Landroid/content/Intent;

.field mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

.field mScreenOnEarly:Z

.field mScreenOnFully:Z

.field private mScreenshotChordEnabled:Z

.field private final mScreenshotChordLongPress:Ljava/lang/Runnable;

.field mScreenshotConnection:Landroid/content/ServiceConnection;

.field final mScreenshotLock:Ljava/lang/Object;

.field final mScreenshotTimeout:Ljava/lang/Runnable;

.field mSearchKeyShortcutPending:Z

.field mSearchManager:Landroid/app/SearchManager;

.field mSeascapeRotation:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field final mServiceAquireLock:Ljava/lang/Object;

.field mSettingsObserver:Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;

.field mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

.field mShowingDream:Z

.field mShowingLockscreen:Z

.field private mSkipUdub:Z

.field private mSlideAsideMode:I

.field mSmartCoverReceiver:Landroid/content/BroadcastReceiver;

.field mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

.field mStableBottom:I

.field mStableFullscreenBottom:I

.field mStableFullscreenLeft:I

.field mStableFullscreenRight:I

.field mStableFullscreenTop:I

.field mStableLeft:I

.field mStableRight:I

.field mStableTop:I

.field mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

.field mStatusBarDisableToken:Landroid/os/IBinder;

.field mStatusBarHeight:I

.field mStatusBarLayer:I

.field mStatusBarReceiver:Landroid/content/BroadcastReceiver;

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mSwitchValues:I

.field mSystemBarType:I

.field mSystemBooted:Z

.field mSystemBottom:I

.field mSystemLeft:I

.field mSystemReady:Z

.field mSystemRight:I

.field mSystemTop:I

.field private mTakeScreenshotMode:I

.field mToastIsRinging:Ljava/lang/Runnable;

.field mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mTopIsFullscreen:Z

.field mTouchCrackMode:I

.field private mTouchCrackModeObserver:Landroid/os/UEventObserver;

.field mTouchCrackModeReceiver:Landroid/content/BroadcastReceiver;

.field private mTranslucentImeMode:Z

.field mTransparentSystemBar:Z

.field private mUDUBLongPressedStartTime:J

.field mUiMode:I

.field mUnrestrictedScreenHeight:I

.field mUnrestrictedScreenLeft:I

.field mUnrestrictedScreenTop:I

.field mUnrestrictedScreenWidth:I

.field mUpsideDownRotation:I

.field mUserRotation:I

.field mUserRotationMode:I

.field mVibrator:Landroid/os/Vibrator;

.field private mViewCoverClosed:Z

.field private mViewCoverEnabled:Z

.field private mViewCoverOpened:Z

.field mVirtualKeyVibePattern:[J

.field private mVolumeDownKeyConsumedByLongPress:Z

.field private mVolumeDownKeyConsumedByQuickClipChord:Z

.field private mVolumeDownKeyConsumedByScreenshotChord:Z

.field private mVolumeDownKeyTime:J

.field private mVolumeDownKeyTriggered:Z

.field private mVolumeDownLongKeyCancelReason:I

.field private final mVolumeDownLongPress:Ljava/lang/Runnable;

.field private mVolumeKeyLongPressEnabled:Z

.field private mVolumeLongKeyWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mVolumeUpKeyConsumedBy112App:Z

.field private mVolumeUpKeyConsumedByLongPress:Z

.field private mVolumeUpKeyConsumedByQuickClipChord:Z

.field private mVolumeUpKeyTime:J

.field private mVolumeUpKeyTriggered:Z

.field private mVolumeUpLongKeyCancelReason:I

.field private final mVolumeUpLongPress:Ljava/lang/Runnable;

.field mVolumeVibrator:Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;

.field private mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

.field mWindowManager:Landroid/view/IWindowManager;

.field mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

.field nExptToast:Landroid/widget/Toast;

.field sShortKeyClass:Ljava/lang/String;

.field sShortKeyPkg:Ljava/lang/String;

.field private sizeOffset:I

.field spcErrReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 244
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "user"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->NOTUSER_DEBUG:Z

    .line 312
    sput v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadsetJackState:I

    .line 323
    const-string v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEVICE_NAME:Ljava/lang/String;

    .line 325
    const-string v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "zee"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->SUPPORT_TRANSPARENT_NAVIGATION:Z

    .line 355
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    .line 356
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v2, 0x40

    const-string v3, "android.intent.category.APP_BROWSER"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 358
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v2, 0x41

    const-string v3, "android.intent.category.APP_EMAIL"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 360
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v2, 0xcf

    const-string v3, "android.intent.category.APP_CONTACTS"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 362
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v2, 0xd0

    const-string v3, "android.intent.category.APP_CALENDAR"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 364
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v2, 0xd1

    const-string v3, "android.intent.category.APP_MUSIC"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 366
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v2, 0xd2

    const-string v3, "android.intent.category.APP_CALCULATOR"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 726
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 727
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 728
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .line 729
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 730
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    .line 3305
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    .line 8833
    sput-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->SPC_ERR_FREEZE:Z

    return-void

    :cond_0
    move v0, v1

    .line 244
    goto/16 :goto_0

    .line 3305
    :array_0
    .array-data 0x4
        0xd3t 0x7t 0x0t 0x0t
        0xdat 0x7t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 233
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 249
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_SLIDEASIDE:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->CAPP_TOUCH_SLIDEASIDE:Z

    .line 253
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.slideaside.HOME_PRESSED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyintent:Landroid/content/Intent;

    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_TOUCH_PALM_SWIPE:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->CAPP_TOUCH_PALM_SWIPE:Z

    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_TOUCH_PALM_COVER:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->CAPP_TOUCH_PALM_COVER:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->CAPP_TILT:Z

    const-string v0, "Headset"

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadsetName:Ljava/lang/String;

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPrevHeadsetState:I

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurHeadsetState:I

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadsetIntent:Z

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSwitchValues:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadsetLock:Ljava/lang/Object;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarDisableToken:Landroid/os/IBinder;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    new-array v0, v6, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    new-array v0, v6, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBarType:I

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTransparentSystemBar:Z

    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestartAction:Lcom/android/internal/policy/impl/RestartAction;

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPower8SecLongPressHandled:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyScreenOn:Z

    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMenulongEnabled:Z

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMenulongToSearch:Z

    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->nExptToast:Landroid/widget/Toast;

    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sShortKeyPkg:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sShortKeyClass:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHotKeyCustomizing:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mQuickClipHotKeyDisable:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m112AppAvailable:Z

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRearSideKeyEnable:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBlockingLcdoff:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAutocallTest:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHWKeyControlMode:Z

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTouchCrackMode:I

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideDisplayMode:I

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTakeScreenshotMode:I

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSlideAsideMode:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLgeGestureLock:Ljava/lang/Object;

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mViewCoverOpened:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mViewCoverClosed:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mViewCoverEnabled:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCameraCoverOpened:Z

    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOperator:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTranslucentImeMode:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->isSplitWindowLoaded:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsExpanded:Z

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mQuickBTNAnswserMode:I

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mProximitySensorEnabled:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mProximityNear:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAATIsRunning:Z

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentDisplayRotation:I

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockscreenDisplayHeight:I

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentFrameChanged:Z

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEasyAccessEnabled:Z

    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeUpKeyTime:[J

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsTargetTmoUs:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSkipUdub:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownLongKeyCancelReason:I

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpLongKeyCancelReason:I

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeKeyLongPressEnabled:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 863
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 948
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    .line 1337
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$2;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    .line 1390
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$3;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    .line 1397
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$4;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEasyAccessEntry:Ljava/lang/Runnable;

    .line 1403
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$5;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$5;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPower8SecLongPress:Ljava/lang/Runnable;

    .line 1416
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$6;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$6;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    .line 1438
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$7;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$7;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownLongPress:Ljava/lang/Runnable;

    .line 1482
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$8;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$8;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mQuickClipChordLongPress:Ljava/lang/Runnable;

    .line 1523
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mQuickclipPressed:Z

    .line 1536
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$9;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$9;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mQuickClipLongPress:Ljava/lang/Runnable;

    .line 1560
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$10;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$10;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mToastIsRinging:Ljava/lang/Runnable;

    .line 1652
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyConsumedBy112App:Z

    .line 1653
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m112AppStartedByReservedKey:Z

    .line 1687
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$11;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$11;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m112AppChordLongPress:Ljava/lang/Runnable;

    .line 1709
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$12;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$12;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCancel_112AppChordLongPress:Ljava/lang/Runnable;

    .line 1751
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$13;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$13;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m112AppReceiver:Landroid/content/BroadcastReceiver;

    .line 1870
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$14;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$14;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActionReceiver:Landroid/content/BroadcastReceiver;

    .line 4350
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$17;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$17;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowSystemUiDelay:Ljava/lang/Runnable;

    .line 4463
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeepHidingNavInputChannel:Landroid/view/InputChannel;

    .line 4464
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeepHidingNavInputEventReceiver:Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver;

    .line 4567
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$19;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$19;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

    .line 4995
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIMEInset:I

    .line 5332
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sizeOffset:I

    .line 5333
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->isReversed:Z

    .line 6249
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$23;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$23;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIntentHandler:Landroid/os/Handler;

    .line 6349
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    .line 6350
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 6352
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$24;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$24;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotTimeout:Ljava/lang/Runnable;

    .line 7316
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$26;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$26;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    .line 7327
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$27;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$27;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamReceiver:Landroid/content/BroadcastReceiver;

    .line 7342
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$28;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$28;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    .line 7364
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$29;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$29;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPalmGestureReceiver:Landroid/content/BroadcastReceiver;

    .line 7396
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$30;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$30;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAutocallReceiver:Landroid/content/BroadcastReceiver;

    .line 7408
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$31;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$31;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTouchCrackModeReceiver:Landroid/content/BroadcastReceiver;

    .line 7423
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$32;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$32;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTouchCrackModeObserver:Landroid/os/UEventObserver;

    .line 7441
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$33;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$33;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mQucikBTNAnswerSettingReceiver:Landroid/content/BroadcastReceiver;

    .line 7922
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    .line 8027
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    .line 8595
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$41;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$41;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMenuLongPress:Ljava/lang/Runnable;

    .line 8835
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$46;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$46;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->spcErrReceiver:Landroid/content/BroadcastReceiver;

    .line 8907
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$47;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$47;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarReceiver:Landroid/content/BroadcastReceiver;

    .line 8920
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$48;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$48;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSmartCoverReceiver:Landroid/content/BroadcastReceiver;

    .line 8966
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$49;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$49;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 8987
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$50;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$50;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyPress:Ljava/lang/Runnable;

    .line 9008
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$51;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$51;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNaviReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/PhoneWindowManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 233
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSlideAsideMode:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/PhoneWindowManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 233
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSlideAsideMode:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/PhoneWindowManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 233
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTakeScreenshotMode:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performAuditoryFeedbackForAccessibilityIfNeed()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/PhoneWindowManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 233
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTakeScreenshotMode:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mViewCoverEnabled:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mViewCoverClosed:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 233
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mViewCoverClosed:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->takeScreenshot()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchEasyAccess()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 233
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setProximitySensorEnabled(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mProximityNear:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 233
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mProximityNear:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/PhoneWindowManager;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeLongKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchVolumeUpLongPressAction()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchVolumeDownLongPressAction()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/PhoneWindowManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 233
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideDisplayMode:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isMvpOnTop()Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/PhoneWindowManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 233
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideDisplayMode:I

    return p1
.end method

.method static synthetic access$2102(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 233
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mQuickclipPressed:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 233
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->excuteQuickMemoHotKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->toggleQuickClipFromHotKey()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->excuteQuickVoice()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m112AppStartedByReservedKey:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 233
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m112AppStartedByReservedKey:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->is112AppInstalledProperly()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->enablePointerLocation()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showNavigationBar()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 233
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendIntents(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3202(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 233
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadsetIntent:Z

    return p1
.end method

.method static synthetic access$3302(Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadsetName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/internal/policy/impl/PhoneWindowManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/internal/policy/impl/PhoneWindowManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 233
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mQuickBTNAnswserMode:I

    return v0
.end method

.method static synthetic access$3602(Lcom/android/internal/policy/impl/PhoneWindowManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 233
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mQuickBTNAnswserMode:I

    return p1
.end method

.method static synthetic access$3700(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/IBinder;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 233
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->waitForKeyguardWindowDrawn(Landroid/os/IBinder;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 233
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->finishScreenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    return-void
.end method

.method static synthetic access$3902(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 233
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsExpanded:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->disablePointerLocation()V

    return-void
.end method

.method static synthetic access$4002(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 233
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCameraCoverOpened:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mProximitySensorEnabled:Z

    return v0
.end method

.method static synthetic access$4202(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 233
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAATIsRunning:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->CAPP_TOUCH_PALM_COVER:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->enableLgeInputEventMonitor()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->disableLgeInputEventMonitor()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->CAPP_TOUCH_PALM_SWIPE:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFusingState:Ljava/lang/String;

    return-object v0
.end method

.method private applyLidSwitchState()V
    .locals 3

    .prologue
    .line 8065
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidControlsSleep:Z

    if-eqz v0, :cond_0

    .line 8066
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 8068
    :cond_0
    return-void
.end method

.method private applyStableConstraints(IILandroid/graphics/Rect;)V
    .locals 2
    .parameter "sysui"
    .parameter "fl"
    .parameter "r"

    .prologue
    .line 4976
    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_3

    .line 4979
    and-int/lit16 v0, p2, 0x400

    if-eqz v0, :cond_4

    .line 4980
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 4981
    :cond_0
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 4982
    :cond_1
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 4983
    :cond_2
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 4991
    :cond_3
    :goto_0
    return-void

    .line 4985
    :cond_4
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    if-ge v0, v1, :cond_5

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 4986
    :cond_5
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    if-ge v0, v1, :cond_6

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 4987
    :cond_6
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    if-le v0, v1, :cond_7

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 4988
    :cond_7
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method private cancelPending112AppChordAction()V
    .locals 2

    .prologue
    .line 1684
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m112AppChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1685
    return-void
.end method

.method private cancelPendingEasyAccessEntryAction()V
    .locals 2

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEasyAccessEntry:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1224
    return-void
.end method

.method private cancelPendingPowerKeyAction()V
    .locals 2

    .prologue
    .line 1165
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v0, :cond_0

    .line 1166
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1168
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v0, :cond_1

    .line 1169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingPowerKeyUpCanceled:Z

    .line 1171
    :cond_1
    return-void
.end method

.method private cancelPendingQuickClipChordAction()V
    .locals 2

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mQuickClipChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1481
    return-void
.end method

.method private cancelPendingScreenshotChordAction()V
    .locals 2

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1203
    return-void
.end method

.method private cancelPendingVolumeLongKeyAction(II)V
    .locals 4
    .parameter "keycode"
    .parameter "cancelReason"

    .prologue
    const/4 v3, 0x0

    .line 1261
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelPendingVolumeLongKeyAction:cancelReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    packed-switch p1, :pswitch_data_0

    .line 1285
    :cond_0
    :goto_0
    return-void

    .line 1265
    :pswitch_0
    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpLongKeyCancelReason:I

    .line 1266
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1267
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1268
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setProximitySensorEnabled(Z)V

    .line 1269
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeLongKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1270
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeLongKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 1274
    :pswitch_1
    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownLongKeyCancelReason:I

    .line 1275
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1276
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1277
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setProximitySensorEnabled(Z)V

    .line 1278
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeLongKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1279
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeLongKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 1263
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private clearKeepHidingNavInputEventReceiver()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4529
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeepHidingNavInputEventReceiver:Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver;

    if-eqz v0, :cond_0

    .line 4530
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregister KeepHidingNavInputEventReceiver of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeepHidingNavInputEventReceiver:Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4531
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeepHidingNavInputEventReceiver:Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver;->dispose()V

    .line 4532
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeepHidingNavInputEventReceiver:Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver;

    .line 4534
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeepHidingNavInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_1

    .line 4535
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeepHidingNavInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 4536
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeepHidingNavInputChannel:Landroid/view/InputChannel;

    .line 4538
    :cond_1
    return-void
.end method

.method private disableLgeInputEventMonitor()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2648
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideDisplayMode:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTakeScreenshotMode:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSlideAsideMode:I

    if-nez v0, :cond_1

    .line 2649
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLgeInputEventMonitor:Lcom/android/internal/policy/impl/PhoneWindowManager$LgeInputEventMonitor;

    if-eqz v0, :cond_0

    .line 2650
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLgeInputEventMonitor:Lcom/android/internal/policy/impl/PhoneWindowManager$LgeInputEventMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$LgeInputEventMonitor;->dispose()V

    .line 2651
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLgeInputEventMonitor:Lcom/android/internal/policy/impl/PhoneWindowManager$LgeInputEventMonitor;

    .line 2654
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLgeInputEventMonitorChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_1

    .line 2655
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLgeInputEventMonitorChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 2656
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLgeInputEventMonitorChannel:Landroid/view/InputChannel;

    .line 2659
    :cond_1
    return-void
.end method

.method private disablePointerLocation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2618
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputEventReceiver:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;

    if-eqz v1, :cond_0

    .line 2619
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputEventReceiver:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;->dispose()V

    .line 2620
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputEventReceiver:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;

    .line 2623
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    if-eqz v1, :cond_1

    .line 2624
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 2625
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    .line 2628
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-eqz v1, :cond_2

    .line 2629
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2631
    .local v0, wm:Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 2632
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 2634
    .end local v0           #wm:Landroid/view/WindowManager;
    :cond_2
    return-void
.end method

.method private enableLgeInputEventMonitor()V
    .locals 3

    .prologue
    .line 2638
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLgeInputEventMonitorChannel:Landroid/view/InputChannel;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLgeInputEventMonitor:Lcom/android/internal/policy/impl/PhoneWindowManager$LgeInputEventMonitor;

    if-nez v0, :cond_0

    .line 2639
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    const-string v1, "LGInputEventMonitor"

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLgeInputEventMonitorChannel:Landroid/view/InputChannel;

    .line 2641
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$LgeInputEventMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLgeInputEventMonitorChannel:Landroid/view/InputChannel;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$LgeInputEventMonitor;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLgeInputEventMonitor:Lcom/android/internal/policy/impl/PhoneWindowManager$LgeInputEventMonitor;

    .line 2645
    :cond_0
    return-void
.end method

.method private enablePointerLocation()V
    .locals 6

    .prologue
    const/4 v4, -0x1

    .line 2585
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-nez v2, :cond_1

    .line 2586
    new-instance v2, Lcom/android/internal/widget/PointerLocationView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/PointerLocationView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 2587
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView;->setPrintCoords(Z)V

    .line 2589
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 2592
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x7df

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2593
    const/16 v2, 0x518

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2597
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2598
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x100

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2599
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2602
    :cond_0
    const/4 v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 2603
    const-string v2, "PointerLocation"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 2604
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 2606
    .local v1, wm:Landroid/view/WindowManager;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 2607
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2609
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    const-string v3, "PointerLocationView"

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    .line 2611
    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Lcom/android/internal/widget/PointerLocationView;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputEventReceiver:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;

    .line 2615
    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v1           #wm:Landroid/view/WindowManager;
    :cond_1
    return-void
.end method

.method private excuteQuickMemoHotKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "PkgName"
    .parameter "PkgClass"

    .prologue
    const/4 v8, 0x0

    .line 1577
    if-eqz p1, :cond_0

    const-string v6, "none"

    invoke-virtual {p1, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1578
    const-string v6, "com.lge.QuickClip"

    invoke-virtual {p1, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1579
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->toggleQuickClipFromHotKey()V

    .line 1646
    :cond_0
    :goto_0
    return-void

    .line 1580
    :cond_1
    const-string v6, "com.lge.pa"

    invoke-virtual {p1, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1581
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->excuteQuickVoice()V

    goto :goto_0

    .line 1582
    :cond_2
    const-string v6, "com.android.settings"

    invoke-virtual {p1, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "com.android.settings.Settings"

    invoke-virtual {p2, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1583
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.settings.SETTINGS"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1584
    .local v4, settings:Landroid/content/Intent;
    const/high16 v6, 0x1020

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1587
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v5

    .line 1588
    .local v5, statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v5, :cond_3

    .line 1589
    invoke-interface {v5}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanels()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1595
    .end local v5           #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_3
    :goto_1
    :try_start_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1596
    :catch_0
    move-exception v2

    .line 1597
    .local v2, ex:Landroid/content/ActivityNotFoundException;
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dropping application Settings launch because the activity to which it is registered was not found: , package="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1591
    .end local v2           #ex:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v2

    .line 1593
    .local v2, ex:Landroid/os/RemoteException;
    const/4 v6, 0x0

    :try_start_2
    iput-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1602
    .end local v2           #ex:Landroid/os/RemoteException;
    .end local v4           #settings:Landroid/content/Intent;
    :cond_4
    const-string v6, "com.skt.tmode"

    invoke-virtual {p1, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1603
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.skt.tmode.intent.action.TMODE_HOTKEY"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1604
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1605
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1606
    const/high16 v6, 0x3000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1608
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v5

    .line 1609
    .restart local v5       #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v5, :cond_5

    .line 1610
    invoke-interface {v5}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanels()V

    .line 1611
    :cond_5
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 1612
    .end local v5           #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :catch_2
    move-exception v2

    .line 1613
    .local v2, ex:Landroid/content/ActivityNotFoundException;
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dropping application QuickMemo key launch because the activity to which it is registered was not found: , package="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1616
    .end local v2           #ex:Landroid/content/ActivityNotFoundException;
    :catch_3
    move-exception v1

    .line 1617
    .local v1, e:Landroid/os/RemoteException;
    const-string v6, "WindowManager"

    const-string v7, "RemoteException when long press simsitching key"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1618
    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto/16 :goto_0

    .line 1622
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_6
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1623
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "android.intent.action.MAIN"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1624
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1625
    const/high16 v6, 0x3020

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1626
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1627
    .local v0, comp:Landroid/content/ComponentName;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1630
    :try_start_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v5

    .line 1631
    .restart local v5       #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v5, :cond_7

    .line 1632
    invoke-interface {v5}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanels()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1638
    .end local v5           #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_7
    :goto_2
    :try_start_5
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    .line 1639
    :catch_4
    move-exception v2

    .line 1640
    .restart local v2       #ex:Landroid/content/ActivityNotFoundException;
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dropping application QuickMemo key launch because the activity to which it is registered was not found: , package="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1634
    .end local v2           #ex:Landroid/content/ActivityNotFoundException;
    :catch_5
    move-exception v2

    .line 1636
    .local v2, ex:Landroid/os/RemoteException;
    const/4 v6, 0x0

    :try_start_6
    iput-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_6
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2
.end method

.method private excuteQuickVoice()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 8564
    sget-boolean v6, Lcom/lge/config/ConfigBuildFlags;->CAPP_KEY_EXCEPTION:Z

    if-eqz v6, :cond_1

    .line 8565
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 8566
    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    :goto_0
    if-eqz v0, :cond_1

    .line 8567
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->extend:I

    .line 8568
    .local v1, extend:I
    const/high16 v6, 0x10

    and-int/2addr v6, v1

    if-eqz v6, :cond_1

    .line 8592
    .end local v0           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v1           #extend:I
    :goto_1
    return-void

    :cond_0
    move-object v0, v5

    .line 8565
    goto :goto_0

    .line 8574
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 8575
    .local v3, mediaState:Ljava/lang/String;
    const-string v6, "mounted"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 8576
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x20b002e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 8577
    .local v4, msg:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->nExptToast:Landroid/widget/Toast;

    if-nez v5, :cond_2

    .line 8578
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v5, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->nExptToast:Landroid/widget/Toast;

    .line 8582
    :goto_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->nExptToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 8580
    :cond_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->nExptToast:Landroid/widget/Toast;

    invoke-virtual {v5, v4}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 8585
    .end local v4           #msg:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 8586
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->dismissKeyguardLw()V

    .line 8588
    :cond_4
    const/4 v6, 0x1

    invoke-virtual {p0, v5, v7, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 8590
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.lge.pa.ACTION_LAUNCH_HOME_LONG"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8591
    .local v2, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private finishScreenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 2
    .parameter "screenOnListener"

    .prologue
    .line 7528
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7529
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    .line 7530
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7533
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->setEventDispatching(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 7537
    :goto_0
    if-eqz p1, :cond_0

    .line 7538
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$ScreenOnListener;->onScreenOn()V

    .line 7540
    :cond_0
    return-void

    .line 7530
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 7534
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static getAudioService()Landroid/media/IAudioService;
    .locals 3

    .prologue
    .line 3293
    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 3295
    .local v0, audioService:Landroid/media/IAudioService;
    if-nez v0, :cond_0

    .line 3296
    const-string v1, "WindowManager"

    const-string v2, "Unable to find IAudioService interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3298
    :cond_0
    return-object v0
.end method

.method private getCoverType()I
    .locals 4

    .prologue
    .line 9000
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "cover_type"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 9005
    .local v0, cover_type:I
    return v0
.end method

.method static getLongIntArray(Landroid/content/res/Resources;I)[J
    .locals 5
    .parameter "r"
    .parameter "resid"

    .prologue
    .line 7863
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 7864
    .local v0, ar:[I
    if-nez v0, :cond_1

    .line 7865
    const/4 v2, 0x0

    .line 7871
    :cond_0
    return-object v2

    .line 7867
    :cond_1
    array-length v3, v0

    new-array v2, v3, [J

    .line 7868
    .local v2, out:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 7869
    aget v3, v0, v1

    int-to-long v3, v3

    aput-wide v3, v2, v1

    .line 7868
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getScreenshotChordLongPressDelay()J
    .locals 3

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1194
    const/high16 v0, 0x4020

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v1

    long-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 1197
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v0

    goto :goto_0
.end method

.method private getSearchManager()Landroid/app/SearchManager;
    .locals 2

    .prologue
    .line 4301
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    if-nez v0, :cond_0

    .line 4302
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    .line 4304
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    return-object v0
.end method

.method private getSplitWindowManagerInstance()Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;
    .locals 1

    .prologue
    .line 8823
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->isSplitWindowLoaded:Z

    if-eqz v0, :cond_0

    .line 8824
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    .line 8828
    :goto_0
    return-object v0

    .line 8826
    :cond_0
    invoke-static {}, Lcom/lge/loader/splitwindow/SplitWindowCreatorHelper;->getPolicyService()Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    .line 8827
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->isSplitWindowLoaded:Z

    .line 8828
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    goto :goto_0

    .line 8827
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method static getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 3288
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private handleLongPressOnHome()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1979
    const/4 v0, 0x0

    .line 1981
    .local v0, bCallState:I
    :try_start_0
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 1982
    .local v4, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v4, :cond_0

    .line 1983
    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->getCallState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1989
    .end local v4           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    const/16 v5, 0x64

    if-eq v0, v5, :cond_1

    const/16 v5, 0x65

    if-ne v0, v5, :cond_3

    .line 1990
    :cond_1
    const-string v5, "WindowManager"

    const-string v6, "Ignoring LongPress HOME; there\'s a ringing incoming call."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    :cond_2
    :goto_1
    return-void

    .line 1985
    :catch_0
    move-exception v2

    .line 1986
    .local v2, ex:Landroid/os/RemoteException;
    const-string v5, "WindowManager"

    const-string v6, "RemoteException from getPhoneInterface()"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1995
    .end local v2           #ex:Landroid/os/RemoteException;
    :cond_3
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-gez v5, :cond_5

    .line 1996
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0024

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 1998
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-ltz v5, :cond_4

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-le v5, v9, :cond_5

    .line 2000
    :cond_4
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 2004
    :cond_5
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-eqz v5, :cond_6

    .line 2005
    invoke-virtual {p0, v10, v7, v7}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 2006
    const-string v5, "recentapps"

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 2010
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeLongPressed:Z

    .line 2013
    :cond_6
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-ne v5, v8, :cond_7

    .line 2014
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showOrHideRecentAppsDialog(I)V

    goto :goto_1

    .line 2015
    :cond_7
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-ne v5, v9, :cond_2

    .line 2017
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v3

    .line 2018
    .local v3, statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v3, :cond_2

    .line 2019
    invoke-interface {v3}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2021
    .end local v3           #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :catch_1
    move-exception v1

    .line 2022
    .local v1, e:Landroid/os/RemoteException;
    const-string v5, "WindowManager"

    const-string v6, "RemoteException when showing recent apps"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2024
    iput-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_1
.end method

.method private intercept112AppChord()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 1656
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "112APP_KEY : intercept112AppChord Started! : mVolumeUpKeyTriggered="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mPowerKeyTriggered="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_1

    .line 1659
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1661
    .local v0, now:J
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "112APP_KEY : now = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "112APP_KEY : mVolumeUpKeyTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "112APP_KEY : mPowerKeyTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 1667
    const-string v2, "WindowManager"

    const-string v3, "112APP_KEY : mVolumeUpKeyTriggered + mPowerKeyTriggered Pressed!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->is112AppInstalledProperly()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1670
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyConsumedBy112App:Z

    .line 1671
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 1673
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeKeyLongPressEnabled:Z

    if-eqz v2, :cond_0

    .line 1674
    const/16 v2, 0x18

    const/4 v3, 0x6

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingVolumeLongKeyAction(II)V

    .line 1677
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m112AppChordLongPress:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1681
    .end local v0           #now:J
    :cond_1
    return-void
.end method

.method private interceptEasyAccessEntry()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 1208
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEasyAccessEnabled:Z

    if-eqz v0, :cond_0

    .line 1209
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeUpKeyTime:[J

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeUpKeyTime:[J

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeUpKeyTime:[J

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v6, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1210
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeUpKeyTime:[J

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeUpKeyTime:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 1212
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeUpKeyTime:[J

    aget-wide v0, v0, v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x384

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 1214
    const-string v0, "WindowManager"

    const-string v1, " Launch Accessbility"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeUpKeyConsumedByEasyAccess:Z

    .line 1216
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEasyAccessEntry:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1220
    :cond_0
    return-void
.end method

.method private interceptFallback(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Z
    .locals 6
    .parameter "win"
    .parameter "fallbackEvent"
    .parameter "policyFlags"

    .prologue
    const/4 v3, 0x1

    .line 4252
    invoke-virtual {p0, p2, p3, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I

    move-result v0

    .line 4253
    .local v0, actions:I
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_0

    .line 4254
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v1

    .line 4256
    .local v1, delayMillis:J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_0

    .line 4260
    .end local v1           #delayMillis:J
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private interceptPowerKeyDown(Z)V
    .locals 4
    .parameter "handled"

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPower8SecLongPress:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1142
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1143
    if-nez p1, :cond_0

    .line 1144
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1146
    :cond_0
    return-void
.end method

.method private interceptPowerKeyUp(Z)Z
    .locals 3
    .parameter "canceled"

    .prologue
    const/4 v0, 0x0

    .line 1150
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPower8SecLongPressHandled:Z

    if-nez v1, :cond_1

    .line 1151
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPower8SecLongPress:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1157
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v1, :cond_0

    .line 1158
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1159
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 1161
    :cond_0
    return v0

    .line 1153
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->dismissRestartActionDialog()V

    .line 1154
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPower8SecLongPressHandled:Z

    goto :goto_0
.end method

.method private interceptQuickClipChord()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const-wide/16 v4, 0x96

    .line 1467
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_1

    .line 1468
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1469
    .local v0, now:J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 1471
    const-string v2, "sys.allautotest.run"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1472
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByQuickClipChord:Z

    .line 1473
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyConsumedByQuickClipChord:Z

    .line 1474
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mQuickClipChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1478
    .end local v0           #now:J
    :cond_1
    return-void
.end method

.method private interceptScreenshotChord()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x96

    .line 1174
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordEnabled:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_1

    .line 1176
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1177
    .local v0, now:J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 1179
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 1180
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 1182
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeKeyLongPressEnabled:Z

    if-eqz v2, :cond_0

    .line 1183
    const/16 v2, 0x19

    const/4 v3, 0x5

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingVolumeLongKeyAction(II)V

    .line 1186
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1189
    .end local v0           #now:J
    :cond_1
    return-void
.end method

.method private interceptVolumeDownLongKey(Z)V
    .locals 8
    .parameter "isScreenOn"

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v5, 0x1

    .line 1288
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-nez v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isVolumeLongKeyAvailable(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1290
    const-string v2, "true"

    const-string v3, "gsm.lge.ota_is_running"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "true"

    const-string v3, "gsm.lge.ota_ignoreKey"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1292
    :cond_0
    const-string v2, "WindowManager"

    const-string v3, "OTA key ignore!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    :cond_1
    :goto_0
    return-void

    .line 1295
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1296
    .local v0, now:J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 1297
    const-string v2, "WindowManager"

    const-string v3, "interceptVolumeDownLongKey"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeLongKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1299
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByLongPress:Z

    .line 1300
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRearSideKeyEnable:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mProximitySensorEnabled:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mViewCoverClosed:Z

    if-nez v2, :cond_3

    .line 1301
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setProximitySensorEnabled(Z)V

    .line 1302
    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setProximitySensorEnabled(Z)V

    .line 1304
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownLongPress:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private interceptVolumeUpLongKey(Z)V
    .locals 8
    .parameter "isScreenOn"

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v5, 0x1

    .line 1239
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-nez v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isVolumeLongKeyAvailable(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1241
    const-string v2, "true"

    const-string v3, "gsm.lge.ota_is_running"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "true"

    const-string v3, "gsm.lge.ota_ignoreKey"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1243
    :cond_0
    const-string v2, "WindowManager"

    const-string v3, "OTA key ignore!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    :cond_1
    :goto_0
    return-void

    .line 1246
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1247
    .local v0, now:J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 1248
    const-string v2, "WindowManager"

    const-string v3, "interceptVolumeUpLongKey:"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeLongKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1250
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyConsumedByLongPress:Z

    .line 1251
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRearSideKeyEnable:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mProximitySensorEnabled:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mViewCoverClosed:Z

    if-nez v2, :cond_3

    .line 1252
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setProximitySensorEnabled(Z)V

    .line 1253
    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setProximitySensorEnabled(Z)V

    .line 1255
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private is112AppAgreedByCustomer()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 1731
    const-string v0, "content://go.police.provider.report/agree"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1732
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/String;

    const-string v4, "customer_agreement"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1734
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 1736
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1737
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "112APP_KEY : cursor.getString(0) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1744
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1748
    :cond_0
    return v7

    .line 1739
    :cond_1
    :try_start_1
    const-string v0, "WindowManager"

    const-string v2, "112APP_KEY : User has not been agreed to install 112 app."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1744
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private is112AppInstalled()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1721
    const/4 v0, 0x0

    .line 1723
    .local v0, app:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "go.police.report"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1727
    :goto_0
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 1724
    :catch_0
    move-exception v1

    .line 1725
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "WindowManager"

    const-string v4, "112APP_KEY : 112 go.police.report is not installed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private is112AppInstalledProperly()Z
    .locals 1

    .prologue
    .line 1717
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->is112AppInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->is112AppAgreedByCustomer()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isASystemWindow(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 3
    .parameter "win"

    .prologue
    const/4 v1, 0x0

    .line 3315
    if-nez p1, :cond_1

    .line 3319
    :cond_0
    :goto_0
    return v1

    .line 3318
    :cond_1
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3319
    .local v0, type:I
    const/16 v2, 0x7d0

    if-lt v0, v2, :cond_0

    const/16 v2, 0xbb7

    if-gt v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isAnyPortrait(I)Z
    .locals 1
    .parameter "rotation"

    .prologue
    .line 7818
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBuiltInKeyboardVisible()Z
    .locals 1

    .prologue
    .line 2798
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHaveBuiltInKeyboard:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isHidden(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isExceptionCase(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 2
    .parameter "win"
    .parameter "attached"

    .prologue
    .line 4998
    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4999
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chrome"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5000
    const/4 v0, 0x1

    .line 5003
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFindMissedPhoneRegister()Z
    .locals 10

    .prologue
    .line 8845
    const-string v0, "/persist-lg/findlostphone/MissedContents"

    .line 8847
    .local v0, MISSEDDPHONE_FILE:Ljava/lang/String;
    const/4 v6, 0x0

    .line 8849
    .local v6, result:Ljava/lang/String;
    const/4 v2, 0x0

    .line 8850
    .local v2, fr:Ljava/io/FileReader;
    const/4 v4, 0x0

    .line 8852
    .local v4, in:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    const-string v7, "/persist-lg/findlostphone/MissedContents"

    invoke-direct {v3, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 8853
    .end local v2           #fr:Ljava/io/FileReader;
    .local v3, fr:Ljava/io/FileReader;
    :try_start_1
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    .line 8855
    .end local v4           #in:Ljava/io/BufferedReader;
    .local v5, in:Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 8857
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 8858
    if-eqz v3, :cond_0

    .line 8859
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b

    .line 8866
    :cond_0
    if-eqz v5, :cond_1

    .line 8868
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 8873
    :cond_1
    :goto_0
    if-eqz v3, :cond_7

    .line 8875
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v4, v5

    .end local v5           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    move-object v2, v3

    .line 8881
    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    :cond_2
    :goto_1
    const-string v7, "SKT_FIND_PHONE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WindowManager - isFindMissedPhoneRegister  result = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8883
    const-string v7, "1"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    return v7

    .line 8869
    .end local v2           #fr:Ljava/io/FileReader;
    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    .restart local v5       #in:Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 8870
    .local v1, e:Ljava/io/IOException;
    const-string v7, "WindowManager"

    const-string v8, "[1-1]read failed: in close fail"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 8876
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 8877
    .restart local v1       #e:Ljava/io/IOException;
    const-string v7, "WindowManager"

    const-string v8, "[1-1]read failed: fr close fail"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .end local v5           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    move-object v2, v3

    .line 8878
    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    goto :goto_1

    .line 8861
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 8862
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_5
    const-string v7, "WindowManager"

    const-string v8, "read failed: FileNotFoundException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 8866
    if-eqz v4, :cond_3

    .line 8868
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 8873
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_3
    :goto_3
    if-eqz v2, :cond_2

    .line 8875
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 8876
    :catch_3
    move-exception v1

    .line 8877
    .local v1, e:Ljava/io/IOException;
    const-string v7, "WindowManager"

    const-string v8, "[1-1]read failed: fr close fail"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 8869
    .local v1, e:Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v1

    .line 8870
    .local v1, e:Ljava/io/IOException;
    const-string v7, "WindowManager"

    const-string v8, "[1-1]read failed: in close fail"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 8863
    .end local v1           #e:Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 8864
    .restart local v1       #e:Ljava/io/IOException;
    :goto_4
    :try_start_8
    const-string v7, "WindowManager"

    const-string v8, "read failed: IOException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 8866
    if-eqz v4, :cond_4

    .line 8868
    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 8873
    :cond_4
    :goto_5
    if-eqz v2, :cond_2

    .line 8875
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_1

    .line 8876
    :catch_6
    move-exception v1

    .line 8877
    const-string v7, "WindowManager"

    const-string v8, "[1-1]read failed: fr close fail"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 8869
    :catch_7
    move-exception v1

    .line 8870
    const-string v7, "WindowManager"

    const-string v8, "[1-1]read failed: in close fail"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 8866
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_6
    if-eqz v4, :cond_5

    .line 8868
    :try_start_b
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 8873
    :cond_5
    :goto_7
    if-eqz v2, :cond_6

    .line 8875
    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 8878
    :cond_6
    :goto_8
    throw v7

    .line 8869
    :catch_8
    move-exception v1

    .line 8870
    .restart local v1       #e:Ljava/io/IOException;
    const-string v8, "WindowManager"

    const-string v9, "[1-1]read failed: in close fail"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 8876
    .end local v1           #e:Ljava/io/IOException;
    :catch_9
    move-exception v1

    .line 8877
    .restart local v1       #e:Ljava/io/IOException;
    const-string v8, "WindowManager"

    const-string v9, "[1-1]read failed: fr close fail"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 8866
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #fr:Ljava/io/FileReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    goto :goto_6

    .end local v2           #fr:Ljava/io/FileReader;
    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    .restart local v5       #in:Ljava/io/BufferedReader;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    move-object v2, v3

    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    goto :goto_6

    .line 8863
    .end local v2           #fr:Ljava/io/FileReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    :catch_a
    move-exception v1

    move-object v2, v3

    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    goto :goto_4

    .end local v2           #fr:Ljava/io/FileReader;
    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    .restart local v5       #in:Ljava/io/BufferedReader;
    :catch_b
    move-exception v1

    move-object v4, v5

    .end local v5           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    move-object v2, v3

    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    goto :goto_4

    .line 8861
    .end local v2           #fr:Ljava/io/FileReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    :catch_c
    move-exception v1

    move-object v2, v3

    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    goto :goto_2

    .end local v2           #fr:Ljava/io/FileReader;
    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    .restart local v5       #in:Ljava/io/BufferedReader;
    :catch_d
    move-exception v1

    move-object v4, v5

    .end local v5           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    move-object v2, v3

    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    goto :goto_2

    .end local v2           #fr:Ljava/io/FileReader;
    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    .restart local v5       #in:Ljava/io/BufferedReader;
    :cond_7
    move-object v4, v5

    .end local v5           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    move-object v2, v3

    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    goto/16 :goto_1
.end method

.method private isGlobalAccessibilityGestureEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 8209
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enable_accessibility_global_gesture_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isHidden(I)Z
    .locals 3
    .parameter "accessibilityMode"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2787
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 2793
    :cond_0
    :goto_0
    return v0

    .line 2789
    :pswitch_0
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 2791
    :pswitch_1
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 2787
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isLandscapeOrSeascape(I)Z
    .locals 1
    .parameter "rotation"

    .prologue
    .line 7814
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMvpOnTop()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 8889
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 8890
    .local v0, aMgr:Landroid/app/ActivityManager;
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 8891
    .local v1, pMgr:Landroid/content/pm/PackageManager;
    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 8893
    .local v3, tasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 8897
    .local v2, packageName:Ljava/lang/String;
    :goto_0
    const-string v4, "com.vmware.mvp.permission.GRAB_HOME_KEY"

    invoke-virtual {v1, v4, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "com.vmware"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    .line 8901
    :goto_1
    return v4

    .line 8893
    .end local v2           #packageName:Ljava/lang/String;
    :cond_0
    const-string v2, ""

    goto :goto_0

    .restart local v2       #packageName:Ljava/lang/String;
    :cond_1
    move v4, v6

    .line 8901
    goto :goto_1
.end method

.method private isVolumeLongKeyAvailable(Z)Z
    .locals 3
    .parameter "isScreenOn"

    .prologue
    .line 1228
    const/4 v0, 0x0

    .line 1229
    .local v0, result:Z
    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7d4

    if-ne v1, v2, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mViewCoverClosed:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1233
    const/4 v0, 0x1

    .line 1235
    :cond_1
    return v0
.end method

.method private isWakeKeyWhenScreenOff(I)Z
    .locals 3
    .parameter "keyCode"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 7211
    sparse-switch p1, :sswitch_data_0

    .line 7233
    :cond_0
    :goto_0
    return v0

    .line 7216
    :sswitch_0
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    move v0, v1

    .line 7231
    goto :goto_0

    .line 7211
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_1
        0x4f -> :sswitch_1
        0x55 -> :sswitch_1
        0x56 -> :sswitch_1
        0x57 -> :sswitch_1
        0x58 -> :sswitch_1
        0x59 -> :sswitch_1
        0x5a -> :sswitch_1
        0x5b -> :sswitch_1
        0x7e -> :sswitch_1
        0x7f -> :sswitch_1
        0x82 -> :sswitch_1
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method private keyguardIsShowingTq()Z
    .locals 1

    .prologue
    .line 7567
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 7568
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    goto :goto_0
.end method

.method private launchAssistAction()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 4286
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "search"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SearchManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v4}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    .line 4288
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 4289
    const/high16 v2, 0x3400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4293
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    const/4 v4, -0x2

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4298
    :cond_0
    :goto_0
    return-void

    .line 4294
    :catch_0
    move-exception v0

    .line 4295
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "WindowManager"

    const-string v3, "No activity to handle assist action."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private launchAssistLongPressAction()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 4264
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v4, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 4265
    const-string v3, "assist"

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 4268
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4269
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4273
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getSearchManager()Landroid/app/SearchManager;

    move-result-object v2

    .line 4274
    .local v2, searchManager:Landroid/app/SearchManager;
    if-eqz v2, :cond_0

    .line 4275
    invoke-virtual {v2}, Landroid/app/SearchManager;->stopSearch()V

    .line 4277
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    const/4 v5, -0x2

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4281
    .end local v2           #searchManager:Landroid/app/SearchManager;
    :goto_0
    return-void

    .line 4278
    :catch_0
    move-exception v0

    .line 4279
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "WindowManager"

    const-string v4, "No activity to handle assist long press action."

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private launchEasyAccess()V
    .locals 2

    .prologue
    .line 6455
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.accessibility.action.EASY_ACCESS_SHOW_CATEGORY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6456
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 6457
    return-void
.end method

.method private launchVolumeDownLongPressAction()V
    .locals 4

    .prologue
    .line 1310
    const/4 v0, 0x0

    .line 1311
    .local v0, cameraIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1312
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 1316
    :goto_0
    const/high16 v1, 0x3400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1320
    const-string v1, "com.lge.camera.launchingPath"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1321
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1322
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeLongKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1323
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeLongKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1325
    :cond_0
    return-void

    .line 1314
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    goto :goto_0
.end method

.method private launchVolumeUpLongPressAction()V
    .locals 3

    .prologue
    .line 1328
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.QuickClip.action.TOGGLE_QUICKCLIP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1329
    .local v0, quickclipIntent:Landroid/content/Intent;
    const-string v1, "com.lge.QuickClip.launchingPath"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1330
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1331
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeLongKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1332
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeLongKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1334
    :cond_0
    return-void
.end method

.method private manageFocusedMvpKeys(IIZ)J
    .locals 13
    .parameter "keyCode"
    .parameter "flags"
    .parameter "down"

    .prologue
    .line 3368
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordEnabled:Z

    if-eqz v9, :cond_9

    and-int/lit16 v9, p2, 0x400

    if-nez v9, :cond_9

    .line 3369
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-eqz v9, :cond_1

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-nez v9, :cond_1

    .line 3370
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 3371
    .local v3, now:J
    iget-wide v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTime:J

    const-wide/16 v11, 0x96

    add-long v7, v9, v11

    .line 3372
    .local v7, timeoutTime:J
    cmp-long v9, v3, v7

    if-gez v9, :cond_1

    .line 3373
    sub-long v9, v7, v3

    .line 3459
    .end local v3           #now:J
    .end local v7           #timeoutTime:J
    :goto_0
    return-wide v9

    .line 3376
    :cond_1
    const/16 v9, 0x19

    if-ne p1, v9, :cond_9

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    if-eqz v9, :cond_9

    .line 3379
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRearSideKeyEnable:Z

    if-eqz v9, :cond_7

    .line 3380
    const/4 v2, 0x0

    .line 3381
    .local v2, isOffhook:Z
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    .line 3382
    .local v6, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v6, :cond_2

    .line 3384
    :try_start_0
    invoke-interface {v6}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 3389
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 3390
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 3391
    .restart local v3       #now:J
    iget-wide v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTime:J

    const-wide/16 v11, 0x12c

    add-long v7, v9, v11

    .line 3392
    .restart local v7       #timeoutTime:J
    cmp-long v9, v3, v7

    if-gez v9, :cond_6

    .line 3393
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-nez v9, :cond_5

    .line 3394
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 3403
    .end local v3           #now:J
    .end local v7           #timeoutTime:J
    :cond_3
    :goto_2
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    if-eqz v9, :cond_9

    .line 3404
    if-nez p3, :cond_4

    .line 3405
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 3407
    :cond_4
    const-wide/16 v9, -0x1

    goto :goto_0

    .line 3385
    :catch_0
    move-exception v1

    .line 3386
    .local v1, ex:Landroid/os/RemoteException;
    const-string v9, "WindowManager"

    const-string v10, "ITelephony threw RemoteException"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3396
    .end local v1           #ex:Landroid/os/RemoteException;
    .restart local v3       #now:J
    .restart local v7       #timeoutTime:J
    :cond_5
    sub-long v9, v7, v3

    goto :goto_0

    .line 3398
    :cond_6
    const-wide/16 v9, 0x96

    add-long/2addr v9, v7

    cmp-long v9, v3, v9

    if-gez v9, :cond_3

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-nez v9, :cond_3

    .line 3400
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    goto :goto_2

    .line 3410
    .end local v2           #isOffhook:Z
    .end local v3           #now:J
    .end local v6           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    .end local v7           #timeoutTime:J
    :cond_7
    if-nez p3, :cond_8

    .line 3411
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 3413
    :cond_8
    const-wide/16 v9, -0x1

    goto :goto_0

    .line 3418
    :cond_9
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mQuickClipHotKeyDisable:Z

    if-nez v9, :cond_a

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHWKeyControlMode:Z

    if-eqz v9, :cond_f

    :cond_a
    and-int/lit16 v9, p2, 0x400

    if-nez v9, :cond_f

    .line 3419
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-eqz v9, :cond_b

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-nez v9, :cond_b

    .line 3420
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 3421
    .restart local v3       #now:J
    iget-wide v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTime:J

    const-wide/16 v11, 0x96

    add-long v7, v9, v11

    .line 3422
    .restart local v7       #timeoutTime:J
    cmp-long v9, v3, v7

    if-gez v9, :cond_b

    .line 3423
    sub-long v9, v7, v3

    goto/16 :goto_0

    .line 3426
    .end local v3           #now:J
    .end local v7           #timeoutTime:J
    :cond_b
    const/16 v9, 0x19

    if-ne p1, v9, :cond_d

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByQuickClipChord:Z

    if-eqz v9, :cond_d

    .line 3428
    if-nez p3, :cond_c

    .line 3429
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByQuickClipChord:Z

    .line 3431
    :cond_c
    const-wide/16 v9, -0x1

    goto/16 :goto_0

    .line 3433
    :cond_d
    const/16 v9, 0x18

    if-ne p1, v9, :cond_f

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyConsumedByQuickClipChord:Z

    if-eqz v9, :cond_f

    .line 3435
    if-nez p3, :cond_e

    .line 3436
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyConsumedByQuickClipChord:Z

    .line 3438
    :cond_e
    const-wide/16 v9, -0x1

    goto/16 :goto_0

    .line 3442
    :cond_f
    const/16 v9, 0x53

    if-ne p1, v9, :cond_10

    .line 3443
    if-eqz p3, :cond_10

    .line 3444
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v5

    .line 3445
    .local v5, sbs:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v5, :cond_10

    .line 3447
    :try_start_1
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsExpanded:Z

    if-nez v9, :cond_11

    .line 3448
    invoke-interface {v5}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V

    .line 3459
    .end local v5           #sbs:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_10
    :goto_3
    const-wide/16 v9, 0x0

    goto/16 :goto_0

    .line 3450
    .restart local v5       #sbs:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_11
    invoke-interface {v5}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanels()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 3452
    :catch_1
    move-exception v0

    .line 3453
    .local v0, e:Landroid/os/RemoteException;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9
.end method

.method private manageMvpKeys(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;Ljava/lang/String;)I
    .locals 7
    .parameter "win"
    .parameter "event"
    .parameter "reason"

    .prologue
    const/4 v2, -0x1

    .line 3332
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isASystemWindow(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3333
    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    array-length v1, v3

    .line 3334
    .local v1, typeCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3335
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    sget-object v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v4, v4, v0

    if-ne v3, v4, :cond_0

    .line 3353
    .end local v0           #i:I
    .end local v1           #typeCount:I
    :goto_1
    return v2

    .line 3334
    .restart local v0       #i:I
    .restart local v1       #typeCount:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3342
    :cond_1
    invoke-virtual {p0, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 3344
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x258

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 3345
    const-string v3, "WindowManager"

    const-string v4, "Unable to close a system window hiding MVP"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3350
    :cond_2
    const/16 v2, 0x64

    goto :goto_1

    .line 3352
    .end local v0           #i:I
    .end local v1           #typeCount:I
    :cond_3
    const-string v2, "WindowManager"

    const-string v3, "MVP flag is set but it\'s not a system window. Send key to focused window"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3353
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private modifyLayoutForSplitWindow(Landroid/view/WindowManagerPolicy$WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/WindowManager$LayoutParams;)V
    .locals 15
    .parameter "win"
    .parameter "parentFrm"
    .parameter "displayFrm"
    .parameter "contentFrm"
    .parameter "visibleFrm"
    .parameter "attrs"

    .prologue
    .line 5150
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSplitScreenId()I

    move-result v11

    .line 5151
    .local v11, screenId:I
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isSplitFullScreen()Z

    move-result v7

    .line 5153
    .local v7, isFullScreenMode:Z
    if-eqz v11, :cond_0

    const/4 v12, 0x1

    if-ne v7, v12, :cond_1

    .line 5315
    :cond_0
    :goto_0
    return-void

    .line 5156
    :cond_1
    const/4 v10, 0x0

    .line 5160
    .local v10, scrInfo:Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;
    const/4 v9, 0x0

    .line 5162
    .local v9, needIMEResize:Z
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    if-nez v12, :cond_2

    .line 5163
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getSplitWindowManagerInstance()Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    .line 5166
    :cond_2
    :try_start_0
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    invoke-interface {v12, v11}, Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;->getScreenInfo(I)Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;

    move-result-object v10

    .line 5167
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    iget-object v13, v13, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-interface {v12, v13}, Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;->getMinimumScreenSize(Ljava/lang/String;)Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 5177
    .local v2, MinAppRect:Landroid/graphics/Rect;
    if-eqz v10, :cond_0

    .line 5182
    invoke-interface {v10}, Lcom/lge/loader/splitwindow/ISplitWindow$IScreenInfo;->getScreenRect()Landroid/graphics/Rect;

    move-result-object v6

    .line 5183
    .local v6, givenScr:Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 5186
    .local v3, ScrRect:Landroid/graphics/Rect;
    if-eqz v9, :cond_3

    iget v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIMEInset:I

    iget v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    if-ne v12, v13, :cond_3

    iget v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iget v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    if-ge v12, v13, :cond_3

    .line 5187
    invoke-direct {p0, v6, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->needLayoutChangeWithIME(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 5188
    const-string v12, "SplitIME"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "check modified mContentBottom = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", mCurBottom = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", check ScrRect = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5192
    :cond_3
    move-object/from16 v0, p6

    iget v12, v0, Landroid/view/WindowManager$LayoutParams;->extend:I

    const/high16 v13, -0x8000

    and-int/2addr v12, v13

    if-eqz v12, :cond_4

    move-object/from16 v0, p6

    iget v12, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_4

    move-object/from16 v0, p6

    iget v12, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_5

    :cond_4
    invoke-virtual/range {p6 .. p6}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "com.android.internal.app"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6

    :cond_5
    const/4 v8, 0x1

    .line 5195
    .local v8, layOverSplitBarNeeded:Z
    :goto_1
    if-eqz v8, :cond_9

    .line 5196
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v5

    .line 5197
    .local v5, frameRect:Landroid/graphics/Rect;
    iget v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    iget v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    if-ge v12, v13, :cond_b

    .line 5200
    iget v12, v5, Landroid/graphics/Rect;->bottom:I

    iget v13, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v13

    iget v13, v3, Landroid/graphics/Rect;->bottom:I

    iget v14, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v14

    if-lt v12, v13, :cond_8

    .line 5202
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->top:I

    iget v13, v3, Landroid/graphics/Rect;->top:I

    if-ne v12, v13, :cond_7

    .line 5204
    const/16 v12, 0x30

    move-object/from16 v0, p6

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_0

    .line 5168
    .end local v2           #MinAppRect:Landroid/graphics/Rect;
    .end local v3           #ScrRect:Landroid/graphics/Rect;
    .end local v5           #frameRect:Landroid/graphics/Rect;
    .end local v6           #givenScr:Landroid/graphics/Rect;
    .end local v8           #layOverSplitBarNeeded:Z
    :catch_0
    move-exception v4

    .line 5169
    .local v4, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v12, "SplitWindow"

    const-string v13, "Binder service (SplitWindowPolicyService) is not available"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5177
    if-nez v10, :cond_0

    goto/16 :goto_0

    .line 5172
    .end local v4           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 5173
    .local v4, e:Ljava/lang/NullPointerException;
    const-string v12, "SplitWindow"

    const-string v13, "SplitWindowPolicyService is not created well.. check service routine"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5177
    if-nez v10, :cond_0

    goto/16 :goto_0

    .end local v4           #e:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v12

    if-eqz v10, :cond_0

    .line 5178
    throw v12

    .line 5192
    .restart local v2       #MinAppRect:Landroid/graphics/Rect;
    .restart local v3       #ScrRect:Landroid/graphics/Rect;
    .restart local v6       #givenScr:Landroid/graphics/Rect;
    :cond_6
    const/4 v8, 0x0

    goto :goto_1

    .line 5206
    .restart local v5       #frameRect:Landroid/graphics/Rect;
    .restart local v8       #layOverSplitBarNeeded:Z
    :cond_7
    const/16 v12, 0x50

    move-object/from16 v0, p6

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_0

    .line 5210
    :cond_8
    move-object/from16 v0, p6

    iget v12, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    and-int/lit8 v12, v12, -0x71

    move-object/from16 v0, p6

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 5211
    const/16 v12, 0x11

    move-object/from16 v0, p6

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 5234
    .end local v5           #frameRect:Landroid/graphics/Rect;
    :cond_9
    :goto_2
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->right:I

    if-le v12, v13, :cond_f

    .line 5237
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5238
    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5239
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5242
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->top:I

    iget v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    if-ne v12, v13, :cond_e

    .line 5244
    if-eqz v2, :cond_a

    iget v12, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v14

    if-le v12, v13, :cond_a

    .line 5255
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    iget v13, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v12, v13

    move-object/from16 v0, p4

    iput v12, v0, Landroid/graphics/Rect;->top:I

    .line 5256
    move-object/from16 v0, p4

    iget v12, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p3

    iput v12, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p2

    iput v12, v0, Landroid/graphics/Rect;->top:I

    .line 5314
    :cond_a
    :goto_3
    move-object/from16 v0, p5

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 5216
    .restart local v5       #frameRect:Landroid/graphics/Rect;
    :cond_b
    iget v12, v5, Landroid/graphics/Rect;->right:I

    iget v13, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v13

    iget v13, v3, Landroid/graphics/Rect;->right:I

    iget v14, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v14

    if-lt v12, v13, :cond_d

    .line 5218
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->left:I

    iget v13, v3, Landroid/graphics/Rect;->left:I

    if-ne v12, v13, :cond_c

    .line 5220
    const/4 v12, 0x3

    move-object/from16 v0, p6

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_0

    .line 5222
    :cond_c
    const/4 v12, 0x5

    move-object/from16 v0, p6

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_0

    .line 5226
    :cond_d
    move-object/from16 v0, p6

    iget v12, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    and-int/lit8 v12, v12, -0x8

    move-object/from16 v0, p6

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 5227
    const/16 v12, 0x11

    move-object/from16 v0, p6

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_2

    .line 5261
    .end local v5           #frameRect:Landroid/graphics/Rect;
    :cond_e
    if-eqz v2, :cond_a

    iget v12, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v14

    if-le v12, v13, :cond_a

    .line 5270
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->top:I

    iget v13, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v12, v13

    move-object/from16 v0, p4

    iput v12, v0, Landroid/graphics/Rect;->bottom:I

    .line 5271
    move-object/from16 v0, p4

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p3

    iput v12, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p2

    iput v12, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    .line 5277
    :cond_f
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5278
    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5279
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5282
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->left:I

    iget v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    if-ne v12, v13, :cond_10

    .line 5284
    if-eqz v2, :cond_a

    iget v12, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v14

    if-le v12, v13, :cond_a

    .line 5293
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->right:I

    iget v13, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v12, v13

    move-object/from16 v0, p4

    iput v12, v0, Landroid/graphics/Rect;->left:I

    .line 5294
    move-object/from16 v0, p4

    iget v12, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p3

    iput v12, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iput v12, v0, Landroid/graphics/Rect;->left:I

    goto/16 :goto_3

    .line 5299
    :cond_10
    if-eqz v2, :cond_a

    iget v12, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v14

    if-le v12, v13, :cond_a

    .line 5308
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->left:I

    iget v13, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v13

    move-object/from16 v0, p4

    iput v12, v0, Landroid/graphics/Rect;->right:I

    .line 5309
    move-object/from16 v0, p4

    iget v12, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p3

    iput v12, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p2

    iput v12, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_3
.end method

.method private modifySubPanelLayoutForSplitWindow(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 10
    .parameter "win"
    .parameter "attached"
    .parameter "attrs"
    .parameter "parentFrm"
    .parameter "displayFrm"
    .parameter "contentFrm"
    .parameter "visibleFrm"

    .prologue
    .line 5036
    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getSplitScreenId()I

    move-result v9

    .line 5037
    .local v9, screenId:I
    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->isSplitFullScreen()Z

    move-result v8

    .line 5039
    .local v8, isFullScreenMode:Z
    if-eqz v9, :cond_0

    const/4 v1, 0x1

    if-ne v8, v1, :cond_1

    .line 5147
    :cond_0
    :goto_0
    return-void

    .line 5042
    :cond_1
    iget v1, p3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x3e9

    if-eq v1, v2, :cond_0

    iget v1, p3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x3ec

    if-eq v1, v2, :cond_0

    .line 5053
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isExceptionCase(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5054
    const-string v1, "SplitLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chrome case.. attached Frame = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", contentFrm = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", attrs = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5055
    iget v1, p3, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v1, v2

    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-le v1, v2, :cond_0

    iget v1, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/16 v2, 0x12c

    if-le v1, v2, :cond_0

    .line 5056
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, p6

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p5, Landroid/graphics/Rect;->left:I

    iput v1, p4, Landroid/graphics/Rect;->left:I

    .line 5057
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p6

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p5, Landroid/graphics/Rect;->top:I

    iput v1, p4, Landroid/graphics/Rect;->top:I

    .line 5058
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p6

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p5, Landroid/graphics/Rect;->right:I

    iput v1, p4, Landroid/graphics/Rect;->right:I

    .line 5059
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p6

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p5, Landroid/graphics/Rect;->bottom:I

    iput v1, p4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    .line 5064
    :cond_2
    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5065
    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5066
    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p5, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5067
    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5069
    iget v1, p3, Landroid/view/WindowManager$LayoutParams;->extend:I

    const/high16 v2, -0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_6

    iget v1, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    iget v1, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    iget v1, p3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x3eb

    if-ne v1, v2, :cond_6

    .line 5074
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, p7

    iput v1, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p6

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p5, Landroid/graphics/Rect;->left:I

    iput v1, p4, Landroid/graphics/Rect;->left:I

    .line 5075
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p7

    iput v1, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p6

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p5, Landroid/graphics/Rect;->top:I

    iput v1, p4, Landroid/graphics/Rect;->top:I

    .line 5076
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p7

    iput v1, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p6

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p5, Landroid/graphics/Rect;->right:I

    iput v1, p4, Landroid/graphics/Rect;->right:I

    .line 5077
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p7

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p6

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p5, Landroid/graphics/Rect;->bottom:I

    iput v1, p4, Landroid/graphics/Rect;->bottom:I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object v7, p3

    .line 5078
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/policy/impl/PhoneWindowManager;->modifyLayoutForSplitWindow(Landroid/view/WindowManagerPolicy$WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/WindowManager$LayoutParams;)V

    .line 5080
    iget v1, p3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x3eb

    if-ne v1, v2, :cond_0

    .line 5081
    iget v1, p4, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    if-ge v1, v2, :cond_3

    .line 5082
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p6

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p5, Landroid/graphics/Rect;->top:I

    iput v1, p4, Landroid/graphics/Rect;->top:I

    .line 5085
    :cond_3
    iget v1, p4, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    if-le v1, v2, :cond_4

    .line 5086
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p6

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p5, Landroid/graphics/Rect;->bottom:I

    iput v1, p4, Landroid/graphics/Rect;->bottom:I

    .line 5089
    :cond_4
    iget v1, p4, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    if-ge v1, v2, :cond_5

    .line 5090
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, p6

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p5, Landroid/graphics/Rect;->left:I

    iput v1, p4, Landroid/graphics/Rect;->left:I

    .line 5093
    :cond_5
    iget v1, p4, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    if-le v1, v2, :cond_0

    .line 5094
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p6

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p5, Landroid/graphics/Rect;->right:I

    iput v1, p4, Landroid/graphics/Rect;->right:I

    goto/16 :goto_0

    .line 5100
    :cond_6
    iget v1, p3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_7

    iget v1, p3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x3ea

    if-eq v1, v2, :cond_7

    iget v1, p3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x3eb

    if-ne v1, v2, :cond_0

    .line 5106
    :cond_7
    iget v1, p4, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    if-lt v1, v2, :cond_c

    .line 5107
    iget v1, p3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_d

    invoke-virtual {p3}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PopupWindow"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 5108
    const-string v1, "SplitWindow"

    const-string v2, "this is not a expandable popup window... like zoom button of MapView"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5115
    :cond_8
    :goto_1
    iget v1, p4, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    if-ge v1, v2, :cond_9

    .line 5116
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p6

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p5, Landroid/graphics/Rect;->top:I

    iput v1, p4, Landroid/graphics/Rect;->top:I

    .line 5119
    :cond_9
    iget v1, p4, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    if-le v1, v2, :cond_a

    .line 5120
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p6

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p5, Landroid/graphics/Rect;->bottom:I

    iput v1, p4, Landroid/graphics/Rect;->bottom:I

    .line 5123
    :cond_a
    iget v1, p4, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    if-ge v1, v2, :cond_b

    .line 5124
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, p6

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p5, Landroid/graphics/Rect;->left:I

    iput v1, p4, Landroid/graphics/Rect;->left:I

    .line 5127
    :cond_b
    iget v1, p4, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    if-le v1, v2, :cond_c

    .line 5128
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p6

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p5, Landroid/graphics/Rect;->right:I

    iput v1, p4, Landroid/graphics/Rect;->right:I

    .line 5133
    :cond_c
    invoke-virtual {p3}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PopupWindow"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_0

    iget v1, p3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x3eb

    if-eq v1, v2, :cond_0

    .line 5137
    iget v1, p3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_e

    invoke-virtual {p3}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PopupWindow"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 5138
    const-string v1, "SplitWindow"

    const-string v2, "this is not a expandable popup window... like zoom button of MapView"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5110
    :cond_d
    iget v1, p4, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    if-eq v1, v2, :cond_8

    .line 5111
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p6

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p5, Landroid/graphics/Rect;->top:I

    iput v1, p4, Landroid/graphics/Rect;->top:I

    goto/16 :goto_1

    .line 5140
    :cond_e
    iget v1, p4, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    if-gt v1, v2, :cond_f

    .line 5141
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p6

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p5, Landroid/graphics/Rect;->right:I

    iput v1, p4, Landroid/graphics/Rect;->right:I

    goto/16 :goto_0

    .line 5142
    :cond_f
    iget v1, p4, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    if-lt v1, v2, :cond_0

    .line 5143
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, p6

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p5, Landroid/graphics/Rect;->left:I

    iput v1, p4, Landroid/graphics/Rect;->left:I

    goto/16 :goto_0
.end method

.method private needLayoutChangeWithIME(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5
    .parameter "screenRect"
    .parameter "outRect"

    .prologue
    .line 5007
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    if-le v2, v3, :cond_1

    .line 5033
    :cond_0
    :goto_0
    return-void

    .line 5010
    :cond_1
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 5012
    .local v0, midY:I
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_3

    .line 5013
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    aget v3, v3, v4

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v1, v2, v3

    .line 5014
    .local v1, modifiedBottom:I
    iget v2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    iput v2, p2, Landroid/graphics/Rect;->top:I

    .line 5015
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v1

    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    .line 5017
    iget v2, p2, Landroid/graphics/Rect;->top:I

    if-gez v2, :cond_2

    .line 5018
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v2, p2, Landroid/graphics/Rect;->top:I

    .line 5020
    :cond_2
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    if-le v2, v3, :cond_0

    .line 5021
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 5025
    .end local v1           #modifiedBottom:I
    :cond_3
    iget v2, p1, Landroid/graphics/Rect;->top:I

    if-gez v2, :cond_4

    .line 5026
    const/4 v2, 0x0

    iput v2, p2, Landroid/graphics/Rect;->top:I

    .line 5028
    :cond_4
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIMEInset:I

    if-le v2, v3, :cond_0

    .line 5029
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIMEInset:I

    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method private offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3
    .parameter "win"

    .prologue
    .line 5730
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 5731
    .local v0, top:I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 5732
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    if-le v1, v0, :cond_0

    .line 5733
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    .line 5735
    :cond_0
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 5736
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenVisibleInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 5737
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    if-le v1, v0, :cond_1

    .line 5738
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    .line 5746
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    if-ge v1, v2, :cond_2

    .line 5748
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIMEInset:I

    .line 5751
    :cond_2
    return-void
.end method

.method private performAuditoryFeedbackForAccessibilityIfNeed()V
    .locals 4

    .prologue
    .line 8195
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isGlobalAccessibilityGestureEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 8207
    :cond_0
    :goto_0
    return-void

    .line 8198
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 8200
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSilentMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 8203
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .line 8205
    .local v1, ringTone:Landroid/media/Ringtone;
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 8206
    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    goto :goto_0
.end method

.method private readDeviceNodeDetail(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "path"

    .prologue
    const/4 v8, 0x0

    .line 2303
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 2304
    const/16 v10, 0x400

    :try_start_0
    new-array v0, v10, [C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2305
    .local v0, buffer:[C
    const/4 v2, 0x0

    .line 2306
    .local v2, file:Ljava/io/File;
    const/4 v4, 0x0

    .line 2307
    .local v4, fileReader:Ljava/io/FileReader;
    const/4 v6, 0x0

    .line 2308
    .local v6, len:I
    const/4 v7, 0x0

    .line 2311
    .local v7, rawStr:Ljava/lang/String;
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 2312
    .end local v2           #file:Ljava/io/File;
    .local v3, file:Ljava/io/File;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2313
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    .line 2314
    .end local v4           #fileReader:Ljava/io/FileReader;
    .local v5, fileReader:Ljava/io/FileReader;
    const/4 v10, 0x0

    const/16 v11, 0x400

    :try_start_3
    invoke-virtual {v5, v0, v10, v11}, Ljava/io/FileReader;->read([CII)I

    move-result v6

    .line 2315
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 2316
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v10, v0, v11, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    move-result-object v7

    .line 2328
    if-eqz v5, :cond_0

    .line 2329
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 2333
    :cond_0
    :goto_0
    :try_start_5
    monitor-exit v9

    move-object v4, v5

    .end local v5           #fileReader:Ljava/io/FileReader;
    .restart local v4       #fileReader:Ljava/io/FileReader;
    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    move-object v8, v7

    .line 2336
    :goto_1
    return-object v8

    .line 2331
    .end local v2           #file:Ljava/io/File;
    .end local v4           #fileReader:Ljava/io/FileReader;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #fileReader:Ljava/io/FileReader;
    :catch_0
    move-exception v1

    .line 2332
    .local v1, e:Ljava/io/IOException;
    const-string v8, "WindowManager"

    const-string v10, "IOException closing file"

    invoke-static {v8, v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2335
    .end local v0           #buffer:[C
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #file:Ljava/io/File;
    .end local v5           #fileReader:Ljava/io/FileReader;
    .end local v6           #len:I
    .end local v7           #rawStr:Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v8

    .line 2319
    .restart local v0       #buffer:[C
    .restart local v3       #file:Ljava/io/File;
    .restart local v4       #fileReader:Ljava/io/FileReader;
    .restart local v6       #len:I
    .restart local v7       #rawStr:Ljava/lang/String;
    :cond_1
    :try_start_6
    const-string v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is not exist."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    .line 2328
    if-eqz v4, :cond_2

    .line 2329
    :try_start_7
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 2333
    :cond_2
    :goto_2
    :try_start_8
    monitor-exit v9

    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_1

    .line 2331
    .end local v2           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    :catch_1
    move-exception v1

    .line 2332
    .restart local v1       #e:Ljava/io/IOException;
    const-string v10, "WindowManager"

    const-string v11, "IOException closing file"

    invoke-static {v10, v11, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 2322
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    :catch_2
    move-exception v1

    .line 2323
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_9
    const-string v10, "WindowManager"

    const-string v11, "This kernel does not have this path."

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 2328
    if-eqz v4, :cond_3

    .line 2329
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 2335
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_3
    :goto_4
    :try_start_b
    monitor-exit v9

    goto :goto_1

    .line 2331
    .restart local v1       #e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v1

    .line 2332
    .local v1, e:Ljava/io/IOException;
    const-string v10, "WindowManager"

    const-string v11, "IOException closing file"

    invoke-static {v10, v11, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_4

    .line 2324
    .end local v1           #e:Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 2325
    .local v1, e:Ljava/lang/Exception;
    :goto_5
    :try_start_c
    const-string v10, "WindowManager"

    const-string v11, ""

    invoke-static {v10, v11, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 2328
    if-eqz v4, :cond_3

    .line 2329
    :try_start_d
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    goto :goto_4

    .line 2331
    :catch_5
    move-exception v1

    .line 2332
    .local v1, e:Ljava/io/IOException;
    :try_start_e
    const-string v10, "WindowManager"

    const-string v11, "IOException closing file"

    invoke-static {v10, v11, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_4

    .line 2327
    .end local v1           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v8

    .line 2328
    :goto_6
    if-eqz v4, :cond_4

    .line 2329
    :try_start_f
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6

    .line 2333
    :cond_4
    :goto_7
    :try_start_10
    throw v8

    .line 2331
    :catch_6
    move-exception v1

    .line 2332
    .restart local v1       #e:Ljava/io/IOException;
    const-string v10, "WindowManager"

    const-string v11, "IOException closing file"

    invoke-static {v10, v11, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_7

    .line 2327
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    :catchall_2
    move-exception v8

    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_6

    .end local v2           #file:Ljava/io/File;
    .end local v4           #fileReader:Ljava/io/FileReader;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #fileReader:Ljava/io/FileReader;
    :catchall_3
    move-exception v8

    move-object v4, v5

    .end local v5           #fileReader:Ljava/io/FileReader;
    .restart local v4       #fileReader:Ljava/io/FileReader;
    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_6

    .line 2324
    .end local v2           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    :catch_7
    move-exception v1

    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_5

    .end local v2           #file:Ljava/io/File;
    .end local v4           #fileReader:Ljava/io/FileReader;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #fileReader:Ljava/io/FileReader;
    :catch_8
    move-exception v1

    move-object v4, v5

    .end local v5           #fileReader:Ljava/io/FileReader;
    .restart local v4       #fileReader:Ljava/io/FileReader;
    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_5

    .line 2322
    .end local v2           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    :catch_9
    move-exception v1

    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_3

    .end local v2           #file:Ljava/io/File;
    .end local v4           #fileReader:Ljava/io/FileReader;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #fileReader:Ljava/io/FileReader;
    :catch_a
    move-exception v1

    move-object v4, v5

    .end local v5           #fileReader:Ljava/io/FileReader;
    .restart local v4       #fileReader:Ljava/io/FileReader;
    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_3
.end method

.method private readRotation(I)I
    .locals 2
    .parameter "resID"

    .prologue
    .line 2664
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2665
    .local v0, rotation:I
    sparse-switch v0, :sswitch_data_0

    .line 2678
    .end local v0           #rotation:I
    :goto_0
    const/4 v1, -0x1

    :goto_1
    return v1

    .line 2667
    .restart local v0       #rotation:I
    :sswitch_0
    const/4 v1, 0x0

    goto :goto_1

    .line 2669
    :sswitch_1
    const/4 v1, 0x1

    goto :goto_1

    .line 2671
    :sswitch_2
    const/4 v1, 0x2

    goto :goto_1

    .line 2673
    :sswitch_3
    const/4 v1, 0x3

    goto :goto_1

    .line 2675
    .end local v0           #rotation:I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 2665
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private registerKeepHidingNavInputEventReceiver()V
    .locals 3

    .prologue
    .line 4519
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeepHidingNavInputEventReceiver:Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver;

    if-eqz v0, :cond_0

    .line 4520
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receiver is not null("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeepHidingNavInputEventReceiver:Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ").. skip creating a new one"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4526
    :goto_0
    return-void

    .line 4523
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    const-string v1, "KeepHidingNavInputEventReceiver"

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeepHidingNavInputChannel:Landroid/view/InputChannel;

    .line 4524
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeepHidingNavInputChannel:Landroid/view/InputChannel;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeepHidingNavInputEventReceiver:Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver;

    .line 4525
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registered KeepHidingNavInputEventReceiver of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeepHidingNavInputEventReceiver:Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "reason"

    .prologue
    .line 7614
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7616
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7620
    :cond_0
    :goto_0
    return-void

    .line 7617
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private final sendIntent(IIILjava/lang/String;)V
    .locals 6
    .parameter "headset"
    .parameter "headsetState"
    .parameter "prevHeadsetState"
    .parameter "headsetName"

    .prologue
    .line 6214
    and-int v3, p2, p1

    and-int v4, p3, p1

    if-eq v3, v4, :cond_0

    .line 6216
    const/4 v2, 0x0

    .line 6217
    .local v2, state:I
    const/4 v1, 0x0

    .line 6220
    .local v1, device:I
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_1

    .line 6221
    const/4 v1, 0x4

    .line 6229
    :goto_0
    and-int v3, p2, p1

    if-eqz v3, :cond_3

    .line 6230
    const/4 v2, 0x1

    .line 6235
    :goto_1
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    if-eqz v3, :cond_5

    .line 6236
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 6237
    .local v0, am:Landroid/media/AudioManager;
    if-nez v0, :cond_4

    .line 6238
    const-string v3, "WindowManager"

    const-string v4, "sendIntent: couldn\'t get AudioManager reference"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6247
    .end local v0           #am:Landroid/media/AudioManager;
    .end local v1           #device:I
    .end local v2           #state:I
    :cond_0
    :goto_2
    return-void

    .line 6222
    .restart local v1       #device:I
    .restart local v2       #state:I
    :cond_1
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_2

    .line 6223
    const/16 v1, 0x8

    goto :goto_0

    .line 6225
    :cond_2
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDeviceState() invalid headset type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 6232
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 6241
    .restart local v0       #am:Landroid/media/AudioManager;
    :cond_4
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendIntent(): device "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6242
    invoke-virtual {v0, v1, v2, p4}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;)V

    goto :goto_2

    .line 6244
    .end local v0           #am:Landroid/media/AudioManager;
    :cond_5
    const-string v3, "WindowManager"

    const-string v4, "system not booted yet, call setWiredDeviceConnectionState later"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private final declared-synchronized sendIntents(Ljava/lang/String;)V
    .locals 8
    .parameter "headsetName"

    .prologue
    const/4 v7, 0x3

    .line 6173
    monitor-enter p0

    :try_start_0
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendIntents(): mHeadsetJackState "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadsetJackState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mCurHeadsetState "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurHeadsetState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mPrevHeadsetState "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPrevHeadsetState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6176
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadsetLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6177
    :try_start_1
    sget v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadsetJackState:I

    and-int/lit8 v3, v4, 0x3

    .line 6178
    .local v3, headsetState:I
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurHeadsetState:I

    if-ne v4, v3, :cond_1

    .line 6179
    const-string v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendIntents(): mCurHeadsetState "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurHeadsetState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " headsetState "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6180
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6210
    :cond_0
    monitor-exit p0

    return-void

    .line 6182
    :cond_1
    :try_start_2
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurHeadsetState:I

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPrevHeadsetState:I

    .line 6183
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurHeadsetState:I

    .line 6184
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6185
    const/4 v0, 0x3

    .line 6187
    .local v0, allHeadsets:I
    const/4 v1, 0x1

    .local v1, curHeadset:I
    :goto_0
    if-ge v1, v7, :cond_3

    .line 6188
    and-int v4, v3, v1

    if-ne v4, v1, :cond_2

    :try_start_3
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPrevHeadsetState:I

    and-int/2addr v4, v1

    if-nez v4, :cond_2

    .line 6189
    and-int v4, v1, v0

    if-eqz v4, :cond_2

    .line 6190
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPrevHeadsetState:I

    invoke-direct {p0, v1, v3, v4, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendIntent(IIILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 6191
    xor-int/lit8 v4, v1, -0x1

    and-int/2addr v0, v4

    .line 6187
    :cond_2
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6184
    .end local v0           #allHeadsets:I
    .end local v1           #curHeadset:I
    .end local v3           #headsetState:I
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 6173
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    .line 6197
    .restart local v0       #allHeadsets:I
    .restart local v1       #curHeadset:I
    .restart local v3       #headsetState:I
    :cond_3
    const-wide/16 v4, 0x14

    :try_start_6
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 6202
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-ge v1, v7, :cond_0

    .line 6203
    and-int v4, v3, v1

    if-nez v4, :cond_4

    :try_start_7
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPrevHeadsetState:I

    and-int/2addr v4, v1

    if-ne v4, v1, :cond_4

    .line 6204
    and-int v4, v1, v0

    if-eqz v4, :cond_4

    .line 6205
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPrevHeadsetState:I

    invoke-direct {p0, v1, v3, v4, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendIntent(IIILjava/lang/String;)V

    .line 6206
    xor-int/lit8 v4, v1, -0x1

    and-int/2addr v0, v4

    .line 6202
    :cond_4
    shl-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 6198
    :catch_0
    move-exception v2

    .line 6199
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1
.end method

.method private setProximitySensorEnabled(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    const/4 v2, 0x0

    .line 8946
    if-eqz p1, :cond_1

    .line 8947
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mProximitySensorEnabled:Z

    if-nez v0, :cond_0

    .line 8948
    const-string v0, "WindowManager"

    const-string v1, "Proximity Regi S"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8949
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mProximitySensorEnabled:Z

    .line 8950
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mProximityNear:Z

    .line 8951
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 8953
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyPress:Ljava/lang/Runnable;

    const-wide/16 v2, 0x384

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8954
    const-string v0, "WindowManager"

    const-string v1, "Proximity Regi E"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8964
    :cond_0
    :goto_0
    return-void

    .line 8957
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_0

    .line 8958
    const-string v0, "WindowManager"

    const-string v1, "Proximity Un-Regi S"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8959
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mProximitySensorEnabled:Z

    .line 8960
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 8961
    const-string v0, "WindowManager"

    const-string v1, "Proximity Un-Regi E"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private shouldKeepHidingNavOnTouchDown()Z
    .locals 3

    .prologue
    .line 4467
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 4468
    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    :goto_0
    if-eqz v0, :cond_1

    .line 4469
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->extend:I

    .line 4470
    .local v1, extend:I
    const/high16 v2, 0x40

    and-int/2addr v2, v1

    if-eqz v2, :cond_1

    .line 4471
    const/4 v2, 0x1

    .line 4474
    .end local v1           #extend:I
    :goto_1
    return v2

    .line 4467
    .end local v0           #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 4474
    .restart local v0       #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private showNavigationBar()V
    .locals 7

    .prologue
    .line 4478
    const/4 v0, 0x0

    .line 4479
    .local v0, changed:Z
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4485
    :try_start_0
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    or-int/lit8 v2, v2, 0x2

    or-int/lit8 v2, v2, 0x1

    or-int/lit8 v1, v2, 0x4

    .line 4489
    .local v1, newVal:I
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    if-eq v2, v1, :cond_0

    .line 4490
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 4491
    const/4 v0, 0x1

    .line 4496
    :cond_0
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    or-int/lit8 v1, v2, 0x2

    .line 4498
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    if-eq v2, v1, :cond_1

    .line 4499
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    .line 4500
    const/4 v0, 0x1

    .line 4501
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/internal/policy/impl/PhoneWindowManager$18;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$18;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    const-wide/16 v5, 0x3e8

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4512
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4513
    if-eqz v0, :cond_2

    .line 4514
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->reevaluateStatusBarVisibility()V

    .line 4516
    :cond_2
    return-void

    .line 4512
    .end local v1           #newVal:I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private takeScreenshot()V
    .locals 11

    .prologue
    const/4 v0, 0x0

    .line 6365
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v7

    .line 6367
    :try_start_0
    const-string v6, "ro.lge.b2b.vmware"

    const/4 v8, 0x0

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isMvpOnTop()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 6368
    new-instance v4, Landroid/content/Intent;

    const-string v6, "lge.intent.action.toast"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6369
    .local v4, intent:Landroid/content/Intent;
    const-string v6, "text"

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v9, 0x20b002f

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6370
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 6371
    monitor-exit v7

    .line 6450
    .end local v4           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 6376
    :cond_0
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 6377
    const/4 v5, 0x0

    .line 6379
    .local v5, rv:I
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Lcom/lge/cappuccino/IMdm;->checkScreenCapture(Landroid/content/ComponentName;)I

    move-result v5

    .line 6380
    if-eqz v5, :cond_1

    .line 6381
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v6

    const v8, 0x20b002f

    invoke-interface {v6, v8}, Lcom/lge/cappuccino/IMdm;->sendToastMessageId(I)V

    .line 6383
    const-string v6, "WindowManager"

    const-string v8, "LGMDM Block ScreenCapture"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6384
    monitor-exit v7

    goto :goto_0

    .line 6449
    .end local v5           #rv:I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 6390
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 6391
    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_2
    if-eqz v0, :cond_3

    .line 6392
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->extend:I

    .line 6393
    .local v3, extend:I
    const/high16 v6, 0x2

    and-int/2addr v6, v3

    if-eqz v6, :cond_3

    .line 6394
    const-string v6, "WindowManager"

    const-string v8, "Blocking ScreenCapture"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6395
    monitor-exit v7

    goto :goto_0

    .line 6400
    .end local v3           #extend:I
    :cond_3
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v6, :cond_4

    .line 6401
    monitor-exit v7

    goto :goto_0

    .line 6403
    :cond_4
    new-instance v1, Landroid/content/ComponentName;

    const-string v6, "com.android.systemui"

    const-string v8, "com.android.systemui.screenshot.TakeScreenshotService"

    invoke-direct {v1, v6, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6405
    .local v1, cn:Landroid/content/ComponentName;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 6406
    .restart local v4       #intent:Landroid/content/Intent;
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 6407
    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$25;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$25;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    .line 6444
    .local v2, conn:Landroid/content/ServiceConnection;
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    const/4 v9, -0x2

    invoke-virtual {v6, v4, v2, v8, v9}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;II)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 6446
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 6447
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotTimeout:Ljava/lang/Runnable;

    const-wide/16 v9, 0x2710

    invoke-virtual {v6, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6449
    :cond_5
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private toggleQuickClipFromHotKey()V
    .locals 4

    .prologue
    .line 1527
    const-string v1, "true"

    const-string v2, "gsm.lge.ota_is_running"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "true"

    const-string v2, "gsm.lge.ota_ignoreKey"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1529
    :cond_0
    const-string v1, "WindowManager"

    const-string v2, "OTA key ignore!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    :goto_0
    return-void

    .line 1532
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.QuickClip.action.TOGGLE_QUICKCLIP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1533
    .local v0, quickclipIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private final update()V
    .locals 6

    .prologue
    .line 6154
    sget v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadsetJackState:I

    and-int/lit8 v1, v2, 0x3

    .line 6156
    .local v1, headsetState:I
    const/16 v0, 0x64

    .line 6160
    .local v0, delay:I
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurHeadsetState:I

    if-ne v2, v1, :cond_0

    .line 6161
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update(): mCurHeadsetState "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurHeadsetState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " headsetState "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6169
    :goto_0
    return-void

    .line 6165
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 6166
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update(): sending Message to IntentHander with delay of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6167
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIntentHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIntentHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadsetName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    int-to-long v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private updateLockScreenTimeout()V
    .locals 6

    .prologue
    .line 8041
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    monitor-enter v2

    .line 8042
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 8044
    .local v0, enable:Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eq v1, v0, :cond_0

    .line 8045
    if-eqz v0, :cond_2

    .line 8047
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v4, v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8052
    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    .line 8054
    :cond_0
    monitor-exit v2

    .line 8055
    return-void

    .line 8042
    .end local v0           #enable:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 8050
    .restart local v0       #enable:Z
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 8054
    .end local v0           #enable:Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateSystemUiVisibilityLw()I
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 8321
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v5, :cond_0

    move v0, v4

    .line 8363
    :goto_0
    return v0

    .line 8324
    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7d4

    if-ne v5, v6, :cond_1

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    move v0, v4

    .line 8331
    goto :goto_0

    .line 8333
    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result v5

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    xor-int/lit8 v6, v6, -0x1

    and-int v2, v5, v6

    .line 8336
    .local v2, tmpVisibility:I
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBar:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v5

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBarLayer:I

    if-ge v5, v6, :cond_2

    .line 8337
    and-int/lit8 v2, v2, -0x10

    .line 8339
    :cond_2
    move v3, v2

    .line 8340
    .local v3, visibility:I
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    xor-int v0, v3, v5

    .line 8341
    .local v0, diff:I
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->getNeedsMenuLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v1

    .line 8342
    .local v1, needsMenu:Z
    if-nez v0, :cond_3

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    if-ne v5, v1, :cond_3

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v6

    if-ne v5, v6, :cond_3

    move v0, v4

    .line 8344
    goto :goto_0

    .line 8346
    :cond_3
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    .line 8347
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    .line 8348
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    .line 8349
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/internal/policy/impl/PhoneWindowManager$40;

    invoke-direct {v5, p0, v3, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$40;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;IZ)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private waitForKeyguard(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 2
    .parameter "screenOnListener"

    .prologue
    .line 7486
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    if-eqz v0, :cond_1

    .line 7487
    if-eqz p1, :cond_0

    .line 7488
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$34;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$34;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->onScreenTurnedOn(Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;)V

    .line 7502
    :goto_0
    return-void

    .line 7496
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->onScreenTurnedOn(Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;)V

    .line 7501
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->finishScreenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    goto :goto_0

    .line 7499
    :cond_1
    const-string v0, "WindowManager"

    const-string v1, "No keyguard mediator!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private waitForKeyguardWindowDrawn(Landroid/os/IBinder;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 2
    .parameter "windowToken"
    .parameter "screenOnListener"

    .prologue
    .line 7506
    if-eqz p1, :cond_0

    .line 7508
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$35;

    invoke-direct {v1, p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager$35;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    invoke-interface {v0, p1, v1}, Landroid/view/IWindowManager;->waitForWindowDrawn(Landroid/os/IBinder;Landroid/os/IRemoteCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 7525
    :goto_0
    return-void

    .line 7518
    :catch_0
    move-exception v0

    .line 7523
    :cond_0
    const-string v0, "WindowManager"

    const-string v1, "No lock screen!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7524
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->finishScreenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    goto :goto_0
.end method


# virtual methods
.method public addStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;III)Landroid/view/View;
    .locals 22
    .parameter "appToken"
    .parameter "packageName"
    .parameter "theme"
    .parameter "compatInfo"
    .parameter "nonLocalizedLabel"
    .parameter "labelRes"
    .parameter "icon"
    .parameter "windowFlags"

    .prologue
    .line 3013
    if-nez p2, :cond_1

    .line 3014
    const/16 v16, 0x0

    .line 3144
    :cond_0
    :goto_0
    return-object v16

    .line 3018
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 3022
    .local v9, context:Landroid/content/Context;
    invoke-virtual {v9}, Landroid/content/Context;->getThemeResId()I
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v19

    move/from16 v0, p3

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    if-eqz p6, :cond_3

    .line 3024
    :cond_2
    const/16 v19, 0x0

    :try_start_1
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v9

    .line 3025
    move/from16 v0, p3

    invoke-virtual {v9, v0}, Landroid/content/Context;->setTheme(I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 3031
    :cond_3
    :goto_1
    :try_start_2
    invoke-static {v9}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v17

    .line 3032
    .local v17, win:Landroid/view/Window;
    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v15

    .line 3033
    .local v15, ta:Landroid/content/res/TypedArray;
    const/16 v19, 0xc

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v19

    if-nez v19, :cond_4

    const/16 v19, 0xe

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 3037
    :cond_4
    const/16 v16, 0x0

    goto :goto_0

    .line 3040
    :cond_5
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 3041
    .local v14, r:Landroid/content/res/Resources;
    move/from16 v0, p6

    move-object/from16 v1, p5

    invoke-virtual {v14, v0, v1}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 3043
    const/16 v19, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 3049
    or-int/lit8 v19, p8, 0x10

    or-int/lit8 v19, v19, 0x8

    const/high16 v20, 0x2

    or-int v19, v19, v20

    or-int/lit8 v20, p8, 0x10

    or-int/lit8 v20, v20, 0x8

    const/high16 v21, 0x2

    or-int v20, v20, v21

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 3059
    invoke-virtual/range {p4 .. p4}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v19

    if-nez v19, :cond_6

    .line 3060
    const/high16 v19, 0x2000

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 3063
    :cond_6
    const/16 v19, -0x1

    const/16 v20, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 3066
    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    .line 3067
    .local v13, params:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p1

    iput-object v0, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 3068
    move-object/from16 v0, p2

    iput-object v0, v13, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 3069
    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v19

    const/16 v20, 0x8

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v19

    move/from16 v0, v19

    iput v0, v13, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 3071
    iget v0, v13, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    iput v0, v13, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 3073
    iget v0, v13, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x10

    move/from16 v0, v19

    iput v0, v13, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 3074
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Starting "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 3076
    const-string v19, "window"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/WindowManager;

    .line 3077
    .local v18, wm:Landroid/view/WindowManager;
    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v16

    .line 3079
    .local v16, view:Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->isFloating()Z
    :try_end_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v19

    if-eqz v19, :cond_7

    .line 3086
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 3091
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    const/16 v20, 0x80

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v12, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 3092
    .local v12, metaData:Landroid/os/Bundle;
    if-eqz v12, :cond_a

    .line 3093
    const-string v19, "navi_bar_bg_disabled"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 3094
    .local v10, disabled:Z
    const-string v19, "navi_bar_bg_port_res_id"

    const/16 v20, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 3095
    .local v5, portResId:I
    const-string v19, "navi_bar_bg_land_res_id"

    const/16 v20, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 3096
    .local v6, landResId:I
    const-string v19, "navi_bar_bg_alpha"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 3097
    .local v7, alpha:I
    const-string v19, "navi_bar_bg_reserved"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 3098
    .local v8, reserved:I
    const-string v4, ""

    .line 3099
    .local v4, pkg:Ljava/lang/String;
    const-string v19, "com.lge.camera"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_8

    .line 3100
    const-string v4, "setStatusBarOpaque"

    .line 3103
    :cond_8
    if-nez v10, :cond_c

    .line 3104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "statusbar"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    .line 3106
    .local v3, statusBarManager:Landroid/app/StatusBarManager;
    if-eqz v3, :cond_a

    .line 3107
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v5, v0, :cond_9

    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v6, v0, :cond_b

    .line 3108
    :cond_9
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/app/StatusBarManager;->setNavigationBackground(Ljava/lang/String;IIII)V

    .line 3109
    .end local v5           #portResId:I
    .end local v6           #landResId:I
    .end local v7           #alpha:I
    .end local v8           #reserved:I
    const-string v19, "PhoneWindowManager/NavigationBar"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "addStartingWindow, pkg : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", invalid data, set default Navi"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 3129
    .end local v3           #statusBarManager:Landroid/app/StatusBarManager;
    .end local v4           #pkg:Ljava/lang/String;
    .end local v10           #disabled:Z
    .end local v12           #metaData:Landroid/os/Bundle;
    :cond_a
    :goto_2
    :try_start_4
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1, v13}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3133
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    :try_end_4
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v19

    if-nez v19, :cond_0

    const/16 v16, 0x0

    goto/16 :goto_0

    .line 3111
    .restart local v3       #statusBarManager:Landroid/app/StatusBarManager;
    .restart local v4       #pkg:Ljava/lang/String;
    .restart local v5       #portResId:I
    .restart local v6       #landResId:I
    .restart local v7       #alpha:I
    .restart local v8       #reserved:I
    .restart local v10       #disabled:Z
    .restart local v12       #metaData:Landroid/os/Bundle;
    :cond_b
    :try_start_5
    invoke-virtual/range {v3 .. v8}, Landroid/app/StatusBarManager;->setNavigationBackground(Ljava/lang/String;IIII)V

    .line 3112
    const-string v19, "PhoneWindowManager/NavigationBar"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "addStartingWindow, pkg : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", valid data, set valid custom Navi"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 3119
    .end local v3           #statusBarManager:Landroid/app/StatusBarManager;
    .end local v4           #pkg:Ljava/lang/String;
    .end local v5           #portResId:I
    .end local v6           #landResId:I
    .end local v7           #alpha:I
    .end local v8           #reserved:I
    .end local v10           #disabled:Z
    .end local v12           #metaData:Landroid/os/Bundle;
    :catch_0
    move-exception v11

    .line 3120
    .local v11, e:Ljava/lang/Exception;
    :try_start_6
    const-string v19, "PhoneWindowManager/NavigationBar"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "addStartingWindow, pkg : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", exception : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 3134
    .end local v9           #context:Landroid/content/Context;
    .end local v11           #e:Ljava/lang/Exception;
    .end local v13           #params:Landroid/view/WindowManager$LayoutParams;
    .end local v14           #r:Landroid/content/res/Resources;
    .end local v15           #ta:Landroid/content/res/TypedArray;
    .end local v16           #view:Landroid/view/View;
    .end local v17           #win:Landroid/view/Window;
    .end local v18           #wm:Landroid/view/WindowManager;
    :catch_1
    move-exception v11

    .line 3136
    .local v11, e:Landroid/view/WindowManager$BadTokenException;
    const-string v19, "WindowManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " already running, starting window not displayed"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3144
    .end local v11           #e:Landroid/view/WindowManager$BadTokenException;
    :goto_3
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 3116
    .restart local v4       #pkg:Ljava/lang/String;
    .restart local v5       #portResId:I
    .restart local v6       #landResId:I
    .restart local v7       #alpha:I
    .restart local v8       #reserved:I
    .restart local v9       #context:Landroid/content/Context;
    .restart local v10       #disabled:Z
    .restart local v12       #metaData:Landroid/os/Bundle;
    .restart local v13       #params:Landroid/view/WindowManager$LayoutParams;
    .restart local v14       #r:Landroid/content/res/Resources;
    .restart local v15       #ta:Landroid/content/res/TypedArray;
    .restart local v16       #view:Landroid/view/View;
    .restart local v17       #win:Landroid/view/Window;
    .restart local v18       #wm:Landroid/view/WindowManager;
    :cond_c
    :try_start_7
    const-string v19, "PhoneWindowManager/NavigationBar"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "addStartingWindow, pkg : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", disabled for app, do nothing on Navi"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_2

    .line 3137
    .end local v4           #pkg:Ljava/lang/String;
    .end local v5           #portResId:I
    .end local v6           #landResId:I
    .end local v7           #alpha:I
    .end local v8           #reserved:I
    .end local v9           #context:Landroid/content/Context;
    .end local v10           #disabled:Z
    .end local v12           #metaData:Landroid/os/Bundle;
    .end local v13           #params:Landroid/view/WindowManager$LayoutParams;
    .end local v14           #r:Landroid/content/res/Resources;
    .end local v15           #ta:Landroid/content/res/TypedArray;
    .end local v16           #view:Landroid/view/View;
    .end local v17           #win:Landroid/view/Window;
    .end local v18           #wm:Landroid/view/WindowManager;
    :catch_2
    move-exception v11

    .line 3141
    .local v11, e:Ljava/lang/RuntimeException;
    const-string v19, "WindowManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " failed creating starting window"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 3026
    .end local v11           #e:Ljava/lang/RuntimeException;
    .restart local v9       #context:Landroid/content/Context;
    :catch_3
    move-exception v19

    goto/16 :goto_1
.end method

.method public adjustConfigurationLw(Landroid/content/res/Configuration;II)V
    .locals 3
    .parameter "config"
    .parameter "keyboardPresence"
    .parameter "navigationPresence"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 2804
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHaveBuiltInKeyboard:Z

    .line 2806
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readLidState()V

    .line 2807
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyLidSwitchState()V

    .line 2809
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v0, v1, :cond_0

    if-ne p2, v1, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isHidden(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2812
    :cond_0
    iput v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 2813
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    if-nez v0, :cond_1

    .line 2814
    iput v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 2818
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v0, v1, :cond_2

    if-ne p3, v1, :cond_3

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isHidden(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2821
    :cond_2
    iput v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    .line 2823
    :cond_3
    return-void

    .line 2804
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public adjustSystemUiVisibilityLw(I)I
    .locals 2
    .parameter "visibility"

    .prologue
    .line 4580
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 4583
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    return v0
.end method

.method public adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .parameter "attrs"

    .prologue
    .line 2770
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v0, :sswitch_data_0

    .line 2780
    :goto_0
    return-void

    .line 2775
    :sswitch_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x18

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2777
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 2770
    nop

    :sswitch_data_0
    .sparse-switch
        0x7d5 -> :sswitch_0
        0x7d6 -> :sswitch_0
        0x7df -> :sswitch_0
    .end sparse-switch
.end method

.method public allowAppAnimationsLw()Z
    .locals 1

    .prologue
    .line 6014
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6017
    const/4 v0, 0x0

    .line 6019
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 6
    .parameter "win"
    .parameter "attrs"

    .prologue
    const/16 v4, 0x7d4

    const/4 v5, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 5781
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v3, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_0

    .line 5783
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBarLayer:I

    if-gez v3, :cond_0

    .line 5784
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBar:Z

    .line 5785
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBarLayer:I

    .line 5788
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v3, :cond_7

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isGoneForLayoutLw()Z

    move-result v3

    if-nez v3, :cond_7

    .line 5790
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_1

    .line 5791
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v3, v4, :cond_8

    .line 5792
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    .line 5797
    :cond_1
    :goto_0
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v3, v4, :cond_2

    .line 5798
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingLockscreen:Z

    .line 5800
    :cond_2
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v3, v1, :cond_9

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x63

    if-gt v3, v4, :cond_9

    move v0, v1

    .line 5802
    .local v0, applyWindow:Z
    :goto_1
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7e7

    if-ne v3, v4, :cond_4

    .line 5805
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamingLockscreen:Z

    if-eqz v3, :cond_3

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasDrawnLw()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 5807
    :cond_3
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingDream:Z

    .line 5808
    const/4 v0, 0x1

    .line 5811
    :cond_4
    if-eqz v0, :cond_7

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v3, :cond_7

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v3, :cond_7

    iget v3, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v3, v5, :cond_7

    iget v3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v3, v5, :cond_7

    .line 5816
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5817
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x8

    and-int/2addr v3, v4

    if-eqz v3, :cond_5

    .line 5819
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    .line 5820
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    .line 5822
    :cond_5
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x40

    and-int/2addr v3, v4

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    if-nez v3, :cond_6

    .line 5825
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v3, p1, :cond_a

    const/4 v3, 0x2

    :goto_2
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    .line 5827
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5828
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    .line 5830
    :cond_6
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_7

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    .end local v0           #applyWindow:Z
    :cond_7
    invoke-static {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->setAboveStatusBarFullScreenWindow(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_8
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    goto :goto_0

    :cond_9
    move v0, v2

    .line 5800
    goto :goto_1

    .restart local v0       #applyWindow:Z
    :cond_a
    move v3, v1

    .line 5825
    goto :goto_2
.end method

.method public beginLayoutLw(ZIII)V
    .locals 20
    .parameter "isDefaultDisplay"
    .parameter "displayWidth"
    .parameter "displayHeight"
    .parameter "displayRotation"

    .prologue
    .line 4631
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    .line 4632
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    .line 4633
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    .line 4634
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    .line 4635
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    .line 4636
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    .line 4637
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemLeft:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    .line 4639
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    .line 4641
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemRight:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    .line 4643
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBottom:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    .line 4645
    const/high16 v3, 0x1000

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    .line 4646
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarLayer:I

    .line 4649
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentDisplayRotation:I

    .line 4653
    sget-object v17, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 4654
    .local v17, pf:Landroid/graphics/Rect;
    sget-object v12, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 4655
    .local v12, df:Landroid/graphics/Rect;
    sget-object v19, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 4656
    .local v19, vf:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->left:I

    iput v3, v12, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 4657
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->top:I

    iput v3, v12, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 4658
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->right:I

    iput v3, v12, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 4659
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    iput v3, v12, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 4661
    if-eqz p1, :cond_7

    .line 4664
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_8

    const/16 v16, 0x1

    .line 4667
    .local v16, navVisible:Z
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_9

    const/4 v15, 0x1

    .line 4671
    .local v15, navHideForce:Z
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->shouldKeepHidingNavOnTouchDown()Z

    move-result v13

    .line 4683
    .local v13, keepHidingNav:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d4

    if-ne v3, v4, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->isNavigationHidden()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 4685
    const/4 v15, 0x1

    .line 4686
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockscreenDisplayHeight:I

    .line 4693
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAATIsRunning:Z

    if-eqz v3, :cond_0

    .line 4694
    const/4 v15, 0x1

    .line 4695
    const-string v3, "WindowManager"

    const-string v4, "NavigationBar will be hide "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4699
    :cond_0
    if-nez v16, :cond_1

    if-eqz v15, :cond_b

    .line 4700
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    if-eqz v3, :cond_2

    .line 4701
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$FakeWindow;->dismiss()V

    .line 4702
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    .line 4719
    :cond_2
    :goto_3
    if-nez v16, :cond_c

    if-eqz v13, :cond_c

    .line 4721
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->registerKeepHidingNavInputEventReceiver()V

    .line 4732
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    if-nez v3, :cond_d

    const/4 v3, 0x1

    :goto_5
    or-int v16, v16, v3

    .line 4734
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_5

    .line 4739
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v3, :cond_3

    move/from16 v0, p2

    move/from16 v1, p3

    if-ge v0, v1, :cond_e

    :cond_3
    const/4 v3, 0x1

    :goto_6
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    .line 4740
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-eqz v3, :cond_11

    .line 4742
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    aget v3, v3, p4

    sub-int v18, p3, v3

    .line 4743
    .local v18, top:I
    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    const/4 v4, 0x0

    move/from16 v0, v18

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 4744
    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    .line 4746
    if-eqz v15, :cond_f

    .line 4748
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    .line 4760
    :goto_7
    if-nez v15, :cond_4

    .line 4761
    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v3

    if-nez v3, :cond_4

    .line 4765
    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBottom:I

    .line 4801
    .end local v18           #top:I
    :cond_4
    :goto_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    .line 4802
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    .line 4803
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    .line 4804
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    .line 4805
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarLayer:I

    .line 4807
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    sget-object v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    invoke-interface {v3, v4, v5, v6, v7}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 4815
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_7

    .line 4817
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v3, v12, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 4818
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v3, v12, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 4819
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    sub-int/2addr v3, v4

    iput v3, v12, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 4820
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    sub-int/2addr v3, v4

    iput v3, v12, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 4821
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 4822
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 4823
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 4824
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 4826
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarLayer:I

    .line 4829
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v19

    invoke-interface {v3, v0, v12, v1, v2}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 4832
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    .line 4836
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4840
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    .line 4842
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    .line 4843
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    .line 4844
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    .line 4845
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    .line 4854
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v3

    if-nez v3, :cond_7

    .line 4863
    .end local v13           #keepHidingNav:Z
    .end local v15           #navHideForce:Z
    .end local v16           #navVisible:Z
    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInitialCurBottom:I

    .line 4864
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInitialContentBottom:I

    .line 4865
    return-void

    .line 4664
    :cond_8
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 4667
    .restart local v16       #navVisible:Z
    :cond_9
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 4688
    .restart local v13       #keepHidingNav:Z
    .restart local v15       #navHideForce:Z
    :cond_a
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockscreenDisplayHeight:I

    goto/16 :goto_2

    .line 4712
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    if-nez v3, :cond_2

    if-nez v13, :cond_2

    .line 4713
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

    const-string v6, "hidden nav"

    const/16 v7, 0x7e6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-interface/range {v3 .. v11}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->addFakeWindow(Landroid/os/Looper;Landroid/view/InputEventReceiver$Factory;Ljava/lang/String;IIZZZ)Landroid/view/WindowManagerPolicy$FakeWindow;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    goto/16 :goto_3

    .line 4725
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->clearKeepHidingNavInputEventReceiver()V

    goto/16 :goto_4

    .line 4732
    :cond_d
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 4739
    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_6

    .line 4751
    .restart local v18       #top:I
    :cond_f
    if-eqz v16, :cond_10

    .line 4752
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    .line 4753
    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    .line 4754
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    goto/16 :goto_7

    .line 4757
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    goto/16 :goto_7

    .line 4771
    .end local v18           #top:I
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    aget v3, v3, p4

    sub-int v14, p2, v3

    .line 4772
    .local v14, left:I
    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    const/4 v4, 0x0

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v3, v14, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 4773
    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    .line 4775
    if-eqz v15, :cond_12

    .line 4777
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    .line 4789
    :goto_9
    if-nez v15, :cond_4

    .line 4790
    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v3

    if-nez v3, :cond_4

    .line 4794
    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemRight:I

    goto/16 :goto_8

    .line 4780
    :cond_12
    if-eqz v16, :cond_13

    .line 4781
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    .line 4782
    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    .line 4783
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    goto :goto_9

    .line 4786
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    goto :goto_9
.end method

.method public beginPostLayoutPolicyLw(II)V
    .locals 2
    .parameter "displayWidth"
    .parameter "displayHeight"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBar:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBarLayer:I

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingLockscreen:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingDream:Z

    invoke-static {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->clearAboveStatusBarFullScreenWindow(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    return-void
.end method

.method callInterceptPowerKeyUp(Z)V
    .locals 0
    .parameter "canceled"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyUp(Z)Z

    return-void
.end method

.method public canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 1
    .parameter "win"
    .parameter "attrs"

    .prologue
    .line 2992
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v0, :sswitch_data_0

    .line 3001
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 2999
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2992
    nop

    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_0
        0x7d4 -> :sswitch_0
        0x7dd -> :sswitch_0
        0x7e3 -> :sswitch_0
        0x7e7 -> :sswitch_0
        0x7e9 -> :sswitch_0
    .end sparse-switch
.end method

.method public canMagnifyWindowLw(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 1
    .parameter "attrs"

    .prologue
    .line 8380
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v0, :sswitch_data_0

    .line 8388
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 8385
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 8380
    nop

    :sswitch_data_0
    .sparse-switch
        0x7db -> :sswitch_0
        0x7dc -> :sswitch_0
        0x7e3 -> :sswitch_0
        0x7eb -> :sswitch_0
    .end sparse-switch
.end method

.method public checkAddPermission(Landroid/view/WindowManager$LayoutParams;)I
    .locals 4
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 2684
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2686
    .local v1, type:I
    const/16 v3, 0x7d0

    if-lt v1, v3, :cond_0

    const/16 v3, 0xbb7

    if-le v1, v3, :cond_1

    .line 2718
    :cond_0
    :goto_0
    return v2

    .line 2690
    :cond_1
    const/4 v0, 0x0

    .line 2691
    .local v0, permission:Ljava/lang/String;
    sparse-switch v1, :sswitch_data_0

    .line 2710
    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    .line 2712
    :goto_1
    :sswitch_0
    if-eqz v0, :cond_0

    .line 2713
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 2715
    const/4 v2, -0x8

    goto :goto_0

    .line 2707
    :sswitch_1
    const-string v0, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 2708
    goto :goto_1

    .line 2691
    nop

    :sswitch_data_0
    .sparse-switch
        0x7d2 -> :sswitch_1
        0x7d3 -> :sswitch_1
        0x7d5 -> :sswitch_0
        0x7d6 -> :sswitch_1
        0x7d7 -> :sswitch_1
        0x7da -> :sswitch_1
        0x7db -> :sswitch_0
        0x7dd -> :sswitch_0
        0x7e7 -> :sswitch_0
    .end sparse-switch
.end method

.method public checkShowToOwnerOnly(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 3
    .parameter "attrs"

    .prologue
    const/4 v0, 0x1

    .line 2726
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v1, :sswitch_data_0

    .line 2733
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_1

    .line 2764
    :cond_0
    :goto_0
    return v0

    :cond_1
    :sswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2726
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x7d0 -> :sswitch_0
        0x7d1 -> :sswitch_0
        0x7d2 -> :sswitch_0
        0x7d4 -> :sswitch_0
        0x7d7 -> :sswitch_0
        0x7d8 -> :sswitch_0
        0x7d9 -> :sswitch_0
        0x7de -> :sswitch_0
        0x7e1 -> :sswitch_0
        0x7e2 -> :sswitch_0
        0x7e3 -> :sswitch_0
        0x7e4 -> :sswitch_0
        0x7e5 -> :sswitch_0
        0x7e6 -> :sswitch_0
        0x7e8 -> :sswitch_0
        0x7e9 -> :sswitch_0
        0x7ea -> :sswitch_0
        0x7eb -> :sswitch_0
        0x7ec -> :sswitch_0
    .end sparse-switch
.end method

.method public createForceHideEnterAnimation(Z)Landroid/view/animation/Animation;
    .locals 2
    .parameter "onWallpaper"

    .prologue
    .line 3282
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    const v0, 0x10a0030

    :goto_0
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x10a002d

    goto :goto_0
.end method

.method createHomeDockIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 8089
    const/4 v1, 0x0

    .line 8094
    .local v1, intent:Landroid/content/Intent;
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 8096
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    move-object v2, v1

    .line 8103
    .end local v1           #intent:Landroid/content/Intent;
    .local v2, intent:Landroid/content/Intent;
    :goto_0
    if-nez v2, :cond_2

    move-object v1, v2

    .line 8116
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    :goto_1
    return-object v3

    .line 8098
    :cond_0
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    :cond_1
    move-object v2, v1

    .end local v1           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 8106
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 8108
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_3

    move-object v1, v2

    .line 8109
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_1

    .line 8111
    .end local v1           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_3
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_4

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "android.dock_home"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 8112
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 8113
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v3, v1

    .line 8114
    goto :goto_1

    .end local v1           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_4
    move-object v1, v2

    .line 8116
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_1
.end method

.method public dismissKeyguardLw()V
    .locals 2

    .prologue
    .line 7590
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7591
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$36;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$36;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7603
    :cond_0
    return-void
.end method

.method dismissRestartActionDialog()V
    .locals 1

    .prologue
    .line 1940
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestartAction:Lcom/android/internal/policy/impl/RestartAction;

    if-eqz v0, :cond_0

    .line 1941
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestartAction:Lcom/android/internal/policy/impl/RestartAction;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/RestartAction;->dismissDialog()V

    .line 1943
    :cond_0
    return-void
.end method

.method dispatchMediaKeyRepeatWithWakeLock(Landroid/view/KeyEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 7291
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 7293
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    or-int/lit16 v4, v4, 0x80

    invoke-static {p1, v1, v2, v3, v4}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    move-result-object v0

    .line 7296
    .local v0, repeatEvent:Landroid/view/KeyEvent;
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchMediaKeyRepeatWithWakeLock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7299
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    .line 7300
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 7301
    return-void
.end method

.method dispatchMediaKeyWithWakeLock(Landroid/view/KeyEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 7262
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchMediaKeyWithWakeLock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7265
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    if-eqz v1, :cond_0

    .line 7267
    const-string v1, "WindowManager"

    const-string v2, "dispatchMediaKeyWithWakeLock: canceled repeat"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7270
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 7271
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 7272
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 7275
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    .line 7277
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 7279
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 7281
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7283
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 7284
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7288
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 7286
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 7304
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7305
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    .line 7306
    .local v0, audioService:Landroid/media/IAudioService;
    if-eqz v0, :cond_0

    .line 7308
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->dispatchMediaKeyEventUnderWakelock(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7314
    .end local v0           #audioService:Landroid/media/IAudioService;
    :cond_0
    :goto_0
    return-void

    .line 7309
    .restart local v0       #audioService:Landroid/media/IAudioService;
    :catch_0
    move-exception v1

    .line 7310
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchMediaKeyEvent threw exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dispatchUnhandledKey(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 23
    .parameter "win"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 4188
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unhandled key: win="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", flags="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", keyCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", scanCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", metaState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", repeatCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", policyFlags="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4197
    const/16 v18, 0x0

    .line 4198
    .local v18, fallbackEvent:Landroid/view/KeyEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x400

    if-nez v4, :cond_1

    .line 4199
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v20

    .line 4200
    .local v20, kcm:Landroid/view/KeyCharacterMap;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v21

    .line 4201
    .local v21, keyCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v22

    .line 4202
    .local v22, metaState:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_2

    const/16 v19, 0x1

    .line 4207
    .local v19, initialDown:Z
    :goto_0
    if-eqz v19, :cond_3

    .line 4208
    invoke-virtual/range {v20 .. v22}, Landroid/view/KeyCharacterMap;->getFallbackAction(II)Landroid/view/KeyCharacterMap$FallbackAction;

    move-result-object v17

    .line 4213
    .local v17, fallbackAction:Landroid/view/KeyCharacterMap$FallbackAction;
    :goto_1
    if-eqz v17, :cond_1

    .line 4215
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fallback: keyCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    iget v6, v0, Landroid/view/KeyCharacterMap$FallbackAction;->keyCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " metaState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    iget v6, v0, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4219
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    or-int/lit16 v14, v4, 0x400

    .line 4220
    .local v14, flags:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    move-object/from16 v0, v17

    iget v9, v0, Landroid/view/KeyCharacterMap$FallbackAction;->keyCode:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v10

    move-object/from16 v0, v17

    iget v11, v0, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v15

    const/16 v16, 0x0

    invoke-static/range {v4 .. v16}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v18

    .line 4227
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptFallback(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4228
    invoke-virtual/range {v18 .. v18}, Landroid/view/KeyEvent;->recycle()V

    .line 4229
    const/16 v18, 0x0

    .line 4232
    :cond_0
    if-eqz v19, :cond_4

    .line 4233
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    move/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4242
    .end local v14           #flags:I
    .end local v17           #fallbackAction:Landroid/view/KeyCharacterMap$FallbackAction;
    .end local v19           #initialDown:Z
    .end local v20           #kcm:Landroid/view/KeyCharacterMap;
    .end local v21           #keyCode:I
    .end local v22           #metaState:I
    :cond_1
    :goto_2
    if-nez v18, :cond_5

    .line 4243
    const-string v4, "WindowManager"

    const-string v5, "No fallback."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4248
    :goto_3
    return-object v18

    .line 4202
    .restart local v20       #kcm:Landroid/view/KeyCharacterMap;
    .restart local v21       #keyCode:I
    .restart local v22       #metaState:I
    :cond_2
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 4210
    .restart local v19       #initialDown:Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/KeyCharacterMap$FallbackAction;

    .restart local v17       #fallbackAction:Landroid/view/KeyCharacterMap$FallbackAction;
    goto/16 :goto_1

    .line 4234
    .restart local v14       #flags:I
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 4235
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 4236
    invoke-virtual/range {v17 .. v17}, Landroid/view/KeyCharacterMap$FallbackAction;->recycle()V

    goto :goto_2

    .line 4245
    .end local v14           #flags:I
    .end local v17           #fallbackAction:Landroid/view/KeyCharacterMap$FallbackAction;
    .end local v19           #initialDown:Z
    .end local v20           #kcm:Landroid/view/KeyCharacterMap;
    .end local v21           #keyCode:I
    .end local v22           #metaState:I
    :cond_5
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Performing fallback: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .parameter "win"
    .parameter "attrs"

    .prologue
    .line 2987
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .parameter "prefix"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 8413
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSafeMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 8414
    const-string v0, " mSystemReady="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 8415
    const-string v0, " mSystemBooted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8416
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLidState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8417
    const-string v0, " mLidOpenRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8418
    const-string v0, " mHdmiPlugged="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8419
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    if-eqz v0, :cond_1

    .line 8421
    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8422
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8423
    const-string v0, " mResettingSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8424
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8425
    const-string v0, " mForceClearedSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8426
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8428
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    if-eqz v0, :cond_2

    .line 8429
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastFocusNeedsMenu="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8430
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8432
    :cond_2
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDockMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8433
    const-string v0, " mCarDockRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8434
    const-string v0, " mDeskDockRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8435
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUserRotationMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8436
    const-string v0, " mUserRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8437
    const-string v0, " mAllowAllRotations="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8438
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCurrentAppOrientation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8439
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCarDockEnablesAccelerometer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8440
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 8441
    const-string v0, " mDeskDockEnablesAccelerometer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8442
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8443
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLidKeyboardAccessibility="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8444
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8445
    const-string v0, " mLidNavigationAccessibility="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8446
    const-string v0, " mLidControlsSleep="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidControlsSleep:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8447
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLongPressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8448
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8449
    const-string v0, " mHasSoftInput="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8450
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mScreenOnEarly="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 8451
    const-string v0, " mScreenOnFully="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 8452
    const-string v0, " mOrientationSensorEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8453
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUnrestrictedScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8454
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8455
    const-string v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8456
    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8457
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRestrictedScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8458
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8459
    const-string v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8460
    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8461
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStableFullscreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8462
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8463
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8464
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8465
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStable=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8466
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8467
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8468
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8469
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSystem=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8470
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8471
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8472
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8473
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCur=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8474
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8475
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8476
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8477
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContent=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8478
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8479
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8480
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8481
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDock=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8482
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8483
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8484
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8485
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDockLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8486
    const-string v0, " mStatusBarLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8487
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mShowingLockscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingLockscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 8488
    const-string v0, " mShowingDream="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingDream:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 8489
    const-string v0, " mDreamingLockscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamingLockscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8490
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_3

    .line 8491
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastInputMethodWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8492
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8494
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_4

    .line 8495
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastInputMethodTargetWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8496
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8498
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_5

    .line 8499
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStatusBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8500
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8502
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_6

    .line 8503
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNavigationBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8504
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8506
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_7

    .line 8507
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8508
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8510
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_8

    .line 8511
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFocusedWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8512
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8514
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    if-eqz v0, :cond_9

    .line 8515
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFocusedApp="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8516
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8518
    :cond_9
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_a

    .line 8519
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mWinDismissingKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8520
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8522
    :cond_a
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_b

    .line 8523
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopFullscreenOpaqueWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8524
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8526
    :cond_b
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBar:Z

    if-eqz v0, :cond_c

    .line 8527
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mForcingShowNavBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8528
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "mForcingShowNavBarLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8529
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBarLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8531
    :cond_c
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopIsFullscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 8532
    const-string v0, " mHideLockScreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8533
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mForceStatusBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 8534
    const-string v0, " mForceStatusBarFromKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8535
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8536
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDismissKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8537
    const-string v0, " mWinDismissingKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 8538
    const-string v0, " mHomePressed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8539
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAllowLockscreenWhenOn="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 8540
    const-string v0, " mLockScreenTimeout="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8541
    const-string v0, " mLockScreenTimerActive="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8542
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEndcallBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8543
    const-string v0, " mIncallPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8544
    const-string v0, " mLongPressOnHomeBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8545
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLandscapeRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8546
    const-string v0, " mSeascapeRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8547
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPortraitRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8548
    const-string v0, " mUpsideDownRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8549
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHdmiRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8550
    const-string v0, " mHdmiRotationLock="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiRotationLock:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8551
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mMenuLongEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMenulongEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8552
    const-string v0, " mMenulongToSearch="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMenulongToSearch:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8553
    const-string v0, " mQuickClipHotKeyDisable="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mQuickClipHotKeyDisable:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8554
    const-string v0, " mHotKeyCustomizing="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHotKeyCustomizing:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8555
    const-string v0, " mRearSideKey="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRearSideKeyEnable:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8556
    return-void
.end method

.method public enableKeyguard(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 7554
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    if-eqz v0, :cond_0

    .line 7555
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->setKeyguardEnabled(Z)V

    .line 7557
    :cond_0
    return-void
.end method

.method public enableScreenAfterBoot()V
    .locals 1

    .prologue
    .line 8059
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readLidState()V

    .line 8060
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyLidSwitchState()V

    .line 8061
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    .line 8062
    return-void
.end method

.method public enableTranslucentImeMode(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 8559
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTranslucentImeMode:Z

    .line 8560
    return-void
.end method

.method public exitKeyguardSecurely(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 7561
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    if-eqz v0, :cond_0

    .line 7562
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    .line 7564
    :cond_0
    return-void
.end method

.method public finishLayoutLw()V
    .locals 0

    .prologue
    .line 5756
    return-void
.end method

.method public finishPostLayoutPolicyLw()I
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 5840
    const/4 v0, 0x0

    .line 5841
    .local v0, changes:I
    const/4 v4, 0x0

    .line 5843
    .local v4, topIsFullscreen:Z
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v8}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 5851
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    :goto_0
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingDream:Z

    if-nez v8, :cond_0

    .line 5852
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingLockscreen:Z

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamingLockscreen:Z

    .line 5855
    :cond_0
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v8, :cond_2

    .line 5859
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    if-nez v8, :cond_1

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    if-eqz v8, :cond_9

    .line 5861
    :cond_1
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v8, v7}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifyStatusBarShowingOrHiding(Z)V

    .line 5862
    or-int/lit8 v0, v0, 0x1

    .line 5864
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v3

    .line 5865
    .local v3, statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v3, :cond_2

    .line 5867
    const/4 v8, 0x0

    :try_start_0
    invoke-interface {v3, v8}, Lcom/android/internal/statusbar/IStatusBarService;->disableTouch(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5937
    .end local v3           #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_2
    :goto_1
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v8, :cond_3

    invoke-static {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->checkStatusBarVisibility(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    :cond_3
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    .line 5941
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v8, :cond_6

    .line 5945
    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    if-eqz v8, :cond_f

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->isSecure()Z

    move-result v8

    if-nez v8, :cond_f

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->isLockoutMode()Z

    move-result v8

    if-nez v8, :cond_f

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->isDisabledUnlock()Z

    move-result v8

    if-nez v8, :cond_f

    .line 5949
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5, v7}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 5950
    or-int/lit8 v0, v0, 0x7

    .line 5954
    :cond_4
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 5956
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_5

    .line 5957
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KeyguardDone From FLAG_DISMISS_KEYGUARD : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5960
    :cond_5
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/internal/policy/impl/PhoneWindowManager$21;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$21;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6002
    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v5

    and-int/lit8 v5, v5, 0xe

    if-eqz v5, :cond_7

    .line 6005
    or-int/lit8 v0, v0, 0x1

    .line 6009
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 6010
    return v0

    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_8
    move-object v2, v5

    .line 5843
    goto/16 :goto_0

    .line 5868
    .restart local v2       #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v3       #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v1

    .line 5869
    .local v1, e:Landroid/os/RemoteException;
    const-string v8, "WindowManager"

    const-string v9, "RemoteException======"

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 5874
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v3           #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_9
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v8, :cond_2

    .line 5881
    iget v8, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v8, v8, 0x400

    if-nez v8, :cond_a

    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_c

    :cond_a
    move v4, v7

    .line 5887
    :goto_3
    if-eqz v4, :cond_d

    .line 5889
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v8, v7}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 5890
    or-int/lit8 v0, v0, 0x1

    .line 5893
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v3

    .line 5894
    .restart local v3       #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v3, :cond_b

    .line 5896
    const/4 v8, 0x1

    :try_start_1
    invoke-interface {v3, v8}, Lcom/android/internal/statusbar/IStatusBarService;->disableTouch(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5902
    :cond_b
    :goto_4
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/internal/policy/impl/PhoneWindowManager$20;

    invoke-direct {v9, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$20;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifyStatusBarShowingOrHiding(Z)V

    goto/16 :goto_1

    .end local v3           #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_c
    move v4, v6

    .line 5881
    goto :goto_3

    .line 5897
    .restart local v3       #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :catch_1
    move-exception v1

    .line 5898
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v8, "WindowManager"

    const-string v9, "RemoteException======"

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 5920
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v3           #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_d
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mViewCoverClosed:Z

    if-nez v8, :cond_e

    .line 5921
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v8, v7}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v8

    if-eqz v8, :cond_e

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifyStatusBarShowingOrHiding(Z)V

    :cond_e
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v3

    .line 5925
    .restart local v3       #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v3, :cond_2

    .line 5927
    const/4 v8, 0x0

    :try_start_2
    invoke-interface {v3, v8}, Lcom/android/internal/statusbar/IStatusBarService;->disableTouch(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 5928
    :catch_2
    move-exception v1

    .line 5929
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v8, "WindowManager"

    const-string v9, "RemoteException======"

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 5967
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v3           #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_f
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-eqz v8, :cond_11

    .line 5968
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5, v7}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 5969
    or-int/lit8 v0, v0, 0x7

    .line 5973
    :cond_10
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    invoke-virtual {v5, v7}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->setHidden(Z)V

    goto/16 :goto_2

    .line 5974
    :cond_11
    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    if-eqz v8, :cond_13

    .line 5976
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    if-ne v5, v7, :cond_6

    .line 5978
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5, v7}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 5979
    or-int/lit8 v0, v0, 0x7

    .line 5983
    :cond_12
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->setHidden(Z)V

    .line 5984
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/internal/policy/impl/PhoneWindowManager$22;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$22;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 5992
    :cond_13
    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5993
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5, v7}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 5994
    or-int/lit8 v0, v0, 0x7

    .line 5998
    :cond_14
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->setHidden(Z)V

    goto/16 :goto_2
.end method

.method public focusChangedLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I
    .locals 1
    .parameter "lastFocus"
    .parameter "newFocus"

    .prologue
    .line 6023
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 6024
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v0

    and-int/lit8 v0, v0, 0xe

    if-eqz v0, :cond_0

    .line 6027
    const/4 v0, 0x1

    .line 6029
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAboveUniverseLayer()I
    .locals 1

    .prologue
    .line 2936
    const/16 v0, 0x7da

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v0

    return v0
.end method

.method public getConfigDisplayHeight(III)I
    .locals 2
    .parameter "fullWidth"
    .parameter "fullHeight"
    .parameter "rotation"

    .prologue
    .line 2979
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSystemNavBar:Z

    if-nez v0, :cond_0

    .line 2980
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getNonDecorDisplayHeight(III)I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    sub-int/2addr v0, v1

    .line 2982
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getNonDecorDisplayHeight(III)I

    move-result v0

    goto :goto_0
.end method

.method public getConfigDisplayWidth(III)I
    .locals 1
    .parameter "fullWidth"
    .parameter "fullHeight"
    .parameter "rotation"

    .prologue
    .line 2970
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getNonDecorDisplayWidth(III)I

    move-result v0

    return v0
.end method

.method public getContentInsetHintLw(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)V
    .locals 8
    .parameter "attrs"
    .parameter "contentInset"

    .prologue
    const v6, 0x10100

    .line 4589
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4590
    .local v2, fl:I
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v5, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int v3, v4, v5

    .line 4592
    .local v3, systemUiVisibility:I
    and-int v4, v2, v6

    if-ne v4, v6, :cond_5

    .line 4595
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    if-eqz v4, :cond_0

    and-int/lit16 v4, v3, 0x200

    if-eqz v4, :cond_0

    .line 4597
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int v1, v4, v5

    .line 4598
    .local v1, availRight:I
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int v0, v4, v5

    .line 4603
    .local v0, availBottom:I
    :goto_0
    and-int/lit16 v4, v3, 0x100

    if-eqz v4, :cond_2

    .line 4604
    and-int/lit16 v4, v2, 0x400

    if-eqz v4, :cond_1

    .line 4605
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    sub-int v7, v0, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 4625
    .end local v0           #availBottom:I
    .end local v1           #availRight:I
    :goto_1
    return-void

    .line 4600
    :cond_0
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int v1, v4, v5

    .line 4601
    .restart local v1       #availRight:I
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int v0, v4, v5

    .restart local v0       #availBottom:I
    goto :goto_0

    .line 4609
    :cond_1
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    sub-int v7, v0, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 4612
    :cond_2
    and-int/lit16 v4, v2, 0x400

    if-eqz v4, :cond_3

    .line 4613
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1

    .line 4614
    :cond_3
    and-int/lit16 v4, v3, 0x404

    if-nez v4, :cond_4

    .line 4616
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    sub-int v7, v0, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 4619
    :cond_4
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    sub-int v7, v0, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 4624
    .end local v0           #availBottom:I
    .end local v1           #availRight:I
    :cond_5
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getMaxWallpaperLayer()I
    .locals 1

    .prologue
    .line 2932
    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v0

    return v0
.end method

.method public getNonDecorDisplayHeight(III)I
    .locals 1
    .parameter "fullWidth"
    .parameter "fullHeight"
    .parameter "rotation"

    .prologue
    .line 2955
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSystemNavBar:Z

    if-eqz v0, :cond_1

    .line 2957
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    aget v0, v0, p3

    sub-int/2addr p2, v0

    .line 2966
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 2959
    .restart local p2
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_0

    .line 2962
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v0, :cond_2

    if-ge p1, p2, :cond_0

    .line 2963
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    aget v0, v0, p3

    sub-int/2addr p2, v0

    goto :goto_0
.end method

.method public getNonDecorDisplayWidth(III)I
    .locals 1
    .parameter "fullWidth"
    .parameter "fullHeight"
    .parameter "rotation"

    .prologue
    .line 2944
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_0

    .line 2947
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v0, :cond_0

    if-le p1, p2, :cond_0

    .line 2948
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    aget v0, v0, p3

    sub-int/2addr p1, v0

    .line 2951
    .end local p1
    :cond_0
    return p1
.end method

.method getPowerLongPress()Ljava/lang/Runnable;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getSKTLockState()Z
    .locals 2

    .prologue
    .line 8313
    const-string v0, "WindowManager"

    const-string v1, "[SKT Lock&Wipe] getSKTLockState()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8314
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->isShowing()Z

    move-result v0

    return v0
.end method

.method getScreenshotChordLongPress()Ljava/lang/Runnable;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    return-object v0
.end method

.method getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    .prologue
    .line 1054
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1055
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 1056
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 1059
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v1

    return-object v0

    .line 1060
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSystemDecorRectLw(Landroid/graphics/Rect;)I
    .locals 2
    .parameter "systemRect"

    .prologue
    const/4 v0, 0x0

    .line 4869
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemLeft:I

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 4870
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 4871
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemRight:I

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 4872
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBottom:I

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 4895
    sget-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->SUPPORT_TRANSPARENT_NAVIGATION:Z

    if-eqz v1, :cond_1

    .line 4896
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v1, :cond_1

    .line 4919
    :cond_0
    :goto_0
    return v0

    .line 4904
    :cond_1
    sget-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->SUPPORT_TRANSPARENT_NAVIGATION:Z

    if-nez v1, :cond_0

    .line 4907
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_2

    .line 4908
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    goto :goto_0

    .line 4911
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_0

    .line 4912
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    goto :goto_0
.end method

.method goHome()Z
    .locals 15

    .prologue
    const/4 v13, 0x0

    const/4 v14, 0x1

    .line 8162
    :try_start_0
    const-string v0, "persist.sys.uts-test-mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v14, :cond_0

    .line 8164
    const-string v0, "WindowManager"

    const-string v1, "UTS-TEST-MODE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8169
    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-interface/range {v0 .. v11}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;I)I

    move-result v12

    .line 8175
    .local v12, result:I
    if-ne v12, v14, :cond_1

    move v0, v13

    .line 8182
    .end local v12           #result:I
    :goto_1
    return v0

    .line 8166
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V

    .line 8167
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8178
    :catch_0
    move-exception v0

    :cond_1
    move v0, v14

    .line 8182
    goto :goto_1
.end method

.method handleVolumeKey(II)V
    .locals 5
    .parameter "stream"
    .parameter "keycode"

    .prologue
    .line 6322
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    .line 6323
    .local v0, audioService:Landroid/media/IAudioService;
    if-nez v0, :cond_0

    .line 6347
    :goto_0
    return-void

    .line 6331
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 6333
    if-nez p1, :cond_1

    invoke-interface {v0}, Landroid/media/IAudioService;->isBluetoothScoOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6334
    const/4 p1, 0x6

    .line 6337
    :cond_1
    const/16 v2, 0x18

    if-ne p2, v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    const/4 v3, 0x0

    invoke-interface {v0, p1, v2, v3}, Landroid/media/IAudioService;->adjustStreamVolume(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6345
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 6337
    :cond_2
    const/4 v2, -0x1

    goto :goto_1

    .line 6342
    :catch_0
    move-exception v1

    .line 6343
    .local v1, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IAudioService.adjustStreamVolume() threw RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6345
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2
.end method

.method public hasNavigationBar()Z
    .locals 1

    .prologue
    .line 8369
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    return v0
.end method

.method public hasSystemNavBar()Z
    .locals 1

    .prologue
    .line 2940
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSystemNavBar:Z

    return v0
.end method

.method public hideBootMessages()V
    .locals 2

    .prologue
    .line 7975
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$39;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$39;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7983
    return-void
.end method

.method public hideSKTLocked()V
    .locals 2

    .prologue
    .line 8308
    const-string v0, "WindowManager"

    const-string v1, "[SKT Lock&Wipe] hideSKTLocked()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->hideSKTLocked()V

    .line 8310
    return-void
.end method

.method public inKeyguardRestrictedKeyInputMode()Z
    .locals 1

    .prologue
    .line 7585
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 7586
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->isInputRestricted()Z

    move-result v0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 12
    .parameter "context"
    .parameter "windowManager"
    .parameter "windowManagerFuncs"

    .prologue
    const/high16 v11, 0x1020

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2079
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2080
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    .line 2081
    iput-object p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 2082
    const-string v5, "1"

    const-string v6, "ro.config.headless"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    .line 2083
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    if-nez v5, :cond_0

    .line 2085
    new-instance v5, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    invoke-direct {v5, p1, p0}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    .line 2088
    :cond_0
    const-string v5, "ro.lge.lcdbreak_mode"

    invoke-static {v5, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHWKeyControlMode:Z

    .line 2091
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHWKeyControlMode:Z

    if-eqz v5, :cond_6

    .line 2092
    const-string v5, "lge.touchcrack_mode"

    const-string v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2093
    iput v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTouchCrackMode:I

    .line 2099
    :goto_0
    new-instance v5, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;

    invoke-direct {v5, p0, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$1;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 2100
    const-string v5, "ro.build.type"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBuildType:Ljava/lang/String;

    .line 2101
    new-instance v5, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, p0, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    .line 2103
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-interface {p2}, Landroid/view/IWindowManager;->getRotation()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->setCurrentRotation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2105
    :goto_1
    new-instance v5, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, p0, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSettingsObserver:Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;

    .line 2106
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x2070015

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHotKeyCustomizing:Z

    .line 2118
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSettingsObserver:Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;->observe()V

    .line 2119
    new-instance v5, Lcom/android/internal/policy/impl/ShortcutManager;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, p1, v6}, Lcom/android/internal/policy/impl/ShortcutManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    .line 2120
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/ShortcutManager;->observe()V

    .line 2121
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0013

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    .line 2122
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    .line 2123
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2124
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    invoke-virtual {v5, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2126
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    .line 2127
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    const-string v6, "android.intent.category.CAR_DOCK"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2128
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    invoke-virtual {v5, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2130
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    .line 2131
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    const-string v6, "android.intent.category.DESK_DOCK"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2132
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    invoke-virtual {v5, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2135
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.lge.safetycare.action.KEY_EVENT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafetyCareIntent:Landroid/content/Intent;

    .line 2136
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.lge.android.intent.action.KEY_EVENT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyIntent:Landroid/content/Intent;

    .line 2138
    const-string v5, "power"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 2139
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v6, "PhoneWindowManager.mBroadcastWakeLock"

    invoke-virtual {v5, v9, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2141
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v6, "PhoneWindowManager.mVolumeLongKeyWakeLock"

    invoke-virtual {v5, v9, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeLongKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2143
    const-string v5, "1"

    const-string v6, "ro.debuggable"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 2144
    const v5, 0x10e0010

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    .line 2146
    const v5, 0x10e0012

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    .line 2148
    const v5, 0x10e0011

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    .line 2150
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110020

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    .line 2152
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x111001f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    .line 2154
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0016

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    .line 2156
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0017

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidNavigationAccessibility:I

    .line 2158
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110021

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidControlsSleep:Z

    .line 2160
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x207000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMenulongEnabled:Z

    .line 2162
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x207000d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMenulongToSearch:Z

    .line 2164
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x2070014

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mQuickClipHotKeyDisable:Z

    .line 2166
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x2070023

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m112AppAvailable:Z

    .line 2168
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x2070025

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRearSideKeyEnable:Z

    .line 2171
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x2070038

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeKeyLongPressEnabled:Z

    .line 2175
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 2176
    .local v3, filter:Landroid/content/IntentFilter;
    sget-object v5, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2177
    sget-object v5, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2178
    sget-object v5, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2179
    sget-object v5, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2180
    const-string v5, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2181
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v4

    .line 2182
    .local v4, intent:Landroid/content/Intent;
    if-eqz v4, :cond_1

    .line 2184
    const-string v5, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v4, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    .line 2189
    :cond_1
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3           #filter:Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 2190
    .restart local v3       #filter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2191
    const-string v5, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2192
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2195
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3           #filter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.USER_SWITCHED"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2196
    .restart local v3       #filter:Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2200
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3           #filter:Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 2201
    .restart local v3       #filter:Landroid/content/IntentFilter;
    const-string v5, "com.lge.android.intent.action.TOUCH_PALM_COVER"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2202
    const-string v5, "com.lge.android.intent.action.TOUCH_PALM_SWIPE_UP"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2203
    const-string v5, "com.lge.android.intent.action.TOUCH_PALM_SWIPE_DOWN"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2204
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPalmGestureReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2208
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3           #filter:Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 2209
    .restart local v3       #filter:Landroid/content/IntentFilter;
    const-string v5, "com.lge.statusbar.expanded"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2210
    const-string v5, "com.lge.statusbar.collapsed"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2211
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2214
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3           #filter:Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 2215
    .restart local v3       #filter:Landroid/content/IntentFilter;
    const-string v5, "com.lge.android.intent.action.ACCESSORY_EVENT"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2216
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSmartCoverReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2218
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3           #filter:Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 2219
    .restart local v3       #filter:Landroid/content/IntentFilter;
    const-string v5, "com.lge.aat.navigation.hide"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2220
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNaviReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2223
    :try_start_1
    sget-object v5, Lcom/lge/loader/RuntimeLibraryLoader;->VOLUME_MANAGER:Ljava/lang/String;

    invoke-static {v5}, Lcom/lge/loader/RuntimeLibraryLoader;->getCreator(Ljava/lang/String;)Lcom/lge/loader/InstanceCreator;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/lge/loader/InstanceCreator;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeVibrator:Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2242
    :goto_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x107002b

    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressVibePattern:[J

    .line 2244
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x107002c

    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVirtualKeyVibePattern:[J

    .line 2246
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x107002d

    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyboardTapVibePattern:[J

    .line 2248
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x107002e

    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeDisabledVibePattern:[J

    .line 2250
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x107002f

    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    .line 2253
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x111001c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordEnabled:Z

    .line 2256
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAutocallReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.AUTOCALL_ENABLE"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2259
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTouchCrackModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "com.lge.android.intent.action.TOUCHCRACK_MODE_EVENT"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2260
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTouchCrackModeObserver:Landroid/os/UEventObserver;

    const-string v6, "DEVPATH=/devices/system/lge_touch/lge_touch0"

    invoke-virtual {v5, v6}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 2263
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m112AppAvailable:Z

    if-eqz v5, :cond_2

    .line 2264
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m112AppReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2265
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m112AppReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.KOR_GO_POLICE_REPORT"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2269
    :cond_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActionReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "com.lge.android.intent.action.GLOBAL_ACTION_SHOW"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2270
    const-string v5, "ro.build.target_operator"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "SKT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v5

    if-nez v5, :cond_3

    .line 2271
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "t_entry_mode"

    const-string v7, "false"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2272
    const-string v5, "PackageManager"

    const-string v6, "Setting t_entry_mode DB -> false"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2275
    :cond_3
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mQucikBTNAnswerSettingReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "com.lge.phone.action.QUICK_BUTTON_SETTING"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2278
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->initializeHdmiState()V

    .line 2281
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v5}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2282
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    .line 2287
    :goto_3
    const-string v5, "ro.build.target_operator"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2288
    .local v0, carrier:Ljava/lang/String;
    const-string v5, "ro.build.target_country"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2289
    .local v1, country:Ljava/lang/String;
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    const-string v5, "TMO"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "US"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2290
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsTargetTmoUs:Z

    .line 2295
    :cond_4
    const-string v5, "ro.build.target_operator"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOperator:Ljava/lang/String;

    .line 2296
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOperator:Ljava/lang/String;

    const-string v6, "VZW"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2297
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->spcErrReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "com.lge.intent.action.EXCESS_SPC_FAIL_EVENT"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2300
    :cond_5
    return-void

    .line 2095
    .end local v0           #carrier:Ljava/lang/String;
    .end local v1           #country:Ljava/lang/String;
    .end local v3           #filter:Landroid/content/IntentFilter;
    .end local v4           #intent:Landroid/content/Intent;
    :cond_6
    const-string v5, "lge.touchcrack_mode"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iput v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTouchCrackMode:I

    goto/16 :goto_0

    .restart local v3       #filter:Landroid/content/IntentFilter;
    .restart local v4       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_2

    .end local v2           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .end local v2           #e:Ljava/lang/Exception;
    :cond_7
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->screenTurnedOff(I)V

    goto :goto_3

    .line 2104
    .end local v3           #filter:Landroid/content/IntentFilter;
    .end local v4           #intent:Landroid/content/Intent;
    :catch_2
    move-exception v5

    goto/16 :goto_1
.end method

.method initializeHdmiState()V
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 6087
    const/4 v4, 0x0

    .line 6089
    .local v4, plugged:Z
    new-instance v9, Ljava/io/File;

    const-string v10, "/sys/devices/virtual/switch/hdmi/state"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 6090
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    const-string v10, "DEVPATH=/devices/virtual/switch/hdmi"

    invoke-virtual {v9, v10}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 6092
    const-string v2, "/sys/class/switch/hdmi/state"

    .line 6093
    .local v2, filename:Ljava/lang/String;
    const/4 v5, 0x0

    .line 6095
    .local v5, reader:Ljava/io/FileReader;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    const-string v9, "/sys/class/switch/hdmi/state"

    invoke-direct {v6, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 6096
    .end local v5           #reader:Ljava/io/FileReader;
    .local v6, reader:Ljava/io/FileReader;
    const/16 v9, 0xf

    :try_start_1
    new-array v0, v9, [C

    .line 6097
    .local v0, buf:[C
    invoke-virtual {v6, v0}, Ljava/io/FileReader;->read([C)I

    move-result v3

    .line 6098
    .local v3, n:I
    if-le v3, v7, :cond_0

    .line 6099
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    add-int/lit8 v11, v3, -0x1

    invoke-direct {v9, v0, v10, v11}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_6

    move-result v9

    if-eqz v9, :cond_2

    move v4, v7

    .line 6106
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 6108
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 6116
    .end local v0           #buf:[C
    .end local v2           #filename:Ljava/lang/String;
    .end local v3           #n:I
    .end local v6           #reader:Ljava/io/FileReader;
    :cond_1
    :goto_1
    if-nez v4, :cond_4

    move v9, v7

    :goto_2
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    .line 6117
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    if-nez v9, :cond_5

    :goto_3
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setHdmiPlugged(Z)V

    .line 6118
    return-void

    .restart local v0       #buf:[C
    .restart local v2       #filename:Ljava/lang/String;
    .restart local v3       #n:I
    .restart local v6       #reader:Ljava/io/FileReader;
    :cond_2
    move v4, v8

    .line 6099
    goto :goto_0

    .line 6101
    .end local v0           #buf:[C
    .end local v3           #n:I
    .end local v6           #reader:Ljava/io/FileReader;
    .restart local v5       #reader:Ljava/io/FileReader;
    :catch_0
    move-exception v1

    .line 6102
    .local v1, ex:Ljava/io/IOException;
    :goto_4
    :try_start_3
    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6106
    if-eqz v5, :cond_1

    .line 6108
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 6109
    :catch_1
    move-exception v9

    goto :goto_1

    .line 6103
    .end local v1           #ex:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 6104
    .local v1, ex:Ljava/lang/NumberFormatException;
    :goto_5
    :try_start_5
    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 6106
    if-eqz v5, :cond_1

    .line 6108
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 6109
    :catch_3
    move-exception v9

    goto :goto_1

    .line 6106
    .end local v1           #ex:Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v7

    :goto_6
    if-eqz v5, :cond_3

    .line 6108
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 6110
    :cond_3
    :goto_7
    throw v7

    .end local v2           #filename:Ljava/lang/String;
    .end local v5           #reader:Ljava/io/FileReader;
    :cond_4
    move v9, v8

    .line 6116
    goto :goto_2

    :cond_5
    move v7, v8

    .line 6117
    goto :goto_3

    .line 6109
    .restart local v0       #buf:[C
    .restart local v2       #filename:Ljava/lang/String;
    .restart local v3       #n:I
    .restart local v6       #reader:Ljava/io/FileReader;
    :catch_4
    move-exception v9

    goto :goto_1

    .end local v0           #buf:[C
    .end local v3           #n:I
    .end local v6           #reader:Ljava/io/FileReader;
    .restart local v5       #reader:Ljava/io/FileReader;
    :catch_5
    move-exception v8

    goto :goto_7

    .line 6106
    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v6       #reader:Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6           #reader:Ljava/io/FileReader;
    .restart local v5       #reader:Ljava/io/FileReader;
    goto :goto_6

    .line 6103
    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v6       #reader:Ljava/io/FileReader;
    :catch_6
    move-exception v1

    move-object v5, v6

    .end local v6           #reader:Ljava/io/FileReader;
    .restart local v5       #reader:Ljava/io/FileReader;
    goto :goto_5

    .line 6101
    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v6       #reader:Ljava/io/FileReader;
    :catch_7
    move-exception v1

    move-object v5, v6

    .end local v6           #reader:Ljava/io/FileReader;
    .restart local v5       #reader:Ljava/io/FileReader;
    goto :goto_4
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 48
    .parameter "win"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 3467
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v31

    .line 3468
    .local v31, keyguardOn:Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v30

    .line 3469
    .local v30, keyCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v36

    .line 3470
    .local v36, repeatCount:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v33

    .line 3471
    .local v33, metaState:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v25

    .line 3472
    .local v25, flags:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    const/16 v21, 0x1

    .line 3473
    .local v21, down:Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v17

    .line 3474
    .local v17, canceled:Z
    const-string v4, "kids"

    const-string v6, "service.plushome.currenthome"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    .line 3477
    .local v32, kidsModeOn:Z
    const-string v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "interceptKeyTi keyCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " down="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " repeatCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " keyguardOn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mHomePressed="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " canceled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3483
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOperator:Ljava/lang/String;

    const-string v6, "VZW"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3484
    sget-boolean v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->SPC_ERR_FREEZE:Z

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1

    .line 3485
    const-wide/16 v6, -0x1

    .line 4180
    :goto_1
    return-wide v6

    .line 3472
    .end local v17           #canceled:Z
    .end local v21           #down:Z
    .end local v32           #kidsModeOn:Z
    :cond_0
    const/16 v21, 0x0

    goto :goto_0

    .line 3492
    .restart local v17       #canceled:Z
    .restart local v21       #down:Z
    .restart local v32       #kidsModeOn:Z
    :cond_1
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 3493
    const/4 v4, 0x3

    move/from16 v0, v30

    if-eq v0, v4, :cond_2

    const/4 v4, 0x4

    move/from16 v0, v30

    if-eq v0, v4, :cond_2

    const/16 v4, 0x52

    move/from16 v0, v30

    if-eq v0, v4, :cond_2

    const/16 v4, 0xbb

    move/from16 v0, v30

    if-ne v0, v4, :cond_3

    .line 3495
    :cond_2
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    move/from16 v0, v30

    invoke-interface {v4, v0, v6}, Lcom/lge/cappuccino/IMdm;->getAllowSpecificKey(II)Z

    move-result v4

    if-nez v4, :cond_3

    .line 3497
    const-string v4, "WindowManager"

    const-string v6, "LGMDM:Navigation key is locked!!"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3498
    const-wide/16 v6, -0x1

    goto :goto_1

    .line 3505
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHotKeyCustomizing:Z

    if-eqz v4, :cond_4

    if-eqz v32, :cond_4

    const/16 v4, 0xe1

    move/from16 v0, v30

    if-ne v0, v4, :cond_4

    .line 3507
    const-wide/16 v6, -0x1

    goto :goto_1

    .line 3512
    :cond_4
    const-string v4, "ro.lge.b2b.vmware"

    const/4 v6, 0x0

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_5

    const/high16 v4, 0x80

    and-int v4, v4, p3

    if-eqz v4, :cond_5

    .line 3514
    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v25

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->manageFocusedMvpKeys(IIZ)J

    move-result-wide v6

    goto :goto_1

    .line 3522
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordEnabled:Z

    if-eqz v4, :cond_f

    move/from16 v0, v25

    and-int/lit16 v4, v0, 0x400

    if-nez v4, :cond_f

    .line 3523
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-nez v4, :cond_7

    .line 3524
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v34

    .line 3525
    .local v34, now:J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTime:J

    const-wide/16 v8, 0x96

    add-long v42, v6, v8

    .line 3526
    .local v42, timeoutTime:J
    cmp-long v4, v34, v42

    if-gez v4, :cond_7

    .line 3527
    sub-long v6, v42, v34

    goto/16 :goto_1

    .line 3530
    .end local v34           #now:J
    .end local v42           #timeoutTime:J
    :cond_7
    const/16 v4, 0x19

    move/from16 v0, v30

    if-ne v0, v4, :cond_f

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    if-eqz v4, :cond_f

    .line 3533
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRearSideKeyEnable:Z

    if-eqz v4, :cond_d

    .line 3534
    const/16 v28, 0x0

    .line 3535
    .local v28, isOffhook:Z
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v41

    .line 3536
    .local v41, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v41, :cond_8

    .line 3538
    :try_start_0
    invoke-interface/range {v41 .. v41}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v28

    .line 3543
    :cond_8
    :goto_2
    if-eqz v28, :cond_9

    .line 3544
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v34

    .line 3545
    .restart local v34       #now:J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTime:J

    const-wide/16 v8, 0x12c

    add-long v42, v6, v8

    .line 3546
    .restart local v42       #timeoutTime:J
    cmp-long v4, v34, v42

    if-gez v4, :cond_c

    .line 3547
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-nez v4, :cond_b

    .line 3548
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 3557
    .end local v34           #now:J
    .end local v42           #timeoutTime:J
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    if-eqz v4, :cond_f

    .line 3558
    if-nez v21, :cond_a

    .line 3559
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 3561
    :cond_a
    const-wide/16 v6, -0x1

    goto/16 :goto_1

    .line 3539
    :catch_0
    move-exception v23

    .line 3540
    .local v23, ex:Landroid/os/RemoteException;
    const-string v4, "WindowManager"

    const-string v6, "ITelephony threw RemoteException"

    move-object/from16 v0, v23

    invoke-static {v4, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 3550
    .end local v23           #ex:Landroid/os/RemoteException;
    .restart local v34       #now:J
    .restart local v42       #timeoutTime:J
    :cond_b
    sub-long v6, v42, v34

    goto/16 :goto_1

    .line 3552
    :cond_c
    const-wide/16 v6, 0x96

    add-long v6, v6, v42

    cmp-long v4, v34, v6

    if-gez v4, :cond_9

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-nez v4, :cond_9

    .line 3554
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    goto :goto_3

    .line 3564
    .end local v28           #isOffhook:Z
    .end local v34           #now:J
    .end local v41           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    .end local v42           #timeoutTime:J
    :cond_d
    if-nez v21, :cond_e

    .line 3565
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 3567
    :cond_e
    const-wide/16 v6, -0x1

    goto/16 :goto_1

    .line 3574
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEasyAccessEnabled:Z

    if-eqz v4, :cond_13

    move/from16 v0, v25

    and-int/lit16 v4, v0, 0x400

    if-nez v4, :cond_13

    if-nez v21, :cond_13

    .line 3575
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v34

    .line 3576
    .restart local v34       #now:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeUpKeyTime:[J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeUpKeyTime:[J

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    aget-wide v6, v4, v6

    const-wide/16 v8, 0x12c

    add-long v42, v6, v8

    .line 3579
    .restart local v42       #timeoutTime:J
    const-string v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "interceptKeyTi  last home key up  time ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeUpKeyTime:[J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeUpKeyTime:[J

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    aget-wide v7, v7, v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " time out "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v42

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " now "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v34

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3582
    cmp-long v4, v34, v42

    if-gez v4, :cond_10

    .line 3583
    sub-long v6, v42, v34

    goto/16 :goto_1

    .line 3586
    :cond_10
    const/4 v4, 0x3

    move/from16 v0, v30

    if-ne v0, v4, :cond_12

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeUpKeyConsumedByEasyAccess:Z

    if-eqz v4, :cond_12

    .line 3588
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeUpKeyTime:[J

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeUpKeyTime:[J

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeUpKeyTime:[J

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    invoke-static {v4, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3589
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeUpKeyTime:[J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeUpKeyTime:[J

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    const-wide/16 v7, 0x0

    aput-wide v7, v4, v6

    .line 3590
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeUpKeyTime:[J

    const/4 v6, 0x0

    aget-wide v6, v4, v6

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_11

    const/4 v4, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeUpKeyConsumedByEasyAccess:Z

    .line 3591
    const-wide/16 v6, -0x1

    goto/16 :goto_1

    .line 3590
    :cond_11
    const/4 v4, 0x0

    goto :goto_4

    .line 3594
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingEasyAccessEntryAction()V

    .line 3598
    .end local v34           #now:J
    .end local v42           #timeoutTime:J
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mQuickClipHotKeyDisable:Z

    if-nez v4, :cond_14

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHWKeyControlMode:Z

    if-eqz v4, :cond_19

    :cond_14
    move/from16 v0, v25

    and-int/lit16 v4, v0, 0x400

    if-nez v4, :cond_19

    .line 3599
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-eqz v4, :cond_15

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-nez v4, :cond_15

    .line 3600
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v34

    .line 3601
    .restart local v34       #now:J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTime:J

    const-wide/16 v8, 0x96

    add-long v42, v6, v8

    .line 3602
    .restart local v42       #timeoutTime:J
    cmp-long v4, v34, v42

    if-gez v4, :cond_15

    .line 3603
    sub-long v6, v42, v34

    goto/16 :goto_1

    .line 3606
    .end local v34           #now:J
    .end local v42           #timeoutTime:J
    :cond_15
    const/16 v4, 0x19

    move/from16 v0, v30

    if-ne v0, v4, :cond_17

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByQuickClipChord:Z

    if-eqz v4, :cond_17

    .line 3608
    if-nez v21, :cond_16

    .line 3609
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByQuickClipChord:Z

    .line 3611
    :cond_16
    const-wide/16 v6, -0x1

    goto/16 :goto_1

    .line 3613
    :cond_17
    const/16 v4, 0x18

    move/from16 v0, v30

    if-ne v0, v4, :cond_19

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyConsumedByQuickClipChord:Z

    if-eqz v4, :cond_19

    .line 3615
    if-nez v21, :cond_18

    .line 3616
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyConsumedByQuickClipChord:Z

    .line 3618
    :cond_18
    const-wide/16 v6, -0x1

    goto/16 :goto_1

    .line 3623
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeKeyLongPressEnabled:Z

    if-eqz v4, :cond_1f

    move/from16 v0, v25

    and-int/lit16 v4, v0, 0x400

    if-nez v4, :cond_1f

    .line 3624
    const/16 v4, 0x19

    move/from16 v0, v30

    if-ne v0, v4, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByLongPress:Z

    if-eqz v4, :cond_1c

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownLongKeyCancelReason:I

    if-eqz v4, :cond_1a

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownLongKeyCancelReason:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1c

    .line 3627
    :cond_1a
    if-nez v21, :cond_1b

    .line 3628
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByLongPress:Z

    .line 3630
    :cond_1b
    const-wide/16 v6, -0x1

    goto/16 :goto_1

    .line 3632
    :cond_1c
    const/16 v4, 0x18

    move/from16 v0, v30

    if-ne v0, v4, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyConsumedByLongPress:Z

    if-eqz v4, :cond_1f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpLongKeyCancelReason:I

    if-eqz v4, :cond_1d

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpLongKeyCancelReason:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1f

    .line 3635
    :cond_1d
    if-nez v21, :cond_1e

    .line 3636
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyConsumedByLongPress:Z

    .line 3638
    :cond_1e
    const-wide/16 v6, -0x1

    goto/16 :goto_1

    .line 3643
    :cond_1f
    sget-boolean v4, Lcom/lge/config/ConfigBuildFlags;->CAPP_KEY_EXCEPTION:Z

    if-eqz v4, :cond_22

    .line 3644
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v14

    .line 3645
    .local v14, attrs:Landroid/view/WindowManager$LayoutParams;
    :goto_5
    if-eqz v14, :cond_22

    .line 3646
    iget v0, v14, Landroid/view/WindowManager$LayoutParams;->extend:I

    move/from16 v24, v0

    .line 3647
    .local v24, extend:I
    const/high16 v4, 0x8

    and-int v4, v4, v24

    if-eqz v4, :cond_22

    move/from16 v0, p3

    and-int/lit16 v4, v0, 0x100

    if-nez v4, :cond_20

    const/4 v4, 0x3

    move/from16 v0, v30

    if-ne v0, v4, :cond_22

    .line 3649
    :cond_20
    const-wide/16 v6, 0x0

    goto/16 :goto_1

    .line 3644
    .end local v14           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v24           #extend:I
    :cond_21
    const/4 v14, 0x0

    goto :goto_5

    .line 3654
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m112AppAvailable:Z

    if-eqz v4, :cond_24

    .line 3655
    move/from16 v0, v25

    and-int/lit16 v4, v0, 0x400

    if-nez v4, :cond_24

    .line 3656
    const/16 v4, 0x18

    move/from16 v0, v30

    if-ne v0, v4, :cond_24

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyConsumedBy112App:Z

    if-eqz v4, :cond_24

    .line 3657
    if-nez v21, :cond_23

    .line 3658
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyConsumedBy112App:Z

    .line 3660
    :cond_23
    const-wide/16 v6, -0x1

    goto/16 :goto_1

    .line 3665
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isMulticallActive()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 3666
    const/4 v4, 0x3

    move/from16 v0, v30

    if-eq v0, v4, :cond_25

    const/4 v4, 0x4

    move/from16 v0, v30

    if-eq v0, v4, :cond_25

    const/16 v4, 0xbb

    move/from16 v0, v30

    if-eq v0, v4, :cond_25

    const/16 v4, 0x52

    move/from16 v0, v30

    if-ne v0, v4, :cond_26

    .line 3669
    :cond_25
    new-instance v13, Landroid/content/Intent;

    const-string v4, "com.lge.call.action.SENDKEY"

    invoke-direct {v13, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3670
    .local v13, KeyIntent:Landroid/content/Intent;
    const-string v4, "com.lge.call.KeyValue"

    move/from16 v0, v30

    invoke-virtual {v13, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3671
    const-string v4, "com.lge.call.KeyAction"

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    invoke-virtual {v13, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3672
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3673
    const-wide/16 v6, -0x1

    goto/16 :goto_1

    .line 3681
    .end local v13           #KeyIntent:Landroid/content/Intent;
    :cond_26
    const/4 v4, 0x3

    move/from16 v0, v30

    if-ne v0, v4, :cond_3c

    .line 3683
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v4

    if-eqz v4, :cond_27

    .line 3684
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v4

    invoke-interface {v4}, Lcom/lge/cappuccino/IMdm;->getEnforcePasswordChange()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 3685
    const-string v4, "WindowManager"

    const-string v6, "LGMDM:HOME is locked!!"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3686
    const-wide/16 v6, -0x1

    goto/16 :goto_1

    .line 3692
    :cond_27
    const-string v4, "ro.lge.b2b.vmware"

    const/4 v6, 0x0

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_28

    const/high16 v4, -0x8000

    and-int v4, v4, p3

    if-eqz v4, :cond_28

    .line 3694
    const-string v4, "homekey"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->manageMvpKeys(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;Ljava/lang/String;)I

    move-result v4

    int-to-long v6, v4

    goto/16 :goto_1

    .line 3698
    :cond_28
    sget-boolean v4, Lcom/lge/config/ConfigBuildFlags;->CAPP_KEY_EXCEPTION:Z

    if-eqz v4, :cond_2b

    .line 3699
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_29

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v44

    .line 3702
    .local v44, topWindowAttrs:Landroid/view/WindowManager$LayoutParams;
    :goto_6
    if-eqz v44, :cond_2b

    .line 3703
    move-object/from16 v0, v44

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->extend:I

    move/from16 v24, v0

    .line 3704
    .restart local v24       #extend:I
    move/from16 v0, v24

    and-int/lit16 v4, v0, 0x100

    if-eqz v4, :cond_2a

    .line 3705
    const-wide/16 v6, -0x1

    goto/16 :goto_1

    .line 3699
    .end local v24           #extend:I
    .end local v44           #topWindowAttrs:Landroid/view/WindowManager$LayoutParams;
    :cond_29
    const/16 v44, 0x0

    goto :goto_6

    .line 3706
    .restart local v24       #extend:I
    .restart local v44       #topWindowAttrs:Landroid/view/WindowManager$LayoutParams;
    :cond_2a
    move/from16 v0, v24

    and-int/lit16 v4, v0, 0x200

    if-eqz v4, :cond_2b

    .line 3707
    const-wide/16 v6, 0x0

    goto/16 :goto_1

    .line 3714
    .end local v24           #extend:I
    .end local v44           #topWindowAttrs:Landroid/view/WindowManager$LayoutParams;
    :cond_2b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    if-eqz v4, :cond_33

    if-nez v21, :cond_33

    .line 3715
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeLongPressed:Z

    move/from16 v26, v0

    .line 3716
    .local v26, homeWasLongPressed:Z
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    .line 3717
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeLongPressed:Z

    .line 3718
    if-nez v26, :cond_33

    .line 3719
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_2c

    .line 3721
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v40

    .line 3722
    .local v40, statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v40, :cond_2c

    .line 3723
    invoke-interface/range {v40 .. v40}, Lcom/android/internal/statusbar/IStatusBarService;->cancelPreloadRecentApps()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3732
    .end local v40           #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_2c
    :goto_7
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    .line 3733
    if-nez v17, :cond_32

    .line 3738
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x2070006

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 3739
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "go_home"

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v47

    .line 3740
    .local v47, value:I
    const/4 v4, 0x1

    move/from16 v0, v47

    if-ne v0, v4, :cond_2d

    .line 3742
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showGoHomeDialog()V

    .line 3743
    const-wide/16 v6, -0x1

    goto/16 :goto_1

    .line 3725
    .end local v47           #value:I
    :catch_1
    move-exception v22

    .line 3726
    .local v22, e:Landroid/os/RemoteException;
    const-string v4, "WindowManager"

    const-string v6, "RemoteException when showing recent apps"

    move-object/from16 v0, v22

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3728
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_7

    .line 3761
    .end local v22           #e:Landroid/os/RemoteException;
    :cond_2d
    const/16 v16, 0x0

    .line 3763
    .local v16, bCallState:I
    :try_start_2
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v41

    .line 3764
    .restart local v41       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v41, :cond_2e

    .line 3765
    invoke-interface/range {v41 .. v41}, Lcom/android/internal/telephony/ITelephony;->getCallState()I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v16

    .line 3770
    .end local v41           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_2e
    :goto_8
    const/16 v4, 0x64

    move/from16 v0, v16

    if-eq v0, v4, :cond_2f

    const/16 v4, 0x65

    move/from16 v0, v16

    if-ne v0, v4, :cond_31

    .line 3771
    :cond_2f
    move/from16 v0, p3

    and-int/lit16 v4, v0, 0x100

    if-nez v4, :cond_30

    .line 3772
    const-string v4, "WindowManager"

    const-string v6, "bypass HOME to phone apk: there\'s a ringing incoming call."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3773
    const-wide/16 v6, 0x0

    goto/16 :goto_1

    .line 3767
    :catch_2
    move-exception v23

    .line 3768
    .restart local v23       #ex:Landroid/os/RemoteException;
    const-string v4, "WindowManager"

    const-string v6, "RemoteException from getPhoneInterface()"

    move-object/from16 v0, v23

    invoke-static {v4, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 3775
    .end local v23           #ex:Landroid/os/RemoteException;
    :cond_30
    const-string v4, "WindowManager"

    const-string v6, "Ignoring HOME; there\'s a ringing incoming call."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3776
    const-wide/16 v6, -0x1

    goto/16 :goto_1

    .line 3779
    :cond_31
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchHomeFromHotKey()V

    .line 3786
    .end local v16           #bCallState:I
    :goto_9
    const-wide/16 v6, -0x1

    goto/16 :goto_1

    .line 3784
    :cond_32
    const-string v4, "WindowManager"

    const-string v6, "Ignoring HOME; event canceled."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 3792
    .end local v26           #homeWasLongPressed:Z
    :cond_33
    if-eqz p1, :cond_35

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v14

    .line 3793
    .restart local v14       #attrs:Landroid/view/WindowManager$LayoutParams;
    :goto_a
    if-eqz v14, :cond_38

    .line 3794
    iget v0, v14, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v45, v0

    .line 3795
    .local v45, type:I
    const/16 v4, 0x7d4

    move/from16 v0, v45

    if-eq v0, v4, :cond_34

    const/16 v4, 0x7d9

    move/from16 v0, v45

    if-ne v0, v4, :cond_36

    .line 3798
    :cond_34
    const-wide/16 v6, 0x0

    goto/16 :goto_1

    .line 3792
    .end local v14           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v45           #type:I
    :cond_35
    const/4 v14, 0x0

    goto :goto_a

    .line 3800
    .restart local v14       #attrs:Landroid/view/WindowManager$LayoutParams;
    .restart local v45       #type:I
    :cond_36
    sget-object v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    array-length v0, v4

    move/from16 v46, v0

    .line 3801
    .local v46, typeCount:I
    const/16 v27, 0x0

    .local v27, i:I
    :goto_b
    move/from16 v0, v27

    move/from16 v1, v46

    if-ge v0, v1, :cond_38

    .line 3802
    sget-object v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v4, v4, v27

    move/from16 v0, v45

    if-ne v0, v4, :cond_37

    .line 3804
    const-wide/16 v6, -0x1

    goto/16 :goto_1

    .line 3801
    :cond_37
    add-int/lit8 v27, v27, 0x1

    goto :goto_b

    .line 3808
    .end local v27           #i:I
    .end local v45           #type:I
    .end local v46           #typeCount:I
    :cond_38
    if-eqz v21, :cond_3b

    .line 3809
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    if-nez v4, :cond_39

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_39

    .line 3811
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v40

    .line 3812
    .restart local v40       #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v40, :cond_39

    .line 3813
    invoke-interface/range {v40 .. v40}, Lcom/android/internal/statusbar/IStatusBarService;->preloadRecentApps()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 3821
    .end local v40           #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_39
    :goto_c
    if-nez v36, :cond_3a

    .line 3822
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    .line 3824
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingDream:Z

    if-eqz v4, :cond_3b

    .line 3825
    const-wide/16 v6, 0x0

    goto/16 :goto_1

    .line 3815
    :catch_3
    move-exception v22

    .line 3816
    .restart local v22       #e:Landroid/os/RemoteException;
    const-string v4, "WindowManager"

    const-string v6, "RemoteException when preloading recent apps"

    move-object/from16 v0, v22

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3818
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_c

    .line 3827
    .end local v22           #e:Landroid/os/RemoteException;
    :cond_3a
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_3b

    .line 3828
    if-nez v32, :cond_3b

    .line 3829
    if-nez v31, :cond_3b

    .line 3830
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleLongPressOnHome()V

    .line 3835
    :cond_3b
    const-wide/16 v6, -0x1

    goto/16 :goto_1

    .line 3836
    .end local v14           #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_3c
    const/16 v4, 0x52

    move/from16 v0, v30

    if-ne v0, v4, :cond_41

    .line 3838
    const/16 v19, 0x1

    .line 3840
    .local v19, chordBug:I
    if-eqz v21, :cond_40

    if-nez v36, :cond_40

    .line 3841
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    if-eqz v4, :cond_3d

    and-int/lit8 v4, v33, 0x1

    const/4 v6, 0x1

    if-ne v4, v6, :cond_3d

    .line 3842
    new-instance v5, Landroid/content/Intent;

    const-string v4, "android.intent.action.BUG_REPORT"

    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3843
    .local v5, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 3845
    const-wide/16 v6, -0x1

    goto/16 :goto_1

    .line 3861
    .end local v5           #intent:Landroid/content/Intent;
    :cond_3d
    if-nez v31, :cond_3e

    .line 3862
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMenulongEnabled:Z

    if-eqz v4, :cond_3e

    .line 3863
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMenuLongPress:Ljava/lang/Runnable;

    const-wide/16 v7, 0x3e8

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3864
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMenuLongPressing:Z

    .line 4080
    .end local v19           #chordBug:I
    :cond_3e
    :goto_d
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    if-eqz v4, :cond_67

    .line 4081
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v29

    .line 4082
    .local v29, kcm:Landroid/view/KeyCharacterMap;
    invoke-virtual/range {v29 .. v30}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v4

    if-eqz v4, :cond_67

    .line 4083
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 4084
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 4085
    if-eqz v21, :cond_3f

    if-nez v36, :cond_3f

    if-nez v31, :cond_3f

    .line 4086
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v33

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/internal/policy/impl/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v39

    .line 4087
    .local v39, shortcutIntent:Landroid/content/Intent;
    if-eqz v39, :cond_66

    .line 4088
    const/high16 v4, 0x1000

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4090
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_7

    .line 4101
    .end local v39           #shortcutIntent:Landroid/content/Intent;
    :cond_3f
    :goto_e
    const-wide/16 v6, -0x1

    goto/16 :goto_1

    .line 3867
    .end local v29           #kcm:Landroid/view/KeyCharacterMap;
    .restart local v19       #chordBug:I
    :cond_40
    if-nez v21, :cond_3e

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMenuLongPressing:Z

    if-eqz v4, :cond_3e

    .line 3868
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMenulongEnabled:Z

    if-eqz v4, :cond_3e

    .line 3869
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMenuLongPressing:Z

    .line 3870
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMenuLongPress:Ljava/lang/Runnable;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_d

    .line 3873
    .end local v19           #chordBug:I
    :cond_41
    const/16 v4, 0x54

    move/from16 v0, v30

    if-ne v0, v4, :cond_45

    .line 3875
    const-string v4, "ro.lge.b2b.vmware"

    const/4 v6, 0x0

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_42

    const/high16 v4, -0x8000

    and-int v4, v4, p3

    if-eqz v4, :cond_42

    .line 3877
    const-string v4, "globalactions"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->manageMvpKeys(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;Ljava/lang/String;)I

    move-result v4

    int-to-long v6, v4

    goto/16 :goto_1

    .line 3881
    :cond_42
    if-eqz v21, :cond_44

    .line 3882
    if-nez v36, :cond_43

    .line 3883
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 3884
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 3893
    :cond_43
    const-wide/16 v6, 0x0

    goto/16 :goto_1

    .line 3887
    :cond_44
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 3888
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    if-eqz v4, :cond_43

    .line 3889
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 3890
    const-wide/16 v6, -0x1

    goto/16 :goto_1

    .line 3894
    :cond_45
    const/16 v4, 0xbb

    move/from16 v0, v30

    if-ne v0, v4, :cond_4c

    .line 3896
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v4

    if-eqz v4, :cond_46

    .line 3897
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v4

    invoke-interface {v4}, Lcom/lge/cappuccino/IMdm;->getEnforcePasswordChange()Z

    move-result v4

    if-eqz v4, :cond_46

    .line 3898
    const-string v4, "WindowManager"

    const-string v6, "LGMDM:app switch key is locked!!"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3899
    const-wide/16 v6, -0x1

    goto/16 :goto_1

    .line 3905
    :cond_46
    const-string v4, "ro.lge.b2b.vmware"

    const/4 v6, 0x0

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_47

    const/high16 v4, -0x8000

    and-int v4, v4, p3

    if-eqz v4, :cond_47

    .line 3907
    const-string v4, "recentapps"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->manageMvpKeys(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;Ljava/lang/String;)I

    move-result v4

    int-to-long v6, v4

    goto/16 :goto_1

    .line 3911
    :cond_47
    sget-boolean v4, Lcom/lge/config/ConfigBuildFlags;->CAPP_KEY_EXCEPTION:Z

    if-eqz v4, :cond_4a

    .line 3912
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_48

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v44

    .line 3913
    .restart local v44       #topWindowAttrs:Landroid/view/WindowManager$LayoutParams;
    :goto_f
    if-eqz v44, :cond_4a

    .line 3914
    move-object/from16 v0, v44

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->extend:I

    move/from16 v24, v0

    .line 3915
    .restart local v24       #extend:I
    move/from16 v0, v24

    and-int/lit16 v4, v0, 0x2000

    if-eqz v4, :cond_49

    .line 3916
    const-wide/16 v6, -0x1

    goto/16 :goto_1

    .line 3912
    .end local v24           #extend:I
    .end local v44           #topWindowAttrs:Landroid/view/WindowManager$LayoutParams;
    :cond_48
    const/16 v44, 0x0

    goto :goto_f

    .line 3917
    .restart local v24       #extend:I
    .restart local v44       #topWindowAttrs:Landroid/view/WindowManager$LayoutParams;
    :cond_49
    move/from16 v0, v24

    and-int/lit16 v4, v0, 0x4000

    if-eqz v4, :cond_4a

    .line 3918
    const-wide/16 v6, 0x0

    goto/16 :goto_1

    .line 3923
    .end local v24           #extend:I
    .end local v44           #topWindowAttrs:Landroid/view/WindowManager$LayoutParams;
    :cond_4a
    if-eqz v21, :cond_4b

    if-nez v36, :cond_4b

    if-nez v31, :cond_4b

    .line 3924
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showOrHideRecentAppsDialog(I)V

    .line 3926
    const-string v4, "ro.lge.b2b.vmware"

    const/4 v6, 0x0

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 3928
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v40

    .line 3929
    .restart local v40       #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v40, :cond_4b

    .line 3930
    invoke-interface/range {v40 .. v40}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    .line 3940
    .end local v40           #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_4b
    :goto_10
    const-wide/16 v6, -0x1

    goto/16 :goto_1

    .line 3932
    :catch_4
    move-exception v22

    .line 3933
    .restart local v22       #e:Landroid/os/RemoteException;
    const-string v4, "WindowManager"

    const-string v6, "RemoteException when showing recent apps"

    move-object/from16 v0, v22

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3935
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_10

    .line 3941
    .end local v22           #e:Landroid/os/RemoteException;
    :cond_4c
    const/16 v4, 0xdb

    move/from16 v0, v30

    if-ne v0, v4, :cond_51

    .line 3942
    if-eqz v21, :cond_4f

    .line 3943
    if-nez v36, :cond_4e

    .line 3944
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAssistKeyLongPressed:Z

    .line 3960
    :cond_4d
    :goto_11
    const-wide/16 v6, -0x1

    goto/16 :goto_1

    .line 3945
    :cond_4e
    const/4 v4, 0x1

    move/from16 v0, v36

    if-ne v0, v4, :cond_4d

    .line 3946
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAssistKeyLongPressed:Z

    .line 3947
    if-nez v31, :cond_4d

    .line 3948
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchAssistLongPressAction()V

    goto :goto_11

    .line 3952
    :cond_4f
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAssistKeyLongPressed:Z

    if-eqz v4, :cond_50

    .line 3953
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAssistKeyLongPressed:Z

    goto :goto_11

    .line 3955
    :cond_50
    if-nez v31, :cond_4d

    .line 3956
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchAssistAction()V

    goto :goto_11

    .line 3962
    :cond_51
    const/16 v4, 0xe1

    move/from16 v0, v30

    if-ne v0, v4, :cond_5a

    .line 3963
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v41

    .line 3964
    .restart local v41       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v41, :cond_54

    .line 3966
    :try_start_6
    invoke-interface/range {v41 .. v41}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_54

    .line 3969
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHWKeyControlMode:Z

    if-nez v4, :cond_52

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mQuickBTNAnswserMode:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_53

    .line 3974
    :cond_52
    const-string v4, "WindowManager"

    const-string v6, "mQuickClipChordLongPress: CALL key-down while ringing: Answer the call!"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3976
    invoke-interface/range {v41 .. v41}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V

    .line 3977
    const-wide/16 v6, -0x1

    goto/16 :goto_1

    .line 3980
    :cond_53
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mToastIsRinging:Ljava/lang/Runnable;

    const-wide/16 v7, 0x64

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5

    .line 3981
    const-wide/16 v6, -0x1

    goto/16 :goto_1

    .line 3983
    :catch_5
    move-exception v23

    .line 3984
    .restart local v23       #ex:Landroid/os/RemoteException;
    const-string v4, "WindowManager"

    const-string v6, "ITelephony threw RemoteException"

    move-object/from16 v0, v23

    invoke-static {v4, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3988
    .end local v23           #ex:Landroid/os/RemoteException;
    :cond_54
    sget-boolean v4, Lcom/lge/config/ConfigBuildFlags;->CAPP_KEY_EXCEPTION:Z

    if-eqz v4, :cond_55

    .line 3989
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_56

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    .line 3990
    .local v15, attrss:Landroid/view/WindowManager$LayoutParams;
    :goto_12
    if-eqz v15, :cond_55

    .line 3991
    iget v0, v15, Landroid/view/WindowManager$LayoutParams;->extend:I

    move/from16 v24, v0

    .line 3992
    .restart local v24       #extend:I
    const/high16 v4, 0x4

    and-int v4, v4, v24

    if-eqz v4, :cond_55

    .line 3993
    const-string v4, "WindowManager"

    const-string v6, "Blocking mBlockingQuickclip"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3994
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->hasNavigationBar()Z

    move-result v4

    if-eqz v4, :cond_57

    if-nez v31, :cond_57

    .line 3995
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->toggleQuickClipFromHotKey()V

    .line 4003
    .end local v15           #attrss:Landroid/view/WindowManager$LayoutParams;
    .end local v24           #extend:I
    :cond_55
    if-eqz v21, :cond_58

    if-nez v36, :cond_58

    .line 4004
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mQuickClipLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v7

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4005
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mQuickclipPressed:Z

    goto/16 :goto_d

    .line 3989
    :cond_56
    const/4 v15, 0x0

    goto :goto_12

    .line 3998
    .restart local v15       #attrss:Landroid/view/WindowManager$LayoutParams;
    .restart local v24       #extend:I
    :cond_57
    const-wide/16 v6, 0x0

    goto/16 :goto_1

    .line 4006
    .end local v15           #attrss:Landroid/view/WindowManager$LayoutParams;
    .end local v24           #extend:I
    :cond_58
    if-nez v21, :cond_3e

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mQuickclipPressed:Z

    if-eqz v4, :cond_3e

    .line 4007
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mQuickclipPressed:Z

    .line 4008
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mQuickClipLongPress:Ljava/lang/Runnable;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4009
    if-nez v31, :cond_3e

    if-nez v32, :cond_3e

    .line 4010
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHotKeyCustomizing:Z

    if-eqz v4, :cond_59

    .line 4011
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sShortKeyPkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sShortKeyClass:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->excuteQuickMemoHotKey(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 4013
    :cond_59
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->toggleQuickClipFromHotKey()V

    goto/16 :goto_d

    .line 4018
    .end local v41           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_5a
    sget-boolean v4, Lcom/lge/config/ConfigBuildFlags;->CAPP_SPLITWINDOW:Z

    if-eqz v4, :cond_60

    const/4 v4, 0x4

    move/from16 v0, v30

    if-ne v0, v4, :cond_60

    .line 4021
    if-eqz p1, :cond_5c

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v14

    .line 4022
    .restart local v14       #attrs:Landroid/view/WindowManager$LayoutParams;
    :goto_13
    if-eqz v14, :cond_5f

    .line 4023
    iget v0, v14, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v45, v0

    .line 4024
    .restart local v45       #type:I
    const/16 v4, 0x7d4

    move/from16 v0, v45

    if-eq v0, v4, :cond_5b

    const/16 v4, 0x7d9

    move/from16 v0, v45

    if-ne v0, v4, :cond_5d

    .line 4027
    :cond_5b
    const-wide/16 v6, 0x0

    goto/16 :goto_1

    .line 4021
    .end local v14           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v45           #type:I
    :cond_5c
    const/4 v14, 0x0

    goto :goto_13

    .line 4029
    .restart local v14       #attrs:Landroid/view/WindowManager$LayoutParams;
    .restart local v45       #type:I
    :cond_5d
    sget-object v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    array-length v0, v4

    move/from16 v46, v0

    .line 4030
    .restart local v46       #typeCount:I
    const/16 v27, 0x0

    .restart local v27       #i:I
    :goto_14
    move/from16 v0, v27

    move/from16 v1, v46

    if-ge v0, v1, :cond_5f

    .line 4031
    sget-object v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v4, v4, v27

    move/from16 v0, v45

    if-ne v0, v4, :cond_5e

    .line 4033
    const-wide/16 v6, -0x1

    goto/16 :goto_1

    .line 4030
    :cond_5e
    add-int/lit8 v27, v27, 0x1

    goto :goto_14

    .line 4037
    .end local v27           #i:I
    .end local v45           #type:I
    .end local v46           #typeCount:I
    :cond_5f
    if-eqz v21, :cond_3e

    .line 4038
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_3e

    .line 4039
    if-nez v31, :cond_3e

    const-string v4, "kids"

    const-string v6, "service.plushome.currenthome"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3e

    .line 4041
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchSplitWindowUI()V

    .line 4042
    const-wide/16 v6, -0x1

    goto/16 :goto_1

    .line 4048
    .end local v14           #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_60
    const/16 v4, 0x53

    move/from16 v0, v30

    if-ne v0, v4, :cond_62

    .line 4049
    if-nez v21, :cond_3e

    .line 4050
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v37

    .line 4051
    .local v37, sbs:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v37, :cond_3e

    .line 4053
    :try_start_7
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsExpanded:Z

    if-nez v4, :cond_61

    .line 4054
    invoke-interface/range {v37 .. v37}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_d

    .line 4058
    :catch_6
    move-exception v22

    .line 4059
    .restart local v22       #e:Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 4056
    .end local v22           #e:Landroid/os/RemoteException;
    :cond_61
    :try_start_8
    invoke-interface/range {v37 .. v37}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanels()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_d

    .line 4063
    .end local v37           #sbs:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_62
    const/16 v4, 0xe9

    move/from16 v0, v30

    if-eq v0, v4, :cond_63

    const/16 v4, 0xea

    move/from16 v0, v30

    if-ne v0, v4, :cond_3e

    .line 4064
    :cond_63
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_3e

    if-nez v17, :cond_3e

    .line 4065
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 4066
    .restart local v5       #intent:Landroid/content/Intent;
    const-string v4, "com.lge.systemui.MovingNavigation"

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4067
    const-string v4, "app_start"

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4068
    const-string v6, "right_position"

    const/16 v4, 0xea

    move/from16 v0, v30

    if-ne v0, v4, :cond_64

    const/4 v4, 0x1

    :goto_15
    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4069
    const-string v6, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MovingNavigation intent : app_start = false, right_position = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v4, 0xea

    move/from16 v0, v30

    if-ne v0, v4, :cond_65

    const/4 v4, 0x1

    :goto_16
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4070
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_d

    .line 4068
    :cond_64
    const/4 v4, 0x0

    goto :goto_15

    .line 4069
    :cond_65
    const/4 v4, 0x0

    goto :goto_16

    .line 4091
    .end local v5           #intent:Landroid/content/Intent;
    .restart local v29       #kcm:Landroid/view/KeyCharacterMap;
    .restart local v39       #shortcutIntent:Landroid/content/Intent;
    :catch_7
    move-exception v23

    .line 4092
    .local v23, ex:Landroid/content/ActivityNotFoundException;
    const-string v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dropping shortcut key combination because the activity to which it is registered was not found: SEARCH+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v30 .. v30}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e

    .line 4097
    .end local v23           #ex:Landroid/content/ActivityNotFoundException;
    :cond_66
    const-string v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dropping unregistered shortcut key combination: SEARCH+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v30 .. v30}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 4106
    .end local v29           #kcm:Landroid/view/KeyCharacterMap;
    .end local v39           #shortcutIntent:Landroid/content/Intent;
    :cond_67
    if-eqz v21, :cond_68

    if-nez v36, :cond_68

    if-nez v31, :cond_68

    const/high16 v4, 0x1

    and-int v4, v4, v33

    if-eqz v4, :cond_68

    .line 4108
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v29

    .line 4109
    .restart local v29       #kcm:Landroid/view/KeyCharacterMap;
    invoke-virtual/range {v29 .. v30}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 4110
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    const v6, -0x70001

    and-int v6, v6, v33

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v4, v0, v1, v6}, Lcom/android/internal/policy/impl/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v39

    .line 4113
    .restart local v39       #shortcutIntent:Landroid/content/Intent;
    if-eqz v39, :cond_68

    .line 4114
    const/high16 v4, 0x1000

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4116
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_9
    .catch Landroid/content/ActivityNotFoundException; {:try_start_9 .. :try_end_9} :catch_8

    .line 4122
    :goto_17
    const-wide/16 v6, -0x1

    goto/16 :goto_1

    .line 4117
    :catch_8
    move-exception v23

    .line 4118
    .restart local v23       #ex:Landroid/content/ActivityNotFoundException;
    const-string v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dropping shortcut key combination because the activity to which it is registered was not found: META+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v30 .. v30}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 4128
    .end local v23           #ex:Landroid/content/ActivityNotFoundException;
    .end local v29           #kcm:Landroid/view/KeyCharacterMap;
    .end local v39           #shortcutIntent:Landroid/content/Intent;
    :cond_68
    if-eqz v21, :cond_69

    if-nez v36, :cond_69

    if-nez v31, :cond_69

    .line 4129
    sget-object v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 4130
    .local v18, category:Ljava/lang/String;
    if-eqz v18, :cond_69

    .line 4131
    const-string v4, "android.intent.action.MAIN"

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 4132
    .restart local v5       #intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4134
    :try_start_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_a .. :try_end_a} :catch_9

    .line 4140
    :goto_18
    const-wide/16 v6, -0x1

    goto/16 :goto_1

    .line 4135
    :catch_9
    move-exception v23

    .line 4136
    .restart local v23       #ex:Landroid/content/ActivityNotFoundException;
    const-string v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dropping application launch key because the activity to which it is registered was not found: keyCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", category="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18

    .line 4145
    .end local v5           #intent:Landroid/content/Intent;
    .end local v18           #category:Ljava/lang/String;
    .end local v23           #ex:Landroid/content/ActivityNotFoundException;
    :cond_69
    if-eqz v21, :cond_6b

    if-nez v36, :cond_6b

    const/16 v4, 0x3d

    move/from16 v0, v30

    if-ne v0, v4, :cond_6b

    .line 4146
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    if-nez v4, :cond_6c

    if-nez v31, :cond_6c

    .line 4147
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v4

    and-int/lit16 v0, v4, -0xc2

    move/from16 v38, v0

    .line 4148
    .local v38, shiftlessModifiers:I
    const/4 v4, 0x2

    move/from16 v0, v38

    invoke-static {v0, v4}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v4

    if-nez v4, :cond_6a

    const/high16 v4, 0x1

    move/from16 v0, v38

    invoke-static {v0, v4}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 4151
    :cond_6a
    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    .line 4152
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showOrHideRecentAppsDialog(I)V

    .line 4153
    const-wide/16 v6, -0x1

    goto/16 :goto_1

    .line 4156
    .end local v38           #shiftlessModifiers:I
    :cond_6b
    if-nez v21, :cond_6c

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    if-eqz v4, :cond_6c

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    and-int v4, v4, v33

    if-nez v4, :cond_6c

    .line 4158
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    .line 4159
    if-eqz v31, :cond_70

    const/4 v4, 0x2

    :goto_19
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showOrHideRecentAppsDialog(I)V

    .line 4164
    :cond_6c
    if-eqz v21, :cond_6e

    if-nez v36, :cond_6e

    const/16 v4, 0xcc

    move/from16 v0, v30

    if-eq v0, v4, :cond_6d

    const/16 v4, 0x3e

    move/from16 v0, v30

    if-ne v0, v4, :cond_6e

    move/from16 v0, v33

    and-int/lit16 v4, v0, 0x7000

    if-eqz v4, :cond_6e

    .line 4168
    :cond_6d
    move/from16 v0, v33

    and-int/lit16 v4, v0, 0xc1

    if-eqz v4, :cond_71

    const/16 v20, -0x1

    .line 4169
    .local v20, direction:I
    :goto_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v6

    move/from16 v0, v20

    invoke-interface {v4, v6, v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->switchKeyboardLayout(II)V

    .line 4172
    .end local v20           #direction:I
    :cond_6e
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLanguageSwitchKeyPressed:Z

    if-eqz v4, :cond_72

    if-nez v21, :cond_72

    const/16 v4, 0xcc

    move/from16 v0, v30

    if-eq v0, v4, :cond_6f

    const/16 v4, 0x3e

    move/from16 v0, v30

    if-ne v0, v4, :cond_72

    .line 4175
    :cond_6f
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLanguageSwitchKeyPressed:Z

    .line 4176
    const-wide/16 v6, -0x1

    goto/16 :goto_1

    .line 4159
    :cond_70
    const/4 v4, 0x3

    goto :goto_19

    .line 4168
    :cond_71
    const/16 v20, 0x1

    goto :goto_1a

    .line 4180
    :cond_72
    const-wide/16 v6, 0x0

    goto/16 :goto_1
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
    .locals 25
    .parameter "event"
    .parameter "policyFlags"
    .parameter "isScreenOn"

    .prologue
    .line 6463
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    move/from16 v21, v0

    if-nez v21, :cond_1

    .line 6465
    const/16 v17, 0x0

    .line 7200
    :cond_0
    :goto_0
    return v17

    .line 6468
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->isProgressingExit()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 6470
    const/16 v17, 0x0

    goto :goto_0

    .line 6473
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v21

    if-nez v21, :cond_4

    const/4 v7, 0x1

    .line 6474
    .local v7, down:Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    .line 6475
    .local v6, canceled:Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v13

    .line 6477
    .local v13, keyCode:I
    const/high16 v21, 0x100

    and-int v21, v21, p2

    if-eqz v21, :cond_5

    const/4 v11, 0x1

    .line 6481
    .local v11, isInjected:Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v21

    const/16 v22, 0xdc

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 6482
    const-string v21, "WindowManager"

    const-string v22, "KEY_TESTMODE_UNLOCK : Clear pattern lock"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6483
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->systemReady()V

    .line 6484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->clearLockPattern()V

    .line 6488
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOperator:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "VZW"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 6489
    sget-boolean v21, Lcom/android/internal/policy/impl/PhoneWindowManager;->SPC_ERR_FREEZE:Z

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 6490
    const/16 v17, 0x2

    goto :goto_0

    .line 6473
    .end local v6           #canceled:Z
    .end local v7           #down:Z
    .end local v11           #isInjected:Z
    .end local v13           #keyCode:I
    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    .line 6477
    .restart local v6       #canceled:Z
    .restart local v7       #down:Z
    .restart local v13       #keyCode:I
    :cond_5
    const/4 v11, 0x0

    goto :goto_2

    .line 6497
    .restart local v11       #isInjected:Z
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mViewCoverClosed:Z

    move/from16 v21, v0

    if-eqz v21, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getCoverType()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    .line 6498
    const/16 v21, 0x52

    move/from16 v0, v21

    if-eq v13, v0, :cond_7

    const/16 v21, 0x4

    move/from16 v0, v21

    if-eq v13, v0, :cond_7

    const/16 v21, 0x3

    move/from16 v0, v21

    if-ne v13, v0, :cond_8

    .line 6499
    :cond_7
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 6501
    :cond_8
    const/16 v21, 0xe1

    move/from16 v0, v21

    if-ne v13, v0, :cond_9

    .line 6502
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mQuickBTNAnswserMode:I

    move/from16 v21, v0

    if-nez v21, :cond_9

    .line 6503
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 6514
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    move-object/from16 v21, v0

    if-nez v21, :cond_11

    const/4 v14, 0x0

    .line 6519
    .local v14, keyguardActive:Z
    :goto_3
    const/16 v21, 0x1a

    move/from16 v0, v21

    if-ne v13, v0, :cond_a

    .line 6520
    or-int/lit8 p2, p2, 0x1

    .line 6522
    :cond_a
    and-int/lit8 v21, p2, 0x3

    if-eqz v21, :cond_13

    const/4 v12, 0x1

    .line 6526
    .local v12, isWakeKey:Z
    :goto_4
    const-string v21, "WindowManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "interceptKeyTq keycode="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " screenIsOn="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " keyguardActive="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " policyFlags="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " isWakeKey="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6532
    invoke-static/range {p0 .. p2}, Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->performReleaseHapticFeedback(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/KeyEvent;I)V

    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x100

    move/from16 v21, v0

    if-eqz v21, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v21

    if-nez v21, :cond_c

    .line 6534
    const/16 v21, 0x0

    const/16 v22, 0x2

    if-eqz v7, :cond_b

    const/16 v22, 0x1

    :cond_b
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 6538
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRearSideKeyEnable:Z

    move/from16 v21, v0

    if-eqz v21, :cond_d

    const/16 v21, 0x1a

    move/from16 v0, v21

    if-ne v13, v0, :cond_d

    if-nez v7, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mViewCoverClosed:Z

    move/from16 v21, v0

    if-nez v21, :cond_d

    .line 6539
    const-string v21, "sys.allautotest.run"

    const-string v22, "false"

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v22, "false"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 6540
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mProximitySensorEnabled:Z

    move/from16 v21, v0

    if-nez v21, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyScreenOn:Z

    move/from16 v21, v0

    if-nez v21, :cond_d

    .line 6541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyPress:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6542
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setProximitySensorEnabled(Z)V

    .line 6543
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setProximitySensorEnabled(Z)V

    .line 6558
    :cond_d
    if-eqz p3, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    move/from16 v21, v0

    if-eqz v21, :cond_f

    :cond_e
    if-eqz v11, :cond_14

    if-nez v12, :cond_14

    .line 6560
    :cond_f
    const/16 v17, 0x1

    .line 6598
    .local v17, result:I
    :cond_10
    :goto_5
    sparse-switch v13, :sswitch_data_0

    goto/16 :goto_0

    .line 6600
    :sswitch_0
    if-nez v7, :cond_0

    .line 6601
    if-eqz p3, :cond_0

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEasyAccessEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0x400

    move/from16 v21, v0

    if-nez v21, :cond_0

    .line 6605
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeUpKeyConsumedByEasyAccess:Z

    .line 6606
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptEasyAccessEntry()V

    goto/16 :goto_0

    .line 6514
    .end local v12           #isWakeKey:Z
    .end local v14           #keyguardActive:Z
    .end local v17           #result:I
    :cond_11
    if-eqz p3, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v14

    goto/16 :goto_3

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->isShowing()Z

    move-result v14

    goto/16 :goto_3

    .line 6522
    .restart local v14       #keyguardActive:Z
    :cond_13
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 6564
    .restart local v12       #isWakeKey:Z
    :cond_14
    const/16 v17, 0x0

    .line 6565
    .restart local v17       #result:I
    if-eqz v7, :cond_15

    .line 6566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafetyCareIntent:Landroid/content/Intent;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 6569
    :cond_15
    if-eqz v7, :cond_16

    const/16 v21, 0x1a

    move/from16 v0, v21

    if-ne v13, v0, :cond_16

    .line 6570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    const-string v22, "com.lge.android.intent.extra.KEY_CODE"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyIntent:Landroid/content/Intent;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 6573
    :cond_16
    if-eqz v7, :cond_10

    if-eqz v12, :cond_10

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isWakeKeyWhenScreenOff(I)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 6574
    const/16 v21, 0x1a

    move/from16 v0, v21

    if-ne v13, v0, :cond_17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mViewCoverClosed:Z

    move/from16 v21, v0

    if-eqz v21, :cond_17

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getCoverType()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_17

    .line 6575
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v19

    .line 6576
    .local v19, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v19, :cond_10

    .line 6578
    :try_start_0
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v21

    if-nez v21, :cond_10

    .line 6579
    const-string v21, "WindowManager"

    const-string v22, "telephonyservice isOffhook false"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->onWakeKeyWhenKeyguardShowingTq(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 6582
    :catch_0
    move-exception v8

    .line 6583
    .local v8, ex:Landroid/os/RemoteException;
    const-string v21, "WindowManager"

    const-string v22, "ITelephony threw RemoteException"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 6587
    .end local v8           #ex:Landroid/os/RemoteException;
    .end local v19           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_17
    if-eqz v14, :cond_18

    .line 6589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->onWakeKeyWhenKeyguardShowingTq(I)V

    goto/16 :goto_5

    .line 6592
    :cond_18
    or-int/lit8 v17, v17, 0x2

    goto/16 :goto_5

    .line 6615
    :sswitch_1
    if-nez p3, :cond_1a

    if-eqz v7, :cond_1a

    .line 6617
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOperator:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "KDDI"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_19

    .line 6618
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v19

    .line 6619
    .restart local v19       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    const/16 v21, 0x19

    move/from16 v0, v21

    if-ne v13, v0, :cond_19

    if-eqz v19, :cond_19

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v21

    if-eqz v21, :cond_19

    .line 6620
    or-int/lit8 v17, v17, 0x2

    .line 6624
    .end local v19           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Landroid/view/IWindowManager;->getDsdrStatus()I

    move-result v21

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1a

    .line 6625
    new-instance v20, Landroid/content/Intent;

    const-string v21, "com.lge.lcdoff.volumekey"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6626
    .local v20, volumeKeyIntent:Landroid/content/Intent;
    const-string v21, "keycode"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_f

    .line 6634
    .end local v20           #volumeKeyIntent:Landroid/content/Intent;
    :cond_1a
    :goto_6
    :sswitch_2
    const/16 v21, 0x19

    move/from16 v0, v21

    if-ne v13, v0, :cond_27

    .line 6635
    if-eqz v7, :cond_24

    .line 6636
    if-eqz p3, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    move/from16 v21, v0

    if-nez v21, :cond_1c

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0x400

    move/from16 v21, v0

    if-nez v21, :cond_1c

    .line 6638
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    .line 6639
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v21

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTime:J

    .line 6640
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 6641
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 6642
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptScreenshotChord()V

    .line 6643
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mQuickClipHotKeyDisable:Z

    move/from16 v21, v0

    if-nez v21, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHWKeyControlMode:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1c

    .line 6644
    :cond_1b
    const-string v21, "WindowManager"

    const-string v22, "BeforeQueueing ==> KEYCODE_VOLUME_DOWN"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6645
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByQuickClipChord:Z

    .line 6646
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptQuickClipChord()V

    .line 6650
    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeKeyLongPressEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1d

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0x400

    move/from16 v21, v0

    if-nez v21, :cond_1d

    .line 6652
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    .line 6653
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v21

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTime:J

    .line 6654
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByLongPress:Z

    .line 6655
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownLongKeyCancelReason:I

    .line 6656
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptVolumeDownLongKey(Z)V

    .line 6714
    :cond_1d
    :goto_7
    if-eqz v7, :cond_35

    .line 6716
    const/16 v21, 0x5

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v21

    if-eqz v21, :cond_1e

    .line 6717
    const-string v21, "WindowManager"

    const-string v22, "interceptKeyBeforeQueueing: Stop notification sound"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6718
    const-string v21, "notification"

    invoke-static/range {v21 .. v21}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v16

    .line 6720
    .local v16, notificationManagerService:Landroid/app/INotificationManager;
    if-eqz v16, :cond_1e

    .line 6722
    :try_start_2
    invoke-interface/range {v16 .. v16}, Landroid/app/INotificationManager;->stopSound()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 6729
    .end local v16           #notificationManagerService:Landroid/app/INotificationManager;
    :cond_1e
    :goto_8
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v19

    .line 6730
    .restart local v19       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v19, :cond_21

    .line 6733
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHWKeyControlMode:Z

    move/from16 v21, v0

    if-nez v21, :cond_30

    .line 6735
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v21

    if-eqz v21, :cond_32

    .line 6742
    const-string v21, "WindowManager"

    const-string v22, "interceptKeyBeforeQueueing: VOLUME key-down while ringing: Silence ringer!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6746
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsTargetTmoUs:Z

    move/from16 v21, v0

    if-eqz v21, :cond_20

    const/16 v21, 0x19

    move/from16 v0, v21

    if-eq v13, v0, :cond_1f

    const/16 v21, 0x18

    move/from16 v0, v21

    if-ne v13, v0, :cond_20

    .line 6748
    :cond_1f
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUDUBLongPressedStartTime:J

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-nez v21, :cond_20

    .line 6749
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v21

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUDUBLongPressedStartTime:J

    .line 6750
    const-string v21, "WindowManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[UDUB] keyCode = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " down at mUDUBLongPressedStartTime="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUDUBLongPressedStartTime:J

    move-wide/from16 v23, v0

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6757
    :cond_20
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V

    .line 6765
    and-int/lit8 v17, v17, -0x2

    .line 6771
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeKeyLongPressEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 6772
    const/16 v21, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v13, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingVolumeLongKeyAction(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 6801
    :catch_1
    move-exception v8

    .line 6802
    .restart local v8       #ex:Landroid/os/RemoteException;
    const-string v21, "WindowManager"

    const-string v22, "ITelephony threw RemoteException"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6806
    .end local v8           #ex:Landroid/os/RemoteException;
    :cond_21
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeKeyLongPressEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isMusicActive()Z

    move-result v21

    if-nez v21, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isFMActive()Z

    move-result v21

    if-eqz v21, :cond_23

    .line 6808
    :cond_22
    const/16 v21, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v13, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingVolumeLongKeyAction(II)V

    .line 6811
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isMusicActive()Z

    move-result v21

    if-eqz v21, :cond_33

    and-int/lit8 v21, v17, 0x1

    if-nez v21, :cond_33

    .line 6814
    const/16 v21, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleVolumeKey(II)V

    goto/16 :goto_0

    .line 6659
    .end local v19           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_24
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    .line 6660
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 6661
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mQuickClipHotKeyDisable:Z

    move/from16 v21, v0

    if-nez v21, :cond_25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHWKeyControlMode:Z

    move/from16 v21, v0

    if-eqz v21, :cond_26

    .line 6662
    :cond_25
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingQuickClipChordAction()V

    .line 6665
    :cond_26
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeKeyLongPressEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1d

    .line 6666
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v13, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingVolumeLongKeyAction(II)V

    goto/16 :goto_7

    .line 6669
    :cond_27
    const/16 v21, 0x18

    move/from16 v0, v21

    if-ne v13, v0, :cond_1d

    .line 6670
    if-eqz v7, :cond_2b

    .line 6671
    if-eqz p3, :cond_29

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    move/from16 v21, v0

    if-nez v21, :cond_29

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0x400

    move/from16 v21, v0

    if-nez v21, :cond_29

    .line 6673
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    .line 6674
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 6675
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 6676
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mQuickClipHotKeyDisable:Z

    move/from16 v21, v0

    if-nez v21, :cond_28

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHWKeyControlMode:Z

    move/from16 v21, v0

    if-eqz v21, :cond_29

    .line 6677
    :cond_28
    const-string v21, "WindowManager"

    const-string v22, "BeforeQueueing ==> KEYCODE_VOLUME_UP"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6678
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v21

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTime:J

    .line 6679
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyConsumedByQuickClipChord:Z

    .line 6680
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptQuickClipChord()V

    .line 6684
    :cond_29
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m112AppAvailable:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2a

    .line 6685
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v21

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTime:J

    .line 6686
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyConsumedBy112App:Z

    .line 6687
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->intercept112AppChord()V

    .line 6688
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    .line 6691
    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeKeyLongPressEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1d

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0x400

    move/from16 v21, v0

    if-nez v21, :cond_1d

    .line 6693
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    .line 6694
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v21

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTime:J

    .line 6695
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyConsumedByLongPress:Z

    .line 6696
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpLongKeyCancelReason:I

    .line 6697
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptVolumeUpLongKey(Z)V

    goto/16 :goto_7

    .line 6700
    :cond_2b
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    .line 6701
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 6702
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mQuickClipHotKeyDisable:Z

    move/from16 v21, v0

    if-nez v21, :cond_2c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHWKeyControlMode:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2d

    .line 6703
    :cond_2c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingQuickClipChordAction()V

    .line 6705
    :cond_2d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m112AppAvailable:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2e

    .line 6706
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPending112AppChordAction()V

    .line 6709
    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeKeyLongPressEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1d

    .line 6710
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v13, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingVolumeLongKeyAction(II)V

    goto/16 :goto_7

    .line 6723
    .restart local v16       #notificationManagerService:Landroid/app/INotificationManager;
    :catch_2
    move-exception v8

    .line 6724
    .restart local v8       #ex:Landroid/os/RemoteException;
    const-string v21, "WindowManager"

    const-string v22, "INotificationManager threw RemoteException"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .line 6768
    .end local v8           #ex:Landroid/os/RemoteException;
    .end local v16           #notificationManagerService:Landroid/app/INotificationManager;
    .restart local v19       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_2f
    and-int/lit8 v17, v17, 0x1

    goto/16 :goto_9

    .line 6778
    :cond_30
    :try_start_4
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v21

    if-eqz v21, :cond_32

    .line 6779
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsTargetTmoUs:Z

    move/from16 v21, v0

    if-eqz v21, :cond_32

    const/16 v21, 0x19

    move/from16 v0, v21

    if-eq v13, v0, :cond_31

    const/16 v21, 0x18

    move/from16 v0, v21

    if-ne v13, v0, :cond_32

    .line 6781
    :cond_31
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUDUBLongPressedStartTime:J

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-nez v21, :cond_32

    .line 6782
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v21

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUDUBLongPressedStartTime:J

    .line 6783
    const-string v21, "WindowManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[UDUB] keyCode = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " down at mUDUBLongPressedStartTime="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUDUBLongPressedStartTime:J

    move-wide/from16 v23, v0

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6790
    :cond_32
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v21

    if-eqz v21, :cond_21

    and-int/lit8 v21, v17, 0x1

    if-nez v21, :cond_21

    .line 6794
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleVolumeKey(II)V

    .line 6796
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeKeyLongPressEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 6797
    const/16 v21, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v13, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingVolumeLongKeyAction(II)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 6816
    :cond_33
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isFMActive()Z

    move-result v21

    if-eqz v21, :cond_34

    and-int/lit8 v21, v17, 0x1

    if-nez v21, :cond_34

    .line 6817
    const/16 v21, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleVolumeKey(II)V

    goto/16 :goto_0

    .line 6820
    :cond_34
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isVVMActive()Z

    move-result v21

    if-eqz v21, :cond_0

    and-int/lit8 v21, v17, 0x1

    if-nez v21, :cond_0

    .line 6821
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleVolumeKey(II)V

    goto/16 :goto_0

    .line 6825
    .end local v19           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_35
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsTargetTmoUs:Z

    move/from16 v21, v0

    if-eqz v21, :cond_36

    .line 6826
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUDUBLongPressedStartTime:J

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-nez v21, :cond_37

    .line 6827
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSkipUdub:Z

    .line 6855
    :cond_36
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHWKeyControlMode:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 6856
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v19

    .line 6857
    .restart local v19       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v19, :cond_0

    .line 6859
    :try_start_5
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 6866
    const-string v21, "WindowManager"

    const-string v22, "interceptKeyBeforeQueueing: VOLUME key-down while ringing: Silence ringer!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6872
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    .line 6876
    and-int/lit8 v17, v17, -0x2

    goto/16 :goto_0

    .line 6828
    .end local v19           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_37
    const/16 v21, 0x19

    move/from16 v0, v21

    if-eq v13, v0, :cond_38

    const/16 v21, 0x18

    move/from16 v0, v21

    if-ne v13, v0, :cond_36

    .line 6829
    :cond_38
    const-string v21, "WindowManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[UDUB] mIsTargetTmoUs keyCode= "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", mUDUBLongPressedStartTime = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUDUBLongPressedStartTime:J

    move-wide/from16 v23, v0

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", mSkipUdub="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSkipUdub:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6832
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v19

    .line 6833
    .restart local v19       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v19, :cond_39

    .line 6836
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v21

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUDUBLongPressedStartTime:J

    move-wide/from16 v23, v0

    sub-long v21, v21, v23

    const-wide/16 v23, 0x7cf

    cmp-long v21, v21, v23

    if-lez v21, :cond_39

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v21

    if-eqz v21, :cond_39

    .line 6838
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSkipUdub:Z

    move/from16 v21, v0

    if-nez v21, :cond_39

    .line 6839
    const-string v21, "WindowManager"

    const-string v22, "[UDUB] call endCall"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6840
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    .line 6849
    :cond_39
    :goto_b
    const-wide/16 v21, 0x0

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUDUBLongPressedStartTime:J

    .line 6850
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSkipUdub:Z

    goto/16 :goto_a

    .line 6843
    :catch_3
    move-exception v8

    .line 6844
    .restart local v8       #ex:Landroid/os/RemoteException;
    const-wide/16 v21, 0x0

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUDUBLongPressedStartTime:J

    .line 6845
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSkipUdub:Z

    .line 6846
    const-string v21, "WindowManager"

    const-string v22, "ITelephony threw RemoteException"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 6879
    .end local v8           #ex:Landroid/os/RemoteException;
    :catch_4
    move-exception v8

    .line 6880
    .restart local v8       #ex:Landroid/os/RemoteException;
    const-string v21, "WindowManager"

    const-string v22, "ITelephony threw RemoteException"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 6890
    .end local v8           #ex:Landroid/os/RemoteException;
    .end local v19           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :sswitch_3
    sget-boolean v21, Lcom/lge/config/ConfigBuildFlags;->CAPP_KEY_EXCEPTION:Z

    if-eqz v21, :cond_3c

    .line 6891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 6892
    .local v4, attrs:Landroid/view/WindowManager$LayoutParams;
    :goto_c
    if-eqz v4, :cond_3c

    .line 6893
    iget v9, v4, Landroid/view/WindowManager$LayoutParams;->extend:I

    .line 6894
    .local v9, extend:I
    and-int/lit16 v0, v9, 0x800

    move/from16 v21, v0

    if-eqz v21, :cond_3b

    .line 6895
    or-int/lit8 v17, v17, 0x1

    .line 6896
    goto/16 :goto_0

    .line 6891
    .end local v4           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v9           #extend:I
    :cond_3a
    const/4 v4, 0x0

    goto :goto_c

    .line 6897
    .restart local v4       #attrs:Landroid/view/WindowManager$LayoutParams;
    .restart local v9       #extend:I
    :cond_3b
    and-int/lit16 v0, v9, 0x400

    move/from16 v21, v0

    if-eqz v21, :cond_3c

    .line 6898
    and-int/lit8 v17, v17, -0x2

    .line 6899
    goto/16 :goto_0

    .line 6903
    .end local v4           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v9           #extend:I
    :cond_3c
    and-int/lit8 v17, v17, -0x2

    .line 6904
    if-eqz v7, :cond_40

    .line 6905
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v19

    .line 6906
    .restart local v19       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    const/4 v10, 0x0

    .line 6907
    .local v10, hungUp:Z
    if-eqz v19, :cond_3d

    .line 6909
    :try_start_7
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5

    move-result v10

    .line 6914
    :cond_3d
    :goto_d
    if-eqz p3, :cond_3e

    if-eqz v10, :cond_3f

    :cond_3e
    const/16 v21, 0x1

    :goto_e
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyDown(Z)V

    goto/16 :goto_0

    .line 6910
    :catch_5
    move-exception v8

    .line 6911
    .restart local v8       #ex:Landroid/os/RemoteException;
    const-string v21, "WindowManager"

    const-string v22, "ITelephony threw RemoteException"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 6914
    .end local v8           #ex:Landroid/os/RemoteException;
    :cond_3f
    const/16 v21, 0x0

    goto :goto_e

    .line 6916
    .end local v10           #hungUp:Z
    .end local v19           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_40
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyUp(Z)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 6917
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x1

    if-eqz v21, :cond_41

    .line 6919
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->goHome()Z

    move-result v21

    if-nez v21, :cond_0

    .line 6923
    :cond_41
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x2

    if-eqz v21, :cond_0

    .line 6925
    and-int/lit8 v21, v17, -0x3

    or-int/lit8 v17, v21, 0x4

    goto/16 :goto_0

    .line 6933
    :sswitch_4
    sget-boolean v21, Lcom/lge/config/ConfigBuildFlags;->CAPP_KEY_EXCEPTION:Z

    if-eqz v21, :cond_45

    .line 6934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v21, v0

    if-eqz v21, :cond_42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 6935
    .restart local v4       #attrs:Landroid/view/WindowManager$LayoutParams;
    :goto_f
    if-eqz v4, :cond_45

    .line 6936
    iget v9, v4, Landroid/view/WindowManager$LayoutParams;->extend:I

    .line 6937
    .restart local v9       #extend:I
    and-int/lit16 v0, v9, 0x800

    move/from16 v21, v0

    if-eqz v21, :cond_43

    .line 6938
    or-int/lit8 v17, v17, 0x1

    .line 6939
    goto/16 :goto_0

    .line 6934
    .end local v4           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v9           #extend:I
    :cond_42
    const/4 v4, 0x0

    goto :goto_f

    .line 6940
    .restart local v4       #attrs:Landroid/view/WindowManager$LayoutParams;
    .restart local v9       #extend:I
    :cond_43
    and-int/lit16 v0, v9, 0x400

    move/from16 v21, v0

    if-eqz v21, :cond_44

    .line 6941
    and-int/lit8 v17, v17, -0x2

    .line 6942
    goto/16 :goto_0

    .line 6944
    :cond_44
    const/high16 v21, 0x1

    and-int v21, v21, v9

    if-eqz v21, :cond_45

    .line 6945
    or-int/lit8 v17, v17, 0x1

    .line 6946
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBlockingLcdoff:Z

    .line 6950
    .end local v4           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v9           #extend:I
    :cond_45
    and-int/lit8 v17, v17, -0x2

    .line 6951
    if-eqz v7, :cond_57

    .line 6953
    const/16 v21, 0x5

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v21

    if-eqz v21, :cond_46

    .line 6954
    const-string v21, "WindowManager"

    const-string v22, "interceptKeyBeforeQueueing: Stop notification sound"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6955
    const-string v21, "notification"

    invoke-static/range {v21 .. v21}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v16

    .line 6957
    .restart local v16       #notificationManagerService:Landroid/app/INotificationManager;
    if-eqz v16, :cond_46

    .line 6959
    :try_start_8
    invoke-interface/range {v16 .. v16}, Landroid/app/INotificationManager;->stopSound()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_6

    .line 6966
    .end local v16           #notificationManagerService:Landroid/app/INotificationManager;
    :cond_46
    :goto_10
    if-eqz p3, :cond_47

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    move/from16 v21, v0

    if-nez v21, :cond_47

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0x400

    move/from16 v21, v0

    if-nez v21, :cond_47

    .line 6968
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    .line 6969
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v21

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTime:J

    .line 6970
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptScreenshotChord()V

    .line 6973
    :cond_47
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m112AppAvailable:Z

    move/from16 v21, v0

    if-eqz v21, :cond_48

    .line 6974
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    .line 6975
    const-string v21, "WindowManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "112APP_KEY : down! mPowerKeyTriggered :"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6976
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v21

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTime:J

    .line 6977
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->intercept112AppChord()V

    .line 6979
    :cond_48
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v19

    .line 6980
    .restart local v19       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    const/4 v10, 0x0

    .line 6982
    .restart local v10       #hungUp:Z
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v5

    .line 6983
    .local v5, audioService:Landroid/media/IAudioService;
    const/16 v18, 0x0

    .line 6985
    .local v18, silenceMode:Z
    if-eqz v19, :cond_49

    if-eqz v5, :cond_49

    .line 6987
    :try_start_9
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v21

    if-eqz v21, :cond_52

    .line 6991
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHWKeyControlMode:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    move/from16 v21, v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_7

    if-eqz v21, :cond_4f

    .line 7033
    :cond_49
    :goto_11
    if-eqz p3, :cond_4a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x2

    if-nez v21, :cond_4b

    :cond_4a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHWKeyControlMode:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4c

    :cond_4b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isInCallLTEVT()Z

    move-result v21

    if-eqz v21, :cond_4c

    .line 7036
    const-string v21, "WindowManager"

    const-string v22, "VT Call end by power key in call"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7038
    if-eqz v19, :cond_4c

    .line 7039
    :try_start_a
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_8

    move-result v10

    .line 7046
    :cond_4c
    :goto_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mViewCoverClosed:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4d

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getCoverType()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4d

    .line 7048
    if-eqz v19, :cond_4d

    .line 7050
    :try_start_b
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_9

    move-result v21

    if-eqz v21, :cond_4d

    .line 7051
    and-int/lit8 v21, v17, -0x3

    or-int/lit8 v17, v21, 0x4

    .line 7058
    :cond_4d
    :goto_13
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyScreenOn:Z

    .line 7059
    if-nez v10, :cond_4e

    if-nez v18, :cond_4e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    move/from16 v21, v0

    if-nez v21, :cond_4e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    move/from16 v21, v0

    if-eqz v21, :cond_56

    :cond_4e
    const/16 v21, 0x1

    :goto_14
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyDown(Z)V

    goto/16 :goto_0

    .line 6960
    .end local v5           #audioService:Landroid/media/IAudioService;
    .end local v10           #hungUp:Z
    .end local v18           #silenceMode:Z
    .end local v19           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    .restart local v16       #notificationManagerService:Landroid/app/INotificationManager;
    :catch_6
    move-exception v8

    .line 6961
    .restart local v8       #ex:Landroid/os/RemoteException;
    const-string v21, "WindowManager"

    const-string v22, "INotificationManager threw RemoteException"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_10

    .line 6995
    .end local v8           #ex:Landroid/os/RemoteException;
    .end local v16           #notificationManagerService:Landroid/app/INotificationManager;
    .restart local v5       #audioService:Landroid/media/IAudioService;
    .restart local v10       #hungUp:Z
    .restart local v18       #silenceMode:Z
    .restart local v19       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_4f
    :try_start_c
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V

    .line 6997
    const-string v21, "WindowManager"

    const-string v22, "telephonyService.isRinging())"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6998
    const/16 v18, 0x1

    goto/16 :goto_11

    .line 7000
    :cond_50
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x2

    if-nez v21, :cond_51

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHWKeyControlMode:Z

    move/from16 v21, v0

    if-eqz v21, :cond_49

    .line 7001
    :cond_51
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->endCall()Z

    move-result v10

    goto/16 :goto_11

    .line 7005
    :cond_52
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x2

    if-nez v21, :cond_53

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHWKeyControlMode:Z

    move/from16 v21, v0

    if-eqz v21, :cond_49

    :cond_53
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v21

    if-eqz v21, :cond_49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager;->isLcdOn()Z

    move-result v21

    if-nez v21, :cond_55

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mViewCoverEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_49

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mViewCoverClosed:Z

    move/from16 v21, v0

    if-eqz v21, :cond_49

    .line 7013
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->endCall()Z

    move-result v10

    goto/16 :goto_11

    .line 7020
    :cond_55
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAutocallTest:Z

    move/from16 v21, v0

    if-eqz v21, :cond_49

    .line 7021
    const-string v21, "WindowManager"

    const-string v22, "Auto Test call end"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7022
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_7

    move-result v10

    goto/16 :goto_11

    .line 7027
    :catch_7
    move-exception v8

    .line 7028
    .restart local v8       #ex:Landroid/os/RemoteException;
    const-string v21, "WindowManager"

    const-string v22, "ITelephony threw RemoteException"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_11

    .line 7041
    .end local v8           #ex:Landroid/os/RemoteException;
    :catch_8
    move-exception v8

    .line 7042
    .restart local v8       #ex:Landroid/os/RemoteException;
    const-string v21, "WindowManager"

    const-string v22, "ITelephony threw RemoteException"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_12

    .line 7053
    .end local v8           #ex:Landroid/os/RemoteException;
    :catch_9
    move-exception v8

    .line 7054
    .restart local v8       #ex:Landroid/os/RemoteException;
    const-string v21, "WindowManager"

    const-string v22, "ITelephony threw RemoteException"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_13

    .line 7059
    .end local v8           #ex:Landroid/os/RemoteException;
    :cond_56
    const/16 v21, 0x0

    goto/16 :goto_14

    .line 7065
    .end local v5           #audioService:Landroid/media/IAudioService;
    .end local v10           #hungUp:Z
    .end local v18           #silenceMode:Z
    .end local v19           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_57
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    .line 7066
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 7067
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mQuickClipHotKeyDisable:Z

    move/from16 v21, v0

    if-nez v21, :cond_58

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHWKeyControlMode:Z

    move/from16 v21, v0

    if-eqz v21, :cond_59

    .line 7068
    :cond_58
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingQuickClipChordAction()V

    .line 7071
    :cond_59
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m112AppAvailable:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5a

    .line 7072
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPending112AppChordAction()V

    .line 7075
    :cond_5a
    if-nez v6, :cond_5b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingPowerKeyUpCanceled:Z

    move/from16 v21, v0

    if-nez v21, :cond_5b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyScreenOn:Z

    move/from16 v21, v0

    if-nez v21, :cond_5f

    :cond_5b
    const/16 v21, 0x1

    :goto_15
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyUp(Z)Z

    move-result v21

    if-eqz v21, :cond_5c

    .line 7076
    and-int/lit8 v21, v17, -0x3

    or-int/lit8 v17, v21, 0x4

    .line 7080
    :cond_5c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBlockingLcdoff:Z

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5d

    .line 7081
    and-int/lit8 v17, v17, -0x5

    .line 7082
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBlockingLcdoff:Z

    .line 7085
    :cond_5d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mViewCoverClosed:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5e

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getCoverType()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5e

    .line 7086
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v19

    .line 7087
    .restart local v19       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v19, :cond_5e

    .line 7089
    :try_start_d
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_a

    move-result v21

    if-eqz v21, :cond_5e

    .line 7090
    and-int/lit8 v21, v17, -0x3

    or-int/lit8 v17, v21, 0x4

    .line 7097
    .end local v19           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_5e
    :goto_16
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingPowerKeyUpCanceled:Z

    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->sendPowerUpBroadcast(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    goto/16 :goto_0

    .line 7075
    :cond_5f
    const/16 v21, 0x0

    goto :goto_15

    .line 7092
    .restart local v19       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :catch_a
    move-exception v8

    .line 7093
    .restart local v8       #ex:Landroid/os/RemoteException;
    const-string v21, "WindowManager"

    const-string v22, "ITelephony threw RemoteException"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    .line 7105
    .end local v8           #ex:Landroid/os/RemoteException;
    .end local v19           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :sswitch_5
    if-eqz v7, :cond_60

    .line 7106
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v19

    .line 7107
    .restart local v19       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v19, :cond_60

    .line 7109
    :try_start_e
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_b

    move-result v21

    if-eqz v21, :cond_0

    .line 7127
    .end local v19           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_60
    :goto_17
    :sswitch_6
    and-int/lit8 v21, v17, 0x1

    if-nez v21, :cond_0

    .line 7133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 7134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    new-instance v23, Landroid/view/KeyEvent;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    invoke-virtual/range {v21 .. v23}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    .line 7136
    .local v15, msg:Landroid/os/Message;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 7137
    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 7114
    .end local v15           #msg:Landroid/os/Message;
    .restart local v19       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :catch_b
    move-exception v8

    .line 7115
    .restart local v8       #ex:Landroid/os/RemoteException;
    const-string v21, "WindowManager"

    const-string v22, "ITelephony threw RemoteException"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 7143
    .end local v8           #ex:Landroid/os/RemoteException;
    .end local v19           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :sswitch_7
    if-eqz v7, :cond_0

    .line 7144
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v19

    .line 7145
    .restart local v19       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v19, :cond_0

    .line 7147
    :try_start_f
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 7148
    const-string v21, "WindowManager"

    const-string v22, "interceptKeyBeforeQueueing: CALL key-down while ringing: Answer the call!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7150
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_c

    .line 7154
    and-int/lit8 v17, v17, -0x2

    goto/16 :goto_0

    .line 7156
    :catch_c
    move-exception v8

    .line 7157
    .restart local v8       #ex:Landroid/os/RemoteException;
    const-string v21, "WindowManager"

    const-string v22, "ITelephony threw RemoteException"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 7167
    .end local v8           #ex:Landroid/os/RemoteException;
    .end local v19           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :sswitch_8
    if-eqz v7, :cond_0

    .line 7169
    const-string v21, "WindowManager"

    const-string v22, "interceptKeyBeforeQueueing:VT CALL_END key-down"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7170
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v19

    .line 7172
    .restart local v19       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v19, :cond_0

    .line 7173
    :try_start_10
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_d

    goto/16 :goto_0

    .line 7175
    :catch_d
    move-exception v8

    .line 7176
    .restart local v8       #ex:Landroid/os/RemoteException;
    const-string v21, "WindowManager"

    const-string v22, "ITelephony threw RemoteException"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 7184
    .end local v8           #ex:Landroid/os/RemoteException;
    .end local v19           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :sswitch_9
    if-eqz v7, :cond_0

    .line 7186
    const-string v21, "WindowManager"

    const-string v22, "interceptKeyBeforeQueueing:VT CALL_RECEIVE key-down"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7187
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v19

    .line 7189
    .restart local v19       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v19, :cond_0

    .line 7190
    :try_start_11
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_e

    goto/16 :goto_0

    .line 7192
    :catch_e
    move-exception v8

    .line 7193
    .restart local v8       #ex:Landroid/os/RemoteException;
    const-string v21, "WindowManager"

    const-string v22, "ITelephony threw RemoteException"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 6629
    .end local v8           #ex:Landroid/os/RemoteException;
    .end local v19           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :catch_f
    move-exception v21

    goto/16 :goto_6

    .line 6598
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_7
        0x6 -> :sswitch_3
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x1a -> :sswitch_4
        0x4f -> :sswitch_6
        0x55 -> :sswitch_5
        0x56 -> :sswitch_6
        0x57 -> :sswitch_6
        0x58 -> :sswitch_6
        0x59 -> :sswitch_6
        0x5a -> :sswitch_6
        0x5b -> :sswitch_6
        0x7e -> :sswitch_5
        0x7f -> :sswitch_5
        0x82 -> :sswitch_6
        0xa4 -> :sswitch_2
        0xdf -> :sswitch_9
        0xe0 -> :sswitch_8
    .end sparse-switch
.end method

.method public interceptMotionBeforeQueueingWhenScreenOff(I)I
    .locals 4
    .parameter "policyFlags"

    .prologue
    const/4 v2, 0x0

    .line 7240
    const/4 v1, 0x0

    .line 7242
    .local v1, result:I
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mViewCoverClosed:Z

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getCoverType()I

    move-result v3

    if-nez v3, :cond_0

    .line 7257
    :goto_0
    return v2

    .line 7246
    :cond_0
    and-int/lit8 v3, p1, 0x3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    .line 7248
    .local v0, isWakeMotion:Z
    :goto_1
    if-eqz v0, :cond_1

    .line 7249
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7251
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->onWakeMotionWhenKeyguardShowingTq()Z

    :cond_1
    :goto_2
    move v2, v1

    .line 7257
    goto :goto_0

    .end local v0           #isWakeMotion:Z
    :cond_2
    move v0, v2

    .line 7246
    goto :goto_1

    .line 7254
    .restart local v0       #isWakeMotion:Z
    :cond_3
    or-int/lit8 v1, v1, 0x2

    goto :goto_2
.end method

.method isDeviceProvisioned()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1973
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method isFMActive()Z
    .locals 3

    .prologue
    .line 6280
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 6281
    .local v0, am:Landroid/media/AudioManager;
    if-nez v0, :cond_0

    .line 6282
    const-string v1, "WindowManager"

    const-string v2, "isFMActive: couldn\'t get AudioManager reference"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6283
    const/4 v1, 0x0

    .line 6285
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->isFMActive()Z

    move-result v1

    goto :goto_0
.end method

.method public isInCallLTEVT()Z
    .locals 5

    .prologue
    .line 8794
    const/4 v2, 0x0

    .line 8797
    .local v2, vtCallState:I
    :try_start_0
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 8798
    .local v1, phoneServ:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 8799
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getCallState()I

    move-result v2

    .line 8809
    .end local v1           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    const/16 v3, 0x66

    if-ne v2, v3, :cond_1

    .line 8810
    const/4 v3, 0x1

    .line 8812
    :goto_1
    return v3

    .line 8803
    .restart local v1       #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    const-string v3, "WindowManager"

    const-string v4, "Unable to find ITelephony interface"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8805
    .end local v1           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 8806
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "WindowManager"

    const-string v4, "RemoteException from getPhoneInterface()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 8812
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method isInCommunication()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 6300
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 6301
    .local v0, am:Landroid/media/AudioManager;
    if-nez v0, :cond_0

    .line 6302
    const-string v3, "WindowManager"

    const-string v4, "isInCommunication: couldn\'t get IAudioService reference"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6312
    :goto_0
    return v2

    .line 6305
    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    .line 6306
    .local v1, audioMode:I
    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    .line 6308
    :cond_1
    const-string v2, "WindowManager"

    const-string v3, "isInCommunication : true"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6309
    const/4 v2, 0x1

    goto :goto_0

    .line 6311
    :cond_2
    const-string v3, "WindowManager"

    const-string v4, "isInCommunication : false"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isKeyguardLocked()Z
    .locals 1

    .prologue
    .line 7574
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    return v0
.end method

.method public isKeyguardSecure()Z
    .locals 1

    .prologue
    .line 7579
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 7580
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->isSecure()Z

    move-result v0

    goto :goto_0
.end method

.method public isMulticallActive()Z
    .locals 4

    .prologue
    .line 8628
    const-string v1, "persist.radio.keyBlockByCall"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8629
    .local v0, result:Ljava/lang/String;
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMulticallActive() result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8631
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8632
    const/4 v1, 0x1

    .line 8635
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isMusicActive()Z
    .locals 3

    .prologue
    .line 6268
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 6269
    .local v0, am:Landroid/media/AudioManager;
    if-nez v0, :cond_0

    .line 6270
    const-string v1, "WindowManager"

    const-string v2, "isMusicActive: couldn\'t get AudioManager reference"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6271
    const/4 v1, 0x0

    .line 6273
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    goto :goto_0
.end method

.method public isScreenOnEarly()Z
    .locals 1

    .prologue
    .line 7544
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    return v0
.end method

.method public isScreenOnFully()Z
    .locals 1

    .prologue
    .line 7549
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    return v0
.end method

.method public isVVMActive()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 6294
    invoke-static {v0, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isInCommunication()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 6295
    .local v0, isVvmActive:Z
    :cond_0
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVVMActive in AuioManager ==========> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6296
    return v0
.end method

.method public keepScreenOnStartedLw()V
    .locals 0

    .prologue
    .line 8291
    return-void
.end method

.method public keepScreenOnStoppedLw()V
    .locals 4

    .prologue
    .line 8295
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v2

    if-nez v2, :cond_0

    .line 8296
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 8297
    .local v0, curTime:J
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 8299
    .end local v0           #curTime:J
    :cond_0
    return-void
.end method

.method keyguardOn()Z
    .locals 1

    .prologue
    .line 3302
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->inKeyguardRestrictedKeyInputMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method launchHomeFromHotKey()V
    .locals 3

    .prologue
    .line 4312
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4343
    :goto_0
    return-void

    .line 4314
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->isInputRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4317
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$16;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$16;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    goto :goto_0

    .line 4332
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4338
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeKeyintent:Landroid/content/Intent;

    const-string v2, "com.lge.permission.SlideAside"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 4340
    const-string v0, "homekey"

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 4341
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->startDockOrHome()V

    goto :goto_0

    .line 4333
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method launchSplitWindowUI()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 5318
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v5, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 5319
    const/16 v0, 0x64

    .line 5320
    .local v0, SERVICE_START_NO_DRAWER:I
    const/16 v1, 0x65

    .line 5321
    .local v1, SERVICE_START_WITH_DRAWER:I
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 5322
    .local v3, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "com.lge.splitwindow"

    const-string v5, "com.lge.splitwindow.SplitService"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5323
    .local v2, cn:Landroid/content/ComponentName;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5324
    const-string v4, "com.lge.splitwindow.LAUNCH"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5325
    const-string v4, "split_with_drawer"

    const/16 v5, 0x65

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5326
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 5328
    return-void
.end method

.method public layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 31
    .parameter "win"
    .parameter "attrs"
    .parameter "attached"

    .prologue
    .line 5340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-eq v0, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_1

    .line 5727
    :cond_0
    :goto_0
    return-void

    .line 5343
    :cond_1
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDefaultDisplay()Z

    move-result v24

    .line 5344
    .local v24, isDefaultDisplay:Z
    if-eqz v24, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_8

    const/16 v27, 0x1

    .line 5346
    .local v27, needsToOffsetInputMethodTarget:Z
    :goto_1
    if-eqz v27, :cond_2

    .line 5350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 5353
    :cond_2
    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 5354
    .local v4, fl:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move/from16 v29, v0

    .line 5355
    .local v29, sim:I
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result v30

    .line 5359
    .local v30, sysUiFl:I
    sget-object v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 5360
    .local v8, pf:Landroid/graphics/Rect;
    sget-object v9, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 5361
    .local v9, df:Landroid/graphics/Rect;
    sget-object v10, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .line 5362
    .local v10, cf:Landroid/graphics/Rect;
    sget-object v11, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 5364
    .local v11, vf:Landroid/graphics/Rect;
    if-eqz v24, :cond_9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v23, 0x1

    .line 5367
    .local v23, hasNavBar:Z
    :goto_2
    move/from16 v0, v29

    and-int/lit16 v5, v0, 0xf0

    .line 5369
    .local v5, adjust:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move/from16 v21, v0

    .line 5370
    .local v21, curBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    move/from16 v20, v0

    .line 5371
    .local v20, contentBottom:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTranslucentImeMode:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-eq v0, v2, :cond_3

    .line 5372
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInitialCurBottom:I

    move/from16 v21, v0

    .line 5373
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInitialContentBottom:I

    move/from16 v20, v0

    .line 5376
    :cond_3
    if-nez v24, :cond_b

    .line 5377
    if-eqz p3, :cond_a

    .line 5380
    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p3

    invoke-virtual/range {v2 .. v11}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 5688
    :cond_4
    :goto_3
    const/16 v26, 0x0

    .line 5690
    .local v26, isSplitMediaLayoutAttached:Z
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_SPLITWINDOW:Z

    if-eqz v2, :cond_6

    .line 5691
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSplitScreenId()I

    move-result v28

    .line 5692
    .local v28, screenId:I
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isSplitFullScreen()Z

    move-result v25

    .line 5694
    .local v25, isFullScreenMode:Z
    if-eqz p3, :cond_31

    invoke-interface/range {p3 .. p3}, Landroid/view/WindowManagerPolicy$WindowState;->getSplitScreenId()I

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface/range {p3 .. p3}, Landroid/view/WindowManagerPolicy$WindowState;->isSplitFullScreen()Z

    move-result v2

    if-nez v2, :cond_31

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x3e9

    if-eq v2, v3, :cond_5

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x3e9

    if-ne v2, v3, :cond_31

    :cond_5
    const/16 v26, 0x1

    .line 5705
    .end local v25           #isFullScreenMode:Z
    .end local v28           #screenId:I
    :cond_6
    :goto_4
    and-int/lit16 v2, v4, 0x200

    if-eqz v2, :cond_7

    if-nez v26, :cond_7

    .line 5706
    const/16 v2, -0x2710

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    .line 5707
    const/16 v2, 0x2710

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    .line 5718
    :cond_7
    move-object/from16 v0, p1

    invoke-interface {v0, v8, v9, v10, v11}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 5722
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7db

    if-ne v2, v3, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenInsetsPendingLw()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5724
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 5725
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    goto/16 :goto_0

    .line 5344
    .end local v4           #fl:I
    .end local v5           #adjust:I
    .end local v8           #pf:Landroid/graphics/Rect;
    .end local v9           #df:Landroid/graphics/Rect;
    .end local v10           #cf:Landroid/graphics/Rect;
    .end local v11           #vf:Landroid/graphics/Rect;
    .end local v20           #contentBottom:I
    .end local v21           #curBottom:I
    .end local v23           #hasNavBar:Z
    .end local v26           #isSplitMediaLayoutAttached:Z
    .end local v27           #needsToOffsetInputMethodTarget:Z
    .end local v29           #sim:I
    .end local v30           #sysUiFl:I
    :cond_8
    const/16 v27, 0x0

    goto/16 :goto_1

    .line 5364
    .restart local v4       #fl:I
    .restart local v8       #pf:Landroid/graphics/Rect;
    .restart local v9       #df:Landroid/graphics/Rect;
    .restart local v10       #cf:Landroid/graphics/Rect;
    .restart local v11       #vf:Landroid/graphics/Rect;
    .restart local v27       #needsToOffsetInputMethodTarget:Z
    .restart local v29       #sim:I
    .restart local v30       #sysUiFl:I
    :cond_9
    const/16 v23, 0x0

    goto/16 :goto_2

    .line 5383
    .restart local v5       #adjust:I
    .restart local v20       #contentBottom:I
    .restart local v21       #curBottom:I
    .restart local v23       #hasNavBar:Z
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 5384
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 5385
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 5387
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    .line 5390
    :cond_b
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7db

    if-ne v2, v3, :cond_c

    .line 5391
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 5392
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 5393
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 5394
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 5396
    const/16 v2, 0x50

    move-object/from16 v0, p2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 5397
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    goto/16 :goto_3

    .line 5399
    :cond_c
    const v2, 0x10500

    and-int/2addr v2, v4

    const v3, 0x10100

    if-ne v2, v3, :cond_19

    and-int/lit8 v2, v30, 0x4

    if-nez v2, :cond_19

    .line 5409
    if-eqz p3, :cond_d

    .line 5412
    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p3

    invoke-virtual/range {v2 .. v11}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 5413
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_SPLITWINDOW:Z

    if-eqz v2, :cond_4

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p3

    move-object/from16 v15, p2

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    .line 5414
    invoke-direct/range {v12 .. v19}, Lcom/android/internal/policy/impl/PhoneWindowManager;->modifySubPanelLayoutForSplitWindow(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_3

    .line 5417
    :cond_d
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7de

    if-eq v2, v3, :cond_e

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e1

    if-ne v2, v3, :cond_13

    .line 5426
    :cond_e
    if-eqz v23, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    :goto_5
    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 5427
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 5428
    if-eqz v23, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    :goto_6
    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 5431
    if-eqz v23, :cond_12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    :goto_7
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 5470
    :goto_8
    const/16 v2, 0x10

    if-eq v5, v2, :cond_17

    .line 5471
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    .line 5472
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    .line 5473
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    .line 5474
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    .line 5482
    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1, v4, v10}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyStableConstraints(IILandroid/graphics/Rect;)V

    .line 5483
    const/16 v2, 0x30

    if-eq v5, v2, :cond_18

    .line 5484
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 5485
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    .line 5486
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 5487
    move/from16 v0, v21

    iput v0, v11, Landroid/graphics/Rect;->bottom:I

    .line 5492
    :goto_a
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_SPLITWINDOW:Z

    if-eqz v2, :cond_4

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v12, p2

    .line 5493
    invoke-direct/range {v6 .. v12}, Lcom/android/internal/policy/impl/PhoneWindowManager;->modifyLayoutForSplitWindow(Landroid/view/WindowManagerPolicy$WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/WindowManager$LayoutParams;)V

    .line 5495
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    if-nez v2, :cond_f

    .line 5496
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getSplitWindowManagerInstance()Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    .line 5499
    :cond_f
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    invoke-interface {v2}, Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;->isSplitMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5500
    invoke-virtual {v11, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_3

    .line 5501
    :catch_0
    move-exception v22

    .line 5502
    .local v22, e:Landroid/os/RemoteException;
    const-string v2, "SplitWindow"

    const-string v3, "Binder service (SplitWindowPolicyService) is not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 5426
    .end local v22           #e:Landroid/os/RemoteException;
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    goto/16 :goto_5

    .line 5428
    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    goto/16 :goto_6

    .line 5431
    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    goto/16 :goto_7

    .line 5440
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    if-eqz v2, :cond_15

    move/from16 v0, v30

    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_15

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_15

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7cf

    if-le v2, v3, :cond_14

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d4

    if-ne v2, v3, :cond_15

    .line 5450
    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 5451
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 5452
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 5453
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_8

    .line 5456
    :cond_15
    sget-boolean v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->SUPPORT_TRANSPARENT_NAVIGATION:Z

    if-eqz v2, :cond_16

    .line 5457
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 5458
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 5459
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 5460
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_8

    .line 5462
    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 5463
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 5464
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 5465
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_8

    .line 5476
    :cond_17
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    .line 5477
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    .line 5478
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    .line 5479
    move/from16 v0, v20

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_9

    .line 5489
    :cond_18
    invoke-virtual {v11, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_a

    .line 5503
    :catch_1
    move-exception v22

    .line 5504
    .local v22, e:Ljava/lang/NullPointerException;
    const-string v2, "SplitWindow"

    const-string v3, "Binder service (SplitWindowPolicyService) is not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 5508
    .end local v22           #e:Ljava/lang/NullPointerException;
    :cond_19
    and-int/lit16 v2, v4, 0x100

    if-nez v2, :cond_1a

    move/from16 v0, v30

    and-int/lit16 v2, v0, 0x600

    if-eqz v2, :cond_2b

    .line 5515
    :cond_1a
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7de

    if-eq v2, v3, :cond_1b

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e1

    if-ne v2, v3, :cond_20

    .line 5517
    :cond_1b
    if-eqz v23, :cond_1d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    :goto_b
    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 5518
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 5519
    if-eqz v23, :cond_1e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    :goto_c
    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 5522
    if-eqz v23, :cond_1f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    :goto_d
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 5603
    :cond_1c
    :goto_e
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1, v4, v10}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyStableConstraints(IILandroid/graphics/Rect;)V

    .line 5605
    const/16 v2, 0x30

    if-eq v5, v2, :cond_2a

    .line 5606
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 5607
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    .line 5608
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 5609
    move/from16 v0, v21

    iput v0, v11, Landroid/graphics/Rect;->bottom:I

    .line 5615
    :goto_f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentFrameChanged:Z

    if-eqz v2, :cond_4

    .line 5616
    invoke-virtual {v11, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5617
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentFrameChanged:Z

    goto/16 :goto_3

    .line 5517
    :cond_1d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    goto :goto_b

    .line 5519
    :cond_1e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    goto :goto_c

    .line 5522
    :cond_1f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    goto :goto_d

    .line 5530
    :cond_20
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e3

    if-eq v2, v3, :cond_21

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e8

    if-ne v2, v3, :cond_22

    .line 5533
    :cond_21
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 5534
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 5535
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 5536
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_e

    .line 5542
    :cond_22
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7df

    if-eq v2, v3, :cond_23

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e5

    if-ne v2, v3, :cond_24

    :cond_23
    and-int/lit16 v2, v4, 0x400

    if-eqz v2, :cond_24

    .line 5546
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 5547
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 5548
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 5549
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_e

    .line 5550
    :cond_24
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e5

    if-eq v2, v3, :cond_25

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e9

    if-ne v2, v3, :cond_26

    .line 5553
    :cond_25
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 5554
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 5555
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 5556
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_e

    .line 5558
    :cond_26
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    if-eqz v2, :cond_28

    move/from16 v0, v30

    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_28

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_28

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7cf

    if-le v2, v3, :cond_27

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7dd

    if-eq v2, v3, :cond_27

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d4

    if-ne v2, v3, :cond_28

    .line 5573
    :cond_27
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 5574
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 5575
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 5576
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 5578
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_SPLITWINDOW:Z

    if-eqz v2, :cond_1c

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v12, p2

    .line 5579
    invoke-direct/range {v6 .. v12}, Lcom/android/internal/policy/impl/PhoneWindowManager;->modifyLayoutForSplitWindow(Landroid/view/WindowManagerPolicy$WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_e

    .line 5581
    :cond_28
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 5582
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 5583
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 5584
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 5588
    if-nez v23, :cond_29

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockscreenDisplayHeight:I

    if-eqz v2, :cond_29

    move/from16 v0, v30

    and-int/lit16 v2, v0, 0x200

    if-nez v2, :cond_29

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_29

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7cf

    if-gt v2, v3, :cond_29

    .line 5592
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentDisplayRotation:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    if-ne v2, v3, :cond_29

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockscreenDisplayHeight:I

    iget v3, v10, Landroid/graphics/Rect;->bottom:I

    if-ne v2, v3, :cond_29

    .line 5593
    iget v2, v10, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentDisplayRotation:I

    aget v3, v3, v6

    sub-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 5595
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentFrameChanged:Z

    .line 5599
    :cond_29
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_SPLITWINDOW:Z

    if-eqz v2, :cond_1c

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v12, p2

    .line 5600
    invoke-direct/range {v6 .. v12}, Lcom/android/internal/policy/impl/PhoneWindowManager;->modifyLayoutForSplitWindow(Landroid/view/WindowManagerPolicy$WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_e

    .line 5611
    :cond_2a
    invoke-virtual {v11, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_f

    .line 5620
    :cond_2b
    if-eqz p3, :cond_2c

    .line 5625
    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p3

    invoke-virtual/range {v2 .. v11}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 5626
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_SPLITWINDOW:Z

    if-eqz v2, :cond_4

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p3

    move-object/from16 v15, p2

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    .line 5627
    invoke-direct/range {v12 .. v19}, Lcom/android/internal/policy/impl/PhoneWindowManager;->modifySubPanelLayoutForSplitWindow(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_3

    .line 5634
    :cond_2c
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7de

    if-ne v2, v3, :cond_2d

    .line 5639
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 5640
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 5641
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 5642
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    .line 5645
    :cond_2d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 5646
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 5647
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 5648
    move/from16 v0, v20

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    .line 5649
    const/16 v2, 0x10

    if-eq v5, v2, :cond_2f

    .line 5650
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    .line 5651
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    .line 5652
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    .line 5653
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    .line 5660
    :goto_10
    const/16 v2, 0x30

    if-eq v5, v2, :cond_30

    .line 5661
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 5662
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    .line 5663
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 5664
    move/from16 v0, v21

    iput v0, v11, Landroid/graphics/Rect;->bottom:I

    .line 5669
    :goto_11
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_SPLITWINDOW:Z

    if-eqz v2, :cond_4

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v12, p2

    .line 5670
    invoke-direct/range {v6 .. v12}, Lcom/android/internal/policy/impl/PhoneWindowManager;->modifyLayoutForSplitWindow(Landroid/view/WindowManagerPolicy$WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/WindowManager$LayoutParams;)V

    .line 5672
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    if-nez v2, :cond_2e

    .line 5673
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getSplitWindowManagerInstance()Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    .line 5676
    :cond_2e
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    invoke-interface {v2}, Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;->isSplitMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5677
    invoke-virtual {v11, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_3

    .line 5678
    :catch_2
    move-exception v22

    .line 5679
    .local v22, e:Landroid/os/RemoteException;
    const-string v2, "SplitWindow"

    const-string v3, "Binder service (SplitWindowPolicyService) is not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 5655
    .end local v22           #e:Landroid/os/RemoteException;
    :cond_2f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    .line 5656
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    .line 5657
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    .line 5658
    move/from16 v0, v20

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v20

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    goto :goto_10

    .line 5666
    :cond_30
    invoke-virtual {v11, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_11

    .line 5680
    :catch_3
    move-exception v22

    .line 5681
    .local v22, e:Ljava/lang/NullPointerException;
    const-string v2, "SplitWindow"

    const-string v3, "Binder service (SplitWindowPolicyService) is not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 5694
    .end local v22           #e:Ljava/lang/NullPointerException;
    .restart local v25       #isFullScreenMode:Z
    .restart local v26       #isSplitMediaLayoutAttached:Z
    .restart local v28       #screenId:I
    :cond_31
    const/16 v26, 0x0

    goto/16 :goto_4
.end method

.method public lockNow(Landroid/os/Bundle;)V
    .locals 3
    .parameter "options"

    .prologue
    .line 8030
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8031
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8032
    if-eqz p1, :cond_0

    .line 8035
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;->setLockOptions(Landroid/os/Bundle;)V

    .line 8037
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8038
    return-void
.end method

.method needSensorRunningLp()Z
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x1

    .line 1069
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 1096
    :cond_0
    :goto_0
    return v0

    .line 1077
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-eq v1, v3, :cond_0

    .line 1085
    :cond_3
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-ne v1, v0, :cond_0

    .line 1094
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyJackSwitchChanged(JII)V
    .locals 3
    .parameter "whenNanos"
    .parameter "switchValues"
    .parameter "switchMask"

    .prologue
    .line 6122
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyJackSwitchChanged(): switchValues "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " switchMask "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6123
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadsetLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6124
    :try_start_0
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSwitchValues:I

    xor-int/lit8 v2, p4, -0x1

    and-int/2addr v0, v2

    or-int/2addr v0, p3

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSwitchValues:I

    .line 6125
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSwitchValues:I

    and-int/lit8 v0, v0, 0x14

    sparse-switch v0, :sswitch_data_0

    .line 6143
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadsetJackState:I

    .line 6147
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->update()V

    .line 6148
    monitor-exit v1

    .line 6149
    return-void

    .line 6127
    :sswitch_0
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadsetJackState:I

    goto :goto_0

    .line 6148
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 6131
    :sswitch_1
    const/4 v0, 0x2

    :try_start_1
    sput v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadsetJackState:I

    goto :goto_0

    .line 6135
    :sswitch_2
    const/4 v0, 0x1

    sput v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadsetJackState:I

    goto :goto_0

    .line 6139
    :sswitch_3
    const/4 v0, 0x1

    sput v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadsetJackState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6125
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x10 -> :sswitch_3
        0x14 -> :sswitch_2
    .end sparse-switch
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 5
    .parameter "whenNanos"
    .parameter "lidOpen"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6035
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    if-eqz v3, :cond_1

    .line 6056
    :cond_0
    :goto_0
    return-void

    .line 6038
    :cond_1
    if-eqz p3, :cond_2

    move v0, v1

    .line 6039
    .local v0, newLidState:I
    :goto_1
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-eq v0, v3, :cond_0

    .line 6043
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    .line 6044
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyLidSwitchState()V

    .line 6045
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    .line 6047
    if-eqz p3, :cond_4

    .line 6048
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6049
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    const/16 v2, 0x1a

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->onWakeKeyWhenKeyguardShowingTq(I)V

    goto :goto_0

    .end local v0           #newLidState:I
    :cond_2
    move v0, v2

    .line 6038
    goto :goto_1

    .line 6051
    .restart local v0       #newLidState:I
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    goto :goto_0

    .line 6053
    :cond_4
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidControlsSleep:Z

    if-nez v1, :cond_0

    .line 6054
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4, v2}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto :goto_0
.end method

.method notifyStatusBarShowingOrHiding(Z)V
    .locals 5
    .parameter "showing"

    .prologue
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .local v1, statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarDisableToken:Landroid/os/IBinder;

    const-string v4, "system"

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :goto_1
    return-void

    .restart local v1       #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    const/high16 v2, 0x2000

    goto :goto_0

    .end local v1           #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_1
.end method

.method onScreenShotMessageSend(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    return-void
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .locals 12
    .parameter "win"
    .parameter "effectId"
    .parameter "always"

    .prologue
    .line 8220
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "haptic_feedback_enabled"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-nez v8, :cond_1

    const/4 v3, 0x1

    .line 8222
    .local v3, hapticsDisabled:Z
    :goto_0
    if-nez p3, :cond_2

    if-nez v3, :cond_0

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 8223
    :cond_0
    const/4 v8, 0x0

    .line 8286
    :goto_1
    return v8

    .line 8220
    .end local v3           #hapticsDisabled:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 8226
    .restart local v3       #hapticsDisabled:Z
    :cond_2
    sget-boolean v8, Lcom/lge/config/ConfigBuildFlags;->CAPP_KEY_EXCEPTION:Z

    if-eqz v8, :cond_4

    .line 8227
    const/4 v8, 0x1

    if-ne p2, v8, :cond_4

    .line 8228
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v8}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 8229
    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    :goto_2
    if-eqz v0, :cond_4

    .line 8230
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->extend:I

    .line 8231
    .local v2, extend:I
    const/high16 v8, 0x8

    and-int/2addr v8, v2

    if-eqz v8, :cond_4

    .line 8232
    const/4 v8, 0x0

    goto :goto_1

    .line 8228
    .end local v0           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v2           #extend:I
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 8238
    :cond_4
    const/4 v5, 0x0

    .line 8239
    .local v5, pattern:[J
    sparse-switch p2, :sswitch_data_0

    .line 8256
    const/4 v8, 0x0

    goto :goto_1

    .line 8241
    :sswitch_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressVibePattern:[J

    .line 8258
    :goto_3
    array-length v8, v5

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 8261
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeVibrator:Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeVibrator:Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;

    const/4 v9, 0x2

    invoke-interface {v8, v9}, Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;->getVibrateVolume(I)I

    move-result v6

    .line 8262
    .local v6, vibVolume:I
    const-string v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "vibVolume ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8264
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeVibrator:Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;

    const/4 v9, 0x0

    aget-wide v9, v5, v9

    invoke-interface {v8, v9, v10, v6}, Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;->vibrate(JI)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8286
    :goto_4
    const/4 v8, 0x1

    goto :goto_1

    .line 8244
    .end local v6           #vibVolume:I
    :sswitch_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVirtualKeyVibePattern:[J

    .line 8245
    goto :goto_3

    .line 8247
    :sswitch_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyboardTapVibePattern:[J

    .line 8248
    goto :goto_3

    .line 8250
    :sswitch_3
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeDisabledVibePattern:[J

    .line 8251
    goto :goto_3

    .line 8253
    :sswitch_4
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    .line 8254
    goto :goto_3

    .line 8265
    .restart local v6       #vibVolume:I
    :catch_0
    move-exception v1

    .line 8266
    .local v1, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v8, "WindowManager"

    const-string v9, "Unexpected ArrayIndexOutOfBoundsException was thrown"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 8272
    .end local v1           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v6           #vibVolume:I
    :cond_5
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeVibrator:Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeVibrator:Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;

    const/4 v9, 0x2

    invoke-interface {v8, v9}, Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;->getVibrateVolume(I)I

    move-result v6

    .line 8273
    .restart local v6       #vibVolume:I
    array-length v8, v5

    new-array v7, v8, [I

    .line 8274
    .local v7, volumeIndex:[I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_5
    array-length v8, v7

    if-ge v4, v8, :cond_6

    .line 8275
    aput v6, v7, v4

    .line 8274
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 8277
    :cond_6
    const-string v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mVolumeVibrator.vibrate pattern.length = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " vibVolume = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8280
    :try_start_1
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeVibrator:Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;

    const/4 v9, -0x1

    invoke-interface {v8, v5, v9, v7}, Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;->vibrate([JI[I)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 8281
    :catch_1
    move-exception v1

    .line 8282
    .restart local v1       #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v8, "WindowManager"

    const-string v9, "Unexpected ArrayIndexOutOfBoundsException was thrown"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 8239
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3 -> :sswitch_2
        0x2710 -> :sswitch_3
        0x2711 -> :sswitch_4
    .end sparse-switch
.end method

.method public prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 4
    .parameter "win"
    .parameter "attrs"

    .prologue
    const/4 v0, -0x7

    .line 3177
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v1, :sswitch_data_0

    .line 3223
    :goto_0
    const/4 v0, 0x0

    :cond_0
    return v0

    .line 3179
    :sswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    const-string v3, "PhoneWindowManager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3182
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_1

    .line 3183
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3187
    :cond_1
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    .line 3190
    :sswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    const-string v3, "PhoneWindowManager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3193
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_2

    .line 3194
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3198
    :cond_2
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    .line 3202
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v2, "PhoneWindowManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3207
    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v2, "PhoneWindowManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3212
    :sswitch_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v2, "PhoneWindowManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3217
    :sswitch_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v1, :cond_0

    .line 3220
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    .line 3177
    nop

    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_0
        0x7d4 -> :sswitch_5
        0x7de -> :sswitch_3
        0x7e1 -> :sswitch_4
        0x7e3 -> :sswitch_1
        0x7e8 -> :sswitch_2
    .end sparse-switch
.end method

.method readLidState()V
    .locals 1

    .prologue
    .line 2783
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getLidState()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    .line 2784
    return-void
.end method

.method public removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    .locals 3
    .parameter "appToken"
    .parameter "window"

    .prologue
    .line 3155
    if-eqz p2, :cond_0

    .line 3156
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 3157
    .local v0, wm:Landroid/view/WindowManager;
    invoke-interface {v0, p2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 3159
    .end local v0           #wm:Landroid/view/WindowManager;
    :cond_0
    return-void
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 2
    .parameter "win"

    .prologue
    const/4 v1, 0x0

    .line 3228
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_1

    .line 3229
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 3235
    :cond_0
    :goto_0
    return-void

    .line 3230
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_2

    .line 3231
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    .line 3232
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_0

    .line 3233
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0
.end method

.method public rotationForOrientationLw(II)I
    .locals 11
    .parameter "orientation"
    .parameter "lastRotation"

    .prologue
    const/4 v10, 0x3

    const/4 v2, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x2

    const/4 v4, 0x1

    .line 7633
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 7634
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->getProposedRotation()I

    move-result v1

    .line 7635
    .local v1, sensorRotation:I
    if-gez v1, :cond_0

    .line 7636
    move v1, p2

    .line 7640
    :cond_0
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    if-ltz v3, :cond_1

    .line 7642
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    .line 7730
    .local v0, preferredRotation:I
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 7782
    :pswitch_0
    if-ltz v0, :cond_1e

    .line 7783
    monitor-exit v5

    .line 7785
    .end local v0           #preferredRotation:I
    :goto_1
    return v0

    .line 7643
    :cond_1
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v3, v8, :cond_4

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    if-ltz v3, :cond_4

    .line 7648
    :cond_2
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-eqz v3, :cond_3

    move v0, v1

    .restart local v0       #preferredRotation:I
    :goto_2
    goto :goto_0

    .end local v0           #preferredRotation:I
    :cond_3
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    goto :goto_2

    .line 7650
    :cond_4
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-eq v3, v4, :cond_5

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-eq v3, v10, :cond_5

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/4 v6, 0x4

    if-ne v3, v6, :cond_8

    :cond_5
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-nez v3, :cond_6

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    if-ltz v3, :cond_8

    .line 7657
    :cond_6
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-eqz v3, :cond_7

    move v0, v1

    .restart local v0       #preferredRotation:I
    :goto_3
    goto :goto_0

    .end local v0           #preferredRotation:I
    :cond_7
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    goto :goto_3

    .line 7660
    :cond_8
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    if-eqz v3, :cond_b

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiRotationLock:Z

    if-eqz v3, :cond_b

    .line 7668
    const-string v3, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "orientation="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7669
    const/4 v3, 0x5

    if-eq p1, v3, :cond_9

    if-eq p1, v9, :cond_9

    if-eq p1, v4, :cond_9

    if-eq p1, v8, :cond_9

    if-ne p1, v10, :cond_a

    :cond_9
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-ne v3, v4, :cond_a

    .line 7675
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .restart local v0       #preferredRotation:I
    goto :goto_0

    .line 7678
    .end local v0           #preferredRotation:I
    :cond_a
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sensorRotation="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7679
    move v0, v1

    .restart local v0       #preferredRotation:I
    goto/16 :goto_0

    .line 7682
    .end local v0           #preferredRotation:I
    :cond_b
    const-string v3, "LGU"

    const-string v6, "ro.build.target_operator"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-ne v3, v8, :cond_c

    .line 7684
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    .restart local v0       #preferredRotation:I
    goto/16 :goto_0

    .line 7687
    .end local v0           #preferredRotation:I
    :cond_c
    const/16 v3, 0xe

    if-ne p1, v3, :cond_d

    .line 7690
    move v0, p2

    .restart local v0       #preferredRotation:I
    goto/16 :goto_0

    .line 7691
    .end local v0           #preferredRotation:I
    :cond_d
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-nez v3, :cond_e

    if-eq p1, v8, :cond_f

    if-eq p1, v9, :cond_f

    :cond_e
    const/4 v3, 0x4

    if-eq p1, v3, :cond_f

    const/16 v3, 0xa

    if-eq p1, v3, :cond_f

    const/4 v3, 0x6

    if-eq p1, v3, :cond_f

    const/4 v3, 0x7

    if-ne p1, v3, :cond_14

    .line 7700
    :cond_f
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    if-gez v3, :cond_10

    .line 7704
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x111001d

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_12

    move v3, v4

    :goto_4
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    .line 7707
    :cond_10
    if-ne v1, v8, :cond_11

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    if-eq v3, v4, :cond_11

    const/16 v3, 0xa

    if-ne p1, v3, :cond_13

    .line 7710
    :cond_11
    move v0, v1

    .restart local v0       #preferredRotation:I
    goto/16 :goto_0

    .end local v0           #preferredRotation:I
    :cond_12
    move v3, v2

    .line 7704
    goto :goto_4

    .line 7712
    :cond_13
    move v0, p2

    .restart local v0       #preferredRotation:I
    goto/16 :goto_0

    .line 7714
    .end local v0           #preferredRotation:I
    :cond_14
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-ne v3, v4, :cond_15

    const/4 v3, 0x5

    if-eq p1, v3, :cond_15

    .line 7720
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    .restart local v0       #preferredRotation:I
    goto/16 :goto_0

    .line 7724
    .end local v0           #preferredRotation:I
    :cond_15
    const/4 v0, -0x1

    .restart local v0       #preferredRotation:I
    goto/16 :goto_0

    .line 7733
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 7734
    monitor-exit v5

    goto/16 :goto_1

    .line 7787
    .end local v0           #preferredRotation:I
    .end local v1           #sensorRotation:I
    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 7736
    .restart local v0       #preferredRotation:I
    .restart local v1       #sensorRotation:I
    :cond_16
    :try_start_1
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .end local v0           #preferredRotation:I
    monitor-exit v5

    goto/16 :goto_1

    .line 7740
    .restart local v0       #preferredRotation:I
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 7741
    monitor-exit v5

    goto/16 :goto_1

    .line 7743
    :cond_17
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .end local v0           #preferredRotation:I
    monitor-exit v5

    goto/16 :goto_1

    .line 7747
    .restart local v0       #preferredRotation:I
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 7748
    monitor-exit v5

    goto/16 :goto_1

    .line 7750
    :cond_18
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .end local v0           #preferredRotation:I
    monitor-exit v5

    goto/16 :goto_1

    .line 7754
    .restart local v0       #preferredRotation:I
    :pswitch_4
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 7755
    monitor-exit v5

    goto/16 :goto_1

    .line 7757
    :cond_19
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    .end local v0           #preferredRotation:I
    monitor-exit v5

    goto/16 :goto_1

    .line 7761
    .restart local v0       #preferredRotation:I
    :pswitch_5
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 7762
    monitor-exit v5

    goto/16 :goto_1

    .line 7764
    :cond_1a
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 7765
    monitor-exit v5

    move v0, p2

    goto/16 :goto_1

    .line 7767
    :cond_1b
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .end local v0           #preferredRotation:I
    monitor-exit v5

    goto/16 :goto_1

    .line 7771
    .restart local v0       #preferredRotation:I
    :pswitch_6
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 7772
    monitor-exit v5

    goto/16 :goto_1

    .line 7774
    :cond_1c
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 7775
    monitor-exit v5

    move v0, p2

    goto/16 :goto_1

    .line 7777
    :cond_1d
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .end local v0           #preferredRotation:I
    monitor-exit v5

    goto/16 :goto_1

    .line 7785
    .restart local v0       #preferredRotation:I
    :cond_1e
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    goto/16 :goto_1

    .line 7730
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public rotationHasCompatibleMetricsLw(II)Z
    .locals 1
    .parameter "orientation"
    .parameter "rotation"

    .prologue
    .line 7792
    packed-switch p1, :pswitch_data_0

    .line 7804
    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 7796
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v0

    goto :goto_0

    .line 7801
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v0

    goto :goto_0

    .line 7792
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public screenTurnedOff(I)V
    .locals 2
    .parameter "why"

    .prologue
    const/4 v1, 0x0

    .line 7453
    const v0, 0x11170

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 7454
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7455
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    .line 7456
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    .line 7457
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7458
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    if-eqz v0, :cond_0

    .line 7459
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->onScreenTurnedOff(I)V

    .line 7461
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7462
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 7463
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 7464
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7465
    return-void

    .line 7457
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 7464
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 2
    .parameter "screenOnListener"

    .prologue
    const/4 v1, 0x1

    .line 7469
    const v0, 0x11170

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 7476
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7477
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    .line 7478
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 7479
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 7480
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7482
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->waitForKeyguard(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    .line 7483
    return-void

    .line 7480
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I
    .locals 5
    .parameter "win"
    .parameter "transit"

    .prologue
    const/16 v4, 0x2004

    const/16 v3, 0x2002

    const/16 v1, 0x1003

    const/16 v2, 0x1001

    .line 3243
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v0, :cond_3

    .line 3244
    if-eq p2, v3, :cond_0

    if-ne p2, v4, :cond_1

    .line 3245
    :cond_0
    const v0, 0x10a001b

    .line 3278
    :goto_0
    return v0

    .line 3246
    :cond_1
    if-eq p2, v2, :cond_2

    if-ne p2, v1, :cond_b

    .line 3247
    :cond_2
    const v0, 0x10a001a

    goto :goto_0

    .line 3249
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v0, :cond_b

    .line 3251
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-eqz v0, :cond_7

    .line 3252
    if-eq p2, v3, :cond_4

    if-ne p2, v4, :cond_5

    .line 3253
    :cond_4
    const v0, 0x10a0015

    goto :goto_0

    .line 3254
    :cond_5
    if-eq p2, v2, :cond_6

    if-ne p2, v1, :cond_b

    .line 3255
    :cond_6
    const v0, 0x10a0014

    goto :goto_0

    .line 3258
    :cond_7
    if-eq p2, v3, :cond_8

    if-ne p2, v4, :cond_9

    .line 3259
    :cond_8
    const v0, 0x10a0019

    goto :goto_0

    .line 3260
    :cond_9
    if-eq p2, v2, :cond_a

    if-ne p2, v1, :cond_b

    .line 3261
    :cond_a
    const v0, 0x10a0018

    goto :goto_0

    .line 3264
    :cond_b
    const/4 v0, 0x5

    if-ne p2, v0, :cond_c

    .line 3265
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasAppShownWindows()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3267
    const v0, 0x10a0011

    goto :goto_0

    .line 3269
    :cond_c
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7e7

    if-ne v0, v1, :cond_d

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamingLockscreen:Z

    if-eqz v0, :cond_d

    if-ne p2, v2, :cond_d

    .line 3275
    const/4 v0, -0x1

    goto :goto_0

    .line 3278
    :cond_d
    const/4 v0, 0x0

    goto :goto_0
.end method

.method sendCloseSystemWindows()V
    .locals 2

    .prologue
    .line 7606
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 7607
    return-void
.end method

.method sendCloseSystemWindows(Ljava/lang/String;)V
    .locals 1
    .parameter "reason"

    .prologue
    .line 7610
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 7611
    return-void
.end method

.method setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .parameter "win"
    .parameter "fl"
    .parameter "adjust"
    .parameter "attached"
    .parameter "insetDecors"
    .parameter "pf"
    .parameter "df"
    .parameter "cf"
    .parameter "vf"

    .prologue
    .line 4924
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-le v0, v1, :cond_1

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-ge v0, v1, :cond_1

    .line 4932
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v0, p9, Landroid/graphics/Rect;->left:I

    iput v0, p8, Landroid/graphics/Rect;->left:I

    iput v0, p7, Landroid/graphics/Rect;->left:I

    .line 4933
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v0, p9, Landroid/graphics/Rect;->top:I

    iput v0, p8, Landroid/graphics/Rect;->top:I

    iput v0, p7, Landroid/graphics/Rect;->top:I

    .line 4934
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v0, p9, Landroid/graphics/Rect;->right:I

    iput v0, p8, Landroid/graphics/Rect;->right:I

    iput v0, p7, Landroid/graphics/Rect;->right:I

    .line 4935
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v0, p9, Landroid/graphics/Rect;->bottom:I

    iput v0, p8, Landroid/graphics/Rect;->bottom:I

    iput v0, p7, Landroid/graphics/Rect;->bottom:I

    .line 4966
    .end local p8
    :goto_0
    and-int/lit16 v0, p2, 0x100

    if-nez v0, :cond_0

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object p7

    .end local p7
    :cond_0
    invoke-virtual {p6, p7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4973
    return-void

    .line 4943
    .restart local p7
    .restart local p8
    :cond_1
    const/16 v0, 0x10

    if-eq p3, v0, :cond_4

    .line 4944
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4960
    :cond_2
    :goto_1
    if-eqz p5, :cond_3

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object p8

    .end local p8
    :cond_3
    invoke-virtual {p7, p8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4961
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 4952
    .restart local p8
    :cond_4
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4953
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-ge v0, v1, :cond_2

    .line 4954
    iget v0, p8, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    if-ge v0, v1, :cond_5

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v0, p8, Landroid/graphics/Rect;->left:I

    .line 4955
    :cond_5
    iget v0, p8, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    if-ge v0, v1, :cond_6

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v0, p8, Landroid/graphics/Rect;->top:I

    .line 4956
    :cond_6
    iget v0, p8, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    if-le v0, v1, :cond_7

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v0, p8, Landroid/graphics/Rect;->right:I

    .line 4957
    :cond_7
    iget v0, p8, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v0, p8, Landroid/graphics/Rect;->bottom:I

    goto :goto_1
.end method

.method public setCurrentOrientationLw(I)V
    .locals 2
    .parameter "newOrientation"

    .prologue
    .line 8186
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 8187
    :try_start_0
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    if-eq p1, v0, :cond_0

    .line 8188
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    .line 8189
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 8191
    :cond_0
    monitor-exit v1

    .line 8192
    return-void

    .line 8191
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCurrentUserLw(I)V
    .locals 2
    .parameter "newUserId"

    .prologue
    const/4 v1, 0x0

    .line 8393
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    if-eqz v0, :cond_0

    .line 8394
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->setCurrentUser(I)V

    .line 8396
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v0, :cond_1

    .line 8398
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->setCurrentUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8403
    :cond_1
    :goto_0
    invoke-virtual {p0, v1, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 8404
    return-void

    .line 8399
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method setHdmiPlugged(Z)V
    .locals 7
    .parameter "plugged"

    .prologue
    const/high16 v6, 0x800

    const/4 v3, 0x1

    .line 6059
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    if-eq v4, p1, :cond_1

    .line 6060
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    .line 6061
    invoke-virtual {p0, v3, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(ZZ)V

    .line 6062
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.HDMI_PLUGGED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6063
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6064
    const-string v4, "state"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6067
    if-eqz p1, :cond_0

    .line 6068
    const-string v4, "2"

    const-string v5, "ro.factorytest"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "true"

    const-string v5, "sys.allautotest.run"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 6070
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showNeedToChargeDialog()V

    .line 6075
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6076
    const-string v4, "ro.build.target_operator"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6077
    .local v1, operator:Ljava/lang/String;
    const-string v4, "VZW"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6078
    new-instance v2, Landroid/content/Intent;

    const-string v4, "verizon.intent.action.HDMI_PLUG"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6079
    .local v2, vzw_intent:Landroid/content/Intent;
    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6080
    const-string v4, "state"

    if-eqz p1, :cond_2

    :goto_0
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6081
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6084
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #operator:Ljava/lang/String;
    .end local v2           #vzw_intent:Landroid/content/Intent;
    :cond_1
    return-void

    .line 6080
    .restart local v0       #intent:Landroid/content/Intent;
    .restart local v1       #operator:Ljava/lang/String;
    .restart local v2       #vzw_intent:Landroid/content/Intent;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setInitialDisplaySize(Landroid/view/Display;III)V
    .locals 19
    .parameter "display"
    .parameter "width"
    .parameter "height"
    .parameter "density"

    .prologue
    .line 2340
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    .line 2343
    move/from16 v0, p2

    move/from16 v1, p3

    if-le v0, v1, :cond_4

    .line 2344
    move/from16 v7, p3

    .line 2345
    .local v7, shortSize:I
    move/from16 v4, p2

    .line 2346
    .local v4, longSize:I
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 2347
    const/4 v9, 0x2

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    .line 2348
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x111001e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2350
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 2351
    const/4 v9, 0x3

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .line 2371
    :goto_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x105000c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    .line 2375
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x105000d

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    aput v13, v11, v12

    aput v13, v9, v10

    .line 2379
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x105000e

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    aput v13, v11, v12

    aput v13, v9, v10

    .line 2385
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x105000f

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    aput v17, v15, v16

    aput v17, v13, v14

    aput v17, v11, v12

    aput v17, v9, v10

    .line 2393
    mul-int/lit16 v9, v7, 0xa0

    div-int v8, v9, p4

    .line 2395
    .local v8, shortSizeDp:I
    const/16 v9, 0x258

    if-ge v8, v9, :cond_6

    .line 2397
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSystemNavBar:Z

    .line 2398
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    .line 2405
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSystemNavBar:Z

    if-nez v9, :cond_8

    .line 2406
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x111003c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    .line 2411
    const-string v9, "qemu.hw.mainkeys"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2412
    .local v6, navBarOverride:Ljava/lang/String;
    const-string v9, ""

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2413
    const-string v9, "ro.hw.nav_keys"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2415
    :cond_1
    const-string v9, ""

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 2416
    const-string v9, "1"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    .line 2423
    .end local v6           #navBarOverride:Ljava/lang/String;
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSystemNavBar:Z

    if-eqz v9, :cond_a

    .line 2427
    mul-int/lit16 v9, v4, 0xa0

    div-int v5, v9, p4

    .line 2428
    .local v5, longSizeDp:I
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    aget v9, v9, v10

    mul-int/lit16 v9, v9, 0xa0

    div-int v3, v9, p4

    .line 2430
    .local v3, barHeightDp:I
    sub-int v9, v8, v3

    mul-int/lit8 v9, v9, 0x10

    div-int v2, v9, v5

    .line 2435
    .local v2, aspect:I
    const/16 v9, 0x9

    if-ge v2, v9, :cond_9

    const/4 v9, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    .line 2446
    .end local v2           #aspect:I
    .end local v3           #barHeightDp:I
    .end local v5           #longSizeDp:I
    :goto_4
    const-string v9, "portrait"

    const-string v10, "persist.demo.hdmirotation"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 2447
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiRotation:I

    .line 2451
    :goto_5
    const-string v9, "persist.demo.hdmirotationlock"

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiRotationLock:Z

    .line 2452
    return-void

    .line 2353
    .end local v8           #shortSizeDp:I
    :cond_3
    const/4 v9, 0x3

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 2354
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    goto/16 :goto_0

    .line 2357
    .end local v4           #longSize:I
    .end local v7           #shortSize:I
    :cond_4
    move/from16 v7, p2

    .line 2358
    .restart local v7       #shortSize:I
    move/from16 v4, p3

    .line 2359
    .restart local v4       #longSize:I
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 2360
    const/4 v9, 0x2

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .line 2361
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x111001e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2363
    const/4 v9, 0x3

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 2364
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    goto/16 :goto_0

    .line 2366
    :cond_5
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 2367
    const/4 v9, 0x3

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    goto/16 :goto_0

    .line 2399
    .restart local v8       #shortSizeDp:I
    :cond_6
    const/16 v9, 0x2d0

    if-ge v8, v9, :cond_0

    .line 2401
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSystemNavBar:Z

    .line 2402
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    goto/16 :goto_1

    .line 2417
    .restart local v6       #navBarOverride:Ljava/lang/String;
    :cond_7
    const-string v9, "0"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    goto/16 :goto_2

    .line 2420
    .end local v6           #navBarOverride:Ljava/lang/String;
    :cond_8
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    goto/16 :goto_2

    .line 2435
    .restart local v2       #aspect:I
    .restart local v3       #barHeightDp:I
    .restart local v5       #longSizeDp:I
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 2436
    .end local v2           #aspect:I
    .end local v3           #barHeightDp:I
    .end local v5           #longSizeDp:I
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v9, :cond_b

    .line 2439
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    goto/16 :goto_4

    .line 2441
    :cond_b
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    goto/16 :goto_4

    .line 2449
    :cond_c
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiRotation:I

    goto/16 :goto_5
.end method

.method public setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 0
    .parameter "ime"
    .parameter "target"

    .prologue
    .line 8374
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 8375
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 8376
    return-void
.end method

.method setMaxBacklightBrightness()V
    .locals 2

    .prologue
    new-instance v0, Landroid/os/IPowerManagerProxy;

    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/IPowerManagerProxy;-><init>(Landroid/os/IPowerManager;)V

    .local v0, power:Landroid/os/IPowerManagerProxy;
    const/16 v1, 0xff

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/os/IPowerManagerProxy;->setBacklightBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method setPowerLongPress(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "value"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    return-void
.end method

.method public setRotationLw(I)V
    .locals 1
    .parameter "rotation"

    .prologue
    .line 7810
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->setCurrentRotation(I)V

    .line 7811
    return-void
.end method

.method public setSafeMode(Z)V
    .locals 3
    .parameter "safeMode"

    .prologue
    .line 7856
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    .line 7857
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/16 v0, 0x2711

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 7860
    return-void

    .line 7857
    :cond_0
    const/16 v0, 0x2710

    goto :goto_0
.end method

.method public setSystemBarType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 8817
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBarType:I

    .line 8818
    return-void
.end method

.method public setUserRotationMode(II)V
    .locals 5
    .parameter "mode"
    .parameter "rot"

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, -0x2

    .line 7824
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 7827
    .local v0, res:Landroid/content/ContentResolver;
    if-ne p1, v2, :cond_0

    .line 7828
    const-string v1, "user_rotation"

    invoke-static {v0, v1, p2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 7832
    const-string v1, "accelerometer_rotation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 7853
    :goto_0
    return-void

    .line 7837
    :cond_0
    if-ne p1, v4, :cond_1

    .line 7838
    const-string v1, "user_rotation"

    invoke-static {v0, v1, p2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 7842
    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    .line 7848
    :cond_1
    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method public showAssistant()V
    .locals 1

    .prologue
    .line 8408
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->showAssistant()V

    .line 8409
    return-void
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .locals 2
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 7926
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    if-eqz v0, :cond_0

    .line 7971
    :goto_0
    return-void

    .line 7927
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$38;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$38;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method showGlobalActionsDialog()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/internal/policy/impl/MiuiGlobalActions;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/policy/impl/MiuiGlobalActions;-><init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v0

    .local v0, keyguardShowing:Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->showDialog(ZZ)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->userActivity()V

    :cond_1
    return-void
.end method

.method showGoHomeDialog()V
    .locals 2

    .prologue
    .line 8675
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$43;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$43;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8719
    return-void
.end method

.method showGoHomeDialog2()V
    .locals 3

    .prologue
    .line 8721
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGoHomeDialog2:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    .line 8722
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 8724
    .local v0, ab:Landroid/app/AlertDialog$Builder;
    const v1, 0x20b026e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 8725
    const v1, 0x20b0271

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 8726
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 8727
    const v1, 0x104000a

    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$44;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$44;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 8779
    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$45;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$45;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 8785
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGoHomeDialog2:Landroid/app/AlertDialog;

    .line 8786
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGoHomeDialog2:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 8788
    .end local v0           #ab:Landroid/app/AlertDialog$Builder;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGoHomeDialog2:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 8789
    return-void
.end method

.method showNeedToChargeDialog()V
    .locals 2

    .prologue
    .line 8645
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$42;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$42;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8671
    return-void
.end method

.method showOrHideRecentAppsDialog(I)V
    .locals 2
    .parameter "behavior"

    .prologue
    .line 2034
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$15;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$15;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2073
    return-void
.end method

.method showRestartActionDialog(I)V
    .locals 4
    .parameter "restartCount"

    .prologue
    .line 1921
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestartAction:Lcom/android/internal/policy/impl/RestartAction;

    if-nez v1, :cond_0

    .line 1922
    new-instance v1, Lcom/android/internal/policy/impl/RestartAction;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/android/internal/policy/impl/RestartAction;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestartAction:Lcom/android/internal/policy/impl/RestartAction;

    .line 1925
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v0

    .line 1927
    .local v0, keyguardShowing:Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestartAction:Lcom/android/internal/policy/impl/RestartAction;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/RestartAction;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1928
    const-string v1, "WindowManager"

    const-string v2, "RestartActionDialog is showing. Ignore showRestartActionDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    :cond_1
    :goto_0
    return-void

    .line 1932
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestartAction:Lcom/android/internal/policy/impl/RestartAction;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/RestartAction;->showDialog(Z)V

    .line 1934
    if-eqz v0, :cond_1

    .line 1935
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_0
.end method

.method public showSKTLocked(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "enableUserUnlock"
    .parameter "strPassword"
    .parameter "userMsg"

    .prologue
    .line 8303
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SKT Lock&Wipe] ShowSKTLocked("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->showSKTLocked(ZLjava/lang/String;Ljava/lang/String;)V

    .line 8305
    return-void
.end method

.method startDockOrHome()V
    .locals 6

    .prologue
    .line 8120
    const-string v2, ""

    .line 8121
    .local v2, homeprop:Ljava/lang/String;
    const-string v4, "service.plushome.currenthome"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8123
    const-string v4, "kids"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8125
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 8126
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "com.lge.launcher2"

    const-string v5, "com.lge.launcher2.plushome.kidshome.LGKidsHome"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8127
    const/high16 v4, 0x1400

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 8128
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8144
    .end local v3           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 8129
    :catch_0
    move-exception v1

    .line 8130
    .local v1, e:Landroid/content/ActivityNotFoundException;
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 8134
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v0

    .line 8135
    .local v0, dock:Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 8137
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 8139
    :catch_1
    move-exception v4

    .line 8142
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public subWindowTypeToLayerLw(I)I
    .locals 3
    .parameter "type"

    .prologue
    .line 2916
    packed-switch p1, :pswitch_data_0

    .line 2927
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sub-window type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2928
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2919
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2921
    :pswitch_1
    const/4 v0, -0x2

    goto :goto_0

    .line 2923
    :pswitch_2
    const/4 v0, -0x1

    goto :goto_0

    .line 2925
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 2916
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public systemBooted()V
    .locals 5

    .prologue
    .line 7904
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 7905
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    .line 7906
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadsetIntent:Z

    if-eqz v1, :cond_0

    .line 7907
    const-string v1, "WindowManager"

    const-string v3, "send headset intent after system booted"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7908
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadsetName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendIntents(Ljava/lang/String;)V

    .line 7910
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7912
    const/4 v0, 0x0

    .line 7913
    .local v0, detailState:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBuildType:Ljava/lang/String;

    const-string v2, "eng"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBuildType:Ljava/lang/String;

    const-string v2, "userdebug"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7914
    :cond_1
    const-string v1, "/sys/devices/platform/lge-msm8974-qfprom/qfusing"

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readDeviceNodeDetail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7916
    :cond_2
    if-eqz v0, :cond_3

    .line 7917
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Fusing"

    :goto_0
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFusingState:Ljava/lang/String;

    .line 7919
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc9

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 7920
    return-void

    .line 7910
    .end local v0           #detailState:Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 7917
    .restart local v0       #detailState:Ljava/lang/String;
    :cond_4
    const-string v1, "non Fusing"

    goto :goto_0
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 7876
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    if-eqz v0, :cond_0

    .line 7878
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->onSystemReady()V

    .line 7880
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7881
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 7882
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    .line 7883
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$37;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$37;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7895
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7897
    new-instance v0, Landroid/hardware/SystemSensorManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 7898
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mProximitySensor:Landroid/hardware/Sensor;

    .line 7900
    return-void

    .line 7895
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method updateOrientationListenerLp()V
    .locals 2

    .prologue
    .line 1110
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->canDetectOrientation()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1137
    :cond_0
    :goto_0
    return-void

    .line 1119
    :cond_1
    const/4 v0, 0x1

    .line 1120
    .local v0, disable:Z
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v1, :cond_2

    .line 1121
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->needSensorRunningLp()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1122
    const/4 v0, 0x0

    .line 1124
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    if-nez v1, :cond_2

    .line 1125
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->enable()V

    .line 1127
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    .line 1132
    :cond_2
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    if-eqz v1, :cond_0

    .line 1133
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->disable()V

    .line 1135
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    goto :goto_0
.end method

.method updateRotation(Z)V
    .locals 2
    .parameter "alwaysSendConfiguration"

    .prologue
    .line 8073
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8077
    :goto_0
    return-void

    .line 8074
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method updateRotation(ZZ)V
    .locals 1
    .parameter "alwaysSendConfiguration"
    .parameter "forceRelayout"

    .prologue
    .line 8082
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8086
    :goto_0
    return-void

    .line 8083
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateSettings()V
    .locals 17

    .prologue
    .line 2455
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 2456
    .local v7, resolver:Landroid/content/ContentResolver;
    const/4 v10, 0x0

    .line 2457
    .local v10, updateRotation:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 2458
    :try_start_0
    const-string v13, "end_button_behavior"

    const/4 v15, 0x2

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-static {v7, v13, v15, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    .line 2462
    const-string v13, "incall_power_button_behavior"

    const/4 v15, 0x1

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-static {v7, v13, v15, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    .line 2468
    const-string v13, "user_rotation"

    const/4 v15, 0x0

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-static {v7, v13, v15, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    .line 2471
    .local v11, userRotation:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    if-eq v13, v11, :cond_0

    .line 2472
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    .line 2473
    const/4 v10, 0x1

    .line 2477
    :cond_0
    const-string v13, "accelerometer_rotation"

    const/4 v15, 0x0

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-static {v7, v13, v15, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 2480
    .local v1, accelerometerDefault:I
    if-eqz v1, :cond_b

    const/4 v12, 0x0

    .line 2484
    .local v12, userRotationMode:I
    :goto_0
    const/4 v13, 0x2

    if-ne v1, v13, :cond_1

    .line 2485
    const/4 v12, 0x2

    .line 2493
    :cond_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-eq v13, v12, :cond_2

    .line 2494
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    .line 2495
    const/4 v10, 0x1

    .line 2496
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 2499
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    if-eqz v13, :cond_7

    .line 2500
    const-string v13, "pointer_location"

    const/4 v15, 0x0

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-static {v7, v13, v15, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    .line 2502
    .local v6, pointerLocation:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    if-eq v13, v6, :cond_3

    .line 2503
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    .line 2504
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    if-eqz v6, :cond_c

    const/4 v13, 0x1

    :goto_1
    invoke-virtual {v15, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2509
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->CAPP_TOUCH_PALM_COVER:Z

    if-eqz v13, :cond_4

    const-string v13, "1"

    const-string v15, "ro.factorytest"

    const-string v16, "0"

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 2510
    const-string v13, "hide_display"

    const/4 v15, 0x0

    invoke-static {v7, v13, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 2512
    .local v4, hideDisplay:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideDisplayMode:I

    if-eq v13, v4, :cond_4

    .line 2513
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_d

    const/16 v13, 0x65

    :goto_2
    invoke-virtual {v15, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2520
    .end local v4           #hideDisplay:I
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->CAPP_TOUCH_PALM_SWIPE:Z

    if-eqz v13, :cond_5

    const-string v13, "1"

    const-string v15, "ro.factorytest"

    const-string v16, "0"

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 2521
    const-string v13, "take_screenshot"

    const/4 v15, 0x0

    invoke-static {v7, v13, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 2523
    .local v9, takeScreenshot:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTakeScreenshotMode:I

    if-eq v13, v9, :cond_5

    .line 2524
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    if-eqz v9, :cond_e

    const/16 v13, 0x67

    :goto_3
    invoke-virtual {v15, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2532
    .end local v9           #takeScreenshot:I
    :cond_5
    sget-boolean v13, Lcom/lge/config/ConfigBuildFlags;->CAPP_SLIDEASIDE:Z

    if-eqz v13, :cond_6

    .line 2533
    const/4 v8, 0x0

    .line 2534
    .local v8, slideAside:I
    const-string v13, "sys.factory.qem"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2536
    .local v2, factoryTestStr:Ljava/lang/String;
    const-string v13, "1"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 2537
    const/4 v8, 0x0

    .line 2542
    :goto_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSlideAsideMode:I

    if-eq v13, v8, :cond_6

    .line 2543
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    if-eqz v8, :cond_10

    const/16 v13, 0x69

    :goto_5
    invoke-virtual {v15, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2550
    .end local v2           #factoryTestStr:Ljava/lang/String;
    .end local v8           #slideAside:I
    :cond_6
    const-string v13, "navigation_bar_option"

    const/4 v15, 0x1

    invoke-static {v7, v13, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    const/4 v15, 0x1

    if-ne v13, v15, :cond_11

    const/4 v13, 0x1

    :goto_6
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTransparentSystemBar:Z

    .line 2554
    .end local v6           #pointerLocation:I
    :cond_7
    const-string v13, "screen_off_timeout"

    const/4 v15, 0x0

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-static {v7, v13, v15, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    .line 2556
    const-string v13, "default_input_method"

    const/4 v15, -0x2

    invoke-static {v7, v13, v15}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 2560
    .local v5, imId:Ljava/lang/String;
    const-string v13, "accessibility_easy_access_enabled_category"

    const/4 v15, 0x0

    invoke-static {v7, v13, v15}, Lcom/lge/provider/SettingsEx$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_12

    const/4 v13, 0x1

    :goto_7
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEasyAccessEnabled:Z

    .line 2564
    if-eqz v5, :cond_13

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_13

    const/4 v3, 0x1

    .line 2565
    .local v3, hasSoftInput:Z
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    if-eq v13, v3, :cond_8

    .line 2566
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    .line 2567
    const/4 v10, 0x1

    .line 2569
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHotKeyCustomizing:Z

    if-eqz v13, :cond_9

    .line 2570
    const-string v13, "hotkey_short_package"

    const/4 v15, -0x2

    invoke-static {v7, v13, v15}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sShortKeyPkg:Ljava/lang/String;

    .line 2571
    const-string v13, "hotkey_short_class"

    const/4 v15, -0x2

    invoke-static {v7, v13, v15}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sShortKeyClass:Ljava/lang/String;

    .line 2574
    :cond_9
    const-string v13, "quick_view_enable"

    const/4 v15, 0x0

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-static {v7, v13, v15, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v13

    if-eqz v13, :cond_14

    const/4 v13, 0x1

    :goto_9
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mViewCoverEnabled:Z

    .line 2578
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2579
    if-eqz v10, :cond_a

    .line 2580
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    .line 2582
    :cond_a
    return-void

    .line 2480
    .end local v3           #hasSoftInput:Z
    .end local v5           #imId:Ljava/lang/String;
    .end local v12           #userRotationMode:I
    :cond_b
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 2504
    .restart local v6       #pointerLocation:I
    .restart local v12       #userRotationMode:I
    :cond_c
    const/4 v13, 0x2

    goto/16 :goto_1

    .line 2513
    .restart local v4       #hideDisplay:I
    :cond_d
    const/16 v13, 0x66

    goto/16 :goto_2

    .line 2524
    .end local v4           #hideDisplay:I
    .restart local v9       #takeScreenshot:I
    :cond_e
    const/16 v13, 0x68

    goto/16 :goto_3

    .line 2539
    .end local v9           #takeScreenshot:I
    .restart local v2       #factoryTestStr:Ljava/lang/String;
    .restart local v8       #slideAside:I
    :cond_f
    :try_start_1
    const-string v13, "multitasking_slide_aside"

    const/4 v15, 0x0

    invoke-static {v7, v13, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    goto/16 :goto_4

    .line 2543
    :cond_10
    const/16 v13, 0x6a

    goto/16 :goto_5

    .line 2550
    .end local v2           #factoryTestStr:Ljava/lang/String;
    .end local v8           #slideAside:I
    :cond_11
    const/4 v13, 0x0

    goto/16 :goto_6

    .line 2560
    .end local v6           #pointerLocation:I
    .restart local v5       #imId:Ljava/lang/String;
    :cond_12
    const/4 v13, 0x0

    goto :goto_7

    .line 2564
    :cond_13
    const/4 v3, 0x0

    goto :goto_8

    .line 2574
    .restart local v3       #hasSoftInput:Z
    :cond_14
    const/4 v13, 0x0

    goto :goto_9

    .line 2578
    .end local v1           #accelerometerDefault:I
    .end local v3           #hasSoftInput:Z
    .end local v5           #imId:Ljava/lang/String;
    .end local v11           #userRotation:I
    .end local v12           #userRotationMode:I
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v13
.end method

.method public userActivity()V
    .locals 5

    .prologue
    .line 7998
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    monitor-enter v1

    .line 7999
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eqz v0, :cond_0

    .line 8001
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8002
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8004
    :cond_0
    monitor-exit v1

    .line 8005
    return-void

    .line 8004
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public windowTypeToLayerLw(I)I
    .locals 4
    .parameter "type"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x2

    if-lt p1, v1, :cond_0

    const/16 v2, 0x63

    if-gt p1, v2, :cond_0

    :goto_0
    :pswitch_0
    return v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    invoke-static {p1, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->getMiuiViewLayer(II)I

    move-result v0

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 2832
    goto :goto_0

    .line 2837
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 2839
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 2842
    :pswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 2845
    :pswitch_5
    const/4 v0, 0x6

    goto :goto_0

    .line 2848
    :pswitch_6
    const/4 v0, 0x7

    goto :goto_0

    .line 2851
    :pswitch_7
    const/16 v0, 0x8

    goto :goto_0

    .line 2854
    :pswitch_8
    const/16 v0, 0x9

    goto :goto_0

    .line 2857
    :pswitch_9
    const/16 v0, 0xa

    goto :goto_0

    .line 2860
    :pswitch_a
    const/16 v0, 0xb

    goto :goto_0

    .line 2864
    :pswitch_b
    const/16 v0, 0xc

    goto :goto_0

    .line 2866
    :pswitch_c
    const/16 v0, 0xd

    goto :goto_0

    .line 2868
    :pswitch_d
    const/16 v0, 0xe

    goto :goto_0

    .line 2870
    :pswitch_e
    const/16 v0, 0xf

    goto :goto_0

    .line 2872
    :pswitch_f
    const/16 v0, 0x10

    goto :goto_0

    .line 2876
    :pswitch_10
    const/16 v0, 0x11

    goto :goto_0

    .line 2880
    :pswitch_11
    const/16 v0, 0x12

    goto :goto_0

    .line 2883
    :pswitch_12
    const/16 v0, 0x13

    goto :goto_0

    .line 2886
    :pswitch_13
    const/16 v0, 0x14

    goto :goto_0

    .line 2889
    :pswitch_14
    const/16 v0, 0x15

    goto :goto_0

    .line 2892
    :pswitch_15
    const/16 v0, 0x16

    goto :goto_0

    .line 2895
    :pswitch_16
    const/16 v0, 0x17

    goto :goto_0

    .line 2899
    :pswitch_17
    const/16 v0, 0x18

    goto :goto_0

    .line 2901
    :pswitch_18
    const/16 v0, 0x19

    goto :goto_0

    .line 2903
    :pswitch_19
    const/16 v0, 0x1a

    goto :goto_0

    .line 2906
    :pswitch_1a
    const/16 v0, 0x1b

    goto :goto_0

    .line 2908
    :pswitch_1b
    const/16 v0, 0x1c

    goto :goto_0

    .line 2830
    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_e
        :pswitch_3
        :pswitch_2
        :pswitch_8
        :pswitch_b
        :pswitch_5
        :pswitch_11
        :pswitch_6
        :pswitch_4
        :pswitch_c
        :pswitch_14
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_f
        :pswitch_18
        :pswitch_17
        :pswitch_d
        :pswitch_1a
        :pswitch_12
        :pswitch_10
        :pswitch_19
        :pswitch_1b
        :pswitch_7
        :pswitch_13
        :pswitch_1
        :pswitch_16
        :pswitch_15
        :pswitch_4
    .end packed-switch
.end method
