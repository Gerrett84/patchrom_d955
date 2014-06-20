.class public abstract Lcom/lge/camera/controller/PreviewPanelController;
.super Lcom/lge/camera/controller/Controller;
.source "PreviewPanelController.java"

# interfaces
.implements Lcom/lge/camera/components/ShutterButton$OnShutterButtonListener;
.implements Lcom/lge/camera/components/ShutterButton$OnShutterButtonLongPressListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/lge/camera/components/Switcher$OnSwitchListener;
.implements Lcom/lge/camera/components/SwitcherLever$OnSwitchLeverListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;
    }
.end annotation


# static fields
.field private static final ANI_CLOSE_STARTED:I = 0x2

.field private static final ANI_FINISHED:I = 0x3

.field private static final ANI_NONE:I = 0x0

.field private static final ANI_OPEN_STARTED:I = 0x1

.field private static PAUSE_RESUME_CHECK_DURATION:I = 0x0

.field public static final SUB_BUTTON_BOTTOM:I = 0x2

.field public static final SUB_BUTTON_MIDDLE:I = 0x1

.field public static final SUB_BUTTON_TOP:I


# instance fields
.field protected NAVI_MARGIN:I

.field private checkAreaOnTouch:Z

.field private mAlpha_value:I

.field public mAutoReviewBlockTouch:Z

.field private mButtonCheckTimer:Ljava/util/Timer;

.field private mDeleteThumbnailThread:Ljava/lang/Thread;

.field public mDoSnapRunnable:Ljava/lang/Runnable;

.field private mGalleryLaunching:Z

.field private mGalleryWindowAniState:I

.field private mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mHideQuickViewRunable:Ljava/lang/Runnable;

.field private mLastGalleryImage:Landroid/widget/ImageView;

.field protected mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

.field private mPrevTime:J

.field private mProcessInitDone:Z

.field private mQuickViewThumbImage:Lcom/lge/camera/components/RotateImageView;

.field private mQuickViewThumbLayout:Landroid/view/View;

.field protected mReleaseArea:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;",
            ">;"
        }
    .end annotation
.end field

.field private mReviewThumbnailClickListener:Landroid/view/View$OnClickListener;

.field private mReviewThumbnailLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mReviewThumbnailTouchListener:Landroid/view/View$OnTouchListener;

.field private mShutterBurstShot:Z

.field protected mShutterButton:Lcom/lge/camera/components/ShutterButton;

.field private mShutterButtonLongKey:Z

.field private mShutterButtonRunnable:Ljava/lang/Runnable;

.field private mShutterFocusLongKey:Z

.field private mSliding:Z

.field private mSnapshotOnContinuousFocus:Z

.field private mSnapshotOnIdle:Z

.field protected mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;

.field protected mSubButtonMiddle:Lcom/lge/camera/components/RotateImageButton;

.field protected mSubButtonTop:Lcom/lge/camera/components/RotateImageButton;

.field protected mSubTouchButtonBottom:Landroid/widget/ImageView;

.field protected mSubTouchButtonMiddle:Landroid/widget/ImageView;

.field protected mSubTouchButtonTop:Landroid/widget/ImageView;

.field protected mSwitcher:Lcom/lge/camera/components/Switcher;

.field protected mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

.field private mThumbController:Lcom/lge/camera/components/ThumbnailController;

.field private mThumbImage:Landroid/graphics/Bitmap;

.field private mThumbParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mThumbUri:Landroid/net/Uri;

.field private mThumbnailLock:Ljava/lang/Object;

.field private mThumbnailThread:Ljava/lang/Thread;

.field private mTrashView:Lcom/lge/camera/components/RotateImageButton;

.field private mainBarAlpha_value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1879
    const/16 v0, 0x3e8

    sput v0, Lcom/lge/camera/controller/PreviewPanelController;->PAUSE_RESUME_CHECK_DURATION:I

    return-void
.end method

.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 5
    .parameter "function"

    .prologue
    const/16 v1, 0xff

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 142
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/Controller;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 90
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    .line 91
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcher:Lcom/lge/camera/components/Switcher;

    .line 92
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    .line 93
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonTop:Lcom/lge/camera/components/RotateImageButton;

    .line 94
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonMiddle:Lcom/lge/camera/components/RotateImageButton;

    .line 95
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;

    .line 97
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubTouchButtonTop:Landroid/widget/ImageView;

    .line 98
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubTouchButtonMiddle:Landroid/widget/ImageView;

    .line 99
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubTouchButtonBottom:Landroid/widget/ImageView;

    .line 102
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbnailThread:Ljava/lang/Thread;

    .line 103
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mDeleteThumbnailThread:Ljava/lang/Thread;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mHashMap:Ljava/util/HashMap;

    .line 122
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    .line 130
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    .line 131
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    .line 133
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    .line 134
    iput v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mainBarAlpha_value:I

    .line 135
    iput v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mAlpha_value:I

    .line 136
    iput-boolean v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSnapshotOnIdle:Z

    .line 137
    iput-boolean v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSnapshotOnContinuousFocus:Z

    .line 138
    iput-boolean v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mProcessInitDone:Z

    .line 139
    iput v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->NAVI_MARGIN:I

    .line 1133
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbnailLock:Ljava/lang/Object;

    .line 1501
    new-instance v0, Lcom/lge/camera/controller/PreviewPanelController$4;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/PreviewPanelController$4;-><init>(Lcom/lge/camera/controller/PreviewPanelController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mDoSnapRunnable:Ljava/lang/Runnable;

    .line 1878
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mPrevTime:J

    .line 1946
    iput-boolean v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->checkAreaOnTouch:Z

    .line 2077
    iput-boolean v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGalleryLaunching:Z

    .line 2085
    new-instance v0, Lcom/lge/camera/controller/PreviewPanelController$5;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/PreviewPanelController$5;-><init>(Lcom/lge/camera/controller/PreviewPanelController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mReviewThumbnailClickListener:Landroid/view/View$OnClickListener;

    .line 2091
    new-instance v0, Lcom/lge/camera/controller/PreviewPanelController$6;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/PreviewPanelController$6;-><init>(Lcom/lge/camera/controller/PreviewPanelController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mReviewThumbnailLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 2100
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mTrashView:Lcom/lge/camera/components/RotateImageButton;

    .line 2101
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastGalleryImage:Landroid/widget/ImageView;

    .line 2102
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbLayout:Landroid/view/View;

    .line 2103
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbImage:Lcom/lge/camera/components/RotateImageView;

    .line 2104
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 2106
    new-instance v0, Lcom/lge/camera/controller/PreviewPanelController$7;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/PreviewPanelController$7;-><init>(Lcom/lge/camera/controller/PreviewPanelController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mReviewThumbnailTouchListener:Landroid/view/View$OnTouchListener;

    .line 2323
    iput-boolean v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mAutoReviewBlockTouch:Z

    .line 2410
    new-instance v0, Lcom/lge/camera/controller/PreviewPanelController$9;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/PreviewPanelController$9;-><init>(Lcom/lge/camera/controller/PreviewPanelController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mHideQuickViewRunable:Ljava/lang/Runnable;

    .line 2513
    iput v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGalleryWindowAniState:I

    .line 2932
    iput-boolean v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButtonLongKey:Z

    .line 2933
    iput-boolean v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterFocusLongKey:Z

    .line 2934
    iput-boolean v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterBurstShot:Z

    .line 2953
    new-instance v0, Lcom/lge/camera/controller/PreviewPanelController$14;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/PreviewPanelController$14;-><init>(Lcom/lge/camera/controller/PreviewPanelController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButtonRunnable:Ljava/lang/Runnable;

    .line 3199
    iput-boolean v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSliding:Z

    .line 143
    invoke-direct {p0, v4}, Lcom/lge/camera/controller/PreviewPanelController;->setLockConditionForMainButton(Z)V

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lge/camera/controller/PreviewPanelController;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/PreviewPanelController;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbnailLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lge/camera/controller/PreviewPanelController;FF)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/controller/PreviewPanelController;->checkTrashLocation(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/lge/camera/controller/PreviewPanelController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGalleryWindowAniState:I

    return v0
.end method

.method static synthetic access$1102(Lcom/lge/camera/controller/PreviewPanelController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput p1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGalleryWindowAniState:I

    return p1
.end method

.method static synthetic access$1200(Lcom/lge/camera/controller/PreviewPanelController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/lge/camera/controller/PreviewPanelController;->deleteImageAndUpdateThumbnail()V

    return-void
.end method

.method static synthetic access$1300(Lcom/lge/camera/controller/PreviewPanelController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/lge/camera/controller/PreviewPanelController;->galleryWindowViewClose()V

    return-void
.end method

.method static synthetic access$1402(Lcom/lge/camera/controller/PreviewPanelController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSliding:Z

    return p1
.end method

.method static synthetic access$200(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$202(Lcom/lge/camera/controller/PreviewPanelController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/lge/camera/controller/PreviewPanelController;)Lcom/lge/camera/components/ThumbnailController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/camera/controller/PreviewPanelController;Landroid/view/View;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/controller/PreviewPanelController;->reviewThumbnailDoClickAction(Landroid/view/View;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/lge/camera/controller/PreviewPanelController;)Lcom/lge/camera/components/RotateImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mTrashView:Lcom/lge/camera/components/RotateImageButton;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastGalleryImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lge/camera/controller/PreviewPanelController;)Lcom/lge/camera/components/RotateImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbImage:Lcom/lge/camera/components/RotateImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbParams:Landroid/widget/RelativeLayout$LayoutParams;

    return-object v0
.end method

.method private checkAfOnCafContition()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 3313
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->checkMediator()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "face_tracking"

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_focus"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "manual"

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_focus"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSnapshotOnContinuousFocus:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButtonLongKey:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterFocusLongKey:Z

    if-nez v1, :cond_0

    .line 3325
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkAvailableCountForShutterButtonFocus(Z)Z
    .locals 6
    .parameter "pressed"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1485
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1498
    :cond_0
    :goto_0
    return v0

    .line 1489
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getAvailablePictureCount()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 1490
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.ReleaseTouchFocus"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 1491
    if-eqz p1, :cond_0

    .line 1492
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v1}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    .line 1493
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v1, v0}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    .line 1494
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->showOsd()V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1498
    goto :goto_0
.end method

.method private checkFocusStateForShutterButtonClick(Lcom/lge/camera/components/ShutterButton;)Z
    .locals 6
    .parameter "button"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1608
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isContinuousFocusActivating()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAFonCAF()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButtonLongKey:Z

    if-nez v2, :cond_1

    .line 1612
    invoke-virtual {p1, v1}, Lcom/lge/camera/components/ShutterButton;->setPressed(Z)V

    .line 1613
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f090148

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1614
    const-string v2, "CameraApp"

    const-string v3, "mSnapshotOnContinuousFocus = true"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1615
    iput-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSnapshotOnContinuousFocus:Z

    .line 1616
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    iget-boolean v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSnapshotOnContinuousFocus:Z

    if-nez v3, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/lge/camera/components/ShutterButton;->setShutterButtonFocusEnable(Z)V

    .line 1630
    :goto_1
    return v1

    :cond_0
    move v0, v1

    .line 1616
    goto :goto_0

    .line 1620
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAFonCAF()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/lge/camera/controller/PreviewPanelController;->checkAfOnCafContition()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getAvailablePictureCount()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3

    .line 1624
    const-string v2, "CameraApp"

    const-string v3, "mSnapshotOnContinuousFocus = true"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1625
    iput-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSnapshotOnContinuousFocus:Z

    .line 1626
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    iget-boolean v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSnapshotOnContinuousFocus:Z

    if-nez v3, :cond_2

    :goto_2
    invoke-virtual {v2, v0}, Lcom/lge/camera/components/ShutterButton;->setShutterButtonFocusEnable(Z)V

    .line 1627
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->doFocusOnCaf()V

    goto :goto_1

    :cond_2
    move v0, v1

    .line 1626
    goto :goto_2

    :cond_3
    move v1, v0

    .line 1630
    goto :goto_1
.end method

.method private checkForShutterButton(Lcom/lge/camera/components/ShutterButton;ZZ)Z
    .locals 5
    .parameter "button"
    .parameter "useClick"
    .parameter "pressed"

    .prologue
    const v4, 0x7f090148

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1633
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->checkMediator()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1634
    const-string v1, "CameraApp"

    const-string v2, "return by !checkMediator()"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1677
    :goto_0
    return v0

    .line 1637
    :cond_0
    if-nez p2, :cond_1

    .line 1638
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.ReleaseTouchFocus"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 1639
    if-nez p3, :cond_1

    .line 1640
    const-string v2, "CameraApp"

    const-string v3, "stopTimerTask"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->stopTimerTask()V

    .line 1642
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->releaseShutterFocus()V

    .line 1643
    invoke-virtual {p1, v0}, Lcom/lge/camera/components/ShutterButton;->setPressed(Z)V

    .line 1644
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1647
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isPreviewing()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getInCaptureProgress()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getDialogID()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mAutoReviewBlockTouch:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isEnteringViewShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1652
    :cond_3
    const-string v1, "CameraApp"

    const-string v2, "onShutterButtonClick return."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1656
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isOptionMenuShowing()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1657
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->hideOptionMenu()V

    .line 1660
    :cond_5
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getEnableInput()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->isShutterButtonEnable()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v2}, Lcom/lge/camera/components/ShutterButton;->getVisibility()I

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getStatus()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    .line 1664
    :cond_6
    if-eqz p2, :cond_7

    iget-boolean v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButtonLongKey:Z

    if-eqz v2, :cond_8

    :cond_7
    if-nez p2, :cond_a

    if-eqz p3, :cond_a

    .line 1666
    :cond_8
    invoke-virtual {p1, v0}, Lcom/lge/camera/components/ShutterButton;->setPressed(Z)V

    .line 1667
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1674
    :cond_9
    :goto_1
    const-string v1, "CameraApp"

    const-string v2, "return by enable false"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1668
    :cond_a
    if-nez p2, :cond_9

    if-nez p3, :cond_9

    .line 1669
    iget v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGalleryWindowAniState:I

    if-eqz v2, :cond_9

    .line 1670
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v1}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    .line 1671
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v1, v0}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    goto :goto_1

    :cond_b
    move v0, v1

    .line 1677
    goto/16 :goto_0
.end method

.method private checkLockConditionForMainButton()Z
    .locals 7

    .prologue
    .line 377
    const/4 v2, 0x0

    .line 380
    .local v2, result:Z
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 382
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 383
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 384
    .local v1, keyItem:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 385
    const-string v3, "CameraApp"

    const-string v4, "Locked by key:%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const/4 v2, 0x1

    .line 391
    .end local v1           #keyItem:Ljava/lang/String;
    :cond_1
    return v2
.end method

.method private checkOutRange(Landroid/view/View;IFF)Z
    .locals 5
    .parameter "v"
    .parameter "index"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x1

    .line 1933
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "x = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / y = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1934
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mReleaseArea:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;

    .line 1935
    .local v0, releaseArea:Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;
    iget v2, v0, Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;->mTop:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v2, p4, v2

    if-ltz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, v0, Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;->mBottom:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, p4, v2

    if-lez v2, :cond_1

    .line 1943
    :cond_0
    :goto_0
    return v1

    .line 1939
    :cond_1
    iget v2, v0, Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;->mLeft:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v2, p3, v2

    if-ltz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, v0, Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;->mRight:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, p3, v2

    if-gtz v2, :cond_0

    .line 1943
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkRecordingPauseAndResumePressTime()Z
    .locals 6

    .prologue
    .line 1881
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1882
    .local v0, now:J
    iget-wide v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mPrevTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 1883
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time is somthing wrong! now = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mPrevTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mPrevTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1884
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mPrevTime:J

    .line 1886
    :cond_0
    iget-wide v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mPrevTime:J

    sub-long v2, v0, v2

    sget v4, Lcom/lge/camera/controller/PreviewPanelController;->PAUSE_RESUME_CHECK_DURATION:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 1887
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mPrevTime:J

    .line 1888
    const/4 v2, 0x1

    .line 1890
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkShotModeForShutterButtonClick(Lcom/lge/camera/components/ShutterButton;)Z
    .locals 6
    .parameter "button"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1565
    const-string v2, "shotmode_front_beauty"

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_shot_mode"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isCompleteProcessFrame()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isDualCameraActive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1605
    :cond_0
    :goto_0
    return v0

    .line 1571
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_full_continuous"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1572
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getAvailablePictureCount()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 1573
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->clearFocusState()V

    .line 1574
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v1}, Lcom/lge/camera/ControllerFunction;->checkStorage(Z)V

    goto :goto_0

    .line 1579
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->checkCurrentShotModeForModule()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1583
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getInCaptureProgress()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1584
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_panorama"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isPanoramaStarted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1586
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->stopPanorama()V

    .line 1587
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v0}, Lcom/lge/camera/ControllerFunction;->playRecordingSound(Z)V

    goto :goto_0

    .line 1591
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_free_panorama"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getFreePanoramaStatus()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 1593
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->stopFreePanorama()V

    goto :goto_0

    .line 1597
    :cond_4
    iget-boolean v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButtonLongKey:Z

    if-nez v2, :cond_0

    .line 1598
    invoke-virtual {p1, v0}, Lcom/lge/camera/components/ShutterButton;->setPressed(Z)V

    .line 1599
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f090148

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1600
    const-string v2, "CameraApp"

    const-string v3, "mSnapshotOnIdle = true"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1601
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSnapshotOnIdle:Z

    goto/16 :goto_0

    :cond_5
    move v0, v1

    .line 1605
    goto/16 :goto_0
.end method

.method private checkTrashLocation(FF)Z
    .locals 8
    .parameter "inputX"
    .parameter "inputY"

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2247
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewPanelController;->mTrashView:Lcom/lge/camera/components/RotateImageButton;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    if-nez v6, :cond_2

    :cond_0
    move v4, v5

    .line 2267
    :cond_1
    :goto_0
    return v4

    .line 2251
    :cond_2
    new-array v0, v7, [I

    .line 2252
    .local v0, startPos:[I
    new-array v2, v7, [I

    .line 2254
    .local v2, trashPos:[I
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v6, v0}, Lcom/lge/camera/components/RotateImageView;->getLocationOnScreen([I)V

    .line 2255
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewPanelController;->mTrashView:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v6, v2}, Lcom/lge/camera/components/RotateImageButton;->getLocationOnScreen([I)V

    .line 2257
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewPanelController;->mTrashView:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v6}, Lcom/lge/camera/components/RotateImageButton;->getMeasuredWidth()I

    move-result v6

    int-to-float v3, v6

    .line 2258
    .local v3, trashWidth:F
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewPanelController;->mTrashView:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v6}, Lcom/lge/camera/components/RotateImageButton;->getMeasuredHeight()I

    move-result v6

    int-to-float v1, v6

    .line 2260
    .local v1, trashHeight:F
    aget v6, v0, v5

    int-to-float v6, v6

    add-float/2addr v6, p1

    aget v7, v2, v5

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_3

    aget v6, v0, v5

    int-to-float v6, v6

    add-float/2addr v6, p1

    aget v7, v2, v5

    int-to-float v7, v7

    add-float/2addr v7, v3

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_3

    aget v6, v0, v4

    int-to-float v6, v6

    add-float/2addr v6, p2

    aget v7, v2, v4

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_3

    aget v6, v0, v4

    int-to-float v6, v6

    add-float/2addr v6, p2

    aget v7, v2, v4

    int-to-float v7, v7

    add-float/2addr v7, v1

    cmpg-float v6, v6, v7

    if-lez v6, :cond_1

    :cond_3
    move v4, v5

    .line 2267
    goto :goto_0
.end method

.method private clearSettingMenuAndSubMenuForReviewButton()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1914
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    .line 1916
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 1917
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.RemoveSettingMenu"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 1930
    :cond_1
    :goto_0
    return-void

    .line 1919
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_3

    .line 1920
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 1921
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.HideQuickFunctionDragDrop"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto :goto_0

    .line 1923
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    const/16 v1, 0x15

    if-ne v0, v1, :cond_4

    .line 1924
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 1925
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.HideQuickFunctionSettingMenu"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto :goto_0

    .line 1927
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1928
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->clearSubMenu()V

    goto :goto_0
.end method

.method private deleteImageAndUpdateThumbnail()V
    .locals 1

    .prologue
    .line 2635
    invoke-direct {p0}, Lcom/lge/camera/controller/PreviewPanelController;->galleryWindowViewClose()V

    .line 2636
    new-instance v0, Lcom/lge/camera/controller/PreviewPanelController$13;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/PreviewPanelController$13;-><init>(Lcom/lge/camera/controller/PreviewPanelController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mDeleteThumbnailThread:Ljava/lang/Thread;

    .line 2692
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mDeleteThumbnailThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2693
    return-void
.end method

.method private doCamcorderShutterButtonClick(Lcom/lge/camera/components/ShutterButton;)V
    .locals 7
    .parameter "button"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1767
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->clearSettingMenuAndSubMenu()V

    .line 1769
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1876
    :cond_0
    :goto_0
    return-void

    .line 1771
    :pswitch_0
    const-string v1, "CameraApp"

    const-string v2, "VideoState = VIDEO_STATE_IDLE"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1772
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/camera/util/TelephonyUtil;->phoneInCall(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1773
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0b0196

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->toast(I)V

    goto :goto_0

    .line 1776
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isUHDmode()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isAfterRecordingThreadAlive()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->isThumbmailThreadAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1782
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v5}, Lcom/lge/camera/ControllerFunction;->setVideoState(I)V

    .line 1783
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v6, v5}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionAllMenuEnabled(ZZ)V

    .line 1785
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isDualRecordingActive()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isSmartZoomRecordingActive()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1786
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->restoreSubWindow()V

    .line 1787
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.HidePIPResizeHandler"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 1790
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isAttachMode()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getRequestedVideoSizeLimit()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5

    .line 1793
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_preview_size_on_device"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1797
    .local v0, videoResolution:Ljava/lang/String;
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/properties/MmsProperties;->getAttachVideoMinimumSize(Ljava/lang/String;Landroid/content/ContentResolver;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getRequestedVideoSizeLimit()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_5

    .line 1800
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#########  aileen minRequireSpace : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/lge/camera/properties/MmsProperties;->getAttachVideoMinimumSize(Ljava/lang/String;Landroid/content/ContentResolver;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "getRequestedVideoSizeLimit : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getRequestedVideoSizeLimit()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1805
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0b023f

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->toast(I)V

    .line 1806
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v6}, Lcom/lge/camera/ControllerFunction;->setVideoState(I)V

    .line 1807
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v6}, Lcom/lge/camera/ControllerFunction;->setQuickButtonForcedDisable(Z)V

    .line 1808
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v6}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionMenuForcedDisable(Z)V

    .line 1809
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v5}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    .line 1810
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v5, v5}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    goto/16 :goto_0

    .line 1815
    .end local v0           #videoResolution:Ljava/lang/String;
    :cond_5
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Here is shutterclick : storage is = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getStorageState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1817
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getStorageState()I

    move-result v1

    if-eqz v1, :cond_6

    .line 1818
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getStorageState()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->showStorageHint(I)V

    .line 1819
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v6}, Lcom/lge/camera/ControllerFunction;->setVideoState(I)V

    .line 1820
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v6}, Lcom/lge/camera/ControllerFunction;->setQuickButtonForcedDisable(Z)V

    .line 1821
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v6}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionMenuForcedDisable(Z)V

    .line 1822
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v5}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    .line 1823
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v5, v5}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    goto/16 :goto_0

    .line 1827
    :cond_6
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.StartRecording"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 1829
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1830
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v5}, Lcom/lge/camera/ControllerFunction;->setVideoFlash(Z)V

    .line 1833
    :cond_7
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5, v6}, Lcom/lge/camera/util/AudioUtil;->setAudioFocus(Landroid/content/Context;ZZ)V

    .line 1834
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v5}, Lcom/lge/camera/ControllerFunction;->playRecordingSound(Z)V

    .line 1835
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/AppControlUtil;->BlockAlarmInRecording(Landroid/app/Activity;I)V

    .line 1837
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.StartRecording"

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getStartRecordingSoundDelay()I

    move-result v3

    int-to-long v3, v3

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1841
    :pswitch_1
    const-string v1, "CameraApp"

    const-string v2, "VIDEO_STATE_RECORDING"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1842
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isPauseAndResumeSupported()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1843
    invoke-direct {p0}, Lcom/lge/camera/controller/PreviewPanelController;->checkRecordingPauseAndResumePressTime()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isAvailableResumeVideo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1845
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isRecordedLengthTooShort()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1846
    const-string v1, "CameraApp"

    const-string v2, "Ignore stop recording request. It\'s too short."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1848
    :cond_8
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.PauseRecording"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1852
    :cond_9
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isRecordedLengthTooShort()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1853
    const-string v1, "CameraApp"

    const-string v2, "Ignore stop recording request. It\'s too short."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1855
    :cond_a
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.StopRecording"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1861
    :pswitch_2
    const-string v1, "CameraApp"

    const-string v2, "VIDEO_STATE_PAUSE"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1862
    invoke-direct {p0}, Lcom/lge/camera/controller/PreviewPanelController;->checkRecordingPauseAndResumePressTime()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1863
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.ResumeRecording"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1869
    :pswitch_3
    const-string v1, "CameraApp"

    const-string v2, "VIDEO_STATE_NO_REACTION"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1769
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private doCameraShutterButtonClick(Lcom/lge/camera/components/ShutterButton;)V
    .locals 9
    .parameter "button"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1681
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v6}, Lcom/lge/camera/ControllerFunction;->setShutterButtonClicked(Z)V

    .line 1682
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getAvailablePictureCount()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 1683
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->clearFocusState()V

    .line 1684
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v6}, Lcom/lge/camera/ControllerFunction;->checkStorage(Z)V

    .line 1686
    iget-boolean v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButtonLongKey:Z

    if-eqz v2, :cond_0

    .line 1687
    invoke-virtual {p0, p1, v7}, Lcom/lge/camera/controller/PreviewPanelController;->onShutterButtonFocus(Lcom/lge/camera/components/ShutterButton;Z)V

    .line 1689
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->audioCallbackRestartEngine()V

    .line 1763
    :goto_0
    return-void

    .line 1693
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1694
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v6}, Lcom/lge/camera/ControllerFunction;->checkAutoReviewOff(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1695
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->clearSubMenu()V

    .line 1701
    :cond_2
    :goto_1
    const-string v2, "0"

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_timer"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isTimerShotCountdown()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1703
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->audioCallbackRestartEngine()V

    goto :goto_0

    .line 1697
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->clearScreen()V

    goto :goto_1

    .line 1707
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v6}, Lcom/lge/camera/ControllerFunction;->checkAutoReviewOff(Z)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1711
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v7, v6}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionAllMenuEnabled(ZZ)V

    .line 1712
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v7, v6}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    .line 1718
    :goto_2
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isDualCameraActive()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1719
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->restoreSubWindow()V

    .line 1720
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.HidePIPResizeHandler"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 1723
    :cond_5
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_flash"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1724
    .local v0, flashMode:Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportGuideFlash()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "on"

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_smart_mode"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1727
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getIAFlashStatus()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v2

    if-eq v2, v6, :cond_6

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v2

    if-eq v2, v8, :cond_6

    .line 1730
    const-string v2, "CameraApp"

    const-string v3, "doFocus IA mode: Flash on or auto"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1731
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->cancelAutoFocus()V

    .line 1732
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v6}, Lcom/lge/camera/ControllerFunction;->doFocus(Z)V

    .line 1761
    :cond_6
    :goto_3
    invoke-virtual {p0, v7}, Lcom/lge/camera/controller/PreviewPanelController;->setShutterFocusLongKey(Z)V

    .line 1762
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.DoCapture"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1714
    .end local v0           #flashMode:Ljava/lang/String;
    :cond_7
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v7, v6}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionAllMenuEnabled(ZZ)V

    .line 1715
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v7, v6}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    goto :goto_2

    .line 1734
    .restart local v0       #flashMode:Ljava/lang/String;
    :cond_8
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportGuideFlash()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "off"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "not found"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "manual"

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_focus"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "0"

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_timer"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v2

    if-eq v2, v6, :cond_6

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v2

    if-eq v2, v8, :cond_6

    .line 1744
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isRenesasISP()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "auto"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1746
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1747
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 1748
    .local v1, parameters:Landroid/hardware/Camera$Parameters;
    const-string v2, "1"

    const-string v3, "is-lowlight"

    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1749
    const-string v2, "CameraApp"

    const-string v3, "doFocus : Flash auto and is-lowlight = 1"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1750
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->cancelAutoFocus()V

    .line 1751
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v6}, Lcom/lge/camera/ControllerFunction;->doFocus(Z)V

    goto/16 :goto_3

    .line 1755
    .end local v1           #parameters:Landroid/hardware/Camera$Parameters;
    :cond_9
    const-string v2, "CameraApp"

    const-string v3, "doFocus : Flash on or auto"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1756
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->cancelAutoFocus()V

    .line 1757
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v6}, Lcom/lge/camera/ControllerFunction;->doFocus(Z)V

    goto/16 :goto_3
.end method

.method private doTouchActionDown(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 1978
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1999
    :goto_0
    return v2

    .line 1980
    :sswitch_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonTop:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0}, Lcom/lge/camera/components/RotateImageButton;->getBackgroundResource()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1985
    const-string v0, "CameraApp"

    const-string v1, "press no button"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1982
    :pswitch_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonTop:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageButton;->setPressed(Z)V

    goto :goto_0

    .line 1990
    :sswitch_1
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0}, Lcom/lge/camera/components/RotateImageButton;->getBackgroundResource()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 1993
    :sswitch_2
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageButton;->setPressed(Z)V

    goto :goto_0

    .line 1978
    :sswitch_data_0
    .sparse-switch
        0x7f09014c -> :sswitch_0
        0x7f090150 -> :sswitch_1
    .end sparse-switch

    .line 1980
    :pswitch_data_0
    .packed-switch 0x7f02043a
        :pswitch_0
    .end packed-switch

    .line 1990
    :sswitch_data_1
    .sparse-switch
        0x7f02044c -> :sswitch_2
        0x7f020453 -> :sswitch_2
    .end sparse-switch
.end method

.method private doTouchActionMove(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2003
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->checkAreaOnTouch:Z

    if-nez v0, :cond_1

    .line 2033
    :cond_0
    :goto_0
    return v4

    .line 2007
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 2009
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, p1, v3, v0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->checkOutRange(Landroid/view/View;IFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2012
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonTop:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0}, Lcom/lge/camera/components/RotateImageButton;->getBackgroundResource()I

    move-result v0

    const v1, 0x7f02043a

    if-ne v0, v1, :cond_0

    .line 2013
    const-string v0, "CameraApp"

    const-string v1, "out range!!!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2014
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonTop:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageButton;->setPressed(Z)V

    .line 2015
    iput-boolean v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->checkAreaOnTouch:Z

    goto :goto_0

    .line 2020
    :sswitch_1
    const/4 v0, 0x2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/lge/camera/controller/PreviewPanelController;->checkOutRange(Landroid/view/View;IFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2024
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0}, Lcom/lge/camera/components/RotateImageButton;->getBackgroundResource()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 2027
    :sswitch_2
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageButton;->setPressed(Z)V

    .line 2028
    iput-boolean v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->checkAreaOnTouch:Z

    goto :goto_0

    .line 2007
    :sswitch_data_0
    .sparse-switch
        0x7f09014c -> :sswitch_0
        0x7f090150 -> :sswitch_1
    .end sparse-switch

    .line 2024
    :sswitch_data_1
    .sparse-switch
        0x7f02044c -> :sswitch_2
        0x7f020453 -> :sswitch_2
    .end sparse-switch
.end method

.method private doTouchActionUp(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2037
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->checkAreaOnTouch:Z

    if-nez v0, :cond_0

    .line 2038
    iput-boolean v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->checkAreaOnTouch:Z

    .line 2074
    :goto_0
    return v3

    .line 2041
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 2043
    :sswitch_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonTop:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0}, Lcom/lge/camera/components/RotateImageButton;->getBackgroundResource()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2045
    :pswitch_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonTop:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageButton;->setPressed(Z)V

    .line 2046
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.TakePictureInRecording"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 2051
    :sswitch_1
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0}, Lcom/lge/camera/components/RotateImageButton;->getBackgroundResource()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 2058
    :sswitch_2
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageButton;->setPressed(Z)V

    .line 2059
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 2061
    :cond_1
    const-string v0, "CameraApp"

    const-string v1, "VIDEO_STATE_RECORDING"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2062
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isRecordedLengthTooShort()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2063
    const-string v0, "CameraApp"

    const-string v1, "Ignore stop recording request. It\'s too short."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2069
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonContentDescription()V

    goto :goto_0

    .line 2053
    :sswitch_3
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageButton;->setPressed(Z)V

    .line 2054
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageButton;->playSoundEffect(I)V

    .line 2055
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.ResetFreePanorama"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 2065
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->clearSettingMenuAndSubMenu()V

    .line 2066
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.StopRecording"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto :goto_1

    .line 2041
    :sswitch_data_0
    .sparse-switch
        0x7f09014c -> :sswitch_0
        0x7f090150 -> :sswitch_1
    .end sparse-switch

    .line 2043
    :pswitch_data_0
    .packed-switch 0x7f02043a
        :pswitch_0
    .end packed-switch

    .line 2051
    :sswitch_data_1
    .sparse-switch
        0x7f02044c -> :sswitch_2
        0x7f020453 -> :sswitch_3
    .end sparse-switch
.end method

.method private galleryWindowViewClose()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 2696
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f09009d

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2697
    .local v2, galleryWindowViewImage:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 2698
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2700
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f09009a

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2701
    .local v1, galleryWindowView:Landroid/view/View;
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2703
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f09009b

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2704
    .local v0, blackCover:Landroid/view/View;
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2706
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f09009e

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 2707
    .local v3, lastGalleryImage:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/lge/camera/util/Util;->clearImageViewDrawableOnly(Landroid/widget/ImageView;)V

    .line 2708
    iput v8, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGalleryWindowAniState:I

    .line 2709
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v9}, Lcom/lge/camera/ControllerFunction;->enableInput(Z)V

    .line 2711
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    if-eqz v5, :cond_0

    .line 2712
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v5, v8}, Lcom/lge/camera/components/RotateImageView;->setPressed(Z)V

    .line 2715
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2716
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_camera_shot_mode"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2717
    .local v4, shotMode:Ljava/lang/String;
    const-string v5, "shotmode_front_beauty"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "shotmode_main_beauty"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2719
    :cond_1
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v9}, Lcom/lge/camera/ControllerFunction;->showBeautyshotController(Z)V

    .line 2722
    .end local v4           #shotMode:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private getLastVideoThumbnail(Ljava/lang/String;)Landroid/net/Uri;
    .locals 12
    .parameter "bucketId"

    .prologue
    .line 1036
    sget-object v6, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1038
    .local v6, baseUri:Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "limit"

    const-string v11, "1"

    invoke-virtual {v0, v4, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1039
    .local v1, query:Landroid/net/Uri;
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "_data"

    aput-object v4, v2, v0

    const/4 v0, 0x2

    const-string v4, "datetaken"

    aput-object v4, v2, v0

    .line 1040
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bucket_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1041
    .local v3, selection:Ljava/lang/String;
    const-string v5, "datetaken DESC,_id DESC"

    .line 1043
    .local v5, order:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1044
    .local v7, cursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->checkActivity()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1045
    const/4 v0, 0x0

    .line 1065
    :cond_0
    :goto_0
    return-object v0

    .line 1048
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1049
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1050
    const-string v0, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getLastVideoThumbnail: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v11, 0x1

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1053
    .local v9, id:J
    invoke-static {v6, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1060
    if-eqz v7, :cond_0

    .line 1061
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1062
    const/4 v7, 0x0

    goto :goto_0

    .line 1060
    .end local v9           #id:J
    :cond_2
    if-eqz v7, :cond_3

    .line 1061
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1062
    const/4 v7, 0x0

    .line 1065
    :cond_3
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1055
    :catch_0
    move-exception v8

    .line 1056
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "CameraApp"

    const-string v4, "cursor error "

    invoke-static {v0, v4, v8}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1060
    if-eqz v7, :cond_3

    .line 1061
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1062
    const/4 v7, 0x0

    goto :goto_1

    .line 1057
    .end local v8           #e:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v8

    .line 1058
    .local v8, e:Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v0, "CameraApp"

    const-string v4, "cursor error "

    invoke-static {v0, v4, v8}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1060
    if-eqz v7, :cond_3

    .line 1061
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1062
    const/4 v7, 0x0

    goto :goto_1

    .line 1060
    .end local v8           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 1061
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1062
    const/4 v7, 0x0

    :cond_4
    throw v0
.end method

.method private isLockDuringMediaScanning()Z
    .locals 2

    .prologue
    .line 3134
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isMediaScanning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3135
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0b0075

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->toast(I)V

    .line 3136
    const/4 v0, 0x1

    .line 3138
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private reviewThumbnailDoClickAction(Landroid/view/View;Z)Z
    .locals 4
    .parameter "v"
    .parameter "longKey"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2272
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->checkMediator()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v2

    if-eq v2, v0, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButtonLongKey:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/lge/camera/controller/PreviewPanelController;->isLockDuringMediaScanning()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getInCaptureProgress()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getBeautyshotProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 2320
    :cond_1
    :goto_0
    return v0

    .line 2284
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_1
    move v0, v1

    .line 2320
    goto :goto_0

    .line 2286
    :pswitch_0
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isEnteringViewShowing()Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mAutoReviewBlockTouch:Z

    if-eqz v2, :cond_4

    :cond_3
    move v0, v1

    .line 2287
    goto :goto_0

    .line 2290
    :cond_4
    iget-boolean v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGalleryLaunching:Z

    if-nez v2, :cond_8

    .line 2291
    if-nez p2, :cond_7

    .line 2292
    invoke-static {}, Lcom/lge/camera/util/AppControlUtil;->isGuestMode()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/camera/util/AppControlUtil;->checkGalleryEnabledOnGuestMode(Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2298
    :cond_5
    const-string v2, "CameraApp"

    const-string v3, "goto gallery"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2299
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getTimeMachinePictures()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2300
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getQueueCount()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_6

    .line 2301
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v0}, Lcom/lge/camera/ControllerFunction;->setExitIgnoreDuringSaving(Z)V

    .line 2302
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->showSavingProgressDialog()V

    move v0, v1

    .line 2303
    goto :goto_0

    .line 2305
    :cond_6
    iput-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGalleryLaunching:Z

    .line 2306
    invoke-direct {p0}, Lcom/lge/camera/controller/PreviewPanelController;->galleryWindowViewClose()V

    .line 2307
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.ShowGallery"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 2313
    :cond_7
    const-string v1, "CameraApp"

    const-string v2, "Gallery key long key"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2314
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/camera/controller/PreviewPanelController;->showGalleryQuickViewWindow(ZJ)Z

    move-result v0

    goto :goto_0

    .line 2317
    :cond_8
    const-string v0, "CameraApp"

    const-string v2, "Gallery is launching already."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2284
    :pswitch_data_0
    .packed-switch 0x7f090159
        :pswitch_0
    .end packed-switch
.end method

.method private setCamcorderShutterButtonImage(ZI)I
    .locals 8
    .parameter "buttonEnable"
    .parameter "degree"

    .prologue
    const v7, 0x7f02043f

    const v6, 0x7f02004c

    const v5, 0x7f090149

    const/16 v4, 0x8

    const v3, 0x7f090148

    .line 498
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v1

    .line 499
    .local v1, videoState:I
    const/4 v0, 0x1

    .line 501
    .local v0, enable:Z
    if-eqz p1, :cond_7

    .line 502
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 503
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isPauseAndResumeSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 504
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f02043e

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 531
    :cond_0
    :goto_0
    invoke-direct {p0, p2, v0}, Lcom/lge/camera/controller/PreviewPanelController;->setShutterButtonBgOrientation(IZ)I

    move-result v2

    return v2

    .line 506
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f020442

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 508
    :cond_2
    if-eqz v1, :cond_3

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 509
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 510
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 511
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 513
    :cond_4
    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isPauseAndResumeSupported()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 514
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 515
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 516
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 519
    :cond_5
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 521
    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 522
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 525
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    .line 528
    :cond_7
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 529
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCameraShutterButtonImage(ZI)I
    .locals 8
    .parameter "buttonEnable"
    .parameter "degree"

    .prologue
    const/4 v7, 0x2

    const v6, 0x7f090147

    const v5, 0x7f020056

    const/4 v4, 0x1

    const v3, 0x7f090148

    .line 461
    if-eqz p1, :cond_7

    .line 462
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPanoramaUpdatebutton()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 463
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020442

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 494
    :cond_0
    :goto_0
    invoke-direct {p0, p2, v4}, Lcom/lge/camera/controller/PreviewPanelController;->setShutterButtonBgOrientation(IZ)I

    move-result v0

    return v0

    .line 464
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isSynthesisInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 465
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 466
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_free_panorama"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 467
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getFreePanoramaStatus()I

    move-result v0

    if-eq v0, v4, :cond_3

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getFreePanoramaStatus()I

    move-result v0

    if-eq v0, v7, :cond_3

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getFreePanoramaStatus()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 470
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 471
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v6}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 472
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getFreePanoramaStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 473
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020442

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 474
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v6}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 476
    :cond_5
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f02043d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 477
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v6}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    .line 480
    :cond_6
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f02043d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 483
    :cond_7
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_panorama"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 484
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPanoramaUpdatebutton()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isSynthesisInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    :cond_8
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 487
    :cond_9
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_free_panorama"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getFreePanoramaStatus()I

    move-result v0

    if-lt v0, v7, :cond_a

    .line 489
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 491
    :cond_a
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020053

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method private setGalleryWindowImage(Landroid/net/Uri;I)V
    .locals 13
    .parameter "uri"
    .parameter "degrees"

    .prologue
    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 2428
    const-string v8, "CameraApp"

    const-string v9, "Load captured image:%s, degrees:%d"

    new-array v10, v10, [Ljava/lang/Object;

    aput-object p1, v10, v11

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2430
    iget-object v8, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    if-nez v8, :cond_0

    .line 2507
    :goto_0
    return-void

    .line 2434
    :cond_0
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbnailLock:Ljava/lang/Object;

    monitor-enter v9

    .line 2435
    :try_start_0
    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v10, 0x7f09009e

    invoke-interface {v8, v10}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 2436
    .local v5, lastGalleryImage:Landroid/widget/ImageView;
    const/4 v6, 0x0

    .line 2437
    .local v6, resizeThumbBmp:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 2438
    .local v4, imageWidth:I
    const/4 v3, 0x0

    .line 2439
    .local v3, imageHeight:I
    const/4 v8, 0x2

    new-array v0, v8, [I

    .line 2441
    .local v0, dstSize:[I
    iget-object v8, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 2442
    iget-object v8, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 2443
    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v4, v3}, Lcom/lge/camera/util/Util;->getFitSizeOfBitmapForLCD(Landroid/app/Activity;II)[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2446
    :try_start_1
    iget-object v8, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_1

    .line 2447
    iget-object v8, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v11, 0x1

    invoke-virtual {v8, v10, v11}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 2448
    .local v7, thumbBmp:Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    aget v8, v0, v8

    const/4 v10, 0x1

    aget v10, v0, v10

    const/4 v11, 0x1

    invoke-static {v7, v8, v10, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2449
    invoke-static {v5}, Lcom/lge/camera/util/Util;->clearImageViewDrawable(Landroid/widget/ImageView;)V

    .line 2450
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2452
    if-eqz v7, :cond_1

    if-eqz v6, :cond_1

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v10

    if-eq v8, v10, :cond_1

    .line 2455
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2462
    .end local v7           #thumbBmp:Landroid/graphics/Bitmap;
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2464
    new-instance v2, Ljava/lang/Thread;

    new-instance v8, Lcom/lge/camera/controller/PreviewPanelController$10;

    invoke-direct {v8, p0, p1}, Lcom/lge/camera/controller/PreviewPanelController$10;-><init>(Lcom/lge/camera/controller/PreviewPanelController;Landroid/net/Uri;)V

    invoke-direct {v2, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2506
    .local v2, galleryQuickViewImageThread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 2459
    .end local v2           #galleryQuickViewImageThread:Ljava/lang/Thread;
    :catch_0
    move-exception v1

    .line 2460
    .local v1, e:Ljava/lang/Exception;
    :try_start_3
    const-string v8, "CameraApp"

    const-string v10, "setGalleryWindowImage exception : "

    invoke-static {v8, v10, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2462
    .end local v0           #dstSize:[I
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #imageHeight:I
    .end local v4           #imageWidth:I
    .end local v5           #lastGalleryImage:Landroid/widget/ImageView;
    .end local v6           #resizeThumbBmp:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8
.end method

.method private setLockConditionForMainButton(Z)V
    .locals 1
    .parameter "bSoundLock"

    .prologue
    .line 347
    const-string v0, "StorageControllerLockKey"

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewPanelController;->registerLockConditionForMainButton(Ljava/lang/String;)V

    .line 348
    if-eqz p1, :cond_0

    .line 349
    const-string v0, "SoundControllerLockKey"

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewPanelController;->registerLockConditionForMainButton(Ljava/lang/String;)V

    .line 351
    :cond_0
    return-void
.end method

.method private setMainButtonContentDescription()V
    .locals 4

    .prologue
    const v3, 0x7f0b0322

    .line 3278
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_1

    .line 3279
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0b0313

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/ShutterButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3292
    :cond_0
    :goto_0
    return-void

    .line 3281
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v0

    .line 3282
    .local v0, videoState:I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 3284
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0b0324

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/ShutterButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3285
    :cond_3
    if-eqz v0, :cond_4

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 3287
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/ShutterButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3288
    :cond_5
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 3289
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/ShutterButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setShutterButtonBgOrientation(IZ)I
    .locals 10
    .parameter "degree"
    .parameter "enable"

    .prologue
    const v9, 0x7f090147

    const/16 v8, 0x10e

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 535
    const v0, 0x7f02043b

    .line 536
    .local v0, bgResId:I
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v7, 0x7f090145

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/components/RotateLayout;

    .line 537
    .local v3, rl:Lcom/lge/camera/components/RotateLayout;
    if-nez v3, :cond_0

    .line 588
    :goto_0
    return v4

    .line 541
    :cond_0
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/lge/camera/util/Util;->convertDegree(Landroid/content/res/Resources;I)I

    move-result v1

    .line 542
    .local v1, convDegree:I
    rem-int/lit16 v6, v1, 0xb4

    if-nez v6, :cond_2

    move v2, v5

    .line 543
    .local v2, isHorizontal:Z
    :goto_1
    sparse-switch v1, :sswitch_data_0

    .line 564
    :goto_2
    if-eqz v2, :cond_6

    .line 565
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "on"

    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v7, "key_smart_mode"

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 567
    const v0, 0x7f020440

    .line 581
    :goto_3
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v4

    if-ne v4, v5, :cond_1

    if-nez p2, :cond_1

    .line 582
    if-eqz v2, :cond_8

    .line 583
    const v0, 0x7f02000b

    :cond_1
    :goto_4
    move v4, v0

    .line 588
    goto :goto_0

    .end local v2           #isHorizontal:Z
    :cond_2
    move v2, v4

    .line 542
    goto :goto_1

    .line 546
    .restart local v2       #isHorizontal:Z
    :sswitch_0
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 547
    invoke-virtual {v3, v4}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 551
    :goto_5
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6, v9, v4, v4}, Lcom/lge/camera/ControllerFunction;->setDegree(IIZ)V

    goto :goto_2

    .line 549
    :cond_3
    invoke-virtual {v3, v8}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    goto :goto_5

    .line 555
    :sswitch_1
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 556
    invoke-virtual {v3, v4}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 560
    :goto_6
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v7, 0xb4

    invoke-interface {v6, v9, v7, v4}, Lcom/lge/camera/ControllerFunction;->setDegree(IIZ)V

    goto :goto_2

    .line 558
    :cond_4
    invoke-virtual {v3, v8}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    goto :goto_6

    .line 569
    :cond_5
    const v0, 0x7f02043b

    goto :goto_3

    .line 573
    :cond_6
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "on"

    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v7, "key_smart_mode"

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 575
    const v0, 0x7f020441

    goto :goto_3

    .line 577
    :cond_7
    const v0, 0x7f02043c

    goto :goto_3

    .line 585
    :cond_8
    const v0, 0x7f020012

    goto :goto_4

    .line 543
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method private setSubButtonContentDescription(Landroid/view/View;I)V
    .locals 2
    .parameter "v"
    .parameter "resId"

    .prologue
    .line 3261
    sparse-switch p2, :sswitch_data_0

    .line 3275
    :goto_0
    return-void

    .line 3263
    :sswitch_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0b026e

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3266
    :sswitch_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0b0321

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3269
    :sswitch_2
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0b0323

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3261
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f02043a -> :sswitch_0
        0x7f02044c -> :sswitch_2
        0x7f020453 -> :sswitch_1
    .end sparse-switch
.end method

.method private setSubButtonVisibilityWithTouchBotton(II)V
    .locals 2
    .parameter "resId"
    .parameter "visibility"

    .prologue
    .line 3295
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 3296
    packed-switch p1, :pswitch_data_0

    .line 3310
    :goto_0
    :pswitch_0
    return-void

    .line 3298
    :pswitch_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f09014c

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3301
    :pswitch_2
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f09014e

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3304
    :pswitch_3
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f090150

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3296
    :pswitch_data_0
    .packed-switch 0x7f09014b
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public audioCallbackTakePicture()V
    .locals 5

    .prologue
    .line 3142
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isPreviewing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3146
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_front_beauty"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_main_beauty"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_4

    .line 3159
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isRotateDialogVisible()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isTimerShotCountdown()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3160
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->audioCallbackRestartEngine()V

    .line 3197
    :cond_3
    :goto_0
    return-void

    .line 3153
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v1

    if-eqz v1, :cond_1

    .line 3154
    const-string v1, "CameraApp"

    const-string v2, "onAudioRecogResultCallback-return : Submenu state is not off!!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3155
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->audioCallbackRestartEngine()V

    goto :goto_0

    .line 3164
    :cond_5
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getStorageState()I

    move-result v1

    if-eqz v1, :cond_7

    .line 3165
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getAvailablePictureCount()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-gez v1, :cond_6

    .line 3166
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->checkStorage(Z)V

    .line 3168
    :cond_6
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->audioCallbackRestartEngine()V

    goto :goto_0

    .line 3172
    :cond_7
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f090147

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/ShutterButton;

    .line 3173
    .local v0, button:Lcom/lge/camera/components/ShutterButton;
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/lge/camera/components/ShutterButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_8

    .line 3175
    const-string v1, "CameraApp"

    const-string v2, "sound recognize : take a picture!!!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3177
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v2, Lcom/lge/camera/controller/PreviewPanelController$16;

    invoke-direct {v2, p0}, Lcom/lge/camera/controller/PreviewPanelController$16;-><init>(Lcom/lge/camera/controller/PreviewPanelController;)V

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 3185
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v2, Lcom/lge/camera/controller/PreviewPanelController$17;

    invoke-direct {v2, p0, v0}, Lcom/lge/camera/controller/PreviewPanelController$17;-><init>(Lcom/lge/camera/controller/PreviewPanelController;Lcom/lge/camera/components/ShutterButton;)V

    const-wide/16 v3, 0x190

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 3194
    :cond_8
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->audioCallbackRestartEngine()V

    goto :goto_0
.end method

.method public clearSettingMenuAndSubMenu()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1895
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1897
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    .line 1899
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v3}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 1900
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1901
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "showAll"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1902
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.RemoveSettingMenu"

    invoke-interface {v1, v2, v0}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1911
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_1
    :goto_0
    return-void

    .line 1903
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1904
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_video_record_mode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1905
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->restoreLiveEffectSubMenu()V

    .line 1907
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->clearQuickFunctionSubMenu()V

    .line 1908
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->clearSubMenu()V

    goto :goto_0
.end method

.method public closeGalleryQuickView(Z)V
    .locals 3
    .parameter "deleteImage"

    .prologue
    const/4 v2, 0x0

    .line 2217
    if-nez p1, :cond_0

    .line 2218
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mTrashView:Lcom/lge/camera/components/RotateImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastGalleryImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 2219
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mTrashView:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageButton;->setPressed(Z)V

    .line 2220
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mTrashView:Lcom/lge/camera/components/RotateImageButton;

    const v1, 0x7f0200e6

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageButton;->setImageResource(I)V

    .line 2221
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastGalleryImage:Landroid/widget/ImageView;

    const v1, 0x7f0200e4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2224
    :cond_0
    invoke-virtual {p0, v2, p1}, Lcom/lge/camera/controller/PreviewPanelController;->showGalleryQuickViewAnimation(ZZ)V

    .line 2225
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->reviewThumbnailTouchActionUp()V

    .line 2226
    return-void
.end method

.method public doCameraShutterButtonFocus(Z)V
    .locals 6
    .parameter "pressed"

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1406
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->checkAvailableCountForShutterButtonFocus(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->isShutterButtonEnable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1408
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->hideFocus()Z

    .line 1482
    :cond_1
    :goto_0
    return-void

    .line 1412
    :cond_2
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterButtonFocus : doFocus, pressed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    if-eqz p1, :cond_6

    .line 1414
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1415
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->checkAutoReviewOff(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1416
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->clearSubMenu()V

    .line 1421
    :cond_3
    :goto_1
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_full_continuous"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1424
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getAvailablePictureCount()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    .line 1425
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->clearFocusState()V

    .line 1426
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->checkStorage(Z)V

    goto :goto_0

    .line 1418
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->clearScreen()V

    goto :goto_1

    .line 1428
    :cond_5
    iput-boolean v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterBurstShot:Z

    .line 1429
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v0, v4}, Lcom/lge/camera/components/ShutterButton;->setShutterButtonReleaseImmediately(Z)V

    .line 1430
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.DoCapture"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 1435
    :cond_6
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_full_continuous"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getInCaptureProgress()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1438
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->stopByUserAction()Z

    .line 1470
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v0

    if-eq v0, v4, :cond_8

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isCafSupported()Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "manual"

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_focus"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1473
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->cancelAutoFocus()V

    .line 1474
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->doFocus(Z)V

    .line 1475
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->setShutterButtonClicked(Z)V

    .line 1478
    :cond_8
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 1479
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    .line 1480
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->showOsd()V

    goto/16 :goto_0

    .line 1439
    :cond_9
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_panorama"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPanoramaStarted()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1441
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v0}, Lcom/lge/camera/components/ShutterButton;->isShutterButtonClicked()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1442
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    .line 1443
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4, v3}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    .line 1444
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->showOsd()V

    goto :goto_2

    .line 1446
    :cond_a
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_free_panorama"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getFreePanoramaStatus()I

    move-result v0

    if-lt v0, v5, :cond_b

    .line 1448
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getFreePanoramaStatus()I

    move-result v0

    if-eq v0, v5, :cond_7

    .line 1449
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    .line 1450
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4, v3}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    .line 1451
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->showOsd()V

    goto/16 :goto_2

    .line 1454
    :cond_b
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    .line 1455
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4, v3}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    .line 1456
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->showOsd()V

    .line 1457
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.ReleaseTouchFocus"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 1458
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_front_beauty"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_main_beauty"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1465
    :cond_c
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->showBeautyShotBarForNewUx(Z)V

    goto/16 :goto_2
.end method

.method public enableCommand(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    const v5, 0x7f09014e

    const v4, 0x7f09014d

    const/4 v3, 0x1

    .line 647
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableCommand : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v0, :cond_1

    .line 651
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->setSwithcerEnable(Z)V

    .line 654
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 655
    if-eqz p1, :cond_2

    .line 656
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonEnable()V

    .line 664
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f09014b

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 665
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f09014c

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 668
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_panorama"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 670
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 671
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 678
    :goto_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f09014f

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 679
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f090150

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 682
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 683
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f090159

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 686
    :cond_1
    return-void

    .line 659
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonDisable()V

    goto :goto_0

    .line 673
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 674
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1
.end method

.method public getLastImageThumbnail(Ljava/lang/String;)Landroid/net/Uri;
    .locals 14
    .parameter "bucketId"

    .prologue
    const/4 v13, 0x0

    const/4 v11, 0x0

    .line 1003
    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1005
    .local v6, baseUri:Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "limit"

    const-string v12, "1"

    invoke-virtual {v0, v4, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1006
    .local v1, query:Landroid/net/Uri;
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v13

    const/4 v0, 0x1

    const-string v4, "orientation"

    aput-object v4, v2, v0

    const/4 v0, 0x2

    const-string v4, "datetaken"

    aput-object v4, v2, v0

    .line 1007
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mime_type=\'image/jpeg\' AND bucket_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1008
    .local v3, selection:Ljava/lang/String;
    const-string v5, "datetaken DESC,_id DESC"

    .line 1010
    .local v5, order:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1011
    .local v7, cursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->checkActivity()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v11

    .line 1032
    :cond_0
    :goto_0
    return-object v0

    .line 1015
    :cond_1
    :try_start_0
    const-string v0, "CameraApp"

    const-string v4, "getContentResolver start"

    invoke-static {v0, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1017
    const-string v0, "CameraApp"

    const-string v4, "getContentResolver end"

    invoke-static {v0, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1019
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1020
    .local v9, id:J
    invoke-static {v6, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1027
    if-eqz v7, :cond_0

    .line 1028
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1029
    const/4 v7, 0x0

    goto :goto_0

    .line 1027
    .end local v9           #id:J
    :cond_2
    if-eqz v7, :cond_3

    .line 1028
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1029
    const/4 v7, 0x0

    :cond_3
    :goto_1
    move-object v0, v11

    .line 1032
    goto :goto_0

    .line 1022
    :catch_0
    move-exception v8

    .line 1023
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "CameraApp"

    const-string v4, "cursor error "

    invoke-static {v0, v4, v8}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1027
    if-eqz v7, :cond_3

    .line 1028
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1029
    const/4 v7, 0x0

    goto :goto_1

    .line 1024
    .end local v8           #e:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v8

    .line 1025
    .local v8, e:Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v0, "CameraApp"

    const-string v4, "cursor error "

    invoke-static {v0, v4, v8}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1027
    if-eqz v7, :cond_3

    .line 1028
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1029
    const/4 v7, 0x0

    goto :goto_1

    .line 1027
    .end local v8           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 1028
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1029
    const/4 v7, 0x0

    :cond_4
    throw v0
.end method

.method public getMainBarAlphaValue()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mainBarAlpha_value:I

    return v0
.end method

.method public getMostRecentThumbnailUri(Ljava/lang/String;I)Landroid/net/Uri;
    .locals 4
    .parameter "bucketId"
    .parameter "inclusion"

    .prologue
    .line 986
    const/4 v0, 0x0

    .line 987
    .local v0, uri:Landroid/net/Uri;
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 988
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->getLastImageThumbnail(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 989
    if-eqz v0, :cond_0

    .line 990
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveLastPicture(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 998
    :cond_0
    :goto_0
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMostRecentThumbnailUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    return-object v0

    .line 993
    :cond_1
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->getLastVideoThumbnail(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 994
    if-eqz v0, :cond_0

    .line 995
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveLastVideo(Landroid/app/Activity;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public getMostRecentThumbnailUri(ZI)Landroid/net/Uri;
    .locals 5
    .parameter "isUseLinkedThumbnailList"
    .parameter "inclusion"

    .prologue
    .line 961
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getStorageBucketId()Ljava/lang/String;

    move-result-object v0

    .line 962
    .local v0, bucketId:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->isAllMemorySupported()Z

    move-result v2

    if-nez v2, :cond_2

    .line 963
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/lge/camera/controller/PreviewPanelController;->getMostRecentThumbnailUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .line 982
    :cond_1
    :goto_0
    return-object v1

    .line 966
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->checkActivity()Z

    move-result v2

    if-nez v2, :cond_3

    .line 967
    const/4 v1, 0x0

    goto :goto_0

    .line 970
    :cond_3
    invoke-virtual {p0, v0, p2}, Lcom/lge/camera/controller/PreviewPanelController;->getMostRecentThumbnailUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .line 971
    .local v1, integratedUri:Landroid/net/Uri;
    if-nez v1, :cond_1

    .line 972
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->getEmmcName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_storage"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->isInternalMemoryOnly()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 974
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getStorageBucketId(I)Ljava/lang/String;

    move-result-object v0

    .line 975
    invoke-virtual {p0, v0, p2}, Lcom/lge/camera/controller/PreviewPanelController;->getMostRecentThumbnailUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 977
    :cond_5
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getStorageBucketId(I)Ljava/lang/String;

    move-result-object v0

    .line 978
    invoke-virtual {p0, v0, p2}, Lcom/lge/camera/controller/PreviewPanelController;->getMostRecentThumbnailUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public getThumbController()Lcom/lge/camera/components/ThumbnailController;
    .locals 1

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    return-object v0
.end method

.method public getThumbnailAndUpdateButton()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 823
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 824
    :cond_0
    const-string v2, "CameraApp"

    const-string v3, "getThumbnailAndUpdateButton() return mThumbController:%s"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    :goto_0
    return-void

    .line 828
    :cond_1
    invoke-static {}, Lcom/lge/camera/util/Common;->useSecureLockImage()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/lge/camera/util/AppControlUtil;->isGuestMode()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/camera/util/AppControlUtil;->checkGalleryEnabledOnGuestMode(Landroid/content/ContentResolver;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 832
    :cond_2
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecureImageUtil = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/lge/camera/util/SecureImageUtil;->get()Lcom/lge/camera/util/SecureImageUtil;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/lge/camera/util/SecureImageUtil;->getSecureLockUriList(I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    invoke-static {}, Lcom/lge/camera/util/SecureImageUtil;->get()Lcom/lge/camera/util/SecureImageUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/lge/camera/util/SecureImageUtil;->checkSecureLockUriList(Landroid/app/Activity;I)V

    .line 835
    invoke-static {}, Lcom/lge/camera/util/SecureImageUtil;->get()Lcom/lge/camera/util/SecureImageUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lge/camera/util/SecureImageUtil;->isSecureLockUriListEmpty(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 836
    iput-object v6, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    .line 837
    iput-object v6, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    .line 839
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    if-eqz v2, :cond_3

    .line 840
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    invoke-static {}, Lcom/lge/camera/util/Common;->useSecureLockImage()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lge/camera/components/ThumbnailController;->setSecureDefaultImage(Z)V

    .line 860
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->updateThumbnailButton()V

    goto :goto_0

    .line 844
    :cond_4
    invoke-static {}, Lcom/lge/camera/util/SecureImageUtil;->get()Lcom/lge/camera/util/SecureImageUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lge/camera/util/SecureImageUtil;->getSecureLockUriListSize(I)I

    move-result v0

    .line 846
    .local v0, secureLockImageListSize:I
    invoke-static {}, Lcom/lge/camera/util/SecureImageUtil;->get()Lcom/lge/camera/util/SecureImageUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lge/camera/util/SecureImageUtil;->getSecureLockUriList(I)Ljava/util/ArrayList;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    .line 852
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getLastThumbnail(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 854
    .local v1, temp:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_5

    .line 855
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 857
    :cond_5
    iput-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 863
    .end local v0           #secureLockImageListSize:I
    .end local v1           #temp:Landroid/graphics/Bitmap;
    :cond_6
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    if-eqz v2, :cond_7

    .line 864
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    invoke-static {}, Lcom/lge/camera/util/Common;->useSecureLockImage()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lge/camera/components/ThumbnailController;->setSecureDefaultImage(Z)V

    .line 868
    :cond_7
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_9

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isAvailableLiveShot()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 870
    :cond_8
    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/PreviewPanelController;->getThumbnailAndUpdateButton(I)V

    goto/16 :goto_0

    .line 872
    :cond_9
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/PreviewPanelController;->getThumbnailAndUpdateButton(I)V

    goto/16 :goto_0
.end method

.method public getThumbnailAndUpdateButton(I)V
    .locals 1
    .parameter "inclusion"

    .prologue
    .line 885
    new-instance v0, Lcom/lge/camera/controller/PreviewPanelController$1;

    invoke-direct {v0, p0, p1}, Lcom/lge/camera/controller/PreviewPanelController$1;-><init>(Lcom/lge/camera/controller/PreviewPanelController;I)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbnailThread:Ljava/lang/Thread;

    .line 956
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbnailThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 957
    return-void
.end method

.method public hideLiveSnapshotButton()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 790
    invoke-virtual {p0, v0, v0}, Lcom/lge/camera/controller/PreviewPanelController;->setSubButton(II)V

    .line 791
    return-void
.end method

.method public hideRecoridngStopButton()V
    .locals 2

    .prologue
    .line 804
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->setSubButton(II)V

    .line 805
    return-void
.end method

.method public initController()V
    .locals 7

    .prologue
    const v6, 0x7f09014b

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 163
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f0a001d

    invoke-static {v0, v3}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->NAVI_MARGIN:I

    .line 165
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0900c6

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->inflateStub(I)Landroid/view/View;

    .line 167
    invoke-direct {p0, v6, v4}, Lcom/lge/camera/controller/PreviewPanelController;->setSubButtonVisibilityWithTouchBotton(II)V

    .line 168
    const v0, 0x7f09014d

    invoke-direct {p0, v0, v4}, Lcom/lge/camera/controller/PreviewPanelController;->setSubButtonVisibilityWithTouchBotton(II)V

    .line 169
    const v0, 0x7f09014f

    invoke-direct {p0, v0, v4}, Lcom/lge/camera/controller/PreviewPanelController;->setSubButtonVisibilityWithTouchBotton(II)V

    .line 171
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useToggleSwitcher()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 172
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f090151

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f090154

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f090152

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/Switcher;

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcher:Lcom/lge/camera/components/Switcher;

    .line 175
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/PreviewPanelController;->setSwitcherVisible(Z)V

    .line 200
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f090147

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/ShutterButton;

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    .line 201
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/lge/camera/components/ShutterButton;->setOnShutterButtonListener(Lcom/lge/camera/components/ShutterButton$OnShutterButtonListener;)V

    .line 202
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/lge/camera/components/ShutterButton;->setOnShutterButtonLongPressListener(Lcom/lge/camera/components/ShutterButton$OnShutterButtonLongPressListener;)V

    .line 203
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/ShutterButton;->setFocusable(Z)V

    .line 204
    invoke-direct {p0}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonContentDescription()V

    .line 205
    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonVisible(Z)V

    .line 208
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f090148

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 209
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f090155

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 210
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f090156

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 212
    const-string v0, "CameraApp"

    const-string v3, "[PreviewPanelController] initController"

    invoke-static {v0, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v6}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageButton;

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonTop:Lcom/lge/camera/components/RotateImageButton;

    .line 215
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f09014d

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageButton;

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonMiddle:Lcom/lge/camera/components/RotateImageButton;

    .line 216
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f09014f

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageButton;

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;

    .line 218
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f09014c

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubTouchButtonTop:Landroid/widget/ImageView;

    .line 219
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f09014e

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubTouchButtonMiddle:Landroid/widget/ImageView;

    .line 220
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f090150

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubTouchButtonBottom:Landroid/widget/ImageView;

    .line 222
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/PreviewPanelController;->showSubButtonInit(Z)V

    .line 224
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    if-nez v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f090159

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    .line 226
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mReviewThumbnailClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mReviewThumbnailLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 228
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mReviewThumbnailTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 229
    new-instance v0, Lcom/lge/camera/components/ThumbnailController;

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {}, Lcom/lge/camera/util/Common;->useSecureLockImage()Z

    move-result v6

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/lge/camera/components/ThumbnailController;-><init>(Landroid/content/res/Resources;Landroid/widget/ImageView;Landroid/content/ContentResolver;Z)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    .line 233
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->initReleaseArea()V

    .line 234
    iput-boolean v1, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    .line 235
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/PreviewPanelController;->enableCommand(Z)V

    .line 236
    iget v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mainBarAlpha_value:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewPanelController;->setMainBarAlpha(I)V

    .line 237
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/lge/camera/controller/PreviewPanelController;->startRotation(IZ)V

    .line 238
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mProcessInitDone:Z

    .line 239
    return-void

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcher:Lcom/lge/camera/components/Switcher;

    if-eqz v0, :cond_0

    .line 179
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcher:Lcom/lge/camera/components/Switcher;

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/lge/camera/components/Switcher;->setSwitch(Z)V

    .line 180
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcher:Lcom/lge/camera/components/Switcher;

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getOrientation()I

    move-result v3

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/lge/camera/components/Switcher;->setSwitcherImage(II)V

    .line 181
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcher:Lcom/lge/camera/components/Switcher;

    invoke-virtual {v0, p0}, Lcom/lge/camera/components/Switcher;->setOnSwitchListener(Lcom/lge/camera/components/Switcher$OnSwitchListener;)V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 179
    goto :goto_1

    .line 185
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f090151

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f090154

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f090157

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/SwitcherLeverVertical;

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    .line 188
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 189
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/PreviewPanelController;->setSwitcherVisible(Z)V

    goto/16 :goto_0

    .line 191
    :cond_5
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    if-eqz v0, :cond_0

    .line 192
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Lcom/lge/camera/components/SwitcherLeverVertical;->setSwitch(Z)V

    .line 193
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getOrientation()I

    move-result v3

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/lge/camera/components/SwitcherLeverVertical;->setSwitcherImage(II)V

    .line 194
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    invoke-virtual {v0, p0}, Lcom/lge/camera/components/SwitcherLeverVertical;->setOnSwitchLeverListener(Lcom/lge/camera/components/SwitcherLever$OnSwitchLeverListener;)V

    .line 195
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/SwitcherLeverVertical;->setSwitchEnable(Z)V

    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 192
    goto :goto_2
.end method

.method public initReleaseArea()V
    .locals 6

    .prologue
    .line 325
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mReleaseArea:Ljava/util/ArrayList;

    .line 326
    new-instance v0, Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;

    const v1, 0x7f0a002f

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->getPixelFromDimens(I)I

    move-result v2

    const v1, 0x7f0a0031

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->getPixelFromDimens(I)I

    move-result v3

    const v1, 0x7f0a0030

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->getPixelFromDimens(I)I

    move-result v4

    const v1, 0x7f0a0032

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->getPixelFromDimens(I)I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;-><init>(Lcom/lge/camera/controller/PreviewPanelController;IIII)V

    .line 330
    .local v0, ra:Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mReleaseArea:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 331
    new-instance v0, Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;

    .end local v0           #ra:Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;
    const v1, 0x7f0a0037

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->getPixelFromDimens(I)I

    move-result v2

    const v1, 0x7f0a0039

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->getPixelFromDimens(I)I

    move-result v3

    const v1, 0x7f0a0038

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->getPixelFromDimens(I)I

    move-result v4

    const v1, 0x7f0a003a

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->getPixelFromDimens(I)I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;-><init>(Lcom/lge/camera/controller/PreviewPanelController;IIII)V

    .line 335
    .restart local v0       #ra:Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mReleaseArea:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 336
    new-instance v0, Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;

    .end local v0           #ra:Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;
    const v1, 0x7f0a003f

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->getPixelFromDimens(I)I

    move-result v2

    const v1, 0x7f0a0041

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->getPixelFromDimens(I)I

    move-result v3

    const v1, 0x7f0a0040

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->getPixelFromDimens(I)I

    move-result v4

    const v1, 0x7f0a0042

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->getPixelFromDimens(I)I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;-><init>(Lcom/lge/camera/controller/PreviewPanelController;IIII)V

    .line 340
    .restart local v0       #ra:Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mReleaseArea:Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 341
    return-void
.end method

.method public isGalleryLaunching()Z
    .locals 1

    .prologue
    .line 2082
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGalleryLaunching:Z

    return v0
.end method

.method public isPressedShutterButton()Z
    .locals 2

    .prologue
    .line 813
    const/4 v0, 0x0

    .line 815
    .local v0, result:Z
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v1}, Lcom/lge/camera/components/ShutterButton;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 816
    const/4 v0, 0x1

    .line 819
    :cond_0
    return v0
.end method

.method public isShutterButtonEnable()Z
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v0}, Lcom/lge/camera/components/ShutterButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShutterButtonLongKey()Z
    .locals 1

    .prologue
    .line 2935
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButtonLongKey:Z

    return v0
.end method

.method public isShutterFocusLongKey()Z
    .locals 1

    .prologue
    .line 2936
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterFocusLongKey:Z

    return v0
.end method

.method public isSliding()Z
    .locals 1

    .prologue
    .line 3201
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSliding:Z

    return v0
.end method

.method public isSwitcherLeverEnable()Z
    .locals 2

    .prologue
    .line 689
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    if-nez v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f090157

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/SwitcherLeverVertical;

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    if-eqz v0, :cond_1

    .line 693
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    invoke-virtual {v0}, Lcom/lge/camera/components/SwitcherLeverVertical;->isEnabled()Z

    move-result v0

    .line 695
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSwitcherLeverPressed()Z
    .locals 1

    .prologue
    .line 3332
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    invoke-virtual {v0}, Lcom/lge/camera/components/SwitcherLeverVertical;->isSwitcherPressed()Z

    move-result v0

    return v0
.end method

.method public isThumbmailThreadAlive()Z
    .locals 1

    .prologue
    .line 877
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbnailThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbnailThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 879
    const/4 v0, 0x1

    .line 881
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2796
    const-string v1, "CameraApp"

    const-string v2, "onDestory-start"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2798
    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    .line 2800
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 2801
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 2802
    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    .line 2805
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    if-eqz v1, :cond_1

    .line 2806
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2807
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/RotateImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2808
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/RotateImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2810
    :cond_1
    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    .line 2811
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    if-eqz v1, :cond_2

    .line 2812
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    invoke-virtual {v1}, Lcom/lge/camera/components/ThumbnailController;->close()V

    .line 2814
    :cond_2
    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    .line 2816
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mReleaseArea:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 2817
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mReleaseArea:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2818
    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mReleaseArea:Ljava/util/ArrayList;

    .line 2820
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mHashMap:Ljava/util/HashMap;

    if-eqz v1, :cond_4

    .line 2821
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 2822
    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mHashMap:Ljava/util/HashMap;

    .line 2824
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    if-eqz v1, :cond_5

    .line 2825
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/ShutterButton;->setOnShutterButtonListener(Lcom/lge/camera/components/ShutterButton$OnShutterButtonListener;)V

    .line 2826
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/ShutterButton;->setOnShutterButtonLongPressListener(Lcom/lge/camera/components/ShutterButton$OnShutterButtonLongPressListener;)V

    .line 2827
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v1}, Lcom/lge/camera/components/ShutterButton;->unbind()V

    .line 2828
    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    .line 2830
    :cond_5
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcher:Lcom/lge/camera/components/Switcher;

    if-eqz v1, :cond_6

    .line 2831
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcher:Lcom/lge/camera/components/Switcher;

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/Switcher;->setOnSwitchListener(Lcom/lge/camera/components/Switcher$OnSwitchListener;)V

    .line 2832
    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcher:Lcom/lge/camera/components/Switcher;

    .line 2834
    :cond_6
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    if-eqz v1, :cond_7

    .line 2835
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/SwitcherLeverVertical;->setOnSwitchLeverListener(Lcom/lge/camera/components/SwitcherLever$OnSwitchLeverListener;)V

    .line 2836
    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    .line 2838
    :cond_7
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonTop:Lcom/lge/camera/components/RotateImageButton;

    if-eqz v1, :cond_9

    .line 2839
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonTop:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v1}, Lcom/lge/camera/components/RotateImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2840
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_8

    .line 2841
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2843
    :cond_8
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonTop:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/RotateImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2844
    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonTop:Lcom/lge/camera/components/RotateImageButton;

    .line 2846
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :cond_9
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonMiddle:Lcom/lge/camera/components/RotateImageButton;

    if-eqz v1, :cond_b

    .line 2847
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonMiddle:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v1}, Lcom/lge/camera/components/RotateImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2848
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_a

    .line 2849
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2851
    :cond_a
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonMiddle:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/RotateImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2852
    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonMiddle:Lcom/lge/camera/components/RotateImageButton;

    .line 2854
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :cond_b
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;

    if-eqz v1, :cond_d

    .line 2855
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v1}, Lcom/lge/camera/components/RotateImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2856
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_c

    .line 2857
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2859
    :cond_c
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/RotateImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2860
    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;

    .line 2862
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :cond_d
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubTouchButtonTop:Landroid/widget/ImageView;

    if-eqz v1, :cond_e

    .line 2863
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubTouchButtonTop:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2864
    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubTouchButtonTop:Landroid/widget/ImageView;

    .line 2866
    :cond_e
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubTouchButtonMiddle:Landroid/widget/ImageView;

    if-eqz v1, :cond_f

    .line 2867
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubTouchButtonMiddle:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2868
    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubTouchButtonMiddle:Landroid/widget/ImageView;

    .line 2870
    :cond_f
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubTouchButtonBottom:Landroid/widget/ImageView;

    if-eqz v1, :cond_10

    .line 2871
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubTouchButtonBottom:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2872
    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubTouchButtonBottom:Landroid/widget/ImageView;

    .line 2874
    :cond_10
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onDestroy()V

    .line 2875
    const-string v1, "CameraApp"

    const-string v2, "onDestory-end"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2876
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 2747
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->checkMediator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2748
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonDisable()V

    .line 2751
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->stopTimerTask()V

    .line 2753
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSnapshotOnIdle:Z

    .line 2754
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSnapshotOnContinuousFocus:Z

    .line 2755
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButtonLongKey:Z

    .line 2756
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterFocusLongKey:Z

    .line 2757
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    if-eqz v0, :cond_1

    .line 2758
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSnapshotOnContinuousFocus:Z

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/lge/camera/components/ShutterButton;->setShutterButtonFocusEnable(Z)V

    .line 2760
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbnailThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    .line 2761
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbnailThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 2762
    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbnailThread:Ljava/lang/Thread;

    .line 2764
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mDeleteThumbnailThread:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    .line 2765
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mDeleteThumbnailThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 2766
    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mDeleteThumbnailThread:Ljava/lang/Thread;

    .line 2768
    :cond_3
    invoke-direct {p0}, Lcom/lge/camera/controller/PreviewPanelController;->galleryWindowViewClose()V

    .line 2769
    invoke-direct {p0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->setLockConditionForMainButton(Z)V

    .line 2771
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isTimeMachineModeOn()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2772
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setTimemachineHasPictures(Z)V

    .line 2775
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isConfigurationChanging()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2776
    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    .line 2777
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 2778
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2779
    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    .line 2781
    :cond_5
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    if-eqz v0, :cond_6

    .line 2782
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2783
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2784
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2786
    :cond_6
    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    .line 2787
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    if-eqz v0, :cond_7

    .line 2788
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    invoke-virtual {v0}, Lcom/lge/camera/components/ThumbnailController;->close()V

    .line 2790
    :cond_7
    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    .line 2792
    :cond_8
    return-void

    :cond_9
    move v0, v1

    .line 2758
    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2727
    iput-boolean v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGalleryLaunching:Z

    .line 2729
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume mInit["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2730
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v0, :cond_1

    .line 2731
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportPhotoStory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2732
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/PreviewPanelController;->setPreviewPanelVisibility(Z)V

    .line 2734
    :cond_0
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/PreviewPanelController;->enableCommand(Z)V

    .line 2735
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/PreviewPanelController;->setSwitcherVisible(Z)V

    .line 2737
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.UpdateThumbnailButton"

    const-wide/16 v2, 0x3e8

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    .line 2738
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mProcessInitDone:Z

    if-nez v0, :cond_1

    .line 2739
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v0

    invoke-virtual {p0, v0, v4}, Lcom/lge/camera/controller/PreviewPanelController;->startRotation(IZ)V

    .line 2740
    iput-boolean v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mProcessInitDone:Z

    .line 2743
    :cond_1
    return-void
.end method

.method public onShutterButtonClick(Lcom/lge/camera/components/ShutterButton;)V
    .locals 5
    .parameter "button"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1514
    const-string v3, "CameraApp"

    const-string v4, "TIME_CHECK onShutterButtonClick"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    const-string v3, "CameraApp"

    const-string v4, "TIME CHECK : Shot to Shot [START] - onShutterButtonClick"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_shot_mode"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1519
    .local v0, shotMode:Ljava/lang/String;
    invoke-direct {p0, p1, v1, v2}, Lcom/lge/camera/controller/PreviewPanelController;->checkForShutterButton(Lcom/lge/camera/components/ShutterButton;ZZ)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1520
    const-string v1, "on"

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_voiceshutter"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/lge/camera/util/CheckStatusManager;->checkVoiceShutterEnable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1522
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->audioCallbackRestartEngine()V

    .line 1562
    :cond_0
    :goto_0
    return-void

    .line 1527
    :cond_1
    invoke-virtual {p1}, Lcom/lge/camera/components/ShutterButton;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 1529
    :pswitch_0
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v3

    if-nez v3, :cond_4

    .line 1530
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->checkShotModeForShutterButtonClick(Lcom/lge/camera/components/ShutterButton;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1531
    const-string v1, "on"

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_voiceshutter"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/lge/camera/util/CheckStatusManager;->checkVoiceShutterEnable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1533
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->audioCallbackRestartEngine()V

    goto :goto_0

    .line 1537
    :cond_2
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->checkFocusStateForShutterButtonClick(Lcom/lge/camera/components/ShutterButton;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1540
    iput-boolean v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSnapshotOnIdle:Z

    .line 1541
    iput-boolean v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSnapshotOnContinuousFocus:Z

    .line 1542
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    iget-boolean v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSnapshotOnContinuousFocus:Z

    if-nez v4, :cond_3

    :goto_1
    invoke-virtual {v3, v1}, Lcom/lge/camera/components/ShutterButton;->setShutterButtonFocusEnable(Z)V

    .line 1544
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->doCameraShutterButtonClick(Lcom/lge/camera/components/ShutterButton;)V

    .line 1557
    :goto_2
    invoke-direct {p0}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonContentDescription()V

    goto :goto_0

    :cond_3
    move v1, v2

    .line 1542
    goto :goto_1

    .line 1547
    :cond_4
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isRecordingControllerInit()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1548
    const-string v1, "CameraApp"

    const-string v2, "RecordingController not ready"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1551
    :cond_5
    iput-boolean v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSnapshotOnIdle:Z

    .line 1552
    iput-boolean v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSnapshotOnContinuousFocus:Z

    .line 1553
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    iget-boolean v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSnapshotOnContinuousFocus:Z

    if-nez v4, :cond_6

    :goto_3
    invoke-virtual {v3, v1}, Lcom/lge/camera/components/ShutterButton;->setShutterButtonFocusEnable(Z)V

    .line 1555
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->doCamcorderShutterButtonClick(Lcom/lge/camera/components/ShutterButton;)V

    goto :goto_2

    :cond_6
    move v1, v2

    .line 1553
    goto :goto_3

    .line 1527
    nop

    :pswitch_data_0
    .packed-switch 0x7f090147
        :pswitch_0
    .end packed-switch
.end method

.method public onShutterButtonFocus(Lcom/lge/camera/components/ShutterButton;Z)V
    .locals 6
    .parameter "button"
    .parameter "pressed"

    .prologue
    const v5, 0x7f090148

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1344
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterButtonFocus pressed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    iput-boolean v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterBurstShot:Z

    .line 1346
    invoke-direct {p0, p1, v4, p2}, Lcom/lge/camera/controller/PreviewPanelController;->checkForShutterButton(Lcom/lge/camera/components/ShutterButton;ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1402
    :goto_0
    return-void

    .line 1349
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_8

    .line 1350
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_panorama"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPanoramaStarted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isSynthesisInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1352
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 1356
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_free_panorama"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getFreePanoramaStatus()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    .line 1358
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 1362
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->checkCurrentShotModeForModule()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1363
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 1367
    :cond_4
    if-eqz p2, :cond_5

    .line 1368
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->checkAutoReviewOff(Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1369
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4, v3}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionAllMenuEnabled(ZZ)V

    .line 1370
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4, v3}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    .line 1388
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/lge/camera/components/ShutterButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1390
    :pswitch_0
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->isExternalMemoryOnly()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isExternalStorageRemoved()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1392
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonDisable()V

    .line 1393
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3, v3}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionAllMenuEnabled(ZZ)V

    .line 1394
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3, v3}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    .line 1396
    :cond_6
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setPressed(Z)V

    .line 1397
    invoke-virtual {p0, p2}, Lcom/lge/camera/controller/PreviewPanelController;->doCameraShutterButtonFocus(Z)V

    goto/16 :goto_0

    .line 1372
    :cond_7
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4, v3}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionAllMenuEnabled(ZZ)V

    .line 1373
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4, v3}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    goto :goto_1

    .line 1377
    :cond_8
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v0

    if-nez v0, :cond_5

    .line 1378
    if-eqz p2, :cond_9

    .line 1379
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4, v3}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionAllMenuEnabled(ZZ)V

    .line 1380
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4, v3}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    goto :goto_1

    .line 1382
    :cond_9
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    .line 1383
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3, v4}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    goto :goto_1

    .line 1388
    nop

    :pswitch_data_0
    .packed-switch 0x7f090147
        :pswitch_0
    .end packed-switch
.end method

.method public onShutterButtonLongPressed(Lcom/lge/camera/components/ShutterButton;)V
    .locals 7
    .parameter "button"

    .prologue
    const/4 v6, 0x1

    .line 2967
    const-string v2, "CameraApp"

    const-string v3, "onShutterButtonLongPressed"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2968
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->checkMediator()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-ne v2, v6, :cond_1

    .line 3051
    :cond_0
    :goto_0
    return-void

    .line 2971
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_full_continuous"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2973
    const-string v2, "CameraApp"

    const-string v3, "onShutterButtonLongPressed return"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2974
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getAvailablePictureCount()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 2975
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->clearFocusState()V

    .line 2976
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v6}, Lcom/lge/camera/ControllerFunction;->checkStorage(Z)V

    goto :goto_0

    .line 2979
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_panorama"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isPanoramaStarted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2980
    const-string v2, "CameraApp"

    const-string v3, "return because panorama started"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2982
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_free_panorama"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2983
    const-string v2, "CameraApp"

    const-string v3, "return because free panorama don\'t use long key"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3017
    :cond_4
    iput-boolean v6, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterFocusLongKey:Z

    .line 3019
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v2

    if-ne v2, v6, :cond_5

    .line 3020
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.ReleaseTouchFocus"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 3024
    :cond_5
    const-string v2, "manual"

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_focus"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3025
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->cancelAutoFocus()V

    .line 3026
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v2, v6}, Lcom/lge/camera/components/ShutterButton;->setShutterButtonFocusEnable(Z)V

    .line 3027
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->setFocusRectangleInitialize()V

    .line 3029
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 3031
    const-string v0, "auto"

    .line 3035
    .local v0, focusMode:Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 3036
    .local v1, parameters:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 3037
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "### setFocusMode-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3038
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3041
    .end local v0           #focusMode:Ljava/lang/String;
    .end local v1           #parameters:Landroid/hardware/Camera$Parameters;
    :cond_6
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v3, Lcom/lge/camera/controller/PreviewPanelController$15;

    invoke-direct {v3, p0}, Lcom/lge/camera/controller/PreviewPanelController$15;-><init>(Lcom/lge/camera/controller/PreviewPanelController;)V

    const-wide/16 v4, 0x64

    invoke-interface {v2, v3, v4, v5}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;J)V

    goto/16 :goto_0
.end method

.method public onSwitchChanged(Lcom/lge/camera/components/SwitcherLever;Z)Z
    .locals 7
    .parameter "source"
    .parameter "onOff"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3074
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Switch changed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3075
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.HidePIPResizeHandler"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 3076
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->hideSmartZoomFocusView()V

    .line 3077
    invoke-direct {p0}, Lcom/lge/camera/controller/PreviewPanelController;->isLockDuringMediaScanning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3129
    :cond_0
    :goto_0
    return v0

    .line 3081
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isEnteringViewShowing()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getInCaptureProgress()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButtonLongKey:Z

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/lge/camera/controller/PreviewPanelController;->isLockDuringMediaScanning()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getEnableInput()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3087
    :cond_2
    const-string v1, "CameraApp"

    const-string v2, "onSwitcherClick return: is capturing.."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3090
    :cond_3
    if-eqz p2, :cond_6

    .line 3091
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/camera/util/TelephonyUtil;->phoneInCall(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3092
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0b0196

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->toast(I)V

    goto :goto_0

    .line 3095
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isExitIgnoreDuringSaving()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3097
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getQueueCount()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_5

    .line 3098
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v1}, Lcom/lge/camera/ControllerFunction;->setExitIgnoreDuringSaving(Z)V

    .line 3099
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->showSavingProgressDialog()V

    goto :goto_0

    .line 3103
    :cond_5
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v1}, Lcom/lge/camera/ControllerFunction;->toastControllerHide(Z)V

    .line 3104
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    invoke-virtual {v2, v0}, Lcom/lge/camera/components/SwitcherLeverVertical;->setSwitchEnable(Z)V

    .line 3105
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    invoke-virtual {v2, v0}, Lcom/lge/camera/components/SwitcherLeverVertical;->setEnabled(Z)V

    .line 3106
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v0, v1}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionAllMenuEnabled(ZZ)V

    .line 3107
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v0, v1}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    .line 3108
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionMenuForcedDisable(Z)V

    .line 3110
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.ChangeToCamcorder"

    invoke-interface {v0, v2, v5, v6}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    .line 3111
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->hideOsd()V

    move v0, v1

    .line 3112
    goto/16 :goto_0

    .line 3114
    :cond_6
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Video State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3115
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v2

    if-nez v2, :cond_0

    .line 3117
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v1}, Lcom/lge/camera/ControllerFunction;->toastControllerHide(Z)V

    .line 3118
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    invoke-virtual {v2, v0}, Lcom/lge/camera/components/SwitcherLeverVertical;->setSwitchEnable(Z)V

    .line 3119
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    invoke-virtual {v2, v0}, Lcom/lge/camera/components/SwitcherLeverVertical;->setEnabled(Z)V

    .line 3120
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v0, v1}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionAllMenuEnabled(ZZ)V

    .line 3121
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v0, v1}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    .line 3122
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionMenuForcedDisable(Z)V

    .line 3123
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.ChangeToCamera"

    invoke-interface {v0, v2, v5, v6}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    .line 3124
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->hideOsd()V

    move v0, v1

    .line 3125
    goto/16 :goto_0
.end method

.method public onSwitcherClick(Lcom/lge/camera/components/Switcher;)V
    .locals 6
    .parameter "button"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2881
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isEnteringViewShowing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getInCaptureProgress()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButtonLongKey:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/lge/camera/controller/PreviewPanelController;->isLockDuringMediaScanning()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getEnableInput()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2887
    :cond_0
    const-string v2, "CameraApp"

    const-string v3, "onSwitcherClick return: is capturing.."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2922
    :cond_1
    :goto_0
    return-void

    .line 2891
    :cond_2
    invoke-virtual {p1}, Lcom/lge/camera/components/Switcher;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 2894
    :sswitch_0
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/camera/util/TelephonyUtil;->phoneInCall(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2895
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0b0196

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->toast(I)V

    goto :goto_0

    .line 2898
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isQuickFunctionSettingControllerShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2899
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2900
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "immediately"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2901
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.HideQuickFunctionSettingMenu"

    invoke-interface {v2, v3, v0}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2904
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_6

    const-string v1, "com.lge.camera.command.ChangeToCamcorder"

    .line 2906
    .local v1, command:Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v2

    if-nez v2, :cond_1

    .line 2910
    :cond_5
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonDisable()V

    .line 2911
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5, v4}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionAllMenuEnabled(ZZ)V

    .line 2912
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5, v4}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    .line 2913
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionMenuForcedDisable(Z)V

    .line 2914
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5}, Lcom/lge/camera/ControllerFunction;->enableCommand(Z)V

    .line 2915
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->toastControllerHide(Z)V

    .line 2916
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-wide/16 v3, 0x0

    invoke-interface {v2, v1, v3, v4}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    .line 2917
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->hideOsd()V

    goto/16 :goto_0

    .line 2904
    .end local v1           #command:Ljava/lang/String;
    :cond_6
    const-string v1, "com.lge.camera.command.ChangeToCamera"

    goto :goto_1

    .line 2891
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090152 -> :sswitch_0
        0x7f090157 -> :sswitch_0
    .end sparse-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 1949
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->checkMediator()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1950
    const-string v0, "CameraApp"

    const-string v1, "PreviewPanelController : Mediator is null."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1974
    :goto_0
    return v2

    .line 1953
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1954
    const-string v0, "CameraApp"

    const-string v1, "PreviewPanelController : Mediator is pausing."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1957
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isEnteringViewShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1958
    const-string v0, "CameraApp"

    const-string v1, "PreviewPanelController : Entering view is visible."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1961
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1963
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/controller/PreviewPanelController;->doTouchActionDown(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1967
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/controller/PreviewPanelController;->doTouchActionMove(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1971
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/controller/PreviewPanelController;->doTouchActionUp(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1961
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public panelMenuAnimation(ZILandroid/view/animation/Animation$AnimationListener;)V
    .locals 4
    .parameter "show"
    .parameter "duration"
    .parameter "listener"

    .prologue
    .line 3248
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f09014a

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3249
    .local v1, panelView:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 3250
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 3251
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 3252
    .local v0, direction:I
    :goto_0
    if-eqz p1, :cond_2

    .line 3253
    invoke-static {v1, v0, p2, p3}, Lcom/lge/camera/util/Util;->slideIn(Landroid/view/View;IILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    .line 3258
    .end local v0           #direction:I
    :cond_0
    :goto_1
    return-void

    .line 3251
    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    .line 3255
    .restart local v0       #direction:I
    :cond_2
    invoke-static {v1, v0, p2, p3}, Lcom/lge/camera/util/Util;->slideOut(Landroid/view/View;IILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    goto :goto_1
.end method

.method public performFocusOnShutterButton(Z)V
    .locals 1
    .parameter "state"

    .prologue
    .line 809
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/ShutterButton;->performFocus(Z)V

    .line 810
    return-void
.end method

.method public registerLockConditionForMainButton(Ljava/lang/String;)V
    .locals 5
    .parameter "lockKey"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 354
    if-nez p1, :cond_0

    .line 355
    const-string v0, "CameraApp"

    const-string v1, "return by lockKey == null"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :goto_0
    return-void

    .line 359
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "lock key: %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mHashMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public releaseShutterFocus()V
    .locals 1

    .prologue
    .line 2942
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->checkMediator()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterFocusLongKey:Z

    if-eqz v0, :cond_0

    .line 2944
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterFocusLongKey:Z

    .line 2945
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->cancelAutoFocus()V

    .line 2946
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->setFocusRectangleInitialize()V

    .line 2947
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isCafSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2948
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->hideFocus()Z

    .line 2951
    :cond_0
    return-void
.end method

.method public resetSwitcherLever()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 718
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    if-eqz v1, :cond_0

    .line 719
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/lge/camera/components/SwitcherLeverVertical;->resetSwitcherLever(Z)V

    .line 721
    :cond_0
    return-void

    .line 719
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reviewThumbnailTouchActionUp()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2229
    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mTrashView:Lcom/lge/camera/components/RotateImageButton;

    .line 2230
    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastGalleryImage:Landroid/widget/ImageView;

    .line 2231
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2232
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbLayout:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2233
    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbLayout:Landroid/view/View;

    .line 2235
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbImage:Lcom/lge/camera/components/RotateImageView;

    if-eqz v1, :cond_2

    .line 2236
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbImage:Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v1}, Lcom/lge/camera/components/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2237
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 2238
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbImage:Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v1}, Lcom/lge/camera/components/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2240
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbImage:Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2241
    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbImage:Lcom/lge/camera/components/RotateImageView;

    .line 2243
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :cond_2
    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 2244
    return-void
.end method

.method public set3DSwitchImage()V
    .locals 0

    .prologue
    .line 3330
    return-void
.end method

.method public set3DSwitchVisible(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 3329
    return-void
.end method

.method public setGalleryLaunching(Z)V
    .locals 0
    .parameter "isLaunching"

    .prologue
    .line 2079
    iput-boolean p1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGalleryLaunching:Z

    .line 2080
    return-void
.end method

.method public setLastPictureThumb([BLandroid/net/Uri;Z)V
    .locals 10
    .parameter "data"
    .parameter "uri"
    .parameter "isPicture"

    .prologue
    .line 1135
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbnailLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1136
    :try_start_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 1137
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "mThumbController:%s, isPausing():%b, uri:%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    aput-object v5, v2, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x2

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    const-string v0, "CameraApp"

    const-string v1, "setLastThumb() return"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    monitor-exit v9

    .line 1178
    :goto_0
    return-void

    .line 1142
    :cond_1
    iput-object p2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    .line 1144
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1145
    if-eqz p3, :cond_2

    .line 1146
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveLastPicture(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 1150
    :goto_1
    monitor-exit v9

    goto :goto_0

    .line 1177
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1148
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveLastVideo(Landroid/app/Activity;Landroid/net/Uri;)V

    goto :goto_1

    .line 1153
    :cond_3
    const-string v0, "CameraApp"

    const-string v1, "Thumbnail Start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    if-eqz p3, :cond_5

    .line 1155
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveLastPicture(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 1157
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1158
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    invoke-virtual {v0}, Lcom/lge/camera/components/ThumbnailController;->getThumbnailWidth()I

    move-result v4

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    invoke-virtual {v0}, Lcom/lge/camera/components/ThumbnailController;->getThumbnailHeight()I

    move-result v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/Util;->getSampleSize([BLjava/io/FileDescriptor;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1161
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/ExifUtil;->getExifOrientationDegree(Ljava/lang/String;)I

    move-result v6

    .line 1162
    .local v6, degree:I
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1163
    .local v8, thumbnail:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    invoke-interface {v0, v8, v6, v1}, Lcom/lge/camera/ControllerFunction;->getImage(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1164
    .local v7, temp:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 1165
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1167
    :cond_4
    iput-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    .line 1176
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v6           #degree:I
    .end local v7           #temp:Landroid/graphics/Bitmap;
    .end local v8           #thumbnail:Landroid/graphics/Bitmap;
    :goto_2
    const-string v0, "CameraApp"

    const-string v1, "Thumbnail End"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    monitor-exit v9

    goto :goto_0

    .line 1169
    :cond_5
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveLastVideo(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 1171
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    .line 1172
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1174
    :cond_6
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getLastThumbnail(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public setLastThumb(Landroid/net/Uri;Z)V
    .locals 8
    .parameter "uri"
    .parameter "isPicture"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1069
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_camera_shot_mode"

    const-string v6, "shotmode_free_panorama"

    invoke-interface {v4, v5, v6}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getFreePanoramaStatus()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    .line 1073
    :cond_0
    const-string v4, "CameraApp"

    const-string v5, "mThumbController:%s, isPausing():%b, uri:%s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    aput-object v7, v6, v3

    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x2

    aput-object p1, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    const-string v2, "CameraApp"

    const-string v4, "setLastThumb() return"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    :goto_0
    return-void

    .line 1078
    :cond_1
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    .line 1079
    const-string v4, "CameraApp"

    const-string v5, "Thumbnail Start"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbnailLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1082
    :try_start_0
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v6, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getLastThumbnail(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1083
    .local v1, temp:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_2

    .line 1084
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 1086
    :cond_2
    iput-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    .line 1087
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1088
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Thumbnail End. mThumbImage is null?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    if-nez v6, :cond_3

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    if-eqz p2, :cond_4

    .line 1092
    :try_start_1
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveLastPicture(Landroid/app/Activity;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1093
    :catch_0
    move-exception v0

    .line 1094
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "CameraApp"

    const-string v3, "saveLastPicture error "

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1087
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #temp:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .restart local v1       #temp:Landroid/graphics/Bitmap;
    :cond_3
    move v2, v3

    .line 1088
    goto :goto_1

    .line 1098
    :cond_4
    :try_start_3
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveLastVideo(Landroid/app/Activity;Landroid/net/Uri;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1099
    :catch_1
    move-exception v0

    .line 1100
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "CameraApp"

    const-string v3, "saveLastVideo error "

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setMainBarAlpha(I)V
    .locals 12
    .parameter "value"

    .prologue
    const v11, 0x7f0a000a

    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 246
    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v9, 0x7f09014a

    invoke-interface {v8, v9}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 247
    .local v3, mainBar:Landroid/view/View;
    if-eqz v3, :cond_4

    .line 248
    const v8, 0x7f020052

    invoke-virtual {v3, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 250
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportClearView()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v9, "key_camera_shot_mode"

    const-string v10, "shotmode_free_panorama"

    invoke-interface {v8, v9, v10}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 252
    :cond_0
    const/16 p1, 0x1e

    .line 255
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 256
    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnScreen()Ljava/lang/String;

    move-result-object v6

    .line 257
    .local v6, sizeOnScreenString:Ljava/lang/String;
    invoke-static {v6}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v5

    .line 259
    .local v5, previewSizeOnScreen:[I
    aget v8, v5, v7

    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v11}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v9

    if-le v8, v9, :cond_a

    move v0, v1

    .line 260
    .local v0, isOverPreviewSize:Z
    :goto_0
    if-eqz v0, :cond_2

    .line 261
    const/4 p1, 0x0

    .line 265
    .end local v0           #isOverPreviewSize:Z
    .end local v5           #previewSizeOnScreen:[I
    .end local v6           #sizeOnScreenString:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSoftKeyNavigationBarModel()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 266
    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnScreen()Ljava/lang/String;

    move-result-object v6

    .line 267
    .restart local v6       #sizeOnScreenString:Ljava/lang/String;
    invoke-static {v6}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v5

    .line 269
    .restart local v5       #previewSizeOnScreen:[I
    const/16 p1, 0xff

    .line 271
    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0a0008

    invoke-static {v8, v9}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v2

    .line 272
    .local v2, lcdWidth:I
    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0a001a

    invoke-static {v8, v9}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v4

    .line 273
    .local v4, panelWidth:I
    aget v8, v5, v7

    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v11}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v9

    if-le v8, v9, :cond_b

    aget v8, v5, v7

    sub-int v8, v2, v8

    div-int/lit8 v8, v8, 0x2

    if-ge v8, v4, :cond_b

    .line 275
    .local v1, isTransparent:Z
    :goto_1
    if-eqz v1, :cond_3

    .line 276
    const v7, 0x7f02040c

    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 280
    .end local v1           #isTransparent:Z
    .end local v2           #lcdWidth:I
    .end local v4           #panelWidth:I
    .end local v5           #previewSizeOnScreen:[I
    .end local v6           #sizeOnScreenString:Ljava/lang/String;
    :cond_3
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "call setAlpha value ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 284
    :cond_4
    iput p1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mainBarAlpha_value:I

    .line 285
    const/16 v7, 0xff

    iput v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mAlpha_value:I

    .line 290
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonTop:Lcom/lge/camera/components/RotateImageButton;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonTop:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v7}, Lcom/lge/camera/components/RotateImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 291
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonTop:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v7}, Lcom/lge/camera/components/RotateImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iget v8, p0, Lcom/lge/camera/controller/PreviewPanelController;->mAlpha_value:I

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 294
    :cond_5
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonMiddle:Lcom/lge/camera/components/RotateImageButton;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonMiddle:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v7}, Lcom/lge/camera/components/RotateImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 295
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonMiddle:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v7}, Lcom/lge/camera/components/RotateImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iget v8, p0, Lcom/lge/camera/controller/PreviewPanelController;->mAlpha_value:I

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 298
    :cond_6
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v7}, Lcom/lge/camera/components/RotateImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 299
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v7}, Lcom/lge/camera/components/RotateImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iget v8, p0, Lcom/lge/camera/controller/PreviewPanelController;->mAlpha_value:I

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 303
    :cond_7
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useToggleSwitcher()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 304
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcher:Lcom/lge/camera/components/Switcher;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcher:Lcom/lge/camera/components/Switcher;

    invoke-virtual {v7}, Lcom/lge/camera/components/Switcher;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 305
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcher:Lcom/lge/camera/components/Switcher;

    invoke-virtual {v7}, Lcom/lge/camera/components/Switcher;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iget v8, p0, Lcom/lge/camera/controller/PreviewPanelController;->mAlpha_value:I

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 317
    :cond_8
    :goto_2
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v7}, Lcom/lge/camera/components/ShutterButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 318
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v7}, Lcom/lge/camera/components/ShutterButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iget v8, p0, Lcom/lge/camera/controller/PreviewPanelController;->mAlpha_value:I

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 319
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v8, 0x7f090148

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iget v8, p0, Lcom/lge/camera/controller/PreviewPanelController;->mAlpha_value:I

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 321
    :cond_9
    return-void

    .restart local v5       #previewSizeOnScreen:[I
    .restart local v6       #sizeOnScreenString:Ljava/lang/String;
    :cond_a
    move v0, v7

    .line 259
    goto/16 :goto_0

    .restart local v2       #lcdWidth:I
    .restart local v4       #panelWidth:I
    :cond_b
    move v1, v7

    .line 273
    goto/16 :goto_1

    .line 308
    .end local v2           #lcdWidth:I
    .end local v4           #panelWidth:I
    .end local v5           #previewSizeOnScreen:[I
    .end local v6           #sizeOnScreenString:Ljava/lang/String;
    :cond_c
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    invoke-virtual {v7}, Lcom/lge/camera/components/SwitcherLeverVertical;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 309
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    invoke-virtual {v7}, Lcom/lge/camera/components/SwitcherLeverVertical;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iget v8, p0, Lcom/lge/camera/controller/PreviewPanelController;->mAlpha_value:I

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 310
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v8, 0x7f090154

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iget v8, p0, Lcom/lge/camera/controller/PreviewPanelController;->mAlpha_value:I

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 311
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v8, 0x7f090155

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iget v8, p0, Lcom/lge/camera/controller/PreviewPanelController;->mAlpha_value:I

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 312
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v8, 0x7f090156

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iget v8, p0, Lcom/lge/camera/controller/PreviewPanelController;->mAlpha_value:I

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_2
.end method

.method public setMainButtonDisable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 423
    const-string v0, "CameraApp"

    const-string v1, "setMainButtonDisable"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButtonLongKey:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterBurstShot:Z

    if-eqz v0, :cond_2

    .line 426
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "setMainButtonDisable return"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    :cond_1
    :goto_0
    return-void

    .line 429
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/lge/camera/controller/PreviewPanelController;->setShutterButtonImage(ZI)V

    .line 430
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    if-eqz v0, :cond_1

    .line 431
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButtonLongKey:Z

    if-nez v0, :cond_1

    .line 432
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/ShutterButton;->setPressed(Z)V

    .line 433
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/ShutterButton;->setEnabled(Z)V

    .line 434
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f090148

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0
.end method

.method public setMainButtonEnable()V
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonEnable(Ljava/lang/String;)V

    .line 396
    return-void
.end method

.method public setMainButtonEnable(Ljava/lang/String;)V
    .locals 4
    .parameter "lockKey"

    .prologue
    const/4 v3, 0x1

    .line 399
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMainButtonEnable, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const-string v0, "CameraApp"

    const-string v1, "TIME CHECK : Shot to Shot [END] - setMainButtonEnable()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->setUnlockConditionForMainButton(Ljava/lang/String;)V

    .line 404
    invoke-direct {p0}, Lcom/lge/camera/controller/PreviewPanelController;->checkLockConditionForMainButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    const-string v0, "CameraApp"

    const-string v1, "return by checkLockConditionForMainButton() == true"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :goto_0
    return-void

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/ShutterButton;->setEnabled(Z)V

    .line 411
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v0

    invoke-virtual {p0, v3, v0}, Lcom/lge/camera/controller/PreviewPanelController;->setShutterButtonImage(ZI)V

    .line 415
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f090146

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    goto :goto_0
.end method

.method public setMainButtonVisible(Z)V
    .locals 8
    .parameter "visible"

    .prologue
    const v7, 0x7f090148

    const v6, 0x7f090147

    const v5, 0x7f090146

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 602
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMainbuttonVisible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 605
    const-string v0, "CameraApp"

    const-string v1, "setMainbuttonVisible : main_button_view did not inflate!!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    :goto_0
    return-void

    .line 609
    :cond_0
    if-eqz p1, :cond_1

    .line 610
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 611
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v6}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 612
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v7}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 614
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 615
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v6}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 616
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v7}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPreviewPanelVisibility(Z)V
    .locals 5
    .parameter "show"

    .prologue
    const v4, 0x7f09014a

    const/4 v3, 0x4

    const v2, 0x7f090144

    const/4 v1, 0x0

    .line 147
    if-eqz p1, :cond_1

    .line 148
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportClearView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isClearView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 159
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setShutterButtonImage(ZI)V
    .locals 6
    .parameter "buttonEnable"
    .parameter "degree"

    .prologue
    const v5, 0x7f090148

    const v4, 0x7f090147

    .line 440
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setShutterButtonImage : status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", degree = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-boolean v1, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    if-nez v1, :cond_1

    .line 442
    :cond_0
    const-string v1, "CameraApp"

    const-string v2, "return by !mInit"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    :goto_0
    return-void

    .line 446
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f02043d

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 448
    const v0, 0x7f02043b

    .line 449
    .local v0, bgResId:I
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_2

    .line 450
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/controller/PreviewPanelController;->setCameraShutterButtonImage(ZI)I

    move-result v0

    .line 455
    :goto_1
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 456
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mAlpha_value:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 457
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mAlpha_value:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 452
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/controller/PreviewPanelController;->setCamcorderShutterButtonImage(ZI)I

    move-result v0

    goto :goto_1
.end method

.method public setShutterFocusLongKey(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 2938
    iput-boolean p1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterFocusLongKey:Z

    .line 2939
    return-void
.end method

.method public setSubButton(II)V
    .locals 6
    .parameter "loc"
    .parameter "resId"

    .prologue
    const/4 v5, 0x0

    .line 729
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSubButton "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    packed-switch p1, :pswitch_data_0

    .line 769
    :cond_0
    :goto_0
    return-void

    .line 734
    :pswitch_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonTop:Lcom/lge/camera/components/RotateImageButton;

    .line 735
    .local v0, ib:Lcom/lge/camera/components/RotateImageButton;
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubTouchButtonTop:Landroid/widget/ImageView;

    .line 751
    .local v1, iv:Landroid/widget/ImageView;
    :goto_1
    if-eqz v0, :cond_0

    .line 755
    invoke-virtual {v0, p2}, Lcom/lge/camera/components/RotateImageButton;->setBackgroundResource(I)V

    .line 756
    if-nez p2, :cond_1

    .line 757
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 758
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 766
    :goto_2
    invoke-virtual {v0, v5}, Lcom/lge/camera/components/RotateImageButton;->setFocusable(Z)V

    .line 767
    invoke-virtual {v0, v5}, Lcom/lge/camera/components/RotateImageButton;->setPressed(Z)V

    goto :goto_0

    .line 739
    .end local v0           #ib:Lcom/lge/camera/components/RotateImageButton;
    .end local v1           #iv:Landroid/widget/ImageView;
    :pswitch_1
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonMiddle:Lcom/lge/camera/components/RotateImageButton;

    .line 740
    .restart local v0       #ib:Lcom/lge/camera/components/RotateImageButton;
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubTouchButtonMiddle:Landroid/widget/ImageView;

    .line 742
    .restart local v1       #iv:Landroid/widget/ImageView;
    goto :goto_1

    .line 744
    .end local v0           #ib:Lcom/lge/camera/components/RotateImageButton;
    .end local v1           #iv:Landroid/widget/ImageView;
    :pswitch_2
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;

    .line 745
    .restart local v0       #ib:Lcom/lge/camera/components/RotateImageButton;
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubTouchButtonBottom:Landroid/widget/ImageView;

    .line 747
    .restart local v1       #iv:Landroid/widget/ImageView;
    goto :goto_1

    .line 760
    :cond_1
    invoke-virtual {v0}, Lcom/lge/camera/components/RotateImageButton;->getId()I

    move-result v2

    invoke-direct {p0, v2, v5}, Lcom/lge/camera/controller/PreviewPanelController;->setSubButtonVisibilityWithTouchBotton(II)V

    .line 761
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 762
    invoke-virtual {v0}, Lcom/lge/camera/components/RotateImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mAlpha_value:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 763
    invoke-direct {p0, v1, p2}, Lcom/lge/camera/controller/PreviewPanelController;->setSubButtonContentDescription(Landroid/view/View;I)V

    goto :goto_2

    .line 732
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setSwitcherVisible(Z)V
    .locals 5
    .parameter "visible"

    .prologue
    const/4 v1, 0x1

    .line 621
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSwitcherVisible = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const/4 v0, 0x0

    .line 624
    .local v0, visibility:I
    if-eqz p1, :cond_2

    .line 625
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 626
    const/4 v0, 0x4

    .line 632
    :cond_0
    :goto_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useToggleSwitcher()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 633
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcher:Lcom/lge/camera/components/Switcher;

    if-eqz v1, :cond_1

    .line 634
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f090151

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 643
    :cond_1
    :goto_1
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->setSwithcerEnable(Z)V

    .line 644
    return-void

    .line 629
    :cond_2
    const/4 v0, 0x4

    goto :goto_0

    .line 637
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    if-eqz v2, :cond_1

    .line 638
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f090154

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 639
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v3

    if-ne v3, v1, :cond_4

    :goto_2
    invoke-virtual {v2, v1}, Lcom/lge/camera/components/SwitcherLeverVertical;->resetSwitcherLever(Z)V

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public setSwithcerEnable(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 700
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useToggleSwitcher()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 701
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcher:Lcom/lge/camera/components/Switcher;

    if-nez v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f090152

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/Switcher;

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcher:Lcom/lge/camera/components/Switcher;

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcher:Lcom/lge/camera/components/Switcher;

    if-eqz v0, :cond_1

    .line 705
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcher:Lcom/lge/camera/components/Switcher;

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/Switcher;->setEnabled(Z)V

    .line 715
    :cond_1
    :goto_0
    return-void

    .line 708
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    if-nez v0, :cond_3

    .line 709
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f090157

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/SwitcherLeverVertical;

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    .line 711
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    if-eqz v0, :cond_1

    .line 712
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/SwitcherLeverVertical;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setThumbBitmapAndUpdate(Landroid/graphics/Bitmap;Landroid/net/Uri;)V
    .locals 5
    .parameter "bmp"
    .parameter "uri"

    .prologue
    const-wide/16 v3, 0x64

    .line 1106
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setThumbBitmapAndUpdate : bmp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1108
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.UpdateThumbnailButton"

    invoke-interface {v0, v1, v3, v4}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    .line 1131
    :goto_0
    return-void

    .line 1112
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.UpdateThumbnailButton"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 1114
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbnailLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1115
    :try_start_0
    iput-object p2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    .line 1116
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 1117
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1119
    :cond_2
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    .line 1120
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1122
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->updateThumbnailButtonVisibility()V

    .line 1124
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 1125
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setEnabled(Z)V

    .line 1126
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1127
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/camera/components/ThumbnailController;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;Z)V

    goto :goto_0

    .line 1120
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1129
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.UpdateThumbnailButton"

    invoke-interface {v0, v1, v3, v4}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public setThumbnailButtonVisibility(I)V
    .locals 13
    .parameter "visible"

    .prologue
    const-wide/16 v5, 0x0

    const v10, 0x7f090159

    const/4 v12, 0x1

    const-wide/16 v7, 0x1388

    const/4 v11, 0x0

    .line 1182
    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 1183
    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1186
    :cond_0
    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v9

    if-nez v9, :cond_4

    if-nez p1, :cond_4

    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->isTimemachineHasPictures()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1190
    invoke-virtual {p0, v12}, Lcom/lge/camera/controller/PreviewPanelController;->setTimeMachineReviewIconVisible(Z)V

    .line 1192
    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "key_camera_auto_review"

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1193
    .local v0, autoReview:Ljava/lang/String;
    const-string v9, "on_delay_2sec"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-wide/16 v3, 0x7d0

    .line 1194
    .local v3, duration:J
    :goto_0
    const-string v9, "on_delay_5sec"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move-wide v1, v7

    .line 1195
    .local v1, autoReviewDuration:J
    :goto_1
    cmp-long v5, v1, v5

    if-nez v5, :cond_1

    .line 1196
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v11, v7, v8, v12}, Lcom/lge/camera/ControllerFunction;->showBubblePopupVisibility(IJZ)V

    .line 1202
    .end local v0           #autoReview:Ljava/lang/String;
    .end local v1           #autoReviewDuration:J
    .end local v3           #duration:J
    :cond_1
    :goto_2
    return-void

    .restart local v0       #autoReview:Ljava/lang/String;
    :cond_2
    move-wide v3, v5

    .line 1193
    goto :goto_0

    .restart local v3       #duration:J
    :cond_3
    move-wide v1, v3

    .line 1194
    goto :goto_1

    .line 1199
    .end local v0           #autoReview:Ljava/lang/String;
    .end local v3           #duration:J
    :cond_4
    invoke-virtual {p0, v11}, Lcom/lge/camera/controller/PreviewPanelController;->setTimeMachineReviewIconVisible(Z)V

    .line 1200
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v11, v7, v8, v11}, Lcom/lge/camera/ControllerFunction;->showBubblePopupVisibility(IJZ)V

    goto :goto_2
.end method

.method public setTimeMachineReviewIconVisible(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/PreviewPanelController$3;

    invoke-direct {v1, p0, p1}, Lcom/lge/camera/controller/PreviewPanelController$3;-><init>(Lcom/lge/camera/controller/PreviewPanelController;Z)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1285
    return-void
.end method

.method public setUnlockConditionForMainButton(Ljava/lang/String;)V
    .locals 4
    .parameter "lockKey"

    .prologue
    const/4 v3, 0x0

    .line 364
    if-nez p1, :cond_1

    .line 365
    const-string v0, "CameraApp"

    const-string v1, "return by lockKey == null"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    const-string v0, "CameraApp"

    const-string v1, "unlock key: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mHashMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public showGalleryQuickViewAnimation(ZZ)V
    .locals 26
    .parameter "open"
    .parameter "deleteImage"

    .prologue
    .line 2516
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f09009a

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 2517
    .local v15, galleryWindowView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f09009d

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 2518
    .local v6, galleryWindowViewImage:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f09009b

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 2519
    .local v7, blackCover:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f0900a0

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v24

    .line 2522
    .local v24, trash:Landroid/view/View;
    :try_start_0
    move-object v0, v6

    check-cast v0, Lcom/lge/camera/components/RotateLayout;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2527
    :goto_0
    new-instance v3, Lcom/lge/camera/controller/PreviewPanelController$11;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/lge/camera/controller/PreviewPanelController$11;-><init>(Lcom/lge/camera/controller/PreviewPanelController;)V

    invoke-virtual {v7, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2534
    invoke-virtual {v6}, Landroid/view/View;->clearAnimation()V

    .line 2536
    const/4 v3, 0x2

    new-array v0, v3, [I

    move-object/from16 v21, v0

    .line 2537
    .local v21, startPos:[I
    const/4 v3, 0x2

    new-array v0, v3, [I

    move-object/from16 v23, v0

    .line 2538
    .local v23, targetPos:[I
    const/4 v3, 0x2

    new-array v10, v3, [I

    .line 2539
    .local v10, adjustPos:[I
    const/4 v3, 0x2

    new-array v0, v3, [I

    move-object/from16 v25, v0

    .line 2540
    .local v25, trashPos:[I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/lge/camera/components/RotateImageView;->getLocationOnScreen([I)V

    .line 2541
    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2542
    invoke-virtual {v6, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2543
    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2546
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v3}, Lcom/lge/camera/components/RotateImageView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v17, v3, v4

    .line 2547
    .local v17, scaleX:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v3}, Lcom/lge/camera/components/RotateImageView;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v18, v3, v4

    .line 2548
    .local v18, scaleY:F
    const/4 v3, 0x0

    aget v3, v21, v3

    const/4 v4, 0x0

    aget v4, v23, v4

    const/4 v5, 0x0

    aget v5, v10, v5

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    int-to-float v0, v3

    move/from16 v19, v0

    .line 2549
    .local v19, srcX:F
    const/4 v3, 0x1

    aget v3, v21, v3

    const/4 v4, 0x1

    aget v4, v23, v4

    const/4 v5, 0x1

    aget v5, v10, v5

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    int-to-float v0, v3

    move/from16 v20, v0

    .line 2550
    .local v20, srcY:F
    const/4 v3, 0x0

    aget v3, v23, v3

    int-to-float v12, v3

    .line 2551
    .local v12, destX:F
    const/4 v3, 0x1

    aget v3, v23, v3

    int-to-float v13, v3

    .line 2553
    .local v13, destY:F
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 2554
    const/16 v17, 0x0

    .line 2555
    const/16 v18, 0x0

    .line 2556
    const/4 v3, 0x0

    aget v3, v25, v3

    const/4 v4, 0x0

    aget v4, v23, v4

    const/4 v5, 0x0

    aget v5, v10, v5

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v0, v3

    move/from16 v19, v0

    .line 2557
    const/4 v3, 0x1

    aget v3, v25, v3

    const/4 v4, 0x1

    aget v4, v23, v4

    const/4 v5, 0x1

    aget v5, v10, v5

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v0, v3

    move/from16 v20, v0

    .line 2559
    check-cast v24, Lcom/lge/camera/components/RotateImageButton;

    .end local v24           #trash:Landroid/view/View;
    const v3, 0x7f0200e7

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageButton;->setImageResource(I)V

    .line 2562
    :cond_0
    const/16 v16, 0x0

    .line 2563
    .local v16, sa:Landroid/view/animation/ScaleAnimation;
    const/16 v22, 0x0

    .line 2564
    .local v22, ta:Landroid/view/animation/TranslateAnimation;
    const/4 v9, 0x0

    .line 2566
    .local v9, aa:Landroid/view/animation/AlphaAnimation;
    if-eqz p1, :cond_2

    .line 2567
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lge/camera/controller/PreviewPanelController;->mGalleryWindowAniState:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 2568
    invoke-direct/range {p0 .. p0}, Lcom/lge/camera/controller/PreviewPanelController;->galleryWindowViewClose()V

    .line 2632
    :goto_1
    return-void

    .line 2523
    .end local v9           #aa:Landroid/view/animation/AlphaAnimation;
    .end local v10           #adjustPos:[I
    .end local v12           #destX:F
    .end local v13           #destY:F
    .end local v16           #sa:Landroid/view/animation/ScaleAnimation;
    .end local v17           #scaleX:F
    .end local v18           #scaleY:F
    .end local v19           #srcX:F
    .end local v20           #srcY:F
    .end local v21           #startPos:[I
    .end local v22           #ta:Landroid/view/animation/TranslateAnimation;
    .end local v23           #targetPos:[I
    .end local v25           #trashPos:[I
    .restart local v24       #trash:Landroid/view/View;
    :catch_0
    move-exception v14

    .line 2524
    .local v14, e:Ljava/lang/ClassCastException;
    const-string v3, "CameraApp"

    const-string v4, "ClassCastException:"

    invoke-static {v3, v4, v14}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 2571
    .end local v14           #e:Ljava/lang/ClassCastException;
    .end local v24           #trash:Landroid/view/View;
    .restart local v9       #aa:Landroid/view/animation/AlphaAnimation;
    .restart local v10       #adjustPos:[I
    .restart local v12       #destX:F
    .restart local v13       #destY:F
    .restart local v16       #sa:Landroid/view/animation/ScaleAnimation;
    .restart local v17       #scaleX:F
    .restart local v18       #scaleY:F
    .restart local v19       #srcX:F
    .restart local v20       #srcY:F
    .restart local v21       #startPos:[I
    .restart local v22       #ta:Landroid/view/animation/TranslateAnimation;
    .restart local v23       #targetPos:[I
    .restart local v25       #trashPos:[I
    :cond_1
    new-instance v16, Landroid/view/animation/ScaleAnimation;

    .end local v16           #sa:Landroid/view/animation/ScaleAnimation;
    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v3, v2, v4}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 2572
    .restart local v16       #sa:Landroid/view/animation/ScaleAnimation;
    new-instance v22, Landroid/view/animation/TranslateAnimation;

    .end local v22           #ta:Landroid/view/animation/TranslateAnimation;
    move-object/from16 v0, v22

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v12, v2, v13}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2573
    .restart local v22       #ta:Landroid/view/animation/TranslateAnimation;
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    .end local v9           #aa:Landroid/view/animation/AlphaAnimation;
    const/high16 v3, 0x3f00

    const/high16 v4, 0x3f80

    invoke-direct {v9, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2574
    .restart local v9       #aa:Landroid/view/animation/AlphaAnimation;
    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2575
    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2590
    :goto_2
    new-instance v11, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v11, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2591
    .local v11, aniSet:Landroid/view/animation/AnimationSet;
    new-instance v3, Lcom/lge/camera/controller/PreviewPanelController$12;

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/lge/camera/controller/PreviewPanelController$12;-><init>(Lcom/lge/camera/controller/PreviewPanelController;ZLandroid/view/View;Landroid/view/View;Z)V

    invoke-virtual {v11, v3}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2626
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2627
    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2628
    invoke-virtual {v11, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2629
    const-wide/16 v3, 0x12c

    invoke-virtual {v11, v3, v4}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 2630
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x3fc0

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v11, v3}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2631
    invoke-virtual {v6, v11}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 2577
    .end local v11           #aniSet:Landroid/view/animation/AnimationSet;
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lge/camera/controller/PreviewPanelController;->mGalleryWindowAniState:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lge/camera/controller/PreviewPanelController;->mGalleryWindowAniState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 2579
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/lge/camera/controller/PreviewPanelController;->galleryWindowViewClose()V

    goto :goto_1

    .line 2582
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/lge/camera/components/RotateImageView;->setPressed(Z)V

    .line 2583
    const/16 v3, 0x8

    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2585
    new-instance v16, Landroid/view/animation/ScaleAnimation;

    .end local v16           #sa:Landroid/view/animation/ScaleAnimation;
    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v3, v1, v4, v2}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 2586
    .restart local v16       #sa:Landroid/view/animation/ScaleAnimation;
    new-instance v22, Landroid/view/animation/TranslateAnimation;

    .end local v22           #ta:Landroid/view/animation/TranslateAnimation;
    move-object/from16 v0, v22

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v12, v1, v13, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2587
    .restart local v22       #ta:Landroid/view/animation/TranslateAnimation;
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    .end local v9           #aa:Landroid/view/animation/AlphaAnimation;
    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f00

    invoke-direct {v9, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v9       #aa:Landroid/view/animation/AlphaAnimation;
    goto :goto_2
.end method

.method public showGalleryQuickViewWindow(ZJ)Z
    .locals 12
    .parameter "useLongKey"
    .parameter "duration"

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2327
    invoke-direct {p0}, Lcom/lge/camera/controller/PreviewPanelController;->clearSettingMenuAndSubMenuForReviewButton()V

    .line 2329
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v8, 0x7f09009a

    invoke-interface {v5, v8}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2330
    .local v1, galleryWindowView:Landroid/view/View;
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v8, 0x7f09009d

    invoke-interface {v5, v8}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2332
    .local v2, galleryWindowViewImage:Landroid/view/View;
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    if-nez v1, :cond_1

    .line 2335
    :cond_0
    iput v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGalleryWindowAniState:I

    move v5, v7

    .line 2407
    :goto_0
    return v5

    .line 2339
    :cond_1
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v8, 0x7f0900a1

    invoke-interface {v5, v8}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbLayout:Landroid/view/View;

    .line 2340
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v8, 0x7f0900a2

    invoke-interface {v5, v8}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lge/camera/components/RotateImageView;

    iput-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbImage:Lcom/lge/camera/components/RotateImageView;

    .line 2341
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbLayout:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 2343
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v8, 0x7f0900a0

    invoke-interface {v5, v8}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lge/camera/components/RotateImageButton;

    iput-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mTrashView:Lcom/lge/camera/components/RotateImageButton;

    .line 2344
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mTrashView:Lcom/lge/camera/components/RotateImageButton;

    const v8, 0x7f0200e6

    invoke-virtual {v5, v8}, Lcom/lge/camera/components/RotateImageButton;->setImageResource(I)V

    .line 2346
    if-nez p1, :cond_4

    .line 2347
    iput-boolean v6, p0, Lcom/lge/camera/controller/PreviewPanelController;->mAutoReviewBlockTouch:Z

    .line 2348
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mTrashView:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v5, v11}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    .line 2349
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbLayout:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 2350
    iput-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbLayout:Landroid/view/View;

    .line 2351
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbImage:Lcom/lge/camera/components/RotateImageView;

    if-eqz v5, :cond_2

    .line 2352
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbImage:Lcom/lge/camera/components/RotateImageView;

    invoke-static {v5}, Lcom/lge/camera/util/Util;->clearImageViewDrawable(Landroid/widget/ImageView;)V

    .line 2353
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbImage:Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v5, v9}, Lcom/lge/camera/components/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2354
    iput-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbImage:Lcom/lge/camera/components/RotateImageView;

    .line 2382
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v8, 0x7f09009e

    invoke-interface {v5, v8}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastGalleryImage:Landroid/widget/ImageView;

    .line 2383
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastGalleryImage:Landroid/widget/ImageView;

    const v8, 0x7f0200e4

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2385
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 2386
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 2388
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    invoke-direct {p0, v5, v7}, Lcom/lge/camera/controller/PreviewPanelController;->setGalleryWindowImage(Landroid/net/Uri;I)V

    .line 2390
    iput v6, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGalleryWindowAniState:I

    .line 2391
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v7}, Lcom/lge/camera/ControllerFunction;->enableInput(Z)V

    .line 2392
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v7, Lcom/lge/camera/controller/PreviewPanelController$8;

    invoke-direct {v7, p0}, Lcom/lge/camera/controller/PreviewPanelController$8;-><init>(Lcom/lge/camera/controller/PreviewPanelController;)V

    invoke-interface {v5, v7}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 2403
    if-nez p1, :cond_3

    .line 2404
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mHideQuickViewRunable:Ljava/lang/Runnable;

    invoke-interface {v5, v7, p2, p3}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;J)V

    :cond_3
    move v5, v6

    .line 2407
    goto/16 :goto_0

    .line 2357
    :cond_4
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mTrashView:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v5, v7}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    .line 2358
    iget-object v8, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbnailLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2359
    :try_start_0
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_5

    .line 2360
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v10, 0x1

    invoke-virtual {v5, v9, v10}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2361
    .local v4, thumbBmp:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbImage:Lcom/lge/camera/components/RotateImageView;

    invoke-static {v5}, Lcom/lge/camera/util/Util;->clearImageViewDrawable(Landroid/widget/ImageView;)V

    .line 2362
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbImage:Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v5, v4}, Lcom/lge/camera/components/RotateImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2364
    .end local v4           #thumbBmp:Landroid/graphics/Bitmap;
    :cond_5
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2365
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbImage:Lcom/lge/camera/components/RotateImageView;

    const v8, 0x3ef33333

    invoke-virtual {v5, v8}, Lcom/lge/camera/components/RotateImageView;->setAlpha(F)V

    .line 2367
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSoftKeyNavigationBarModel()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2368
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v8, 0x7f09009c

    invoke-interface {v5, v8}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2369
    .local v0, galleryWindowLayout:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2370
    .local v3, marginParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v3}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 2371
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2372
    const/16 v5, 0x9

    invoke-virtual {v3, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2373
    iget v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->NAVI_MARGIN:I

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 2378
    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 2364
    .end local v0           #galleryWindowLayout:Landroid/view/View;
    .end local v3           #marginParams:Landroid/widget/RelativeLayout$LayoutParams;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 2375
    .restart local v0       #galleryWindowLayout:Landroid/view/View;
    .restart local v3       #marginParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_6
    const/16 v5, 0xa

    invoke-virtual {v3, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2376
    iget v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->NAVI_MARGIN:I

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_2
.end method

.method public showLiveSnapshotButton()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 785
    const/4 v0, 0x0

    const v1, 0x7f02043a

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->setSubButton(II)V

    .line 786
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f09014b

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 787
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f09014c

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 788
    return-void
.end method

.method public showRecoridngStopButton()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 795
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 801
    :cond_0
    :goto_0
    return-void

    .line 798
    :cond_1
    const/4 v0, 0x2

    const v1, 0x7f02044c

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->setSubButton(II)V

    .line 799
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageButton;->setEnabled(Z)V

    .line 800
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f090150

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method public showSubButtonInit(Z)V
    .locals 2
    .parameter "updateThumb"

    .prologue
    const/4 v1, 0x0

    .line 772
    invoke-virtual {p0, v1, v1}, Lcom/lge/camera/controller/PreviewPanelController;->setSubButton(II)V

    .line 773
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->setSubButton(II)V

    .line 774
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->setSubButton(II)V

    .line 776
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->updateThumbnailButtonVisibility()V

    .line 777
    if-eqz p1, :cond_0

    .line 778
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->updateThumbnailButton()V

    .line 780
    :cond_0
    return-void
.end method

.method public slidePanelIn()V
    .locals 3

    .prologue
    .line 3205
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportClearView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_1

    .line 3224
    :cond_0
    :goto_0
    return-void

    .line 3209
    :cond_1
    const/4 v0, 0x1

    const/16 v1, 0xc8

    new-instance v2, Lcom/lge/camera/controller/PreviewPanelController$18;

    invoke-direct {v2, p0}, Lcom/lge/camera/controller/PreviewPanelController$18;-><init>(Lcom/lge/camera/controller/PreviewPanelController;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/camera/controller/PreviewPanelController;->panelMenuAnimation(ZILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method public slidePanelOut()V
    .locals 3

    .prologue
    .line 3227
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportClearView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_1

    .line 3245
    :cond_0
    :goto_0
    return-void

    .line 3231
    :cond_1
    const/4 v0, 0x0

    const/16 v1, 0xc8

    new-instance v2, Lcom/lge/camera/controller/PreviewPanelController$19;

    invoke-direct {v2, p0}, Lcom/lge/camera/controller/PreviewPanelController$19;-><init>(Lcom/lge/camera/controller/PreviewPanelController;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/camera/controller/PreviewPanelController;->panelMenuAnimation(ZILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method public snapshotOnContinuousFocus()Z
    .locals 1

    .prologue
    .line 2929
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSnapshotOnContinuousFocus:Z

    return v0
.end method

.method public snapshotOnIdle()Z
    .locals 1

    .prologue
    .line 2925
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSnapshotOnIdle:Z

    return v0
.end method

.method public startRotation(IZ)V
    .locals 8
    .parameter "degree"
    .parameter "animation"

    .prologue
    const v7, 0x7f090154

    const/4 v4, 0x0

    .line 1288
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->isCamcorderRotation(Z)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1333
    :goto_0
    return-void

    .line 1292
    :cond_0
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/lge/camera/util/Util;->convertDegree(Landroid/content/res/Resources;I)I

    move-result v0

    .line 1294
    .local v0, convDegree:I
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f09014b

    invoke-interface {v5, v6, p1, v4, p2}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    .line 1295
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f09014d

    invoke-interface {v5, v6, p1, v4, p2}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    .line 1296
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f09014f

    invoke-interface {v5, v6, p1, v4, p2}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    .line 1297
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f090159

    invoke-interface {v5, v6, p1, v4, p2}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    .line 1298
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f09015a

    invoke-interface {v5, v6, p1, v4, p2}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    .line 1299
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f0900a2

    invoke-interface {v5, v6, p1, v4, p2}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    .line 1301
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f090152

    invoke-interface {v5, v6, p1, p2}, Lcom/lge/camera/ControllerFunction;->setDegree(IIZ)V

    .line 1303
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f090155

    invoke-interface {v5, v6, v0, p2}, Lcom/lge/camera/ControllerFunction;->setDegree(IIZ)V

    .line 1304
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f090156

    invoke-interface {v5, v6, v0, p2}, Lcom/lge/camera/ControllerFunction;->setDegree(IIZ)V

    .line 1305
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f090157

    invoke-interface {v5, v6, v0, p2}, Lcom/lge/camera/ControllerFunction;->setDegree(IIZ)V

    .line 1308
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f0901e6

    invoke-interface {v5, v6, p1, v4, p2}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    .line 1309
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f0901e8

    invoke-interface {v5, v6, p1, v4, p2}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    .line 1310
    if-eqz p1, :cond_1

    const/16 v5, 0xb4

    if-ne p1, v5, :cond_3

    .line 1311
    :cond_1
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v7}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f020405

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1316
    :goto_1
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f090148

    invoke-interface {v5, v6, v0, p2}, Lcom/lge/camera/ControllerFunction;->setDegree(IIZ)V

    .line 1317
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->isShutterButtonEnable()Z

    move-result v5

    invoke-virtual {p0, v5, p1}, Lcom/lge/camera/controller/PreviewPanelController;->setShutterButtonImage(ZI)V

    .line 1319
    iget v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGalleryWindowAniState:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    .line 1321
    :try_start_0
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f09009d

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateLayout;

    .line 1322
    .local v2, galleryQuickView:Lcom/lge/camera/components/RotateLayout;
    invoke-virtual {v2, p1}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 1324
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v5

    if-eqz v5, :cond_4

    move v0, v4

    .line 1325
    :goto_2
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v5, 0x7f090153

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/components/RotateLayout;

    .line 1326
    .local v3, switcherLeverView:Lcom/lge/camera/components/RotateLayout;
    invoke-virtual {v3, v0}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1332
    .end local v2           #galleryQuickView:Lcom/lge/camera/components/RotateLayout;
    .end local v3           #switcherLeverView:Lcom/lge/camera/components/RotateLayout;
    :cond_2
    :goto_3
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v5, 0x7f0900a0

    invoke-interface {v4, v5, p1, p2}, Lcom/lge/camera/ControllerFunction;->setDegree(IIZ)V

    goto/16 :goto_0

    .line 1313
    :cond_3
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v7}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f020406

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 1324
    .restart local v2       #galleryQuickView:Lcom/lge/camera/components/RotateLayout;
    :cond_4
    const/16 v0, 0x10e

    goto :goto_2

    .line 1328
    .end local v2           #galleryQuickView:Lcom/lge/camera/components/RotateLayout;
    :catch_0
    move-exception v1

    .line 1329
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v4, "CameraApp"

    const-string v5, "ClassCastException:"

    invoke-static {v4, v5, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public stopTimerTask()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3055
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->checkMediator()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3056
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_voiceshutter"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButtonLongKey:Z

    if-eqz v0, :cond_0

    .line 3059
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/lge/camera/util/AudioUtil;->setAudioFocus(Landroid/content/Context;Z)V

    .line 3061
    :cond_0
    iput-boolean v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButtonLongKey:Z

    .line 3063
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mButtonCheckTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 3064
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mButtonCheckTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 3065
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mButtonCheckTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 3066
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mButtonCheckTimer:Ljava/util/Timer;

    .line 3068
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButtonRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 3070
    :cond_2
    return-void
.end method

.method public updateThumbnailButton()V
    .locals 2

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/PreviewPanelController$2;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/PreviewPanelController$2;-><init>(Lcom/lge/camera/controller/PreviewPanelController;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 1272
    return-void
.end method

.method public updateThumbnailButtonVisibility()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 1206
    const/4 v2, 0x0

    .line 1208
    .local v2, visible:I
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_1

    .line 1212
    :cond_0
    const/16 v2, 0x8

    .line 1215
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    .line 1217
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isPauseAndResumeSupported()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v3

    if-eq v3, v5, :cond_2

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 1220
    :cond_2
    const/16 v2, 0x8

    .line 1223
    :cond_3
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v3

    if-ne v3, v5, :cond_7

    .line 1225
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isAvailableLiveShot()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1226
    const/16 v2, 0x8

    .line 1230
    :cond_4
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_live_effect"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1231
    .local v0, liveEffect:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_video_record_mode"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1232
    .local v1, recordMode:Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isLiveEffectSupported()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "off"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "not found"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    const-string v3, "recordmode_live_effect"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "recordmode_dual"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_preview_size_on_device"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/properties/MmsProperties;->isAvailableMmsResolution(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1238
    :cond_6
    const/16 v2, 0x8

    .line 1242
    .end local v0           #liveEffect:Ljava/lang/String;
    .end local v1           #recordMode:Ljava/lang/String;
    :cond_7
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/PreviewPanelController;->setThumbnailButtonVisibility(I)V

    .line 1243
    return-void
.end method
