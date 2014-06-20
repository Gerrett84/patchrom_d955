.class public Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;
.super Landroid/app/Activity;
.source "VibrateCreateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final DEFAULT_COLOR:I


# instance fields
.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private isDualSim:Z

.field private isRingerMode_changed:Z

.field private len:I

.field mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBePlayThreadStop:Z

.field private mBefore_soundprofile:I

.field private mCurMaxProgress:I

.field private mCurRecTimeMs:I

.field private mHandler:Landroid/os/Handler;

.field private mHaptic_value:I

.field private mIsPreview:Z

.field private mIsTouch:Z

.field private mLinearLayout:Landroid/widget/FrameLayout;

.field private mParent_Type:I

.field private mPattern:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPatternSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreview:Landroid/widget/Button;

.field private mProgress:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecodeFlag:Z

.field private mRenameDialog:Landroid/app/AlertDialog;

.field private mSilentEnd:J

.field private mSilentStart:J

.field private mStop_Save:Landroid/widget/Button;

.field private mSwitchImageRunnable:Ljava/lang/Runnable;

.field private mSwitchImageThread:Ljava/lang/Thread;

.field private mTabHere:Landroid/widget/TextView;

.field private mTimeLine:Landroid/widget/SeekBar;

.field private mToast:Landroid/widget/Toast;

.field private mTouchEvent_Finish:Z

.field private mValueAnimator:Landroid/animation/ValueAnimator;

.field private mVibrateEnd:J

.field private mVibratePattern:[J

.field private mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

.field private mVibrateStart:J

.field private mVibrateView:Lcom/android/lgesettings/vibratecreation/VibrateView;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0xe5

    .line 76
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->DEFAULT_COLOR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mPattern:Ljava/util/ArrayList;

    .line 88
    iput-wide v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibrateStart:J

    .line 89
    iput-wide v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibrateEnd:J

    .line 90
    iput-wide v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mSilentStart:J

    .line 91
    iput-wide v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mSilentEnd:J

    .line 94
    iput-boolean v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mIsTouch:Z

    .line 95
    iput-boolean v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mIsPreview:Z

    .line 96
    iput-boolean v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->isDualSim:Z

    .line 97
    iput-boolean v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mBePlayThreadStop:Z

    .line 98
    iput v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mCurRecTimeMs:I

    .line 99
    const/16 v0, 0x1f40

    iput v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mCurMaxProgress:I

    .line 100
    iput v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mParent_Type:I

    .line 102
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mPatternSet:Ljava/util/Set;

    .line 106
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mHaptic_value:I

    .line 107
    iput v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mProgress:I

    .line 114
    iput-boolean v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->isRingerMode_changed:Z

    .line 118
    new-instance v0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$1;-><init>(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)V

    iput-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 133
    new-instance v0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$2;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$2;-><init>(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)V

    iput-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mSwitchImageRunnable:Ljava/lang/Runnable;

    .line 150
    new-instance v0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$3;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$3;-><init>(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)V

    iput-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 165
    new-instance v0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$4;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$4;-><init>(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)V

    iput-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mBefore_soundprofile:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mStop_Save:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Lcom/android/lgesettings/vibratecreation/VibrateView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibrateView:Lcom/android/lgesettings/vibratecreation/VibrateView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Landroid/animation/ValueAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mValueAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mProgress:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mProgress:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mTimeLine:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mCurMaxProgress:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->setPreviewButtonEnabled(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mTabHere:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mHaptic_value:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->enableRotation()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->isRingerMode_changed:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mRecodeFlag:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->isRingerMode_changed:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Landroid/os/Vibrator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mTouchEvent_Finish:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mTouchEvent_Finish:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mIsTouch:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibrateEnd:J

    return-wide v0
.end method

.method static synthetic access$2402(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibrateEnd:J

    return-wide p1
.end method

.method static synthetic access$2500(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibrateStart:J

    return-wide v0
.end method

.method static synthetic access$2502(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibrateStart:J

    return-wide p1
.end method

.method static synthetic access$2600(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mIsPreview:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mPattern:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mSilentEnd:J

    return-wide v0
.end method

.method static synthetic access$2802(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mSilentEnd:J

    return-wide p1
.end method

.method static synthetic access$2900(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->maxlengthEditToast()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->stateReset()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mPatternSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->removeToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mParent_Type:I

    return v0
.end method

.method static synthetic access$3402(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->len:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mSilentStart:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mSilentStart:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Ljava/lang/Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mSwitchImageThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mBePlayThreadStop:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mBePlayThreadStop:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->imageChanger()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mCurRecTimeMs:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mCurRecTimeMs:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private actionUpevent()V
    .locals 6

    .prologue
    .line 639
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mIsTouch:Z

    .line 640
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibrateEnd:J

    .line 641
    iget-wide v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibrateEnd:J

    iput-wide v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mSilentStart:J

    .line 642
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 643
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mPattern:Ljava/util/ArrayList;

    iget-wide v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibrateEnd:J

    iget-wide v3, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibrateStart:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    const-string v0, "VibrateCreateActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "touch time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibrateEnd:J

    iget-wide v4, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibrateStart:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibrateView:Lcom/android/lgesettings/vibratecreation/VibrateView;

    invoke-virtual {v0}, Lcom/android/lgesettings/vibratecreation/VibrateView;->setDefaultBackgroundColor()V

    .line 646
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mRecodeFlag:Z

    .line 647
    return-void
.end method

.method private buildlongArray(Ljava/util/ArrayList;)[J
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 438
    .local p1, pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v4, v5, [J

    .line 439
    .local v4, result:[J
    const/4 v0, 0x0

    .line 441
    .local v0, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 442
    .local v3, n:Ljava/lang/String;
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    aput-wide v5, v4, v0

    .line 443
    const-string v5, "VibrateCreateActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "array value["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v1, -0x1

    aget-wide v7, v4, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_0

    .line 445
    .end local v3           #n:Ljava/lang/String;
    :cond_0
    return-object v4
.end method

.method private createRenameDialog()V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 708
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 710
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 711
    const v1, 0x7f04018a

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 712
    const v0, 0x7f0a01c3

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 713
    invoke-virtual {v0}, Landroid/widget/EditText;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x20

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setPaintFlags(I)V

    .line 714
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 716
    new-instance v6, Lcom/android/lgesettings/quietmode/ByteLengthFilter;

    const/16 v1, 0xf

    invoke-direct {v6, p0, v1}, Lcom/android/lgesettings/quietmode/ByteLengthFilter;-><init>(Landroid/content/Context;I)V

    .line 717
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v6, v1, v0}, Lcom/android/lgesettings/quietmode/ByteLengthFilter;->setInputProperty(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V

    .line 718
    new-instance v1, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$10;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$10;-><init>(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)V

    invoke-virtual {v6, v1}, Lcom/android/lgesettings/quietmode/ByteLengthFilter;->setOnMaxLengthListener(Lcom/android/lgesettings/quietmode/ByteLengthFilter$OnMaxLengthListener;)V

    move v1, v2

    .line 725
    :goto_0
    if-eqz v1, :cond_1

    .line 726
    iget-object v7, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Vibration "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    invoke-virtual {v9}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getDBMyVibrationCountString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->isDuplicateName(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 727
    iget-object v7, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    iget-object v8, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    invoke-virtual {v8}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getDBMyVibrationCount()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->setDBMyVibrationCount(I)V

    goto :goto_0

    .line 731
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Vibration "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    invoke-virtual {v7}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getDBMyVibrationCountString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move v1, v3

    goto :goto_0

    .line 735
    :cond_1
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 736
    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 737
    new-array v1, v2, [Landroid/text/InputFilter;

    aput-object v6, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 738
    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 740
    const v1, 0x7f080dd3

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 741
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0804ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$11;

    invoke-direct {v2, p0, v0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$11;-><init>(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;Landroid/widget/EditText;)V

    invoke-virtual {v4, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 767
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$12;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$12;-><init>(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)V

    invoke-virtual {v4, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 774
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 775
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$13;

    invoke-direct {v2, p0, v0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$13;-><init>(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;Landroid/widget/EditText;)V

    const-wide/16 v7, 0x64

    invoke-virtual {v1, v2, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 782
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mRenameDialog:Landroid/app/AlertDialog;

    .line 784
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mRenameDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$14;

    invoke-direct {v2, p0, v0, v6}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$14;-><init>(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;Landroid/widget/EditText;Lcom/android/lgesettings/quietmode/ByteLengthFilter;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 830
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mRenameDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 831
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mRenameDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 832
    return-void
.end method

.method private disableRotation(Landroid/app/Activity;)V
    .locals 8
    .parameter "activity"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 533
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v2, v4, Landroid/content/res/Configuration;->orientation:I

    .line 534
    .local v2, orientation:I
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getOrientation()I

    move-result v3

    .line 537
    .local v3, rotation:I
    const/16 v0, 0x8

    .line 538
    .local v0, SCREEN_ORIENTATION_REVERSE_LANDSCAPE:I
    const/16 v1, 0x9

    .line 540
    .local v1, SCREEN_ORIENTATION_REVERSE_PORTRAIT:I
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x8

    if-gt v4, v5, :cond_0

    .line 542
    const/4 v0, 0x0

    .line 543
    const/4 v1, 0x1

    .line 546
    :cond_0
    if-eqz v3, :cond_1

    if-ne v3, v6, :cond_4

    .line 548
    :cond_1
    if-ne v2, v6, :cond_3

    .line 550
    invoke-virtual {p1, v6}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 568
    :cond_2
    :goto_0
    return-void

    .line 552
    :cond_3
    if-ne v2, v7, :cond_2

    .line 554
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 557
    :cond_4
    if-eq v3, v7, :cond_5

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 559
    :cond_5
    if-ne v2, v6, :cond_6

    .line 561
    invoke-virtual {p1, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 563
    :cond_6
    if-ne v2, v7, :cond_2

    .line 565
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method private disableSeekbarTouchEvent()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mTimeLine:Landroid/widget/SeekBar;

    new-instance v1, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$5;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$5;-><init>(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 285
    return-void
.end method

.method private enableRotation()V
    .locals 1

    .prologue
    .line 572
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->setRequestedOrientation(I)V

    .line 573
    return-void
.end method

.method private hapticFeedbackOff()V
    .locals 4

    .prologue
    .line 690
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 692
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$9;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$9;-><init>(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)V

    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mPattern:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->sumVibrateTime(Ljava/util/ArrayList;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 697
    return-void
.end method

.method private imageChanger()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 663
    monitor-enter p0

    .line 664
    const/4 v3, 0x0

    .line 665
    .local v3, switchimage:Z
    :try_start_0
    const-string v5, "VibrateCreateActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "switchimage1 : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    invoke-direct {p0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->playVibratePattern()I

    move-result v2

    .line 669
    .local v2, length:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 670
    iget-object v5, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mStop_Save:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0804ac

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    if-ne v5, v6, :cond_0

    .line 671
    const-string v4, "VibrateCreateActivity"

    const-string v5, "imageChanger() - cancel"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-object v4, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v4}, Landroid/os/Vibrator;->cancel()V

    .line 673
    iget-object v4, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 674
    monitor-exit p0

    .line 687
    :goto_1
    return-void

    .line 676
    :cond_0
    iget-object v5, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 678
    if-nez v3, :cond_1

    move v3, v4

    .line 680
    :goto_2
    :try_start_1
    iget-object v5, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibratePattern:[J

    aget-wide v5, v5, v1

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 684
    :goto_3
    :try_start_2
    const-string v5, "VibrateCreateActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "switchimage2 : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 678
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 681
    :catch_0
    move-exception v0

    .line 682
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 686
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #i:I
    .end local v2           #length:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v1       #i:I
    .restart local v2       #length:I
    :cond_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 434
    const-string v0, "VibrateCreateActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    return-void
.end method

.method private maxlengthEditToast()V
    .locals 2

    .prologue
    const v1, 0x7f080e08

    .line 853
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 854
    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mToast:Landroid/widget/Toast;

    .line 859
    :goto_0
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 860
    return-void

    .line 857
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method

.method private playVibrate(I)V
    .locals 3
    .parameter "time"

    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibrator:Landroid/os/Vibrator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 652
    return-void
.end method

.method private declared-synchronized playVibratePattern()I
    .locals 3

    .prologue
    .line 655
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mPattern:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->buildlongArray(Ljava/util/ArrayList;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibratePattern:[J

    .line 656
    invoke-direct {p0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->hapticFeedbackOff()V

    .line 657
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibratePattern:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 658
    const-string v0, "VibrateCreateActivity"

    const-string v1, "playVibratePattern()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibratePattern:[J

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 655
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private removeToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 835
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 836
    const-string v1, "["

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 837
    const-string v1, "]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 838
    return-object v0
.end method

.method private setPreviewButtonEnabled(Z)V
    .locals 1
    .parameter "state"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mPreview:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 268
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mPreview:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 269
    return-void
.end method

.method private setSeekbarListener()V
    .locals 2

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->setSeekbarUpdateListener()V

    .line 296
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$6;-><init>(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 373
    return-void
.end method

.method private setSeekbarUpdateListener()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 288
    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v1, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mTimeLine:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 289
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mValueAnimator:Landroid/animation/ValueAnimator;

    const v1, 0x10a000b

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 290
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mCurMaxProgress:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 291
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 292
    return-void
.end method

.method private setStopSaveButtonEnabled(Z)V
    .locals 1
    .parameter "state"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mStop_Save:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 273
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mStop_Save:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 274
    return-void
.end method

.method private stateReset()V
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 407
    :cond_0
    iget-boolean v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mTouchEvent_Finish:Z

    if-nez v0, :cond_1

    .line 408
    const-string v0, "soosin"

    const-string v1, "mTouchEvent_Finish false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 424
    :goto_0
    return-void

    .line 412
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 413
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-static {}, Landroid/animation/ValueAnimator;->clearAllAnimations()V

    .line 414
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mSwitchImageThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mSwitchImageThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 415
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mSwitchImageThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 417
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibrateView:Lcom/android/lgesettings/vibratecreation/VibrateView;

    invoke-virtual {v0}, Lcom/android/lgesettings/vibratecreation/VibrateView;->setDefaultBackgroundColor()V

    .line 418
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mStop_Save:Landroid/widget/Button;

    const v1, 0x7f0804ac

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 419
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->setPreviewButtonEnabled(Z)V

    .line 420
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0
.end method

.method private sumVibrateTime(Ljava/util/ArrayList;)I
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 459
    .local p1, pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-wide/16 v2, 0x0

    .line 460
    .local v2, result:J
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 461
    .local v1, n:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0

    .line 463
    .end local v1           #n:Ljava/lang/String;
    :cond_0
    long-to-int v4, v2

    return v4
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 453
    const-string v0, "onBackPressed"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->log(Ljava/lang/String;)V

    .line 454
    invoke-direct {p0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->stateReset()V

    .line 455
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 456
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const v5, 0x7f0805e0

    const v4, 0x7f0804ac

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 468
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mPreview:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 469
    iput-boolean v3, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mBePlayThreadStop:Z

    .line 470
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mSwitchImageThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_1

    .line 476
    :goto_0
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mSwitchImageThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 477
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$7;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$7;-><init>(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 491
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mStop_Save:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 492
    invoke-direct {p0, v3}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->setPreviewButtonEnabled(Z)V

    .line 493
    iput-boolean v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mIsPreview:Z

    .line 529
    :cond_0
    :goto_1
    return-void

    .line 473
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mSwitchImageThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 474
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mSwitchImageRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mSwitchImageThread:Ljava/lang/Thread;

    goto :goto_0

    .line 494
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mStop_Save:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mStop_Save:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    if-ne v0, v1, :cond_6

    .line 496
    iget-boolean v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mIsPreview:Z

    if-nez v0, :cond_5

    .line 497
    iget-boolean v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mIsTouch:Z

    if-ne v0, v2, :cond_3

    .line 498
    invoke-direct {p0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->actionUpevent()V

    .line 500
    :cond_3
    iput-boolean v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mTouchEvent_Finish:Z

    .line 501
    iget v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mCurRecTimeMs:I

    iput v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mCurMaxProgress:I

    .line 502
    iput v3, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mCurRecTimeMs:I

    .line 503
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mPattern:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->sumVibrateTime(Ljava/util/ArrayList;)I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mCurMaxProgress:I

    .line 504
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mTimeLine:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mCurMaxProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 505
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 506
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 507
    invoke-direct {p0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->setSeekbarListener()V

    .line 512
    :goto_2
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 514
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mTimeLine:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mProgress:I

    .line 515
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mTimeLine:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 516
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 518
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mSwitchImageThread:Ljava/lang/Thread;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mSwitchImageThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 519
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mSwitchImageThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 521
    :cond_4
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibrateView:Lcom/android/lgesettings/vibratecreation/VibrateView;

    invoke-virtual {v0}, Lcom/android/lgesettings/vibratecreation/VibrateView;->setDefaultBackgroundColor()V

    .line 522
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mStop_Save:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 523
    invoke-direct {p0, v2}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->setPreviewButtonEnabled(Z)V

    goto/16 :goto_1

    .line 510
    :cond_5
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-static {}, Landroid/animation/ValueAnimator;->clearAllAnimations()V

    goto :goto_2

    .line 525
    :cond_6
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mStop_Save:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 526
    invoke-direct {p0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->createRenameDialog()V

    goto/16 :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 702
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 703
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibrateView:Lcom/android/lgesettings/vibratecreation/VibrateView;

    invoke-virtual {v0}, Lcom/android/lgesettings/vibratecreation/VibrateView;->setBackgroundImage()V

    .line 704
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 201
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 202
    const v2, 0x7f040187

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->setContentView(I)V

    .line 203
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 204
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 206
    const v2, 0x7f020243

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setIcon(I)V

    .line 209
    :cond_0
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 211
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 212
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "vibrate_parent_type"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mParent_Type:I

    .line 213
    invoke-static {}, Lcom/android/lgesettings/Utils;->isMultiSimEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->isDualSim:Z

    .line 215
    new-instance v2, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mParent_Type:I

    invoke-direct {v2, v3, v4}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    .line 216
    const v2, 0x7f0a0368

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mTimeLine:Landroid/widget/SeekBar;

    .line 217
    const v2, 0x7f0a036c

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/lgesettings/vibratecreation/VibrateView;

    iput-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibrateView:Lcom/android/lgesettings/vibratecreation/VibrateView;

    .line 218
    const v2, 0x7f0a036a

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mPreview:Landroid/widget/Button;

    .line 219
    const v2, 0x7f0a0369

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mStop_Save:Landroid/widget/Button;

    .line 220
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibrator:Landroid/os/Vibrator;

    .line 221
    const v2, 0x7f0a036b

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mLinearLayout:Landroid/widget/FrameLayout;

    .line 222
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mLinearLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0028

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 223
    const v2, 0x7f0a036d

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mTabHere:Landroid/widget/TextView;

    .line 224
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mTabHere:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0029

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 226
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mPattern:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mTimeLine:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mCurMaxProgress:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 228
    iput-boolean v5, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mRecodeFlag:Z

    .line 229
    iput-boolean v5, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mTouchEvent_Finish:Z

    .line 231
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_enabled"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mHaptic_value:I

    .line 233
    invoke-direct {p0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->disableSeekbarTouchEvent()V

    .line 234
    invoke-direct {p0, v5}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->setStopSaveButtonEnabled(Z)V

    .line 235
    invoke-direct {p0, v5}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->setPreviewButtonEnabled(Z)V

    .line 238
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibrateView:Lcom/android/lgesettings/vibratecreation/VibrateView;

    invoke-virtual {v2, p0}, Lcom/android/lgesettings/vibratecreation/VibrateView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 239
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mLinearLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 240
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mPreview:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mStop_Save:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    invoke-direct {p0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->setSeekbarListener()V

    .line 245
    new-instance v2, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mSwitchImageRunnable:Ljava/lang/Runnable;

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mSwitchImageThread:Ljava/lang/Thread;

    .line 246
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 430
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 431
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 844
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 845
    invoke-direct {p0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->stateReset()V

    .line 846
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->finish()V

    .line 847
    const/4 v0, 0x1

    .line 849
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 390
    const-string v0, "onPause"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->log(Ljava/lang/String;)V

    .line 391
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 393
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_enabled"

    iget v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mHaptic_value:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 394
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 396
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mRenameDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mRenameDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 399
    :cond_0
    invoke-direct {p0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->stateReset()V

    .line 400
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 378
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 379
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mTimeLine:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mProgress:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 380
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mSilentStart:J

    .line 381
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    iput v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mBefore_soundprofile:I

    .line 382
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 383
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 384
    const-string v1, "onResume"

    invoke-direct {p0, v1}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->log(Ljava/lang/String;)V

    .line 385
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "event"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 578
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibrateView:Lcom/android/lgesettings/vibratecreation/VibrateView;

    if-eq p1, v2, :cond_0

    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mLinearLayout:Landroid/widget/FrameLayout;

    if-ne p1, v2, :cond_3

    .line 579
    :cond_0
    const-string v2, "VibrateCreateActivity"

    const-string v3, "mVibrateView onTouch"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-boolean v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mTouchEvent_Finish:Z

    if-ne v1, v2, :cond_2

    .line 582
    const-string v1, "VibrateCreateActivity"

    const-string v2, "onTouch return false"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_1
    :goto_0
    return v0

    .line 585
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_3
    :goto_1
    move v0, v1

    .line 635
    goto :goto_0

    .line 588
    :pswitch_0
    const-string v2, "soosin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->getRequestedOrientation()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-direct {p0, p0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->disableRotation(Landroid/app/Activity;)V

    .line 590
    iget-wide v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mSilentStart:J

    cmp-long v2, v5, v2

    if-nez v2, :cond_4

    .line 592
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$8;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$8;-><init>(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 604
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_enabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 605
    invoke-direct {p0, v1}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->setStopSaveButtonEnabled(Z)V

    .line 606
    const-string v2, "VibrateCreateActivity"

    const-string v3, "start seekbar running!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_4
    iput-boolean v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mIsTouch:Z

    .line 610
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mPattern:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 613
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibrateStart:J

    .line 614
    iget-wide v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibrateStart:J

    iput-wide v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mSilentEnd:J

    .line 615
    iget-wide v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mSilentStart:J

    cmp-long v0, v5, v2

    if-eqz v0, :cond_5

    .line 616
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mPattern:Ljava/util/ArrayList;

    iget-wide v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mSilentEnd:J

    iget-wide v4, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mSilentStart:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    :cond_5
    const/16 v0, 0x2008

    invoke-direct {p0, v0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->playVibrate(I)V

    .line 619
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibrateView:Lcom/android/lgesettings/vibratecreation/VibrateView;

    invoke-virtual {v0}, Lcom/android/lgesettings/vibratecreation/VibrateView;->setVibrateBackgroundColor()V

    goto :goto_1

    .line 625
    :pswitch_1
    iput-boolean v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mRecodeFlag:Z

    goto :goto_1

    .line 630
    :pswitch_2
    invoke-direct {p0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->actionUpevent()V

    goto :goto_1

    .line 585
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
