.class public Lcom/lge/camera/controller/camcorder/AudiozoomController;
.super Lcom/lge/camera/controller/Controller;
.source "AudiozoomController.java"


# static fields
.field private static final AUDIOZOOM_MOCE_LANDSCAPE:I = 0x7

.field private static final AUDIOZOOM_OFF:I

.field public static final MSG_HIDE_ANI:I


# instance fields
.field private isSetQFL:Z

.field private mAudioinput:I

.field private mAudiozoomBarLevelMeter:Lcom/lge/camera/components/AudiozoomBarLevelMeter;

.field private mAudiozoomBarStep:Lcom/lge/camera/components/AudiozoomBar;

.field private mAudiozoomGuideLayout:Lcom/lge/camera/components/RotateLayout;

.field private mAudiozoomGuideString:Lcom/lge/camera/components/RotateTextView;

.field private mAudiozoomGuideStringLayout:Lcom/lge/camera/components/RotateLayout;

.field private mAudiozoomStart:Z

.field private mAudiozoomStartInRecording:Z

.field private mAudiozoomvalue:Ljava/lang/String;

.field private mGuideViewHeight:I

.field private mGuideViewLeftMargin:I

.field private mGuideViewWidth:I

.field private mHandler:Lcom/lge/camera/util/MainHandler;

.field private mLevelMeterValue:I

.field private mStartrecordingdegree:I

.field private mThreadRefreshLevelMeter:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 3
    .parameter "function"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/Controller;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 34
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mHandler:Lcom/lge/camera/util/MainHandler;

    .line 35
    iput v1, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mGuideViewWidth:I

    .line 36
    iput v1, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mGuideViewHeight:I

    .line 37
    iput v1, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mGuideViewLeftMargin:I

    .line 39
    iput-boolean v1, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomStart:Z

    .line 40
    iput-boolean v1, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomStartInRecording:Z

    .line 41
    iput-object v2, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomBarLevelMeter:Lcom/lge/camera/components/AudiozoomBarLevelMeter;

    .line 42
    iput-object v2, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomBarStep:Lcom/lge/camera/components/AudiozoomBar;

    .line 43
    iput-object v2, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomGuideLayout:Lcom/lge/camera/components/RotateLayout;

    .line 44
    iput-object v2, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomGuideString:Lcom/lge/camera/components/RotateTextView;

    .line 45
    iput-object v2, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomGuideStringLayout:Lcom/lge/camera/components/RotateLayout;

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudioinput:I

    .line 47
    const-string v0, "off"

    iput-object v0, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomvalue:Ljava/lang/String;

    .line 48
    iput-boolean v1, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->isSetQFL:Z

    .line 49
    iput v1, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mStartrecordingdegree:I

    .line 51
    iput v1, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mLevelMeterValue:I

    .line 52
    iput-object v2, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mThreadRefreshLevelMeter:Ljava/lang/Thread;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/components/RotateLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomGuideLayout:Lcom/lge/camera/components/RotateLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/components/AudiozoomBarLevelMeter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomBarLevelMeter:Lcom/lge/camera/components/AudiozoomBarLevelMeter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/components/AudiozoomBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomBarStep:Lcom/lge/camera/components/AudiozoomBar;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/components/RotateLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomGuideStringLayout:Lcom/lge/camera/components/RotateLayout;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Ljava/lang/Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mThreadRefreshLevelMeter:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/lge/camera/controller/camcorder/AudiozoomController;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mThreadRefreshLevelMeter:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/lge/camera/controller/camcorder/AudiozoomController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mLevelMeterValue:I

    return v0
.end method

.method static synthetic access$2302(Lcom/lge/camera/controller/camcorder/AudiozoomController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mLevelMeterValue:I

    return p1
.end method

.method static synthetic access$2400(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomStart:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/util/MainHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mHandler:Lcom/lge/camera/util/MainHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->checkLayout()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->isSetQFL:Z

    return v0
.end method

.method static synthetic access$600(Lcom/lge/camera/controller/camcorder/AudiozoomController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->showAudiozoomReady()V

    return-void
.end method

.method static synthetic access$700(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/components/RotateTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomGuideString:Lcom/lge/camera/components/RotateTextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lge/camera/controller/camcorder/AudiozoomController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->getTextArea()I

    move-result v0

    return v0
.end method

.method private checkLayout()Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomBarLevelMeter:Lcom/lge/camera/components/AudiozoomBarLevelMeter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomBarStep:Lcom/lge/camera/components/AudiozoomBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomGuideLayout:Lcom/lge/camera/components/RotateLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomGuideString:Lcom/lge/camera/components/RotateTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomGuideStringLayout:Lcom/lge/camera/components/RotateLayout;

    if-nez v0, :cond_1

    .line 121
    :cond_0
    const/4 v0, 0x0

    .line 123
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getTextArea()I
    .locals 5

    .prologue
    .line 263
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a000d

    invoke-static {v3, v4}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v2

    .line 264
    .local v2, preview_width:I
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a00a7

    invoke-static {v3, v4}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    .line 265
    .local v0, leftMargin:I
    const/4 v1, 0x0

    .line 267
    .local v1, maxWidth:I
    sub-int v1, v2, v0

    .line 268
    return v1
.end method

.method private setAudioZoomGuideViewLayout()V
    .locals 8

    .prologue
    .line 512
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f09000b

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 513
    .local v4, view:Landroid/widget/RelativeLayout;
    if-eqz v4, :cond_2

    .line 514
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 516
    .local v2, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 517
    iget v5, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mGuideViewWidth:I

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 518
    iget v5, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mGuideViewHeight:I

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 519
    iget v5, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mGuideViewLeftMargin:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 525
    :goto_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUVGAmodel()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isXGAmodel()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 526
    :cond_0
    const v5, 0x7f0a0008

    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->getPixelFromDimens(I)I

    move-result v1

    .line 527
    .local v1, lcdWidth:I
    const v5, 0x7f0a0009

    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->getPixelFromDimens(I)I

    move-result v0

    .line 528
    .local v0, lcdHeight:I
    const/4 v3, 0x0

    .line 530
    .local v3, shiftForUVGA:I
    iget v5, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mGuideViewWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mGuideViewHeight:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    int-to-float v6, v1

    int-to-float v7, v0

    div-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    iget v5, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mGuideViewHeight:I

    if-gt v5, v0, :cond_4

    .line 532
    const/16 v3, 0x78

    .line 536
    :goto_1
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 537
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 542
    .end local v0           #lcdHeight:I
    .end local v1           #lcdWidth:I
    .end local v3           #shiftForUVGA:I
    :cond_1
    :goto_2
    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 543
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 545
    .end local v2           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    return-void

    .line 521
    .restart local v2       #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    iget v5, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mGuideViewWidth:I

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 522
    iget v5, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mGuideViewHeight:I

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 523
    iget v5, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mGuideViewLeftMargin:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    .line 534
    .restart local v0       #lcdHeight:I
    .restart local v1       #lcdWidth:I
    .restart local v3       #shiftForUVGA:I
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 539
    :cond_5
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_2
.end method

.method private showAudiozoomReady()V
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/camcorder/AudiozoomController$5;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/camcorder/AudiozoomController$5;-><init>(Lcom/lge/camera/controller/camcorder/AudiozoomController;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 454
    return-void
.end method


# virtual methods
.method public addMsgArg(II)V
    .locals 4
    .parameter "what"
    .parameter "arg"

    .prologue
    .line 373
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mHandler:Lcom/lge/camera/util/MainHandler;

    if-nez v1, :cond_0

    .line 380
    :goto_0
    return-void

    .line 376
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 377
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 378
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 379
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mHandler:Lcom/lge/camera/util/MainHandler;

    int-to-long v2, p2

    invoke-virtual {v1, v0, v2, v3}, Lcom/lge/camera/util/MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public calculateangle(I)I
    .locals 5
    .parameter "zoomvalue"

    .prologue
    const/high16 v4, 0x42b4

    .line 350
    const/16 v0, 0x5a

    .line 351
    .local v0, angle:I
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getZoomMaxValue()F

    move-result v1

    .line 353
    .local v1, max:F
    if-nez p1, :cond_0

    .line 354
    const/16 v0, 0x5a

    .line 360
    :goto_0
    return v0

    .line 355
    :cond_0
    float-to-int v2, v1

    if-ne p1, v2, :cond_1

    .line 356
    const/4 v0, 0x0

    goto :goto_0

    .line 358
    :cond_1
    int-to-float v2, p1

    div-float v3, v4, v1

    mul-float/2addr v2, v3

    sub-float v2, v4, v2

    float-to-int v0, v2

    goto :goto_0
.end method

.method public getAudioZoomStartInRecording()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomStartInRecording:Z

    return v0
.end method

.method public getAudiozoomStart()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomStart:Z

    return v0
.end method

.method public getStartrecordingdegree()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mStartrecordingdegree:I

    return v0
.end method

.method public getmAudiozoomvalue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomvalue:Ljava/lang/String;

    return-object v0
.end method

.method public initController()V
    .locals 6

    .prologue
    .line 60
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f0900cf

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->inflateStub(I)Landroid/view/View;

    .line 62
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f090014

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/components/AudiozoomBarLevelMeter;

    iput-object v3, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomBarLevelMeter:Lcom/lge/camera/components/AudiozoomBarLevelMeter;

    .line 63
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomBarLevelMeter:Lcom/lge/camera/components/AudiozoomBarLevelMeter;

    invoke-virtual {v3}, Lcom/lge/camera/components/AudiozoomBarLevelMeter;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 64
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 65
    .local v1, bpWidth:I
    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 66
    .local v0, bpHeight:I
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomBarLevelMeter:Lcom/lge/camera/components/AudiozoomBarLevelMeter;

    invoke-virtual {v3, v1, v0}, Lcom/lge/camera/components/AudiozoomBarLevelMeter;->initRecProgressBar(II)V

    .line 68
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f090015

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/components/AudiozoomBar;

    iput-object v3, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomBarStep:Lcom/lge/camera/components/AudiozoomBar;

    .line 69
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomBarStep:Lcom/lge/camera/components/AudiozoomBar;

    invoke-virtual {v3}, Lcom/lge/camera/components/AudiozoomBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 70
    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 71
    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 72
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomBarStep:Lcom/lge/camera/components/AudiozoomBar;

    invoke-virtual {v3, v1, v0}, Lcom/lge/camera/components/AudiozoomBar;->initRecProgressBar(II)V

    .line 74
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f09000c

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/components/RotateLayout;

    iput-object v3, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomGuideLayout:Lcom/lge/camera/components/RotateLayout;

    .line 75
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f090010

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/components/RotateTextView;

    iput-object v3, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomGuideString:Lcom/lge/camera/components/RotateTextView;

    .line 76
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomGuideString:Lcom/lge/camera/components/RotateTextView;

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v5, 0x7f0b02f8

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/camera/components/RotateTextView;->setText(Ljava/lang/String;)V

    .line 77
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f09000f

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/components/RotateLayout;

    iput-object v3, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomGuideStringLayout:Lcom/lge/camera/components/RotateLayout;

    .line 79
    invoke-direct {p0}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->setAudioZoomGuideViewLayout()V

    .line 81
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    .line 82
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mHandler:Lcom/lge/camera/util/MainHandler;

    .line 110
    iput-object v0, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomBarLevelMeter:Lcom/lge/camera/components/AudiozoomBarLevelMeter;

    .line 111
    iput-object v0, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomBarStep:Lcom/lge/camera/components/AudiozoomBar;

    .line 112
    iput-object v0, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomGuideLayout:Lcom/lge/camera/components/RotateLayout;

    .line 113
    iput-object v0, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomGuideString:Lcom/lge/camera/components/RotateTextView;

    .line 114
    iput-object v0, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomGuideStringLayout:Lcom/lge/camera/components/RotateLayout;

    .line 115
    iput-object v0, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mThreadRefreshLevelMeter:Ljava/lang/Thread;

    .line 116
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 91
    invoke-direct {p0}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->checkLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomBarLevelMeter:Lcom/lge/camera/components/AudiozoomBarLevelMeter;

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/AudiozoomBarLevelMeter;->setVisibility(I)V

    .line 93
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomBarStep:Lcom/lge/camera/components/AudiozoomBar;

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/AudiozoomBar;->setVisibility(I)V

    .line 94
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomGuideLayout:Lcom/lge/camera/components/RotateLayout;

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/RotateLayout;->setVisibility(I)V

    .line 95
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomGuideStringLayout:Lcom/lge/camera/components/RotateLayout;

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/RotateLayout;->setVisibility(I)V

    .line 98
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mThreadRefreshLevelMeter:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 99
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mThreadRefreshLevelMeter:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 100
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mThreadRefreshLevelMeter:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :cond_1
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onResume()V

    .line 87
    return-void
.end method

.method public resetAudioZoomMenu()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 483
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAudiozoom()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->isAudiozoom_ExceptionCase(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_audiozoom"

    invoke-interface {v0, v1, v2, v2}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 488
    :cond_0
    return-void
.end method

.method public setAudioZoomGuideViewLayout(III)V
    .locals 0
    .parameter "width"
    .parameter "height"
    .parameter "marginLeft"

    .prologue
    .line 548
    iput p1, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mGuideViewWidth:I

    .line 549
    iput p2, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mGuideViewHeight:I

    .line 550
    iput p3, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mGuideViewLeftMargin:I

    .line 552
    invoke-direct {p0}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->setAudioZoomGuideViewLayout()V

    .line 553
    return-void
.end method

.method public setAudioZoomStartInRecording(Z)V
    .locals 0
    .parameter "start"

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomStartInRecording:Z

    .line 177
    return-void
.end method

.method public setAudioinput()V
    .locals 3

    .prologue
    .line 364
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getOrientation()I

    move-result v0

    .line 366
    .local v0, Orientation:I
    iget v1, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudioinput:I

    if-eq v1, v0, :cond_0

    .line 367
    iput v0, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudioinput:I

    .line 368
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudioinput:I

    invoke-static {v1, v2}, Lcom/lge/camera/util/AudioUtil;->setAudiodevice(Landroid/content/Context;I)V

    .line 370
    :cond_0
    return-void
.end method

.method public setAudiozoomStart(Z)V
    .locals 0
    .parameter "AudiozoomStart"

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomStart:Z

    .line 169
    return-void
.end method

.method public setAudiozoombuttonstate()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 383
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getHeadsetstate()I

    move-result v0

    .line 384
    .local v0, Headsetstate:I
    const/4 v3, 0x0

    .line 385
    .local v3, resid:I
    const/4 v1, 0x1

    .line 386
    .local v1, isDim:Z
    const/4 v2, 0x1

    .line 388
    .local v2, isEnable:Z
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->isAudiozoom_ExceptionCase(Z)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    .line 390
    :cond_0
    const/4 v2, 0x0

    .line 391
    const/4 v1, 0x1

    .line 394
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 395
    iget-boolean v4, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomStart:Z

    if-eqz v4, :cond_4

    .line 396
    if-ne v0, v6, :cond_3

    .line 397
    const v3, 0x7f020425

    .line 415
    :goto_0
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v6, v2, v1}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(IZZ)V

    .line 416
    if-eqz v3, :cond_2

    .line 417
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v6, v3}, Lcom/lge/camera/ControllerFunction;->changeButtonResource(II)V

    .line 419
    :cond_2
    return-void

    .line 399
    :cond_3
    const v3, 0x7f020426

    goto :goto_0

    .line 402
    :cond_4
    const v3, 0x7f020425

    goto :goto_0

    .line 405
    :cond_5
    iget-boolean v4, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomStart:Z

    if-eqz v4, :cond_7

    .line 406
    if-ne v0, v6, :cond_6

    .line 407
    const v3, 0x7f020277

    goto :goto_0

    .line 409
    :cond_6
    const v3, 0x7f020278

    goto :goto_0

    .line 412
    :cond_7
    const v3, 0x7f020277

    goto :goto_0
.end method

.method public setForced_audiozoom(Z)V
    .locals 5
    .parameter "isEnable"

    .prologue
    const/4 v4, 0x0

    .line 457
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAudiozoom()Z

    move-result v1

    if-nez v1, :cond_1

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    if-eqz p1, :cond_2

    .line 462
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->isAudiozoom_ExceptionCase(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 463
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_audiozoom"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 466
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_audiozoom"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getQfIndex(Ljava/lang/String;)I

    move-result v0

    .line 467
    .local v0, menuIndex:I
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v0}, Lcom/lge/camera/ControllerFunction;->isQuickFunctionList(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 468
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isQuickFunctionSettingControllerShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "key_audiozoom"

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getSelectedQuickFunctionMenuKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 470
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.HideQuickFunctionSettingMenu"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 472
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_audiozoom"

    invoke-interface {v1, v2, v4, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 473
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v0, v4}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionControllerMenuIcon(II)V

    .line 474
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_audiozoom"

    const-string v3, "off"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 475
    const-string v1, "off"

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->setmAudiozoomvalue(Ljava/lang/String;)V

    goto :goto_0

    .line 477
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_audiozoom"

    invoke-interface {v1, v2, v4, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method public setStartrecordingdegree(I)V
    .locals 1
    .parameter "degree"

    .prologue
    .line 153
    iput p1, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mStartrecordingdegree:I

    .line 154
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    iget v0, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mStartrecordingdegree:I

    add-int/lit8 v0, v0, 0x5a

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mStartrecordingdegree:I

    .line 157
    :cond_0
    return-void
.end method

.method public setmAudiozoomvalue(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 132
    const-string v0, "CameraApp"

    const-string v1, "==>Audiozoom controller is not init"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :goto_0
    return-void

    .line 135
    :cond_0
    iput-object p1, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomvalue:Ljava/lang/String;

    .line 136
    const-string v0, "on"

    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomvalue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->isSetQFL:Z

    .line 138
    invoke-direct {p0}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->showAudiozoomReady()V

    goto :goto_0

    .line 140
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->isSetQFL:Z

    .line 141
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/camcorder/AudiozoomController$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/camcorder/AudiozoomController$1;-><init>(Lcom/lge/camera/controller/camcorder/AudiozoomController;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public startAudiozoom()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 181
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getHeadsetstate()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v4

    if-eqz v4, :cond_2

    .line 185
    :cond_0
    const-string v4, "CameraApp"

    const-string v5, "Do not start Audiozoom"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_1
    :goto_0
    return-void

    .line 188
    :cond_2
    invoke-direct {p0}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->checkLayout()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 192
    invoke-static {}, Lcom/lge/camera/VideoRecorder;->setAudiozoommetadata()V

    .line 193
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_zoom"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 195
    .local v0, mZoomValue:I
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getZoomCursorMaxStep()I

    move-result v3

    .line 196
    .local v3, zoomCursorMaxStep:I
    const/4 v1, 0x0

    .line 197
    .local v1, max:I
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getZoomMaxValue()F

    move-result v4

    float-to-int v1, v4

    .line 199
    const/16 v4, 0x5a

    if-ne v3, v4, :cond_3

    if-lez v1, :cond_3

    .line 200
    mul-int/lit8 v4, v0, 0x5a

    int-to-float v4, v4

    int-to-float v5, v1

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 202
    :cond_3
    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->calculateangle(I)I

    move-result v2

    .line 203
    .local v2, zoomAngle:I
    iget v4, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudioinput:I

    if-eq v4, v6, :cond_4

    .line 204
    iput v6, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudioinput:I

    .line 206
    :cond_4
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->setAudioinput()V

    .line 208
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v5, Lcom/lge/camera/controller/camcorder/AudiozoomController$2;

    invoke-direct {v5, p0}, Lcom/lge/camera/controller/camcorder/AudiozoomController$2;-><init>(Lcom/lge/camera/controller/camcorder/AudiozoomController;)V

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 256
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "==>angle"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const/4 v4, 0x7

    invoke-static {v2, v4}, Lcom/lge/camera/VideoRecorder;->setAudiozoom(II)V

    .line 259
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->setAudiozoomStart(Z)V

    goto :goto_0
.end method

.method public startRotation(I)V
    .locals 3
    .parameter "degree"

    .prologue
    .line 491
    iget-boolean v1, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->isCamcorderRotation(Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 492
    :cond_0
    const-string v1, "CameraApp"

    const-string v2, "AudiozoomController is not initialize."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    :cond_1
    :goto_0
    return-void

    .line 496
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomGuideLayout:Lcom/lge/camera/components/RotateLayout;

    if-eqz v1, :cond_3

    .line 497
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomGuideLayout:Lcom/lge/camera/components/RotateLayout;

    invoke-virtual {v1, p1}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 500
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomGuideStringLayout:Lcom/lge/camera/components/RotateLayout;

    if-eqz v1, :cond_4

    .line 501
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomGuideStringLayout:Lcom/lge/camera/components/RotateLayout;

    invoke-virtual {v1, p1}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 504
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f090012

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateLayout;

    .line 505
    .local v0, rl:Lcom/lge/camera/components/RotateLayout;
    if-eqz v0, :cond_1

    .line 506
    invoke-virtual {v0, p1}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    goto :goto_0
.end method

.method public stopAudiozoom()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 272
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->checkLayout()Z

    move-result v1

    if-nez v1, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->setAudiozoomStart(Z)V

    .line 277
    invoke-static {v2, v2}, Lcom/lge/camera/VideoRecorder;->setAudiozoom(II)V

    .line 278
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/lge/camera/util/AudioUtil;->setAudiodevice(Landroid/content/Context;I)V

    .line 279
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomBarLevelMeter:Lcom/lge/camera/components/AudiozoomBarLevelMeter;

    invoke-virtual {v1, v4}, Lcom/lge/camera/components/AudiozoomBarLevelMeter;->setVisibility(I)V

    .line 280
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomBarStep:Lcom/lge/camera/components/AudiozoomBar;

    invoke-virtual {v1, v4}, Lcom/lge/camera/components/AudiozoomBar;->setVisibility(I)V

    .line 281
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->setAudiozoombuttonstate()V

    .line 282
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomGuideLayout:Lcom/lge/camera/components/RotateLayout;

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/RotateLayout;->setVisibility(I)V

    .line 283
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomGuideStringLayout:Lcom/lge/camera/components/RotateLayout;

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/RotateLayout;->setVisibility(I)V

    .line 286
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mThreadRefreshLevelMeter:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mThreadRefreshLevelMeter:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 288
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController;->mThreadRefreshLevelMeter:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateAudioZoomLevelMeter()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/camcorder/AudiozoomController$4;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/camcorder/AudiozoomController$4;-><init>(Lcom/lge/camera/controller/camcorder/AudiozoomController;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 347
    return-void
.end method

.method public updateAudiozoomvalue(ZI)V
    .locals 4
    .parameter "updateangle"
    .parameter "zoomvalue"

    .prologue
    .line 296
    if-eqz p1, :cond_0

    .line 297
    move v0, p2

    .line 298
    .local v0, tmpzoom:I
    invoke-virtual {p0, p2}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->calculateangle(I)I

    move-result v1

    .line 299
    .local v1, zoomAngle:I
    invoke-static {v1}, Lcom/lge/camera/VideoRecorder;->updateAudiozoom(I)V

    .line 301
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v3, Lcom/lge/camera/controller/camcorder/AudiozoomController$3;

    invoke-direct {v3, p0, v0}, Lcom/lge/camera/controller/camcorder/AudiozoomController$3;-><init>(Lcom/lge/camera/controller/camcorder/AudiozoomController;I)V

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 334
    .end local v0           #tmpzoom:I
    .end local v1           #zoomAngle:I
    :goto_0
    return-void

    .line 332
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->setAudioinput()V

    goto :goto_0
.end method
