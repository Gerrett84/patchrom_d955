.class public Lcom/lge/camera/controller/QuickButtonController;
.super Lcom/lge/camera/controller/Controller;
.source "QuickButtonController.java"

# interfaces
.implements Lcom/lge/camera/listeners/SmartCameraModeCallback$SmartCameraModeFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;
    }
.end annotation


# instance fields
.field private blockObject:Ljava/lang/Object;

.field private isForcedMenuDisable:Z

.field private isNeedEnableSwitcherLever:Z

.field private mButtonAnim:Landroid/view/animation/Animation;

.field private mButtonGroupEnable:[Z

.field private mCurrentDegree:I

.field private mMenuViewGroup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;",
            ">;"
        }
    .end annotation
.end field

.field private mOnMenuClickListener:Landroid/view/View$OnClickListener;

.field private mOnMenuTouchListener:Landroid/view/View$OnTouchListener;

.field private mSliding:Z

.field private mSmartCameraModeCallback:Lcom/lge/camera/listeners/SmartCameraModeCallback;


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 4
    .parameter "function"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/Controller;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    .line 45
    iput-object v3, p0, Lcom/lge/camera/controller/QuickButtonController;->mButtonAnim:Landroid/view/animation/Animation;

    .line 46
    iput v1, p0, Lcom/lge/camera/controller/QuickButtonController;->mCurrentDegree:I

    .line 47
    iput-object v3, p0, Lcom/lge/camera/controller/QuickButtonController;->mSmartCameraModeCallback:Lcom/lge/camera/listeners/SmartCameraModeCallback;

    .line 48
    const/16 v0, 0xb

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mButtonGroupEnable:[Z

    .line 625
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->blockObject:Ljava/lang/Object;

    .line 626
    new-instance v0, Lcom/lge/camera/controller/QuickButtonController$1;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/QuickButtonController$1;-><init>(Lcom/lge/camera/controller/QuickButtonController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mOnMenuClickListener:Landroid/view/View$OnClickListener;

    .line 871
    iput-boolean v2, p0, Lcom/lge/camera/controller/QuickButtonController;->isNeedEnableSwitcherLever:Z

    .line 872
    new-instance v0, Lcom/lge/camera/controller/QuickButtonController$2;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/QuickButtonController$2;-><init>(Lcom/lge/camera/controller/QuickButtonController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mOnMenuTouchListener:Landroid/view/View$OnTouchListener;

    .line 1024
    iput-boolean v1, p0, Lcom/lge/camera/controller/QuickButtonController;->mSliding:Z

    .line 1052
    iput-boolean v1, p0, Lcom/lge/camera/controller/QuickButtonController;->isForcedMenuDisable:Z

    .line 89
    new-instance v0, Lcom/lge/camera/listeners/SmartCameraModeCallback;

    invoke-direct {v0, p0}, Lcom/lge/camera/listeners/SmartCameraModeCallback;-><init>(Lcom/lge/camera/listeners/SmartCameraModeCallback$SmartCameraModeFunction;)V

    iput-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mSmartCameraModeCallback:Lcom/lge/camera/listeners/SmartCameraModeCallback;

    .line 90
    invoke-interface {p1}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mCurrentDegree:I

    .line 91
    const/16 v0, 0x64

    invoke-direct {p0, v0, v2}, Lcom/lge/camera/controller/QuickButtonController;->setButtonGroupEnable(IZ)V

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/QuickButtonController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/lge/camera/controller/QuickButtonController;->checkOnClick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/QuickButtonController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/QuickButtonController;->setQuickButtonResources(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/lge/camera/controller/QuickButtonController;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mButtonGroupEnable:[Z

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lge/camera/controller/QuickButtonController;Lcom/lge/camera/components/RotateImageButton;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/controller/QuickButtonController;->setMenuDim(Lcom/lge/camera/components/RotateImageButton;Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/lge/camera/controller/QuickButtonController;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/controller/QuickButtonController;->setButtonGroupEnable(IZ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/lge/camera/controller/QuickButtonController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/lge/camera/controller/QuickButtonController;->isForcedMenuDisable:Z

    return v0
.end method

.method static synthetic access$200(Lcom/lge/camera/controller/QuickButtonController;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->blockObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/camera/controller/QuickButtonController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/lge/camera/controller/QuickButtonController;->checkSettingMenu()V

    return-void
.end method

.method static synthetic access$400(Lcom/lge/camera/controller/QuickButtonController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/lge/camera/controller/QuickButtonController;->doSwapForEffectsRecording()V

    return-void
.end method

.method static synthetic access$500(Lcom/lge/camera/controller/QuickButtonController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/lge/camera/controller/QuickButtonController;->doSwapForEffectsCamera()V

    return-void
.end method

.method static synthetic access$600(Lcom/lge/camera/controller/QuickButtonController;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mButtonAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$602(Lcom/lge/camera/controller/QuickButtonController;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/lge/camera/controller/QuickButtonController;->mButtonAnim:Landroid/view/animation/Animation;

    return-object p1
.end method

.method static synthetic access$700(Lcom/lge/camera/controller/QuickButtonController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/lge/camera/controller/QuickButtonController;->isNeedEnableSwitcherLever:Z

    return v0
.end method

.method static synthetic access$702(Lcom/lge/camera/controller/QuickButtonController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/lge/camera/controller/QuickButtonController;->isNeedEnableSwitcherLever:Z

    return p1
.end method

.method static synthetic access$800(Lcom/lge/camera/controller/QuickButtonController;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$902(Lcom/lge/camera/controller/QuickButtonController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/lge/camera/controller/QuickButtonController;->mSliding:Z

    return p1
.end method

.method private addAudioZoomButton(Landroid/content/Context;I)V
    .locals 10
    .parameter "context"
    .parameter "location"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x2

    .line 386
    const/4 v0, 0x1

    .line 387
    .local v0, isDim:Z
    const/4 v1, 0x1

    .line 388
    .local v1, isEnable:Z
    invoke-direct {p0, p2}, Lcom/lge/camera/controller/QuickButtonController;->setButtonLocation(I)[I

    move-result-object v2

    .line 389
    .local v2, margin:[I
    const/4 v3, 0x0

    .line 391
    .local v3, resid:I
    const/4 v4, 0x0

    .line 393
    .local v4, rib:Lcom/lge/camera/components/RotateImageButton;
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v9}, Lcom/lge/camera/ControllerFunction;->isAudiozoom_ExceptionCase(Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 394
    const/4 v1, 0x0

    .line 395
    const/4 v0, 0x0

    .line 397
    :cond_0
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getHeadsetstate()I

    move-result v5

    if-eq v5, v8, :cond_1

    const-string v5, "mute"

    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v7, "key_video_audio_recording"

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 399
    :cond_1
    const/4 v1, 0x0

    .line 400
    const/4 v0, 0x0

    .line 403
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 404
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getAudiozoomStart()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 405
    const v3, 0x7f020426

    .line 409
    :goto_0
    const v5, 0x7f020034

    invoke-direct {p0, p1, v8, v3, v5}, Lcom/lge/camera/controller/QuickButtonController;->getButton(Landroid/content/Context;III)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v4

    .line 419
    :goto_1
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f0b0274

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lge/camera/components/RotateImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 421
    if-eqz v4, :cond_3

    .line 422
    invoke-virtual {v4, v1}, Lcom/lge/camera/components/RotateImageButton;->setEnabled(Z)V

    .line 423
    invoke-direct {p0, v8, v1}, Lcom/lge/camera/controller/QuickButtonController;->setButtonGroupEnable(IZ)V

    .line 424
    invoke-direct {p0, v4, v0}, Lcom/lge/camera/controller/QuickButtonController;->setMenuDim(Lcom/lge/camera/components/RotateImageButton;Z)V

    .line 425
    iget-object v5, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    new-instance v6, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;

    iget-object v7, p0, Lcom/lge/camera/controller/QuickButtonController;->mButtonGroupEnable:[Z

    aget-boolean v7, v7, v8

    invoke-direct {v6, p0, v4, v7}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;-><init>(Lcom/lge/camera/controller/QuickButtonController;Lcom/lge/camera/components/RotateImageButton;Z)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    const/4 v5, 0x0

    aget v5, v2, v5

    aget v6, v2, v9

    invoke-direct {p0, v4, v5, v6}, Lcom/lge/camera/controller/QuickButtonController;->setButtonLayout(Lcom/lge/camera/components/RotateImageButton;II)V

    .line 427
    invoke-direct {p0, v4}, Lcom/lge/camera/controller/QuickButtonController;->setMenuClickListener(Lcom/lge/camera/components/RotateImageButton;)V

    .line 428
    invoke-direct {p0, v4}, Lcom/lge/camera/controller/QuickButtonController;->setMenuTouchListener(Lcom/lge/camera/components/RotateImageButton;)V

    .line 429
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    .line 431
    :cond_3
    return-void

    .line 407
    :cond_4
    const v3, 0x7f020425

    goto :goto_0

    .line 411
    :cond_5
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getAudiozoomStart()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 412
    const v3, 0x7f020278

    .line 416
    :goto_2
    const v5, 0x7f020447

    invoke-direct {p0, p1, v8, v3, v5}, Lcom/lge/camera/controller/QuickButtonController;->getButton(Landroid/content/Context;III)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v4

    goto :goto_1

    .line 414
    :cond_6
    const v3, 0x7f020277

    goto :goto_2
.end method

.method private addFlashButton(Landroid/content/Context;I)V
    .locals 8
    .parameter "context"
    .parameter "location"

    .prologue
    const v7, 0x7f020447

    const v6, 0x7f020034

    const/4 v5, 0x1

    .line 335
    invoke-direct {p0, p2}, Lcom/lge/camera/controller/QuickButtonController;->setButtonLocation(I)[I

    move-result-object v0

    .line 336
    .local v0, margin:[I
    const/4 v1, 0x0

    .line 338
    .local v1, rib:Lcom/lge/camera/components/RotateImageButton;
    const-string v2, "off"

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_flash"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 339
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 340
    const v2, 0x7f020428

    invoke-direct {p0, p1, v5, v2, v6}, Lcom/lge/camera/controller/QuickButtonController;->getButton(Landroid/content/Context;III)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v1

    .line 346
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0b027d

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/RotateImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 358
    :goto_1
    iget-object v2, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    new-instance v3, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;

    iget-object v4, p0, Lcom/lge/camera/controller/QuickButtonController;->mButtonGroupEnable:[Z

    aget-boolean v4, v4, v5

    invoke-direct {v3, p0, v1, v4}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;-><init>(Lcom/lge/camera/controller/QuickButtonController;Lcom/lge/camera/components/RotateImageButton;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    const/4 v2, 0x0

    aget v2, v0, v2

    aget v3, v0, v5

    invoke-direct {p0, v1, v2, v3}, Lcom/lge/camera/controller/QuickButtonController;->setButtonLayout(Lcom/lge/camera/components/RotateImageButton;II)V

    .line 360
    invoke-direct {p0, v1}, Lcom/lge/camera/controller/QuickButtonController;->setMenuClickListener(Lcom/lge/camera/components/RotateImageButton;)V

    .line 361
    invoke-direct {p0, v1}, Lcom/lge/camera/controller/QuickButtonController;->setMenuTouchListener(Lcom/lge/camera/components/RotateImageButton;)V

    .line 362
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    .line 363
    return-void

    .line 343
    :cond_0
    const v2, 0x7f020279

    invoke-direct {p0, p1, v5, v2, v7}, Lcom/lge/camera/controller/QuickButtonController;->getButton(Landroid/content/Context;III)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v1

    goto :goto_0

    .line 348
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 349
    const v2, 0x7f020429

    invoke-direct {p0, p1, v5, v2, v6}, Lcom/lge/camera/controller/QuickButtonController;->getButton(Landroid/content/Context;III)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v1

    .line 355
    :goto_2
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0b027e

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/RotateImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 352
    :cond_2
    const v2, 0x7f02027a

    invoke-direct {p0, p1, v5, v2, v7}, Lcom/lge/camera/controller/QuickButtonController;->getButton(Landroid/content/Context;III)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v1

    goto :goto_2
.end method

.method private addIAFlashButton(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "location"

    .prologue
    const v3, 0x7f020447

    const/4 v5, 0x6

    .line 366
    invoke-direct {p0, p2}, Lcom/lge/camera/controller/QuickButtonController;->setButtonLocation(I)[I

    move-result-object v0

    .line 367
    .local v0, margin:[I
    const/4 v1, 0x0

    .line 368
    .local v1, rib:Lcom/lge/camera/components/RotateImageButton;
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getIAFlashStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 369
    const v2, 0x7f020299

    invoke-direct {p0, p1, v5, v2, v3}, Lcom/lge/camera/controller/QuickButtonController;->getButton(Landroid/content/Context;III)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v1

    .line 371
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0b027e

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/RotateImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 378
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    new-instance v3, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;

    iget-object v4, p0, Lcom/lge/camera/controller/QuickButtonController;->mButtonGroupEnable:[Z

    aget-boolean v4, v4, v5

    invoke-direct {v3, p0, v1, v4}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;-><init>(Lcom/lge/camera/controller/QuickButtonController;Lcom/lge/camera/components/RotateImageButton;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-direct {p0, v1, v2, v3}, Lcom/lge/camera/controller/QuickButtonController;->setButtonLayout(Lcom/lge/camera/components/RotateImageButton;II)V

    .line 380
    invoke-direct {p0, v1}, Lcom/lge/camera/controller/QuickButtonController;->setMenuClickListener(Lcom/lge/camera/components/RotateImageButton;)V

    .line 381
    invoke-direct {p0, v1}, Lcom/lge/camera/controller/QuickButtonController;->setMenuTouchListener(Lcom/lge/camera/components/RotateImageButton;)V

    .line 382
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    .line 383
    return-void

    .line 373
    :cond_0
    const v2, 0x7f020298

    invoke-direct {p0, p1, v5, v2, v3}, Lcom/lge/camera/controller/QuickButtonController;->getButton(Landroid/content/Context;III)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v1

    .line 375
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0b027d

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/RotateImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private addModeMenuButton(Landroid/content/Context;I)V
    .locals 10
    .parameter "context"
    .parameter "location"

    .prologue
    .line 213
    invoke-direct {p0, p2}, Lcom/lge/camera/controller/QuickButtonController;->setButtonLocation(I)[I

    move-result-object v0

    .line 214
    .local v0, margin:[I
    const/4 v7, 0x7

    const v8, 0x7f020448

    const v9, 0x7f020034

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/lge/camera/controller/QuickButtonController;->getButton(Landroid/content/Context;III)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v4

    .line 216
    .local v4, rib:Lcom/lge/camera/components/RotateImageButton;
    const v7, 0x7f0b0348

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, message:Ljava/lang/String;
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v8, 0x7f0b0340

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/lge/camera/components/RotateImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 219
    const/16 v7, 0x31

    const/16 v8, 0x31

    const/16 v9, 0x31

    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/lge/camera/components/RotateImageButton;->setTextColor(I)V

    .line 220
    const/4 v7, -0x1

    invoke-virtual {v4, v7}, Lcom/lge/camera/components/RotateImageButton;->setTextShadowColor(I)V

    .line 221
    invoke-virtual {v4, v2}, Lcom/lge/camera/components/RotateImageButton;->setText(Ljava/lang/String;)V

    .line 223
    iget-object v7, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    new-instance v8, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;

    const/4 v9, 0x1

    invoke-direct {v8, p0, v4, v9}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;-><init>(Lcom/lge/camera/controller/QuickButtonController;Lcom/lge/camera/components/RotateImageButton;Z)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    const/4 v7, 0x0

    aget v7, v0, v7

    const/4 v8, 0x1

    aget v8, v0, v8

    invoke-direct {p0, v4, v7, v8}, Lcom/lge/camera/controller/QuickButtonController;->setButtonLayout(Lcom/lge/camera/components/RotateImageButton;II)V

    .line 226
    const v7, 0x7f0a0228

    invoke-static {p1, v7}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/lge/camera/components/RotateImageButton;->setTextSize(I)V

    .line 227
    const/high16 v7, 0x3f80

    invoke-virtual {v4, v7}, Lcom/lge/camera/components/RotateImageButton;->setTextScaleX(F)V

    .line 228
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/lge/camera/components/RotateImageButton;->setTextStyle(I)V

    .line 230
    invoke-virtual {v4}, Lcom/lge/camera/components/RotateImageButton;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v6

    .line 231
    .local v6, tp:Landroid/graphics/Paint;
    const v7, 0x7f0a0228

    invoke-static {p1, v7}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 234
    const v7, 0x7f0a0229

    invoke-static {p1, v7}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v7

    int-to-float v3, v7

    .line 237
    .local v3, quickButtonTargetWidth:F
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 240
    .local v1, mearsureText:F
    const/4 v5, 0x0

    .line 242
    .local v5, scaleFactor:F
    const/4 v7, 0x0

    invoke-static {v1, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    invoke-static {v3, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-eqz v7, :cond_1

    .line 247
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-ltz v7, :cond_0

    .line 248
    div-float v5, v3, v1

    .line 256
    :cond_0
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "scaleFactor = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const/4 v7, 0x0

    invoke-static {v5, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-eqz v7, :cond_1

    .line 258
    invoke-virtual {v4, v5}, Lcom/lge/camera/components/RotateImageButton;->setTextScaleX(F)V

    .line 262
    :cond_1
    invoke-direct {p0, v4}, Lcom/lge/camera/controller/QuickButtonController;->setMenuClickListener(Lcom/lge/camera/components/RotateImageButton;)V

    .line 263
    invoke-direct {p0, v4}, Lcom/lge/camera/controller/QuickButtonController;->setMenuTouchListener(Lcom/lge/camera/components/RotateImageButton;)V

    .line 264
    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    .line 265
    return-void
.end method

.method private addNewFlashButton(Landroid/content/Context;I)V
    .locals 10
    .parameter "context"
    .parameter "location"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const v9, 0x7f020034

    const/16 v8, 0xa

    .line 292
    invoke-direct {p0, p2}, Lcom/lge/camera/controller/QuickButtonController;->setButtonLocation(I)[I

    move-result-object v2

    .line 293
    .local v2, margin:[I
    const/4 v3, 0x0

    .line 295
    .local v3, rib:Lcom/lge/camera/components/RotateImageButton;
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v7, "key_flash"

    invoke-interface {v4, v7}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 296
    .local v1, flash:Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/camera/controller/QuickButtonController;->mButtonGroupEnable:[Z

    aget-boolean v0, v4, v8

    .line 297
    .local v0, enable:Z
    const-string v4, "off"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v0, :cond_2

    .line 298
    :cond_0
    const v4, 0x7f020428

    invoke-direct {p0, p1, v8, v4, v9}, Lcom/lge/camera/controller/QuickButtonController;->getButton(Landroid/content/Context;III)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v3

    .line 300
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v7, 0x7f0b027d

    invoke-interface {v4, v7}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/camera/components/RotateImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 313
    :goto_0
    iget-object v7, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    new-instance v8, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;

    if-nez v0, :cond_5

    move v4, v5

    :goto_1
    invoke-direct {v8, p0, v3, v0, v4}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;-><init>(Lcom/lge/camera/controller/QuickButtonController;Lcom/lge/camera/components/RotateImageButton;ZZ)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    aget v4, v2, v6

    aget v5, v2, v5

    invoke-direct {p0, v3, v4, v5}, Lcom/lge/camera/controller/QuickButtonController;->setButtonLayout(Lcom/lge/camera/components/RotateImageButton;II)V

    .line 315
    invoke-direct {p0, v3}, Lcom/lge/camera/controller/QuickButtonController;->setMenuClickListener(Lcom/lge/camera/components/RotateImageButton;)V

    .line 316
    invoke-direct {p0, v3}, Lcom/lge/camera/controller/QuickButtonController;->setMenuTouchListener(Lcom/lge/camera/components/RotateImageButton;)V

    .line 317
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    .line 318
    :cond_1
    return-void

    .line 301
    :cond_2
    const-string v4, "on"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "torch"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 302
    :cond_3
    const v4, 0x7f020429

    invoke-direct {p0, p1, v8, v4, v9}, Lcom/lge/camera/controller/QuickButtonController;->getButton(Landroid/content/Context;III)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v3

    .line 304
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v7, 0x7f0b027e

    invoke-interface {v4, v7}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/camera/components/RotateImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 305
    :cond_4
    const-string v4, "auto"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 306
    const v4, 0x7f020427

    invoke-direct {p0, p1, v8, v4, v9}, Lcom/lge/camera/controller/QuickButtonController;->getButton(Landroid/content/Context;III)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v3

    .line 308
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v7, 0x7f0b027c

    invoke-interface {v4, v7}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/camera/components/RotateImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    move v4, v6

    .line 313
    goto :goto_1
.end method

.method private addNewSwapButton(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "location"

    .prologue
    const/16 v5, 0x9

    .line 280
    invoke-direct {p0, p2}, Lcom/lge/camera/controller/QuickButtonController;->setButtonLocation(I)[I

    move-result-object v0

    .line 281
    .local v0, margin:[I
    const v2, 0x7f02042d

    const v3, 0x7f020034

    invoke-direct {p0, p1, v5, v2, v3}, Lcom/lge/camera/controller/QuickButtonController;->getButton(Landroid/content/Context;III)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v1

    .line 283
    .local v1, rib:Lcom/lge/camera/components/RotateImageButton;
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0b0045

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/RotateImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v2, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    new-instance v3, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;

    iget-object v4, p0, Lcom/lge/camera/controller/QuickButtonController;->mButtonGroupEnable:[Z

    aget-boolean v4, v4, v5

    invoke-direct {v3, p0, v1, v4}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;-><init>(Lcom/lge/camera/controller/QuickButtonController;Lcom/lge/camera/components/RotateImageButton;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-direct {p0, v1, v2, v3}, Lcom/lge/camera/controller/QuickButtonController;->setButtonLayout(Lcom/lge/camera/components/RotateImageButton;II)V

    .line 286
    invoke-direct {p0, v1}, Lcom/lge/camera/controller/QuickButtonController;->setMenuClickListener(Lcom/lge/camera/components/RotateImageButton;)V

    .line 287
    invoke-direct {p0, v1}, Lcom/lge/camera/controller/QuickButtonController;->setMenuTouchListener(Lcom/lge/camera/components/RotateImageButton;)V

    .line 288
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    .line 289
    return-void
.end method

.method private addObjectTrackingButton(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "location"

    .prologue
    const/4 v5, 0x3

    .line 434
    invoke-direct {p0, p2}, Lcom/lge/camera/controller/QuickButtonController;->setButtonLocation(I)[I

    move-result-object v0

    .line 435
    .local v0, margin:[I
    const/4 v1, 0x0

    .line 437
    .local v1, rib:Lcom/lge/camera/components/RotateImageButton;
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 438
    const v2, 0x7f02042b

    const v3, 0x7f020034

    invoke-direct {p0, p1, v5, v2, v3}, Lcom/lge/camera/controller/QuickButtonController;->getButton(Landroid/content/Context;III)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v1

    .line 444
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    new-instance v3, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;

    iget-object v4, p0, Lcom/lge/camera/controller/QuickButtonController;->mButtonGroupEnable:[Z

    aget-boolean v4, v4, v5

    invoke-direct {v3, p0, v1, v4}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;-><init>(Lcom/lge/camera/controller/QuickButtonController;Lcom/lge/camera/components/RotateImageButton;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-direct {p0, v1, v2, v3}, Lcom/lge/camera/controller/QuickButtonController;->setButtonLayout(Lcom/lge/camera/components/RotateImageButton;II)V

    .line 446
    invoke-direct {p0, v1}, Lcom/lge/camera/controller/QuickButtonController;->setMenuClickListener(Lcom/lge/camera/components/RotateImageButton;)V

    .line 447
    invoke-direct {p0, v1}, Lcom/lge/camera/controller/QuickButtonController;->setMenuTouchListener(Lcom/lge/camera/components/RotateImageButton;)V

    .line 448
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    .line 449
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0b0275

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/RotateImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 450
    return-void

    .line 441
    :cond_0
    const v2, 0x7f02027b

    const v3, 0x7f020447

    invoke-direct {p0, p1, v5, v2, v3}, Lcom/lge/camera/controller/QuickButtonController;->getButton(Landroid/content/Context;III)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v1

    goto :goto_0
.end method

.method private addSettingButton(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "location"

    .prologue
    const/16 v5, 0x8

    .line 268
    invoke-direct {p0, p2}, Lcom/lge/camera/controller/QuickButtonController;->setButtonLocation(I)[I

    move-result-object v0

    .line 269
    .local v0, margin:[I
    const v2, 0x7f02042c

    const v3, 0x7f020034

    invoke-direct {p0, p1, v5, v2, v3}, Lcom/lge/camera/controller/QuickButtonController;->getButton(Landroid/content/Context;III)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v1

    .line 271
    .local v1, rib:Lcom/lge/camera/components/RotateImageButton;
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0b0043

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/RotateImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v2, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    new-instance v3, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;

    iget-object v4, p0, Lcom/lge/camera/controller/QuickButtonController;->mButtonGroupEnable:[Z

    aget-boolean v4, v4, v5

    invoke-direct {v3, p0, v1, v4}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;-><init>(Lcom/lge/camera/controller/QuickButtonController;Lcom/lge/camera/components/RotateImageButton;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-direct {p0, v1, v2, v3}, Lcom/lge/camera/controller/QuickButtonController;->setButtonLayout(Lcom/lge/camera/components/RotateImageButton;II)V

    .line 274
    invoke-direct {p0, v1}, Lcom/lge/camera/controller/QuickButtonController;->setMenuClickListener(Lcom/lge/camera/components/RotateImageButton;)V

    .line 275
    invoke-direct {p0, v1}, Lcom/lge/camera/controller/QuickButtonController;->setMenuTouchListener(Lcom/lge/camera/components/RotateImageButton;)V

    .line 276
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    .line 277
    return-void
.end method

.method private addSmartModeButton(Landroid/content/Context;I)V
    .locals 7
    .parameter "context"
    .parameter "location"

    .prologue
    const v6, 0x7f020447

    const/4 v5, 0x4

    .line 453
    invoke-direct {p0, p2}, Lcom/lge/camera/controller/QuickButtonController;->setButtonLocation(I)[I

    move-result-object v0

    .line 454
    .local v0, margin:[I
    const/4 v1, 0x0

    .line 455
    .local v1, rib:Lcom/lge/camera/components/RotateImageButton;
    const-string v2, "on"

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_smart_mode"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 456
    const v2, 0x7f02027f

    invoke-direct {p0, p1, v5, v2, v6}, Lcom/lge/camera/controller/QuickButtonController;->getButton(Landroid/content/Context;III)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v1

    .line 462
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    new-instance v3, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;

    iget-object v4, p0, Lcom/lge/camera/controller/QuickButtonController;->mButtonGroupEnable:[Z

    aget-boolean v4, v4, v5

    invoke-direct {v3, p0, v1, v4}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;-><init>(Lcom/lge/camera/controller/QuickButtonController;Lcom/lge/camera/components/RotateImageButton;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-direct {p0, v1, v2, v3}, Lcom/lge/camera/controller/QuickButtonController;->setButtonLayout(Lcom/lge/camera/components/RotateImageButton;II)V

    .line 464
    invoke-direct {p0, v1}, Lcom/lge/camera/controller/QuickButtonController;->setMenuClickListener(Lcom/lge/camera/components/RotateImageButton;)V

    .line 465
    invoke-direct {p0, v1}, Lcom/lge/camera/controller/QuickButtonController;->setMenuTouchListener(Lcom/lge/camera/components/RotateImageButton;)V

    .line 466
    invoke-virtual {v1, v5}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    .line 467
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0b02eb

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/RotateImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 468
    return-void

    .line 459
    :cond_0
    const v2, 0x7f02027e

    invoke-direct {p0, p1, v5, v2, v6}, Lcom/lge/camera/controller/QuickButtonController;->getButton(Landroid/content/Context;III)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v1

    goto :goto_0
.end method

.method private addSwapCameraButton(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "location"

    .prologue
    const/4 v5, 0x5

    .line 471
    invoke-direct {p0, p2}, Lcom/lge/camera/controller/QuickButtonController;->setButtonLocation(I)[I

    move-result-object v0

    .line 472
    .local v0, margin:[I
    const/4 v1, 0x0

    .line 473
    .local v1, rib:Lcom/lge/camera/components/RotateImageButton;
    const v2, 0x7f0202e7

    const v3, 0x7f020447

    invoke-direct {p0, p1, v5, v2, v3}, Lcom/lge/camera/controller/QuickButtonController;->getButton(Landroid/content/Context;III)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v1

    .line 475
    iget-object v2, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    new-instance v3, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;

    iget-object v4, p0, Lcom/lge/camera/controller/QuickButtonController;->mButtonGroupEnable:[Z

    aget-boolean v4, v4, v5

    invoke-direct {v3, p0, v1, v4}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;-><init>(Lcom/lge/camera/controller/QuickButtonController;Lcom/lge/camera/components/RotateImageButton;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-direct {p0, v1, v2, v3}, Lcom/lge/camera/controller/QuickButtonController;->setButtonLayout(Lcom/lge/camera/components/RotateImageButton;II)V

    .line 477
    invoke-direct {p0, v1}, Lcom/lge/camera/controller/QuickButtonController;->setMenuClickListener(Lcom/lge/camera/components/RotateImageButton;)V

    .line 478
    invoke-direct {p0, v1}, Lcom/lge/camera/controller/QuickButtonController;->setMenuTouchListener(Lcom/lge/camera/components/RotateImageButton;)V

    .line 479
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    .line 480
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0b0045

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/RotateImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 481
    return-void
.end method

.method private addTimeMachineButton(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "location"

    .prologue
    const/4 v5, 0x0

    .line 324
    invoke-direct {p0, p2}, Lcom/lge/camera/controller/QuickButtonController;->setButtonLocation(I)[I

    move-result-object v0

    .line 325
    .local v0, margin:[I
    const v2, 0x7f020280

    const v3, 0x7f020447

    invoke-direct {p0, p1, v5, v2, v3}, Lcom/lge/camera/controller/QuickButtonController;->getButton(Landroid/content/Context;III)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v1

    .line 327
    .local v1, rib:Lcom/lge/camera/components/RotateImageButton;
    iget-object v2, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    new-instance v3, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;

    iget-object v4, p0, Lcom/lge/camera/controller/QuickButtonController;->mButtonGroupEnable:[Z

    aget-boolean v4, v4, v5

    invoke-direct {v3, p0, v1, v4}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;-><init>(Lcom/lge/camera/controller/QuickButtonController;Lcom/lge/camera/components/RotateImageButton;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    aget v2, v0, v5

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-direct {p0, v1, v2, v3}, Lcom/lge/camera/controller/QuickButtonController;->setButtonLayout(Lcom/lge/camera/components/RotateImageButton;II)V

    .line 329
    invoke-direct {p0, v1}, Lcom/lge/camera/controller/QuickButtonController;->setMenuClickListener(Lcom/lge/camera/components/RotateImageButton;)V

    .line 330
    invoke-direct {p0, v1}, Lcom/lge/camera/controller/QuickButtonController;->setMenuTouchListener(Lcom/lge/camera/components/RotateImageButton;)V

    .line 331
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    .line 332
    return-void
.end method

.method private checkOnClick()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 905
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickButtonController;->checkMediator()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isEnteringViewShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getInCaptureProgress()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getEnableInput()Z

    move-result v1

    if-nez v1, :cond_1

    .line 925
    :cond_0
    :goto_0
    return v0

    .line 912
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isNullSettingView()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isSettingViewRemoving()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 914
    const-string v1, "CameraApp"

    const-string v2, "settingview is not null && Removing!!!  ->> block menu click"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 917
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isShutterButtonLongKey()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isPressedShutterButton()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 919
    :cond_3
    const-string v1, "CameraApp"

    const-string v2, "ShutterButton pressed.. ->> block menu click"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 922
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isRotateDialogVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 925
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkSettingMenu()V
    .locals 2

    .prologue
    .line 897
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 899
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 900
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.RemoveSettingMenu"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 902
    :cond_1
    return-void
.end method

.method private doSwapForEffectsCamera()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 853
    const-string v0, "CameraApp"

    const-string v1, "SwapCameraPrepared-start, dual camera is active"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v1, 0x66

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->effectCameraStopPreviewByCallFrom(I)V

    .line 856
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setCheckClickTime(J)V

    .line 858
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionMenuForcedDisable(Z)V

    .line 859
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3, v3}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionAllMenuEnabled(ZZ)V

    .line 860
    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/QuickButtonController;->setQuickButtonForcedDisable(Z)V

    .line 861
    invoke-virtual {p0, v3, v3}, Lcom/lge/camera/controller/QuickButtonController;->setAllMenuEnable(ZZ)V

    .line 862
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->enableInput(Z)V

    .line 863
    return-void
.end method

.method private doSwapForEffectsRecording()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 838
    const-string v0, "CameraApp"

    const-string v1, "SwapCameraPrepared-start, liveeffect is active"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v1, 0x66

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->effectRecorderStopPreviewByCallFrom(I)V

    .line 841
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->hideSmartZoomFocusView()V

    .line 844
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setCheckClickTime(J)V

    .line 846
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionMenuForcedDisable(Z)V

    .line 847
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3, v3}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionAllMenuEnabled(ZZ)V

    .line 848
    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/QuickButtonController;->setQuickButtonForcedDisable(Z)V

    .line 849
    invoke-virtual {p0, v3, v3}, Lcom/lge/camera/controller/QuickButtonController;->setAllMenuEnable(ZZ)V

    .line 850
    return-void
.end method

.method private getButton(Landroid/content/Context;III)Lcom/lge/camera/components/RotateImageButton;
    .locals 2
    .parameter "context"
    .parameter "buttonType"
    .parameter "buttonRes"
    .parameter "bgRes"

    .prologue
    .line 196
    new-instance v0, Lcom/lge/camera/components/RotateImageButton;

    invoke-direct {v0, p1}, Lcom/lge/camera/components/RotateImageButton;-><init>(Landroid/content/Context;)V

    .line 197
    .local v0, rib:Lcom/lge/camera/components/RotateImageButton;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageButton;->setRotateIconOnly(Z)V

    .line 198
    if-lez p4, :cond_0

    .line 199
    invoke-virtual {v0, p4}, Lcom/lge/camera/components/RotateImageButton;->setBackgroundResource(I)V

    .line 201
    :cond_0
    if-lez p3, :cond_1

    .line 202
    invoke-virtual {v0, p3}, Lcom/lge/camera/components/RotateImageButton;->setImageResource(I)V

    .line 204
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageButton;->setFocusable(Z)V

    .line 205
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageButton;->setTag(Ljava/lang/Object;)V

    .line 206
    return-object v0
.end method

.method private hasButton(II)Z
    .locals 8
    .parameter "buttonType"
    .parameter "location"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 170
    iget-boolean v5, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move v5, v7

    .line 192
    :goto_0
    return v5

    .line 173
    :cond_1
    const/4 v0, 0x0

    .line 174
    .local v0, button:Lcom/lge/camera/components/RotateImageButton;
    iget-object v5, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;

    .line 175
    .local v4, quickButton:Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;
    invoke-virtual {v4}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->getButton()Lcom/lge/camera/components/RotateImageButton;

    move-result-object v0

    .line 176
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/lge/camera/components/RotateImageButton;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, p1, :cond_2

    .line 178
    invoke-direct {p0, p2}, Lcom/lge/camera/controller/QuickButtonController;->setButtonLocation(I)[I

    move-result-object v2

    .line 179
    .local v2, margin:[I
    invoke-virtual {v0}, Lcom/lge/camera/components/RotateImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 180
    .local v3, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 181
    aget v5, v2, v7

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 182
    aget v5, v2, v6

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 188
    :goto_1
    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v5, v6

    .line 189
    goto :goto_0

    .line 184
    :cond_3
    const/16 v5, 0xb

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 185
    aget v5, v2, v7

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 186
    aget v5, v2, v6

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1

    .end local v2           #margin:[I
    .end local v3           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4           #quickButton:Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;
    :cond_4
    move v5, v7

    .line 192
    goto :goto_0
.end method

.method private isNeedDisableDefaultIcon(I)Z
    .locals 4
    .parameter "type"

    .prologue
    const/4 v3, 0x0

    .line 558
    iget-boolean v2, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    :cond_0
    move v2, v3

    .line 567
    :goto_0
    return v2

    .line 562
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;

    .line 563
    .local v1, quickButton:Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;
    invoke-virtual {v1}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->getButton()Lcom/lge/camera/components/RotateImageButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/components/RotateImageButton;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_2

    .line 564
    invoke-virtual {v1}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->isNeedDefault()Z

    move-result v2

    goto :goto_0

    .end local v1           #quickButton:Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;
    :cond_3
    move v2, v3

    .line 567
    goto :goto_0
.end method

.method private setAlphaAnimation(Landroid/view/View;III)V
    .locals 1
    .parameter "view"
    .parameter "start"
    .parameter "end"
    .parameter "duration"

    .prologue
    .line 1031
    if-eqz p1, :cond_0

    .line 1032
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1033
    new-instance v0, Lcom/lge/camera/controller/QuickButtonController$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/lge/camera/controller/QuickButtonController$3;-><init>(Lcom/lge/camera/controller/QuickButtonController;Landroid/view/View;I)V

    invoke-static {p1, p2, p3, p4, v0}, Lcom/lge/camera/util/Util;->startAlphaAnimation(Landroid/view/View;IIILandroid/view/animation/Animation$AnimationListener;)V

    .line 1050
    :cond_0
    return-void
.end method

.method private setButtonGroupEnable(IZ)V
    .locals 2
    .parameter "buttonType"
    .parameter "enable"

    .prologue
    .line 1231
    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    .line 1232
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    .line 1233
    iget-object v1, p0, Lcom/lge/camera/controller/QuickButtonController;->mButtonGroupEnable:[Z

    aput-boolean p2, v1, v0

    .line 1232
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1236
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/QuickButtonController;->mButtonGroupEnable:[Z

    aput-boolean p2, v1, p1

    .line 1238
    :cond_1
    return-void
.end method

.method private setButtonLayout(Lcom/lge/camera/components/RotateImageButton;II)V
    .locals 4
    .parameter "buttonView"
    .parameter "leftMargin"
    .parameter "topMargin"

    .prologue
    const/4 v3, -0x2

    .line 596
    iget-boolean v2, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v2, :cond_1

    .line 617
    :cond_0
    :goto_0
    return-void

    .line 599
    :cond_1
    if-eqz p1, :cond_0

    .line 600
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 603
    .local v0, param:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 604
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 605
    iput p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 612
    :goto_1
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f09015e

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 613
    .local v1, quickButtonView:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 614
    check-cast v1, Landroid/widget/RelativeLayout;

    .end local v1           #quickButtonView:Landroid/view/View;
    invoke-virtual {v1, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 607
    :cond_2
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 608
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 609
    iput p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1
.end method

.method private setButtonLocation(I)[I
    .locals 4
    .parameter "location"

    .prologue
    .line 1307
    const/4 v0, 0x0

    .line 1308
    .local v0, marginLeft:I
    const/4 v1, 0x0

    .line 1309
    .local v1, marginTop:I
    packed-switch p1, :pswitch_data_0

    .line 1354
    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    return-object v2

    .line 1311
    :pswitch_0
    const v2, 0x7f0a022a

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickButtonController;->getPixelFromDimens(I)I

    move-result v0

    .line 1312
    const v2, 0x7f0a022b

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickButtonController;->getPixelFromDimens(I)I

    move-result v1

    .line 1313
    goto :goto_0

    .line 1315
    :pswitch_1
    const v2, 0x7f0a022c

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickButtonController;->getPixelFromDimens(I)I

    move-result v0

    .line 1316
    const v2, 0x7f0a022d

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickButtonController;->getPixelFromDimens(I)I

    move-result v1

    .line 1317
    goto :goto_0

    .line 1319
    :pswitch_2
    const v2, 0x7f0a022e

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickButtonController;->getPixelFromDimens(I)I

    move-result v0

    .line 1320
    const v2, 0x7f0a022f

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickButtonController;->getPixelFromDimens(I)I

    move-result v1

    .line 1321
    goto :goto_0

    .line 1323
    :pswitch_3
    const v2, 0x7f0a0230

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickButtonController;->getPixelFromDimens(I)I

    move-result v0

    .line 1324
    const v2, 0x7f0a0231

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickButtonController;->getPixelFromDimens(I)I

    move-result v1

    .line 1325
    goto :goto_0

    .line 1328
    :pswitch_4
    const v2, 0x7f0a021e

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickButtonController;->getPixelFromDimens(I)I

    move-result v0

    .line 1329
    const v2, 0x7f0a021f

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickButtonController;->getPixelFromDimens(I)I

    move-result v1

    .line 1330
    goto :goto_0

    .line 1332
    :pswitch_5
    const v2, 0x7f0a0220

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickButtonController;->getPixelFromDimens(I)I

    move-result v0

    .line 1333
    const v2, 0x7f0a0221

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickButtonController;->getPixelFromDimens(I)I

    move-result v1

    .line 1334
    goto :goto_0

    .line 1336
    :pswitch_6
    const v2, 0x7f0a0222

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickButtonController;->getPixelFromDimens(I)I

    move-result v0

    .line 1337
    const v2, 0x7f0a0223

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickButtonController;->getPixelFromDimens(I)I

    move-result v1

    .line 1338
    goto :goto_0

    .line 1340
    :pswitch_7
    const v2, 0x7f0a0224

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickButtonController;->getPixelFromDimens(I)I

    move-result v0

    .line 1341
    const v2, 0x7f0a0225

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickButtonController;->getPixelFromDimens(I)I

    move-result v1

    .line 1342
    goto/16 :goto_0

    .line 1344
    :pswitch_8
    const v2, 0x7f0a0226

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickButtonController;->getPixelFromDimens(I)I

    move-result v0

    .line 1345
    const v2, 0x7f0a0227

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickButtonController;->getPixelFromDimens(I)I

    move-result v1

    .line 1346
    goto/16 :goto_0

    .line 1348
    :pswitch_9
    const v2, 0x7f0a021c

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickButtonController;->getPixelFromDimens(I)I

    move-result v0

    .line 1349
    const v2, 0x7f0a021d

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickButtonController;->getPixelFromDimens(I)I

    move-result v1

    .line 1350
    goto/16 :goto_0

    .line 1309
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private setMenuClickListener(Lcom/lge/camera/components/RotateImageButton;)V
    .locals 1
    .parameter "rib"

    .prologue
    .line 620
    if-eqz p1, :cond_0

    .line 621
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mOnMenuClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/lge/camera/components/RotateImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 623
    :cond_0
    return-void
.end method

.method private setMenuDim(Lcom/lge/camera/components/RotateImageButton;Z)V
    .locals 2
    .parameter "rib"
    .parameter "enable"

    .prologue
    .line 1241
    if-nez p1, :cond_0

    .line 1254
    :goto_0
    return-void

    .line 1244
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/QuickButtonController$9;

    invoke-direct {v1, p0, p2, p1}, Lcom/lge/camera/controller/QuickButtonController$9;-><init>(Lcom/lge/camera/controller/QuickButtonController;ZLcom/lge/camera/components/RotateImageButton;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private setMenuTouchListener(Lcom/lge/camera/components/RotateImageButton;)V
    .locals 1
    .parameter "rib"

    .prologue
    .line 866
    if-eqz p1, :cond_0

    .line 867
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mOnMenuTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Lcom/lge/camera/components/RotateImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 869
    :cond_0
    return-void
.end method

.method private setQuickButtonResources(I)V
    .locals 10
    .parameter "type"

    .prologue
    const v3, 0x7f0b027d

    const/16 v2, 0xa

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 484
    packed-switch p1, :pswitch_data_0

    .line 555
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 486
    :pswitch_1
    const-string v0, "off"

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_flash"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 487
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 488
    const v0, 0x7f020428

    invoke-virtual {p0, v8, v0, v3}, Lcom/lge/camera/controller/QuickButtonController;->changeButtonResource(III)V

    goto :goto_0

    .line 490
    :cond_1
    const v0, 0x7f020279

    invoke-virtual {p0, v8, v0, v3}, Lcom/lge/camera/controller/QuickButtonController;->changeButtonResource(III)V

    goto :goto_0

    .line 493
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 494
    const v0, 0x7f020429

    const v1, 0x7f0b027e

    invoke-virtual {p0, v8, v0, v1}, Lcom/lge/camera/controller/QuickButtonController;->changeButtonResource(III)V

    goto :goto_0

    .line 496
    :cond_3
    const v0, 0x7f02027a

    const v1, 0x7f0b027e

    invoke-virtual {p0, v8, v0, v1}, Lcom/lge/camera/controller/QuickButtonController;->changeButtonResource(III)V

    goto :goto_0

    .line 501
    :pswitch_2
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getIAFlashStatus()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 502
    const/4 v0, 0x6

    const v1, 0x7f020299

    const v2, 0x7f0b027e

    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/camera/controller/QuickButtonController;->changeButtonResource(III)V

    goto :goto_0

    .line 504
    :cond_4
    const/4 v0, 0x6

    const v1, 0x7f020298

    invoke-virtual {p0, v0, v1, v3}, Lcom/lge/camera/controller/QuickButtonController;->changeButtonResource(III)V

    goto :goto_0

    .line 508
    :pswitch_3
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getAudiozoomStart()Z

    move-result v7

    .line 510
    .local v7, start:Z
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getObjectTrackingState()I

    move-result v0

    if-eqz v0, :cond_5

    .line 511
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-interface/range {v0 .. v5}, Lcom/lge/camera/ControllerFunction;->startObjectTrackingFocus(IIIII)V

    .line 514
    :cond_5
    if-eqz v7, :cond_7

    .line 515
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->stopAudiozoom()V

    .line 516
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setAudiozoomStartInRecording(Z)V

    .line 517
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 518
    const v0, 0x7f020425

    invoke-virtual {p0, v9, v0}, Lcom/lge/camera/controller/QuickButtonController;->changeButtonResource(II)V

    goto/16 :goto_0

    .line 520
    :cond_6
    const v0, 0x7f020277

    invoke-virtual {p0, v9, v0}, Lcom/lge/camera/controller/QuickButtonController;->changeButtonResource(II)V

    goto/16 :goto_0

    .line 523
    :cond_7
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->startAudiozoom()V

    .line 524
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v8}, Lcom/lge/camera/ControllerFunction;->setAudiozoomStartInRecording(Z)V

    .line 525
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 526
    const v0, 0x7f020426

    invoke-virtual {p0, v9, v0}, Lcom/lge/camera/controller/QuickButtonController;->changeButtonResource(II)V

    goto/16 :goto_0

    .line 528
    :cond_8
    const v0, 0x7f020278

    invoke-virtual {p0, v9, v0}, Lcom/lge/camera/controller/QuickButtonController;->changeButtonResource(II)V

    goto/16 :goto_0

    .line 533
    .end local v7           #start:Z
    :pswitch_4
    const-string v0, "on"

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_smart_mode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 534
    const/4 v0, 0x4

    const v1, 0x7f02027f

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/controller/QuickButtonController;->changeButtonResource(II)V

    goto/16 :goto_0

    .line 536
    :cond_9
    const/4 v0, 0x4

    const v1, 0x7f02027e

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/controller/QuickButtonController;->changeButtonResource(II)V

    goto/16 :goto_0

    .line 540
    :pswitch_5
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_flash"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 541
    .local v6, flash:Ljava/lang/String;
    const-string v0, "off"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-direct {p0, v2}, Lcom/lge/camera/controller/QuickButtonController;->isNeedDisableDefaultIcon(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 542
    :cond_a
    const v0, 0x7f020428

    invoke-virtual {p0, v2, v0, v3}, Lcom/lge/camera/controller/QuickButtonController;->changeButtonResource(III)V

    goto/16 :goto_0

    .line 544
    :cond_b
    const-string v0, "on"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "torch"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 545
    :cond_c
    const v0, 0x7f020429

    const v1, 0x7f0b027e

    invoke-virtual {p0, v2, v0, v1}, Lcom/lge/camera/controller/QuickButtonController;->changeButtonResource(III)V

    goto/16 :goto_0

    .line 547
    :cond_d
    const-string v0, "auto"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    const v0, 0x7f020427

    const v1, 0x7f0b027c

    invoke-virtual {p0, v2, v0, v1}, Lcom/lge/camera/controller/QuickButtonController;->changeButtonResource(III)V

    goto/16 :goto_0

    .line 484
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private setRotation(IZ)V
    .locals 3
    .parameter "degree"
    .parameter "animation"

    .prologue
    .line 1014
    iget-boolean v2, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 1022
    :cond_0
    return-void

    .line 1017
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;

    .line 1018
    .local v1, quickButton:Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->getButton()Lcom/lge/camera/components/RotateImageButton;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1019
    invoke-virtual {v1}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->getButton()Lcom/lge/camera/components/RotateImageButton;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/lge/camera/components/RotateImageButton;->setDegree(IZ)V

    goto :goto_0
.end method


# virtual methods
.method public addQuickButton(Landroid/content/Context;II)V
    .locals 1
    .parameter "context"
    .parameter "buttonType"
    .parameter "location"

    .prologue
    .line 163
    invoke-static {}, Lcom/lge/camera/util/Common;->isSmartCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/lge/camera/controller/QuickButtonController;->addQuickButton(Landroid/content/Context;III)V

    goto :goto_0
.end method

.method public addQuickButton(Landroid/content/Context;III)V
    .locals 2
    .parameter "context"
    .parameter "buttonType"
    .parameter "orientation"
    .parameter "location"

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickButtonController;->checkMediator()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2, p4}, Lcom/lge/camera/controller/QuickButtonController;->hasButton(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 156
    :goto_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->isCamcorderRotation(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 157
    iget p3, p0, Lcom/lge/camera/controller/QuickButtonController;->mCurrentDegree:I

    .line 159
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/lge/camera/controller/QuickButtonController;->setRotation(IZ)V

    goto :goto_0

    .line 120
    :pswitch_0
    invoke-direct {p0, p1, p4}, Lcom/lge/camera/controller/QuickButtonController;->addTimeMachineButton(Landroid/content/Context;I)V

    goto :goto_1

    .line 123
    :pswitch_1
    invoke-direct {p0, p1, p4}, Lcom/lge/camera/controller/QuickButtonController;->addFlashButton(Landroid/content/Context;I)V

    goto :goto_1

    .line 126
    :pswitch_2
    invoke-direct {p0, p1, p4}, Lcom/lge/camera/controller/QuickButtonController;->addAudioZoomButton(Landroid/content/Context;I)V

    goto :goto_1

    .line 129
    :pswitch_3
    invoke-direct {p0, p1, p4}, Lcom/lge/camera/controller/QuickButtonController;->addObjectTrackingButton(Landroid/content/Context;I)V

    goto :goto_1

    .line 132
    :pswitch_4
    invoke-direct {p0, p1, p4}, Lcom/lge/camera/controller/QuickButtonController;->addSmartModeButton(Landroid/content/Context;I)V

    goto :goto_1

    .line 135
    :pswitch_5
    invoke-direct {p0, p1, p4}, Lcom/lge/camera/controller/QuickButtonController;->addSwapCameraButton(Landroid/content/Context;I)V

    goto :goto_1

    .line 138
    :pswitch_6
    invoke-direct {p0, p1, p4}, Lcom/lge/camera/controller/QuickButtonController;->addIAFlashButton(Landroid/content/Context;I)V

    goto :goto_1

    .line 141
    :pswitch_7
    invoke-direct {p0, p1, p4}, Lcom/lge/camera/controller/QuickButtonController;->addModeMenuButton(Landroid/content/Context;I)V

    goto :goto_1

    .line 144
    :pswitch_8
    invoke-direct {p0, p1, p4}, Lcom/lge/camera/controller/QuickButtonController;->addSettingButton(Landroid/content/Context;I)V

    goto :goto_1

    .line 147
    :pswitch_9
    invoke-direct {p0, p1, p4}, Lcom/lge/camera/controller/QuickButtonController;->addNewSwapButton(Landroid/content/Context;I)V

    goto :goto_1

    .line 150
    :pswitch_a
    invoke-direct {p0, p1, p4}, Lcom/lge/camera/controller/QuickButtonController;->addNewFlashButton(Landroid/content/Context;I)V

    goto :goto_1

    .line 118
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public changeButtonResource(II)V
    .locals 3
    .parameter "type"
    .parameter "resId"

    .prologue
    .line 571
    iget-boolean v2, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 580
    :cond_0
    return-void

    .line 575
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;

    .line 576
    .local v1, quickButton:Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;
    invoke-virtual {v1}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->getButton()Lcom/lge/camera/components/RotateImageButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/components/RotateImageButton;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_2

    .line 577
    invoke-virtual {v1}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->getButton()Lcom/lge/camera/components/RotateImageButton;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/lge/camera/components/RotateImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method public changeButtonResource(III)V
    .locals 4
    .parameter "type"
    .parameter "resId"
    .parameter "descriptionId"

    .prologue
    .line 583
    iget-boolean v2, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 593
    :cond_0
    return-void

    .line 587
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;

    .line 588
    .local v1, quickButton:Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;
    invoke-virtual {v1}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->getButton()Lcom/lge/camera/components/RotateImageButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/components/RotateImageButton;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_2

    .line 589
    invoke-virtual {v1}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->getButton()Lcom/lge/camera/components/RotateImageButton;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/lge/camera/components/RotateImageButton;->setImageResource(I)V

    .line 590
    invoke-virtual {v1}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->getButton()Lcom/lge/camera/components/RotateImageButton;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p3}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/camera/components/RotateImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public doSmartCameraModeCallback([I)V
    .locals 1
    .parameter "data"

    .prologue
    .line 1377
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->doSmartCameraModeCallback([I)V

    .line 1378
    return-void
.end method

.method public initController()V
    .locals 3

    .prologue
    .line 102
    iget-boolean v1, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v1, :cond_0

    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0900cd

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->inflateStub(I)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    .line 111
    :cond_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 107
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0b018c

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->toast(I)V

    goto :goto_0
.end method

.method public isSliding()Z
    .locals 1

    .prologue
    .line 1027
    iget-boolean v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mSliding:Z

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 1371
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickButtonController;->unbind()V

    .line 1372
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onDestroy()V

    .line 1373
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1364
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/controller/QuickButtonController;->isForcedMenuDisable:Z

    .line 1365
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickButtonController;->removeQuickButtonAll()V

    .line 1366
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onPause()V

    .line 1367
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 1359
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onResume()V

    .line 1360
    return-void
.end method

.method public refreshQuickButton()V
    .locals 2

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/QuickButtonController$10;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/QuickButtonController$10;-><init>(Lcom/lge/camera/controller/QuickButtonController;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1270
    return-void
.end method

.method public releaseAllButtonsEnabled()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1059
    iget-object v2, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;

    .line 1060
    .local v1, quickButton:Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;
    invoke-virtual {v1, v3}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->setEnable(Z)V

    goto :goto_0

    .line 1062
    .end local v1           #quickButton:Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;
    :cond_0
    const/16 v2, 0x64

    invoke-direct {p0, v2, v3}, Lcom/lge/camera/controller/QuickButtonController;->setButtonGroupEnable(IZ)V

    .line 1063
    return-void
.end method

.method public removeQuickButton(I)V
    .locals 7
    .parameter "buttonType"

    .prologue
    .line 981
    iget-boolean v5, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    .line 1000
    :cond_0
    :goto_0
    return-void

    .line 985
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f09015e

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 986
    .local v2, quickButtonView:Landroid/widget/RelativeLayout;
    const/4 v3, 0x0

    .line 987
    .local v3, rib:Lcom/lge/camera/components/RotateImageButton;
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v5, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, size:I
    :goto_1
    if-ge v1, v4, :cond_0

    .line 988
    iget-object v5, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;

    invoke-virtual {v5}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->getButton()Lcom/lge/camera/components/RotateImageButton;

    move-result-object v3

    .line 989
    invoke-virtual {v3}, Lcom/lge/camera/components/RotateImageButton;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, p1, :cond_2

    .line 990
    invoke-virtual {v3}, Lcom/lge/camera/components/RotateImageButton;->clearAnimation()V

    .line 991
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    .line 992
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 993
    iget-object v5, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 997
    .end local v1           #i:I
    .end local v2           #quickButtonView:Landroid/widget/RelativeLayout;
    .end local v3           #rib:Lcom/lge/camera/components/RotateImageButton;
    .end local v4           #size:I
    :catch_0
    move-exception v0

    .line 998
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "CameraApp"

    const-string v6, "Excetion:"

    invoke-static {v5, v6, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 987
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #i:I
    .restart local v2       #quickButtonView:Landroid/widget/RelativeLayout;
    .restart local v3       #rib:Lcom/lge/camera/components/RotateImageButton;
    .restart local v4       #size:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public removeQuickButtonAll()V
    .locals 6

    .prologue
    .line 963
    iget-boolean v4, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 978
    :cond_0
    :goto_0
    return-void

    .line 967
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v5, 0x7f09015e

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 968
    .local v3, quickButtonView:Landroid/widget/RelativeLayout;
    iget-object v4, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;

    .line 969
    .local v2, quickButton:Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;
    invoke-virtual {v2}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->getButton()Lcom/lge/camera/components/RotateImageButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/components/RotateImageButton;->clearAnimation()V

    .line 970
    invoke-virtual {v2}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->getButton()Lcom/lge/camera/components/RotateImageButton;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    .line 971
    invoke-virtual {v2}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->getButton()Lcom/lge/camera/components/RotateImageButton;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 975
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #quickButton:Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;
    .end local v3           #quickButtonView:Landroid/widget/RelativeLayout;
    :catch_0
    move-exception v0

    .line 976
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "CameraApp"

    const-string v5, "Excetion:"

    invoke-static {v4, v5, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 973
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #quickButtonView:Landroid/widget/RelativeLayout;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 974
    const/16 v4, 0x64

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/lge/camera/controller/QuickButtonController;->setButtonGroupEnable(IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setAllMenuEnable(ZZ)V
    .locals 2
    .parameter "enable"
    .parameter "dimByEnable"

    .prologue
    .line 1197
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1227
    :cond_0
    :goto_0
    return-void

    .line 1200
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/QuickButtonController$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/lge/camera/controller/QuickButtonController$8;-><init>(Lcom/lge/camera/controller/QuickButtonController;ZZ)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setButtonRemainEnabled(IZ)V
    .locals 2
    .parameter "buttonType"
    .parameter "enable"

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/QuickButtonController$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/lge/camera/controller/QuickButtonController$5;-><init>(Lcom/lge/camera/controller/QuickButtonController;IZ)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1117
    return-void
.end method

.method public setButtonRemainEnabled(IZZ)V
    .locals 2
    .parameter "buttonType"
    .parameter "enable"
    .parameter "useDefaultIconDisable"

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/QuickButtonController$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/lge/camera/controller/QuickButtonController$6;-><init>(Lcom/lge/camera/controller/QuickButtonController;IZZ)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1151
    return-void
.end method

.method public setButtonRemainRefresh()V
    .locals 2

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/QuickButtonController$4;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/QuickButtonController$4;-><init>(Lcom/lge/camera/controller/QuickButtonController;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1088
    return-void
.end method

.method public setMenuEnable(IZZ)V
    .locals 2
    .parameter "buttonType"
    .parameter "enable"
    .parameter "dimByEnable"

    .prologue
    .line 1155
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1194
    :cond_0
    :goto_0
    return-void

    .line 1158
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/QuickButtonController$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/lge/camera/controller/QuickButtonController$7;-><init>(Lcom/lge/camera/controller/QuickButtonController;IZZ)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setQuickButtonForcedDisable(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 1055
    iput-boolean p1, p0, Lcom/lge/camera/controller/QuickButtonController;->isForcedMenuDisable:Z

    .line 1056
    return-void
.end method

.method public setSmartCameraMode(Landroid/hardware/Camera$Parameters;Z)V
    .locals 5
    .parameter "params"
    .parameter "enable"

    .prologue
    .line 1273
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportSmartMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1274
    const-string v2, "CameraApp"

    const-string v3, "SetSmartCameraMode : model is not supported."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    :cond_0
    :goto_0
    return-void

    .line 1277
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1280
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSmartCameraMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    const/4 v1, 0x0

    .line 1283
    .local v1, needParameters:Z
    if-nez p1, :cond_2

    .line 1284
    const/4 v1, 0x1

    .line 1285
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    .line 1288
    :cond_2
    if-eqz p2, :cond_3

    .line 1289
    const-string v2, "on"

    invoke-static {p1, v2}, Lcom/lge/camera/platform/PlatformDevice;->setSceneDetectMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 1290
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/QuickButtonController;->mSmartCameraModeCallback:Lcom/lge/camera/listeners/SmartCameraModeCallback;

    invoke-static {v2, v3}, Lcom/lge/camera/platform/PlatformDevice;->setISPDataCallbackMode(Landroid/hardware/Camera;Landroid/hardware/Camera$CameraDataCallback;)V

    .line 1291
    const-string v2, "hdr-mode"

    const-string v3, "0"

    invoke-virtual {p1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    :goto_1
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 1299
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, p1}, Lcom/lge/camera/ControllerFunction;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1300
    :catch_0
    move-exception v0

    .line 1301
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "CameraApp"

    const-string v3, "setParameters failed: "

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1293
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_3
    const-string v2, "off"

    invoke-static {p1, v2}, Lcom/lge/camera/platform/PlatformDevice;->setSceneDetectMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 1294
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/lge/camera/platform/PlatformDevice;->setISPDataCallbackMode(Landroid/hardware/Camera;Landroid/hardware/Camera$CameraDataCallback;)V

    goto :goto_1
.end method

.method public setVisible(IIZ)V
    .locals 7
    .parameter "type"
    .parameter "visible"
    .parameter "animation"

    .prologue
    const/16 v6, 0x12c

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 929
    iget-boolean v3, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 960
    :cond_0
    return-void

    .line 933
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportClearView()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isClearView()Z

    move-result v3

    if-nez v3, :cond_0

    .line 939
    :cond_3
    const/16 v2, 0x64

    .line 940
    .local v2, tag:I
    iget-object v3, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;

    .line 941
    .local v1, quickButton:Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;
    invoke-virtual {v1}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->getButton()Lcom/lge/camera/components/RotateImageButton;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/components/RotateImageButton;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 942
    const/16 v3, 0x64

    if-eq p1, v3, :cond_5

    if-ne p1, v2, :cond_4

    .line 943
    :cond_5
    if-nez p2, :cond_7

    .line 944
    invoke-virtual {v1}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->getButton()Lcom/lge/camera/components/RotateImageButton;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/components/RotateImageButton;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_4

    .line 945
    if-eqz p3, :cond_6

    .line 946
    invoke-virtual {v1}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->getButton()Lcom/lge/camera/components/RotateImageButton;

    move-result-object v3

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/lge/camera/controller/QuickButtonController;->setAlphaAnimation(Landroid/view/View;III)V

    goto :goto_0

    .line 948
    :cond_6
    invoke-virtual {v1}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->getButton()Lcom/lge/camera/components/RotateImageButton;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    goto :goto_0

    .line 952
    :cond_7
    if-eqz p3, :cond_8

    .line 953
    invoke-virtual {v1}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->getButton()Lcom/lge/camera/components/RotateImageButton;

    move-result-object v3

    invoke-direct {p0, v3, v5, v4, v6}, Lcom/lge/camera/controller/QuickButtonController;->setAlphaAnimation(Landroid/view/View;III)V

    goto :goto_0

    .line 955
    :cond_8
    invoke-virtual {v1}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->getButton()Lcom/lge/camera/components/RotateImageButton;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public startRotation(IZ)V
    .locals 2
    .parameter "degree"
    .parameter "animation"

    .prologue
    .line 1003
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickButtonController;->checkMediator()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1011
    :cond_0
    :goto_0
    return-void

    .line 1006
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->isCamcorderRotation(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1009
    iput p1, p0, Lcom/lge/camera/controller/QuickButtonController;->mCurrentDegree:I

    .line 1010
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/controller/QuickButtonController;->setRotation(IZ)V

    goto :goto_0
.end method

.method public unbind()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickButtonController;->removeQuickButtonAll()V

    .line 96
    iput-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    .line 97
    iput-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mButtonAnim:Landroid/view/animation/Animation;

    .line 98
    iput-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mSmartCameraModeCallback:Lcom/lge/camera/listeners/SmartCameraModeCallback;

    .line 99
    return-void
.end method
