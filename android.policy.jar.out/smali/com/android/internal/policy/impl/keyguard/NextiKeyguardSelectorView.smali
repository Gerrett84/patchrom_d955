.class public Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;
.super Landroid/widget/LinearLayout;
.source "NextiKeyguardSelectorView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
.implements Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame$OnTriggerListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$QueryHandler;
    }
.end annotation


# static fields
.field private static final ASSIST_ICON_METADATA_NAME:Ljava/lang/String; = "com.android.systemui.action_assist_icon"

.field private static final CALL_LOG_PROJECTION:[Ljava/lang/String; = null

.field private static final CALL_LOG_TOKEN:I = -0x1

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SecuritySelectorView"

.field public static mCameraDeterrenceFlag:Z

.field private static sBroadCastReceiver:Landroid/content/BroadcastReceiver;


# instance fields
.field private final mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

.field private mAnim:Landroid/animation/ObjectAnimator;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mCameraDisabled:Z

.field mCharalayout:Landroid/widget/LinearLayout;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mDocTouchIcon:Landroid/widget/ImageView;

.field private mFadeView:Landroid/view/View;

.field private mHandlerChara:Landroid/os/Handler;

.field mHandlerSp:Landroid/os/Handler;

.field mHandlerTel:Landroid/os/Handler;

.field private final mHasVibrator:Z

.field private mHistoryAtticon2:Landroid/widget/TextView;

.field private mHistoryAtticon3:Landroid/widget/TextView;

.field mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mIsBouncing:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMascotVoiceIcon:Landroid/widget/ImageView;

.field mRemoteViews:Landroid/widget/RemoteViews;

.field private mRunnable:Ljava/lang/Runnable;

.field private mSearchDisabled:Z

.field private mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

.field private mSilentMode:Z

.field private mUnlockTouchPoint:Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 78
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->DEBUG:Z

    .line 102
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    .line 175
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->sBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 176
    sput-boolean v3, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mCameraDeterrenceFlag:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 273
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 274
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 277
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mHandlerTel:Landroid/os/Handler;

    .line 112
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mHandlerSp:Landroid/os/Handler;

    .line 114
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mHandlerChara:Landroid/os/Handler;

    .line 130
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mContentObserver:Landroid/database/ContentObserver;

    .line 232
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 255
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    .line 278
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 280
    const-string v1, "vibrator"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 281
    .local v0, vibrator:Landroid/os/Vibrator;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mHasVibrator:Z

    .line 282
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mAudioManager:Landroid/media/AudioManager;

    .line 283
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->isSilentMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mSilentMode:Z

    .line 285
    return-void

    .line 281
    :cond_0
    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mSilentMode:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mSilentMode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->updateTargets()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->setSPModeMailUnReadCount(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->getMissedCallCount()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->updateView()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mHandlerChara:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 75
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->DEBUG:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->setMissedCallCount(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mIsBouncing:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mHistoryAtticon2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mHistoryAtticon3:Landroid/widget/TextView;

    return-object v0
.end method

.method private getMissedCallCount()V
    .locals 10

    .prologue
    .line 634
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$QueryHandler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$QueryHandler;-><init>(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;Landroid/content/ContentResolver;)V

    .line 637
    .local v0, queryHandler:Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$QueryHandler;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v1, "type="

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 638
    .local v9, where:Ljava/lang/StringBuilder;
    const/4 v1, 0x3

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 639
    const-string v1, " AND new=1"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    const/4 v1, -0x1

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "date DESC"

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    :goto_0
    return-void

    .line 645
    :catch_0
    move-exception v8

    .line 646
    .local v8, e:Ljava/lang/Exception;
    const-string v1, "SecuritySelectorView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NextiKeyguardSelectorView.getMissedCallCount(): missedcall query exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isSilentMode()Z
    .locals 2

    .prologue
    .line 951
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchActivity(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 980
    const v1, 0x34008000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 988
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 994
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 999
    :goto_1
    return-void

    .line 989
    :catch_0
    move-exception v0

    .line 990
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SecuritySelectorView"

    const-string v2, "KeyguardSelectorView.launchActivity): can\'t dismiss keyguard on launch"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 995
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 996
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v1, "SecuritySelectorView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeyguardSelectorView.launchActivity(): Activity not found for intent + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private registerContentObserver()V
    .locals 4

    .prologue
    .line 815
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mContentObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 816
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$6;-><init>(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mContentObserver:Landroid/database/ContentObserver;

    .line 862
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 865
    :cond_0
    return-void
.end method

.method private registerReceiver()V
    .locals 5

    .prologue
    .line 739
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->sBroadCastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 740
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$5;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$5;-><init>(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;)V

    sput-object v1, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->sBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 780
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 781
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "jp.co.nttdocomo.carriermail.APP_LINK_RECEIVED_MESSAGE_LOCAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 782
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 783
    const-string v1, "com.nttdocomo.android.mascot.KEYGUARD_UPDATE_LOCAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 784
    const-string v1, "com.nttdocomo.android.mascot.widget.LockScreenMascotWidget.ACTION_SCREEN_UNLOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 787
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->sBroadCastReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.nttdocomo.android.screenlockservice.DCM_SCREEN"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 789
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SecuritySelectorView"

    const-string v2, "NextiKeyguardSelectorView.registerReceiver(): regist "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private setMissedCallCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mHandlerTel:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$3;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 686
    return-void
.end method

.method private setSPModeMailUnReadCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mHandlerSp:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$4;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 723
    return-void
.end method

.method private toggleRingMode()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 956
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mSilentMode:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mSilentMode:Z

    .line 957
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mSilentMode:Z

    if-eqz v0, :cond_2

    .line 958
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mAudioManager:Landroid/media/AudioManager;

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mHasVibrator:Z

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 964
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 956
    goto :goto_0

    :cond_1
    move v1, v2

    .line 958
    goto :goto_1

    .line 962
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_2
.end method

.method private unregisterReceiver()V
    .locals 4

    .prologue
    .line 801
    :try_start_0
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->sBroadCastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 802
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->sBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 803
    const/4 v1, 0x0

    sput-object v1, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->sBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 804
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SecuritySelectorView"

    const-string v2, "NextiKeyguardSelectorView.unregisterReceiver(): unregist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    :cond_0
    :goto_0
    return-void

    .line 807
    :catch_0
    move-exception v0

    .line 808
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SecuritySelectorView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NextiKeyguardSelectorView.unregisterReceiver(): exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateTargets()V
    .locals 15

    .prologue
    .line 373
    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v2

    .line 374
    .local v2, currentUserHandle:I
    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v6

    .line 375
    .local v6, dpm:Landroid/app/admin/DevicePolicyManager;
    const/4 v12, 0x0

    invoke-virtual {v6, v12, v2}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v5

    .line 376
    .local v5, disabledFeatures:I
    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v12

    if-eqz v12, :cond_7

    and-int/lit8 v12, v5, 0x2

    if-eqz v12, :cond_7

    const/4 v11, 0x1

    .line 378
    .local v11, secureCameraDisabled:Z
    :goto_0
    const/4 v12, 0x0

    invoke-virtual {v6, v12, v2}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v12

    if-nez v12, :cond_0

    if-eqz v11, :cond_8

    :cond_0
    const/4 v1, 0x1

    .line 380
    .local v1, cameraDisabledByAdmin:Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v8

    .line 381
    .local v8, monitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isSimLocked()Z

    move-result v4

    .line 405
    .local v4, disabledBySimState:Z
    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mContext:Landroid/content/Context;

    const-string v13, "search"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/SearchManager;

    iget-object v13, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mContext:Landroid/content/Context;

    const/4 v14, -0x2

    invoke-virtual {v12, v13, v14}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v12

    if-eqz v12, :cond_9

    const/4 v10, 0x1

    .line 408
    .local v10, searchActionAvailable:Z
    :goto_2
    const/4 v3, 0x0

    .line 410
    .local v3, disabledByNoCamera:Z
    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 411
    .local v9, packageManager:Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_a

    .line 412
    const-string v12, "SecuritySelectorView"

    const-string v13, "NextiKeyguardSelectorView.updateTargets(): Camera disabled by Device Policy"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_1
    :goto_3
    if-nez v1, :cond_2

    if-nez v4, :cond_2

    if-eqz v3, :cond_c

    :cond_2
    const/4 v12, 0x1

    :goto_4
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mCameraDisabled:Z

    .line 427
    if-nez v4, :cond_3

    if-nez v10, :cond_d

    :cond_3
    const/4 v12, 0x1

    :goto_5
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mSearchDisabled:Z

    .line 431
    iget-boolean v12, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mSearchDisabled:Z

    if-nez v12, :cond_4

    iget-boolean v12, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mIsBouncing:Z

    if-eqz v12, :cond_e

    .line 433
    :cond_4
    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mMascotVoiceIcon:Landroid/widget/ImageView;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 438
    :goto_6
    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mCharalayout:Landroid/widget/LinearLayout;

    if-eqz v12, :cond_6

    .line 441
    if-nez v4, :cond_5

    iget-boolean v12, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mIsBouncing:Z

    if-eqz v12, :cond_f

    .line 443
    :cond_5
    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mCharalayout:Landroid/widget/LinearLayout;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 449
    :cond_6
    :goto_7
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->updateResources()V

    .line 450
    return-void

    .line 376
    .end local v1           #cameraDisabledByAdmin:Z
    .end local v3           #disabledByNoCamera:Z
    .end local v4           #disabledBySimState:Z
    .end local v8           #monitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    .end local v9           #packageManager:Landroid/content/pm/PackageManager;
    .end local v10           #searchActionAvailable:Z
    .end local v11           #secureCameraDisabled:Z
    :cond_7
    const/4 v11, 0x0

    goto :goto_0

    .line 378
    .restart local v11       #secureCameraDisabled:Z
    :cond_8
    const/4 v1, 0x0

    goto :goto_1

    .line 405
    .restart local v1       #cameraDisabledByAdmin:Z
    .restart local v4       #disabledBySimState:Z
    .restart local v8       #monitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    :cond_9
    const/4 v10, 0x0

    goto :goto_2

    .line 413
    .restart local v3       #disabledByNoCamera:Z
    .restart local v9       #packageManager:Landroid/content/pm/PackageManager;
    .restart local v10       #searchActionAvailable:Z
    :cond_a
    if-eqz v4, :cond_b

    .line 414
    const-string v12, "SecuritySelectorView"

    const-string v13, "NextiKeyguardSelectorView.updateTargets(): disabled by Sim State"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 417
    :cond_b
    new-instance v7, Landroid/content/Intent;

    const-string v12, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 419
    .local v7, intent:Landroid/content/Intent;
    const/4 v12, 0x0

    invoke-virtual {v9, v7, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 420
    .local v0, applications:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    if-gtz v12, :cond_1

    .line 422
    const-string v12, "SecuritySelectorView"

    const-string v13, "NextiKeyguardSelectorView.updateTargets(): There is no camera"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const/4 v3, 0x1

    goto :goto_3

    .line 426
    .end local v0           #applications:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7           #intent:Landroid/content/Intent;
    :cond_c
    const/4 v12, 0x0

    goto :goto_4

    .line 427
    :cond_d
    const/4 v12, 0x0

    goto :goto_5

    .line 435
    :cond_e
    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mMascotVoiceIcon:Landroid/widget/ImageView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 445
    :cond_f
    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mCharalayout:Landroid/widget/LinearLayout;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_7
.end method

.method private updateView()V
    .locals 5

    .prologue
    .line 920
    const v3, 0x20e006d

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mCharalayout:Landroid/widget/LinearLayout;

    .line 922
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mCharalayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 923
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mCharalayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 925
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mRemoteViews:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_3

    .line 927
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mRemoteViews:Landroid/widget/RemoteViews;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, p0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 928
    .local v1, expanded:Landroid/view/View;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mCharalayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 930
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    .line 931
    .local v2, monitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isSimLocked()Z

    move-result v0

    .line 934
    .local v0, disabledBySimState:Z
    if-nez v0, :cond_1

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mIsBouncing:Z

    if-eqz v3, :cond_2

    .line 936
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mCharalayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 937
    const-string v3, "SecuritySelectorView"

    const-string v4, "NextiKeyguardSelectorView.updateView(): disabled by Sim State"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 943
    .end local v0           #disabledBySimState:Z
    .end local v1           #expanded:Landroid/view/View;
    .end local v2           #monitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    :goto_0
    const-string v3, "SecuritySelectorView"

    const-string v4, "NextiKeyguardSelectorView.updateView(): set remoteviews"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    :goto_1
    return-void

    .line 939
    .restart local v0       #disabledBySimState:Z
    .restart local v1       #expanded:Landroid/view/View;
    .restart local v2       #monitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mCharalayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 941
    .end local v0           #disabledBySimState:Z
    .end local v1           #expanded:Landroid/view/View;
    .end local v2           #monitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 946
    :cond_3
    const-string v3, "SecuritySelectorView"

    const-string v4, "NextiKeyguardSelectorView.updateView(): remoteviews is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 1003
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SecuritySelectorView"

    const-string v1, "KeyguardSelectorView.cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 1006
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1007
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mContentObserver:Landroid/database/ContentObserver;

    .line 1009
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mCameraDeterrenceFlag:Z

    .line 1010
    return-void
.end method

.method doTransition(Landroid/view/View;F)V
    .locals 3
    .parameter "view"
    .parameter "to"

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 488
    :cond_0
    const-string v0, "alpha"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mAnim:Landroid/animation/ObjectAnimator;

    .line 489
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 490
    return-void
.end method

.method public getCallback()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public hideBouncer(I)V
    .locals 6
    .parameter "duration"

    .prologue
    const/4 v5, 0x0

    .line 571
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mIsBouncing:Z

    .line 572
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mFadeView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v3, v4, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 576
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->updateTargets()V

    .line 577
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mDocTouchIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 578
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mDocTouchIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 581
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mHistoryAtticon2:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 582
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mHistoryAtticon2:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 583
    .local v0, atticon2length:I
    if-lez v0, :cond_1

    .line 584
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mHistoryAtticon2:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 587
    .end local v0           #atticon2length:I
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mHistoryAtticon3:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 588
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mHistoryAtticon3:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 589
    .local v1, atticon3length:I
    if-lez v1, :cond_2

    .line 590
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mHistoryAtticon3:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 594
    .end local v1           #atticon3length:I
    :cond_2
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 509
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const-wide/16 v7, 0x0

    const/4 v2, 0x0

    .line 869
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mDocTouchIcon:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_3

    .line 870
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setKnockOnEnable(Z)V

    .line 871
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mCameraDisabled:Z

    if-nez v0, :cond_2

    .line 875
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mCameraDeterrenceFlag:Z

    if-nez v0, :cond_0

    .line 876
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->launchActivity(Landroid/content/Intent;)V

    .line 877
    sput-boolean v3, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mCameraDeterrenceFlag:Z

    .line 880
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v7, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 900
    :cond_1
    :goto_0
    return-void

    .line 883
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->toggleRingMode()V

    .line 884
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->updateResources()V

    .line 885
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v7, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    goto :goto_0

    .line 887
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mMascotVoiceIcon:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 888
    const-string v0, "SecuritySelectorView"

    const-string v5, "NextiKeyguardSelectorView.onClick(): AssistIcon"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setKnockOnEnable(Z)V

    .line 890
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mContext:Landroid/content/Context;

    const-string v5, "search"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mContext:Landroid/content/Context;

    const/4 v6, -0x2

    invoke-virtual {v0, v5, v6}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    .line 893
    .local v1, assistIntent:Landroid/content/Intent;
    if-eqz v1, :cond_4

    .line 894
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;->launchActivity(Landroid/content/Intent;ZZLandroid/os/Handler;Ljava/lang/Runnable;)V

    .line 898
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v7, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    goto :goto_0

    .line 896
    :cond_4
    const-string v0, "SecuritySelectorView"

    const-string v2, "Failed to get intent for assist activity"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 289
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 294
    const v5, 0x20e007e

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mUnlockTouchPoint:Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;

    .line 295
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mUnlockTouchPoint:Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;

    if-eqz v5, :cond_0

    .line 296
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mUnlockTouchPoint:Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->initFrame()V

    .line 297
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mUnlockTouchPoint:Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;

    invoke-virtual {v5, p0}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->setOnTriggerListener(Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame$OnTriggerListener;)V

    .line 300
    :cond_0
    const v5, 0x20e0074

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mHistoryAtticon2:Landroid/widget/TextView;

    .line 301
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mHistoryAtticon2:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 302
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mHistoryAtticon2:Landroid/widget/TextView;

    const-string v6, "/system/fonts/Roboto-Bold.ttf"

    invoke-static {v6}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 303
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mHistoryAtticon2:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 306
    :cond_1
    const v5, 0x20e0076

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mHistoryAtticon3:Landroid/widget/TextView;

    .line 307
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mHistoryAtticon3:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    .line 308
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mHistoryAtticon3:Landroid/widget/TextView;

    const-string v6, "/system/fonts/Roboto-Bold.ttf"

    invoke-static {v6}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 309
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mHistoryAtticon3:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    :cond_2
    const v5, 0x20e006f

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mDocTouchIcon:Landroid/widget/ImageView;

    .line 313
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mDocTouchIcon:Landroid/widget/ImageView;

    if-eqz v5, :cond_3

    .line 314
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mDocTouchIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mDocTouchIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 318
    :cond_3
    const v5, 0x20e0071

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mMascotVoiceIcon:Landroid/widget/ImageView;

    .line 319
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mMascotVoiceIcon:Landroid/widget/ImageView;

    if-eqz v5, :cond_4

    .line 320
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mMascotVoiceIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mMascotVoiceIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 323
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setKnockOnEnable(Z)V

    .line 325
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->unregisterReceiver()V

    .line 326
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->registerReceiver()V

    .line 328
    const-string v5, "1"

    const-string v6, "sys.boot_completed"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 330
    .local v3, isBootCompleted:Z
    if-eqz v3, :cond_5

    .line 332
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.internal.policy.impl.CARRIERMAIL_COUNT_UPDATE"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 334
    .local v2, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 336
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.internal.policy.impl.keyguard.ACTION_SCREEN_DISPLAY"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 339
    .local v4, screenIntent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mContext:Landroid/content/Context;

    const-string v6, "com.nttdocomo.android.screenlockservice.DCM_SCREEN"

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #screenIntent:Landroid/content/Intent;
    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->updateTargets()V

    .line 350
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    .line 351
    const v5, 0x20e006c

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 352
    .local v0, bouncerFrameView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 353
    return-void

    .line 342
    .end local v0           #bouncerFrameView:Landroid/view/View;
    :catch_0
    move-exception v1

    .line 343
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v5, "SecuritySelectorView"

    const-string v6, "NextiKeyguardSelectorView.onFinishInflate(): IllegalStateException Occurred"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 516
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mUnlockTouchPoint:Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mUnlockTouchPoint:Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->onPause()V

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 520
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 521
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mContentObserver:Landroid/database/ContentObserver;

    .line 524
    :cond_1
    return-void
.end method

.method public onResume(I)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 530
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mUnlockTouchPoint:Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mUnlockTouchPoint:Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->onResume()V

    .line 533
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->registerContentObserver()V

    .line 534
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->getMissedCallCount()V

    .line 535
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mCameraDeterrenceFlag:Z

    .line 537
    return-void
.end method

.method public onScreenTimeOutExtended()V
    .locals 3

    .prologue
    .line 971
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 972
    return-void
.end method

.method public onUnlocked()V
    .locals 2

    .prologue
    .line 967
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 968
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 505
    return-void
.end method

.method public setCarrierArea(Landroid/view/View;)V
    .locals 0
    .parameter "carrierArea"

    .prologue
    .line 356
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mFadeView:Landroid/view/View;

    .line 357
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 493
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 494
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .parameter "utils"

    .prologue
    .line 497
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 498
    return-void
.end method

.method public showBouncer(I)V
    .locals 4
    .parameter "duration"

    .prologue
    const/4 v3, 0x4

    .line 546
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mIsBouncing:Z

    .line 547
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mFadeView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 551
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mCharalayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mCharalayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mHistoryAtticon2:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 555
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mHistoryAtticon2:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 557
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mHistoryAtticon3:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 558
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mHistoryAtticon3:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 560
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mDocTouchIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 561
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mDocTouchIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 563
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mMascotVoiceIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 564
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mMascotVoiceIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 567
    :cond_4
    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 370
    return-void
.end method

.method public updateResources()V
    .locals 2

    .prologue
    .line 903
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mCameraDisabled:Z

    if-eqz v1, :cond_2

    .line 905
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mSilentMode:Z

    if-eqz v1, :cond_1

    const v0, 0x20200aa

    .line 910
    .local v0, resId:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mDocTouchIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 911
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/NextiKeyguardSelectorView;->mDocTouchIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 913
    :cond_0
    return-void

    .line 905
    .end local v0           #resId:I
    :cond_1
    const v0, 0x20200ad

    goto :goto_0

    .line 908
    :cond_2
    const v0, 0x20200a5

    .restart local v0       #resId:I
    goto :goto_0
.end method
