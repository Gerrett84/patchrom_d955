.class public Lcom/lge/camera/controller/QuickFunctionController;
.super Lcom/lge/camera/controller/Controller;
.source "QuickFunctionController.java"


# instance fields
.field private alpha:F

.field private blockObject:Ljava/lang/Object;

.field private isForcedMenuDisable:Z

.field private mCheckClickTime:J

.field private mDegree:I

.field private mDegreeSlidingDrawer:I

.field private mMenu:I

.field private mMenuEnabled:[Z

.field private mMenuHiddenTouchViewGroup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuViewGroup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/components/RotateImageButton;",
            ">;"
        }
    .end annotation
.end field

.field private mOnMenuClickListener:Landroid/view/View$OnClickListener;

.field private mOnMenuLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mQFLanimation:Landroid/view/animation/Animation;

.field private mSliding:Z

.field private mTargetX:I

.field private mTargetY:I


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 4
    .parameter "function"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/Controller;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 47
    iput-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    .line 48
    iput-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuHiddenTouchViewGroup:Ljava/util/ArrayList;

    .line 51
    const/4 v0, 0x5

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuEnabled:[Z

    .line 53
    iput-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mQFLanimation:Landroid/view/animation/Animation;

    .line 54
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->alpha:F

    .line 55
    iput v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mDegree:I

    .line 56
    iput v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mDegreeSlidingDrawer:I

    .line 252
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->blockObject:Ljava/lang/Object;

    .line 253
    new-instance v0, Lcom/lge/camera/controller/QuickFunctionController$4;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/QuickFunctionController$4;-><init>(Lcom/lge/camera/controller/QuickFunctionController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mOnMenuClickListener:Landroid/view/View$OnClickListener;

    .line 432
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mCheckClickTime:J

    .line 458
    new-instance v0, Lcom/lge/camera/controller/QuickFunctionController$5;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/QuickFunctionController$5;-><init>(Lcom/lge/camera/controller/QuickFunctionController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mOnMenuLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 981
    iput-boolean v3, p0, Lcom/lge/camera/controller/QuickFunctionController;->isForcedMenuDisable:Z

    .line 1519
    iput-boolean v3, p0, Lcom/lge/camera/controller/QuickFunctionController;->mSliding:Z

    .line 60
    return-void

    .line 51
    :array_0
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method static synthetic access$002(Lcom/lge/camera/controller/QuickFunctionController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mTargetX:I

    return p1
.end method

.method static synthetic access$1000(Lcom/lge/camera/controller/QuickFunctionController;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuEnabled:[Z

    return-object v0
.end method

.method static synthetic access$102(Lcom/lge/camera/controller/QuickFunctionController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mTargetY:I

    return p1
.end method

.method static synthetic access$1100(Lcom/lge/camera/controller/QuickFunctionController;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/controller/QuickFunctionController;->getMenuIconResource(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/lge/camera/controller/QuickFunctionController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuIconSetTag(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/lge/camera/controller/QuickFunctionController;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->alpha:F

    return v0
.end method

.method static synthetic access$1402(Lcom/lge/camera/controller/QuickFunctionController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mSliding:Z

    return p1
.end method

.method static synthetic access$200(Lcom/lge/camera/controller/QuickFunctionController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/lge/camera/controller/QuickFunctionController;->checkOnClick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/lge/camera/controller/QuickFunctionController;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/camera/controller/QuickFunctionController;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->blockObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/camera/controller/QuickFunctionController;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mCheckClickTime:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/lge/camera/controller/QuickFunctionController;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mCheckClickTime:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/lge/camera/controller/QuickFunctionController;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mQFLanimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lge/camera/controller/QuickFunctionController;Landroid/view/View;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/QuickFunctionController;->findTargetView(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/lge/camera/controller/QuickFunctionController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->isForcedMenuDisable:Z

    return v0
.end method

.method static synthetic access$900(Lcom/lge/camera/controller/QuickFunctionController;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuHiddenTouchViewGroup:Ljava/util/ArrayList;

    return-object v0
.end method

.method private checkOnClick()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 480
    iget-boolean v2, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v2, :cond_1

    .line 517
    :cond_0
    :goto_0
    return v0

    .line 483
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 486
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isEnteringViewShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 489
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getEnableInput()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 492
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isNullSettingView()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isSettingViewRemoving()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 493
    const-string v1, "CameraApp"

    const-string v2, "settingview is not null && Removing!!!  ->> block menu click"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 496
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isShutterButtonLongKey()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 497
    const-string v1, "CameraApp"

    const-string v2, "ShutterButton pressed.. ->> block menu click"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 500
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isPressedShutterButton()Z

    move-result v2

    if-nez v2, :cond_0

    .line 503
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getInCaptureProgress()Z

    move-result v2

    if-nez v2, :cond_0

    .line 506
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-ne v2, v1, :cond_5

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v2

    if-eq v2, v1, :cond_4

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    .line 511
    :cond_4
    const-string v1, "CameraApp"

    const-string v2, "Video state is recording."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 514
    :cond_5
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isRotateDialogVisible()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 517
    goto/16 :goto_0
.end method

.method private checkPreferenceAndSubMenu(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2
    .parameter "strPref"
    .parameter "setting"
    .parameter "subMenuMode"

    .prologue
    const/4 v0, 0x0

    .line 1477
    iget-boolean v1, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v1, :cond_1

    .line 1486
    :cond_0
    :goto_0
    return v0

    .line 1480
    :cond_1
    if-eqz p1, :cond_0

    .line 1483
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v1

    if-ne v1, p3, :cond_0

    .line 1484
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private findTargetView(Landroid/view/View;)I
    .locals 6
    .parameter "v"

    .prologue
    .line 521
    iget-boolean v4, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v4, :cond_1

    .line 522
    const/4 v2, 0x0

    .line 553
    :cond_0
    :goto_0
    return v2

    .line 524
    :cond_1
    const/4 v2, 0x0

    .line 525
    .local v2, targetIndex:I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 526
    .local v1, rect:Landroid/graphics/Rect;
    const/4 v3, 0x0

    .line 527
    .local v3, view:Landroid/view/View;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 528
    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #view:Landroid/view/View;
    check-cast v3, Landroid/view/View;

    .line 530
    .restart local v3       #view:Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f090160

    if-ne v4, v5, :cond_3

    .line 531
    invoke-virtual {v3, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 536
    iget v4, p0, Lcom/lge/camera/controller/QuickFunctionController;->mTargetX:I

    iget v5, p0, Lcom/lge/camera/controller/QuickFunctionController;->mTargetY:I

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 537
    move v2, v0

    .line 549
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_0

    .line 550
    const/4 v2, 0x0

    goto :goto_0

    .line 541
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v4}, Lcom/lge/camera/components/RotateImageButton;->getId()I

    move-result v4

    if-eq v5, v4, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuHiddenTouchViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v5, v4, :cond_5

    .line 543
    :cond_4
    move v2, v0

    .line 544
    goto :goto_2

    .line 527
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getMenuIconResource(II)I
    .locals 7
    .parameter "menuIndex"
    .parameter "iconIndex"

    .prologue
    .line 1150
    iget-boolean v5, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v5, :cond_1

    .line 1151
    const/4 v3, 0x0

    .line 1169
    :cond_0
    :goto_0
    return v3

    .line 1153
    :cond_1
    const/4 v3, 0x0

    .line 1155
    .local v3, menuIconResource:I
    :try_start_0
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, p1}, Lcom/lge/camera/ControllerFunction;->getQFIndexListItem(I)Ljava/lang/String;

    move-result-object v1

    .line 1156
    .local v1, key:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1159
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v1}, Lcom/lge/camera/ControllerFunction;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v2

    .line 1160
    .local v2, keyIndex:I
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v2}, Lcom/lge/camera/ControllerFunction;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v4

    .line 1161
    .local v4, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v4, :cond_0

    .line 1164
    invoke-virtual {v4}, Lcom/lge/camera/setting/ListPreference;->getMenuIconResources()[I

    move-result-object v5

    aget v3, v5, p2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1165
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #keyIndex:I
    .end local v4           #pref:Lcom/lge/camera/setting/ListPreference;
    :catch_0
    move-exception v0

    .line 1166
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v5, "CameraApp"

    const-string v6, "ArrayIndexOutOfBoundsException:"

    invoke-static {v5, v6, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1167
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private initLiveEffectMenus()V
    .locals 4

    .prologue
    .line 124
    :try_start_0
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isLiveEffectSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 127
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0900de

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->inflateStub(I)Landroid/view/View;

    .line 128
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0900e6

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 129
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0900e7

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;

    .line 130
    .local v1, slidingDrawer:Lcom/lge/camera/components/MultiDirectionSlidingDrawer;
    new-instance v2, Lcom/lge/camera/controller/QuickFunctionController$1;

    invoke-direct {v2, p0}, Lcom/lge/camera/controller/QuickFunctionController$1;-><init>(Lcom/lge/camera/controller/QuickFunctionController;)V

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->setOnDrawerOpenListener(Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerOpenListener;)V

    .line 145
    new-instance v2, Lcom/lge/camera/controller/QuickFunctionController$2;

    invoke-direct {v2, p0}, Lcom/lge/camera/controller/QuickFunctionController$2;-><init>(Lcom/lge/camera/controller/QuickFunctionController;)V

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->setOnDrawerCloseListener(Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerCloseListener;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .end local v1           #slidingDrawer:Lcom/lge/camera/components/MultiDirectionSlidingDrawer;
    :cond_0
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 166
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0b018c

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->toast(I)V

    goto :goto_0
.end method

.method private initMenuViews()V
    .locals 3

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 250
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuHiddenTouchViewGroup:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 233
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuHiddenTouchViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 236
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    .line 238
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f090161

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f090163

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f090165

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f090167

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f090169

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuHiddenTouchViewGroup:Ljava/util/ArrayList;

    .line 245
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuHiddenTouchViewGroup:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f090162

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuHiddenTouchViewGroup:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f090164

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuHiddenTouchViewGroup:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f090166

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuHiddenTouchViewGroup:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f090168

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuHiddenTouchViewGroup:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f09016a

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private setMenuDisableForInit(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 171
    iget-boolean v1, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v1, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, p1}, Lcom/lge/camera/ControllerFunction;->getQfIndex(Ljava/lang/String;)I

    move-result v0

    .line 175
    .local v0, menu:I
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v0}, Lcom/lge/camera/ControllerFunction;->isQuickFunctionList(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuDim(IZ)V

    goto :goto_0
.end method

.method private setMenuIconSetTag(I)V
    .locals 7
    .parameter "menuIndex"

    .prologue
    .line 1107
    iget-boolean v4, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v4, :cond_0

    .line 1126
    :goto_0
    return-void

    .line 1111
    :cond_0
    const/4 v2, 0x0

    .line 1112
    .local v2, keyIndex:I
    const/4 v3, 0x0

    .line 1115
    .local v3, pref:Lcom/lge/camera/setting/ListPreference;
    :try_start_0
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, p1}, Lcom/lge/camera/ControllerFunction;->getQFIndexListItem(I)Ljava/lang/String;

    move-result-object v1

    .line 1117
    .local v1, key:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1118
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v1}, Lcom/lge/camera/ControllerFunction;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v2

    .line 1119
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v2}, Lcom/lge/camera/ControllerFunction;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    .line 1121
    :cond_1
    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v4, v3}, Lcom/lge/camera/components/RotateImageButton;->setTag(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1122
    .end local v1           #key:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1123
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "CameraApp"

    const-string v5, "IndexOutOfBoundsException:"

    invoke-static {v4, v5, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1124
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "menuIndex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", keyIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public clearSubMenu()V
    .locals 3

    .prologue
    .line 1279
    iget-boolean v1, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v1, :cond_0

    .line 1293
    :goto_0
    return-void

    .line 1283
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0900e0

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1284
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1285
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1286
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0900e4

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 1288
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0900e5

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 1292
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->setAllMenuSelected(Z)V

    goto :goto_0
.end method

.method public getMenu()I
    .locals 1

    .prologue
    .line 978
    iget v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenu:I

    return v0
.end method

.method public getMenuIconResource(I)I
    .locals 9
    .parameter "menuIndex"

    .prologue
    const/4 v5, 0x0

    .line 1173
    iget-boolean v6, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v6, :cond_1

    .line 1197
    :cond_0
    :goto_0
    return v5

    .line 1176
    :cond_1
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6, p1}, Lcom/lge/camera/ControllerFunction;->getQFIndexListItem(I)Ljava/lang/String;

    move-result-object v2

    .line 1177
    .local v2, key:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1181
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6, v2}, Lcom/lge/camera/ControllerFunction;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v3

    .line 1182
    .local v3, keyIndex:I
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6, v3}, Lcom/lge/camera/ControllerFunction;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v4

    .line 1183
    .local v4, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v4, :cond_0

    .line 1187
    invoke-virtual {v4}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 1189
    .local v1, iconIndex:I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_2

    .line 1190
    :try_start_0
    invoke-virtual {v4}, Lcom/lge/camera/setting/ListPreference;->getMenuIconResources()[I

    move-result-object v6

    aget v5, v6, v1

    goto :goto_0

    .line 1192
    :cond_2
    invoke-virtual {v4}, Lcom/lge/camera/setting/ListPreference;->getMenuIconResources()[I

    move-result-object v6

    const/4 v7, 0x0

    aget v5, v6, v7
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1194
    :catch_0
    move-exception v0

    .line 1195
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v6, "CameraApp"

    const-string v7, "ArrayIndexOutOfBoundsException:"

    invoke-static {v6, v7, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1196
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pref.getValue():"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", iconIndex = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getMenuView(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    .line 967
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 968
    const/4 v0, 0x0

    .line 970
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method public getQFLMenuEnable()[Z
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuEnabled:[Z

    return-object v0
.end method

.method public getSelectedMenuKey()Ljava/lang/String;
    .locals 6

    .prologue
    .line 557
    iget-boolean v3, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v3, :cond_0

    .line 558
    const-string v1, ""

    .line 569
    :goto_0
    return-object v1

    .line 560
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 561
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, size:I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 562
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v3}, Lcom/lge/camera/components/RotateImageButton;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 563
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v3}, Lcom/lge/camera/components/RotateImageButton;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/setting/ListPreference;

    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 564
    .local v1, key:Ljava/lang/String;
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selected menu key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 561
    .end local v1           #key:Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 569
    .end local v0           #i:I
    .end local v2           #size:I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 1318
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useHideQFLWhenSettingMenuDisplay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1325
    :cond_0
    :goto_0
    return-void

    .line 1321
    :cond_1
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v0, :cond_0

    .line 1324
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionController;->qflHide()V

    goto :goto_0
.end method

.method public initController()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 64
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/lge/camera/controller/QuickFunctionController;->initLiveEffectMenus()V

    .line 120
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-boolean v2, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v2, :cond_1

    .line 71
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0900c5

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->inflateStub(I)Landroid/view/View;

    .line 72
    invoke-direct {p0}, Lcom/lge/camera/controller/QuickFunctionController;->initLiveEffectMenus()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_1
    iput-boolean v5, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    .line 79
    :cond_1
    invoke-direct {p0}, Lcom/lge/camera/controller/QuickFunctionController;->initMenuViews()V

    .line 80
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionController;->initMenu()V

    .line 81
    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/QuickFunctionController;->quickFunctionControllerRefresh(Z)V

    .line 83
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v0

    .line 85
    .local v0, degree:I
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-ne v2, v5, :cond_2

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isMMSIntent()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 86
    const-string v2, "key_live_effect"

    invoke-direct {p0, v2}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuDisableForInit(Ljava/lang/String;)V

    .line 89
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 90
    const-string v2, "key_zoom"

    invoke-direct {p0, v2}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuDisableForInit(Ljava/lang/String;)V

    .line 93
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/camera/util/TelephonyUtil;->phoneInCall(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 95
    const-string v2, "key_voiceshutter"

    invoke-direct {p0, v2}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuDisableForInit(Ljava/lang/String;)V

    .line 97
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isExternalStorageRemoved()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 98
    const-string v2, "key_storage"

    invoke-direct {p0, v2}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuDisableForInit(Ljava/lang/String;)V

    .line 101
    :cond_5
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f090161

    invoke-interface {v2, v3, v0, v4}, Lcom/lge/camera/ControllerFunction;->setDegree(IIZ)V

    .line 102
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f090163

    invoke-interface {v2, v3, v0, v4}, Lcom/lge/camera/ControllerFunction;->setDegree(IIZ)V

    .line 103
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f090165

    invoke-interface {v2, v3, v0, v4}, Lcom/lge/camera/ControllerFunction;->setDegree(IIZ)V

    .line 104
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f090167

    invoke-interface {v2, v3, v0, v4}, Lcom/lge/camera/ControllerFunction;->setDegree(IIZ)V

    .line 105
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f090169

    invoke-interface {v2, v3, v0, v4}, Lcom/lge/camera/ControllerFunction;->setDegree(IIZ)V

    .line 107
    const v2, 0x3f333333

    iput v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->alpha:F

    .line 108
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionController;->setAllMenuIcons()V

    .line 110
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "on"

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_smart_mode"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 112
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionController;->qflHide()V

    .line 116
    :goto_2
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mQFLanimation:Landroid/view/animation/Animation;

    if-nez v2, :cond_6

    .line 117
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f04000c

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mQFLanimation:Landroid/view/animation/Animation;

    .line 119
    :cond_6
    iput-boolean v5, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    goto/16 :goto_0

    .line 73
    .end local v0           #degree:I
    :catch_0
    move-exception v1

    .line 74
    .local v1, e:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 75
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0b018c

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->toast(I)V

    goto/16 :goto_1

    .line 114
    .end local v1           #e:Ljava/lang/RuntimeException;
    .restart local v0       #degree:I
    :cond_7
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionController;->show()V

    goto :goto_2
.end method

.method public initEnabled()V
    .locals 3

    .prologue
    .line 195
    iget-boolean v1, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v1, :cond_1

    .line 201
    :cond_0
    return-void

    .line 198
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuEnabled:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuEnabled:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public initMenu()V
    .locals 4

    .prologue
    .line 205
    iget-boolean v2, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v2, :cond_0

    .line 222
    :goto_0
    return-void

    .line 208
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, size:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 209
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateImageButton;

    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController;->mOnMenuClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/lge/camera/components/RotateImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateImageButton;

    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController;->mOnMenuLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Lcom/lge/camera/components/RotateImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 211
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuHiddenTouchViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController;->mOnMenuLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 214
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f090160

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/lge/camera/controller/QuickFunctionController$3;

    invoke-direct {v3, p0}, Lcom/lge/camera/controller/QuickFunctionController$3;-><init>(Lcom/lge/camera/controller/QuickFunctionController;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method protected isEqualPreferenceAndSubmenu(Ljava/lang/String;)Z
    .locals 7
    .parameter "strPref"

    .prologue
    const/16 v6, 0x12

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1432
    iget-boolean v4, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v4, :cond_1

    .line 1473
    :cond_0
    :goto_0
    return v2

    .line 1435
    :cond_1
    const-string v4, "key_preview_size_on_device"

    const/4 v5, 0x2

    invoke-direct {p0, p1, v4, v5}, Lcom/lge/camera/controller/QuickFunctionController;->checkPreferenceAndSubMenu(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "key_scene_mode"

    const/4 v5, 0x3

    invoke-direct {p0, p1, v4, v5}, Lcom/lge/camera/controller/QuickFunctionController;->checkPreferenceAndSubMenu(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "key_focus"

    const/4 v5, 0x4

    invoke-direct {p0, p1, v4, v5}, Lcom/lge/camera/controller/QuickFunctionController;->checkPreferenceAndSubMenu(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "key_setting"

    const/4 v5, 0x5

    invoke-direct {p0, p1, v4, v5}, Lcom/lge/camera/controller/QuickFunctionController;->checkPreferenceAndSubMenu(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "key_setting"

    const/16 v5, 0x10

    invoke-direct {p0, p1, v4, v5}, Lcom/lge/camera/controller/QuickFunctionController;->checkPreferenceAndSubMenu(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "key_zoom"

    const/4 v5, 0x6

    invoke-direct {p0, p1, v4, v5}, Lcom/lge/camera/controller/QuickFunctionController;->checkPreferenceAndSubMenu(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "key_brightness"

    const/4 v5, 0x7

    invoke-direct {p0, p1, v4, v5}, Lcom/lge/camera/controller/QuickFunctionController;->checkPreferenceAndSubMenu(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "key_flash"

    const/16 v5, 0x8

    invoke-direct {p0, p1, v4, v5}, Lcom/lge/camera/controller/QuickFunctionController;->checkPreferenceAndSubMenu(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "key_flash"

    const/16 v5, 0x9

    invoke-direct {p0, p1, v4, v5}, Lcom/lge/camera/controller/QuickFunctionController;->checkPreferenceAndSubMenu(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "key_video_duration"

    const/16 v5, 0xa

    invoke-direct {p0, p1, v4, v5}, Lcom/lge/camera/controller/QuickFunctionController;->checkPreferenceAndSubMenu(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "key_save_direction"

    const/16 v5, 0xb

    invoke-direct {p0, p1, v4, v5}, Lcom/lge/camera/controller/QuickFunctionController;->checkPreferenceAndSubMenu(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "key_voiceshutter"

    const/16 v5, 0x13

    invoke-direct {p0, p1, v4, v5}, Lcom/lge/camera/controller/QuickFunctionController;->checkPreferenceAndSubMenu(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "key_uplus_box"

    const/16 v5, 0x18

    invoke-direct {p0, p1, v4, v5}, Lcom/lge/camera/controller/QuickFunctionController;->checkPreferenceAndSubMenu(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "key_camera_picturesize"

    const/16 v5, 0xc

    invoke-direct {p0, p1, v4, v5}, Lcom/lge/camera/controller/QuickFunctionController;->checkPreferenceAndSubMenu(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "key_video_audio_recording"

    const/16 v5, 0xd

    invoke-direct {p0, p1, v4, v5}, Lcom/lge/camera/controller/QuickFunctionController;->checkPreferenceAndSubMenu(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "key_beautyshot"

    const/16 v5, 0xf

    invoke-direct {p0, p1, v4, v5}, Lcom/lge/camera/controller/QuickFunctionController;->checkPreferenceAndSubMenu(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "key_live_effect"

    invoke-direct {p0, p1, v4, v6}, Lcom/lge/camera/controller/QuickFunctionController;->checkPreferenceAndSubMenu(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "key_camera_shot_mode"

    const/16 v5, 0x11

    invoke-direct {p0, p1, v4, v5}, Lcom/lge/camera/controller/QuickFunctionController;->checkPreferenceAndSubMenu(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "key_camera_3d_depth"

    const/16 v5, 0x17

    invoke-direct {p0, p1, v4, v5}, Lcom/lge/camera/controller/QuickFunctionController;->checkPreferenceAndSubMenu(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "key_smart_mode"

    const/16 v5, 0x1a

    invoke-direct {p0, p1, v4, v5}, Lcom/lge/camera/controller/QuickFunctionController;->checkPreferenceAndSubMenu(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "key_video_record_mode"

    invoke-direct {p0, p1, v4, v6}, Lcom/lge/camera/controller/QuickFunctionController;->checkPreferenceAndSubMenu(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v2, v3

    .line 1456
    goto/16 :goto_0

    .line 1459
    :cond_3
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isQuickFunctionSettingControllerShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v4

    const/16 v5, 0x15

    if-ne v4, v5, :cond_0

    .line 1461
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCurrentMenuKey()Ljava/lang/String;

    move-result-object v0

    .line 1462
    .local v0, curKey:Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v0}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 1464
    .local v1, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_0

    .line 1469
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 1470
    goto/16 :goto_0
.end method

.method public isSliding()Z
    .locals 1

    .prologue
    .line 1522
    iget-boolean v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mSliding:Z

    return v0
.end method

.method public isVisible()Z
    .locals 2

    .prologue
    .line 1369
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f090160

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1370
    :cond_0
    const/4 v0, 0x0

    .line 1372
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1418
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 1429
    :goto_0
    return-void

    .line 1421
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1422
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1423
    iput-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    .line 1425
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mQFLanimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_2

    .line 1426
    iput-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mQFLanimation:Landroid/view/animation/Animation;

    .line 1428
    :cond_2
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onDestroy()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1389
    const-string v0, "CameraApp"

    const-string v1, "QFL onPause"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    iput-boolean v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->isForcedMenuDisable:Z

    .line 1391
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_1

    .line 1414
    :cond_0
    :goto_0
    return-void

    .line 1394
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionController;->checkMediator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1398
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isRotateDialogVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1402
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->checkPreviewPanelController()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1403
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    .line 1405
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 1406
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.RemoveSettingMenu"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto :goto_0

    .line 1408
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    if-eqz v0, :cond_4

    .line 1409
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->clearSubMenu()V

    goto :goto_0

    .line 1413
    :cond_4
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onPause()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 1378
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v0, :cond_0

    .line 1379
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 1380
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/QuickFunctionController;->quickFunctionControllerRefresh(Z)V

    .line 1383
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mCheckClickTime:J

    .line 1384
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onResume()V

    .line 1385
    return-void
.end method

.method public qflHide()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 1354
    iget-boolean v3, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v3, :cond_1

    .line 1366
    :cond_0
    return-void

    .line 1357
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f090160

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1358
    .local v1, qfl:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1359
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1360
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1362
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateImageButton;

    .line 1363
    .local v2, rib:Lcom/lge/camera/components/RotateImageButton;
    invoke-virtual {v2, v5}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public qflMenuAnimation(ZILandroid/view/animation/Animation$AnimationListener;)V
    .locals 4
    .parameter "show"
    .parameter "duration"
    .parameter "listener"

    .prologue
    .line 1490
    iget-boolean v2, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v2, :cond_1

    .line 1517
    :cond_0
    :goto_0
    return-void

    .line 1493
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f090160

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1494
    .local v1, qflView:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1495
    if-nez p3, :cond_2

    .line 1496
    new-instance p3, Lcom/lge/camera/controller/QuickFunctionController$17;

    .end local p3
    invoke-direct {p3, p0, p1, v1}, Lcom/lge/camera/controller/QuickFunctionController$17;-><init>(Lcom/lge/camera/controller/QuickFunctionController;ZLandroid/view/View;)V

    .line 1509
    .restart local p3
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 1510
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    .line 1511
    .local v0, direction:I
    :goto_1
    if-eqz p1, :cond_4

    .line 1512
    invoke-static {v1, v0, p2, p3}, Lcom/lge/camera/util/Util;->slideIn(Landroid/view/View;IILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    goto :goto_0

    .line 1510
    .end local v0           #direction:I
    :cond_3
    const/4 v0, 0x2

    goto :goto_1

    .line 1514
    .restart local v0       #direction:I
    :cond_4
    invoke-static {v1, v0, p2, p3}, Lcom/lge/camera/util/Util;->slideOut(Landroid/view/View;IILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    goto :goto_0
.end method

.method public qflShow()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1328
    iget-boolean v3, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v3, :cond_1

    .line 1351
    :cond_0
    return-void

    .line 1331
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "on"

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_smart_mode"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1336
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportClearView()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isClearView()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1342
    :cond_4
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f090160

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1343
    .local v1, qfl:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1344
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1345
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1347
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateImageButton;

    .line 1348
    .local v2, rib:Lcom/lge/camera/components/RotateImageButton;
    invoke-virtual {v2, v6}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public quickFunctionControllerRefresh(Z)V
    .locals 6
    .parameter "show"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1241
    iget-boolean v2, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v2, :cond_1

    .line 1276
    :cond_0
    :goto_0
    return-void

    .line 1244
    :cond_1
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isLiveEffectDrawerOpened()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isPIPFrameDrawerOpened()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1247
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isXGAmodel()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUVGAmodel()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v2

    if-nez v2, :cond_0

    .line 1251
    :cond_4
    if-eqz p1, :cond_5

    .line 1252
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionController;->show()V

    .line 1256
    :goto_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionController;->setAllMenuIcons()V

    .line 1257
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionController;->setMmsLimit()V

    .line 1259
    const/4 v0, 0x0

    .local v0, i:I
    const/4 v1, 0x5

    .local v1, size:I
    :goto_2
    if-ge v0, v1, :cond_6

    .line 1260
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuEnabled:[Z

    aget-boolean v2, v2, v0

    invoke-virtual {p0, v0, v2}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuEnabled(IZ)V

    .line 1259
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1254
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_5
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionController;->hide()V

    goto :goto_1

    .line 1262
    .restart local v0       #i:I
    .restart local v1       #size:I
    :cond_6
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_9

    .line 1264
    :cond_7
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_setting"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getQfIndex(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v4, v2}, Lcom/lge/camera/controller/QuickFunctionController;->setAllMenuSelected(ZI)V

    .line 1268
    :goto_3
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/camera/util/TelephonyUtil;->phoneInCall(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1270
    const-string v2, "key_voiceshutter"

    invoke-direct {p0, v2}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuDisableForInit(Ljava/lang/String;)V

    .line 1272
    :cond_8
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-ne v2, v5, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5}, Lcom/lge/camera/ControllerFunction;->isAudiozoom_ExceptionCase(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1274
    const-string v2, "key_audiozoom"

    invoke-direct {p0, v2}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuDisableForInit(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1266
    :cond_9
    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/QuickFunctionController;->setAllMenuSelected(Z)V

    goto :goto_3
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->resetQFIndex()V

    .line 189
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionController;->initEnabled()V

    .line 190
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionController;->initMenu()V

    .line 191
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/QuickFunctionController;->quickFunctionControllerRefresh(Z)V

    goto :goto_0
.end method

.method public restoreLiveEffectSubMenu()V
    .locals 0

    .prologue
    .line 1595
    return-void
.end method

.method public setAllMenuEnabled(ZZ)V
    .locals 2
    .parameter "enabled"
    .parameter "dimByEnable"

    .prologue
    .line 1021
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/QuickFunctionController$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/lge/camera/controller/QuickFunctionController$13;-><init>(Lcom/lge/camera/controller/QuickFunctionController;ZZ)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1053
    :cond_0
    return-void
.end method

.method public setAllMenuIcons()V
    .locals 2

    .prologue
    .line 1075
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1076
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/QuickFunctionController$15;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/QuickFunctionController$15;-><init>(Lcom/lge/camera/controller/QuickFunctionController;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1104
    :cond_0
    return-void
.end method

.method public setAllMenuSelected(Z)V
    .locals 4
    .parameter "selected"

    .prologue
    .line 1215
    iget-boolean v2, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v2, :cond_1

    .line 1224
    :cond_0
    return-void

    .line 1218
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1219
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, size:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1220
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lge/camera/components/RotateImageButton;->setPressed(Z)V

    .line 1221
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v2, p1}, Lcom/lge/camera/components/RotateImageButton;->setSelected(Z)V

    .line 1219
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setAllMenuSelected(ZI)V
    .locals 4
    .parameter "selected"
    .parameter "exception"

    .prologue
    .line 1227
    iget-boolean v2, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v2, :cond_1

    .line 1238
    :cond_0
    return-void

    .line 1230
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1231
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, size:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1232
    if-eq v0, p2, :cond_2

    .line 1233
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lge/camera/components/RotateImageButton;->setPressed(Z)V

    .line 1234
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v2, p1}, Lcom/lge/camera/components/RotateImageButton;->setSelected(Z)V

    .line 1231
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setCheckClickTime(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 434
    iput-wide p1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mCheckClickTime:J

    .line 435
    return-void
.end method

.method public setCheckToggleTime(I)Z
    .locals 5
    .parameter "usage"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v0, 0x1

    .line 438
    packed-switch p1, :pswitch_data_0

    .line 455
    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    .line 440
    :pswitch_0
    iget-wide v1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mCheckClickTime:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/lge/camera/controller/QuickFunctionController;->mCheckClickTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x2ee

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    goto :goto_0

    .line 447
    :pswitch_1
    iget-wide v1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mCheckClickTime:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/lge/camera/controller/QuickFunctionController;->mCheckClickTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1f4

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    goto :goto_0

    .line 438
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setLimitationToLiveeffect(Z)V
    .locals 0
    .parameter "beSet"

    .prologue
    .line 1596
    return-void
.end method

.method public setMenu(I)V
    .locals 0
    .parameter "menuIndex"

    .prologue
    .line 974
    iput p1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenu:I

    .line 975
    return-void
.end method

.method public setMenuDim(IZ)V
    .locals 2
    .parameter "menuIndex"
    .parameter "enable"

    .prologue
    .line 1129
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_1

    .line 1147
    :cond_0
    :goto_0
    return-void

    .line 1132
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1133
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/QuickFunctionController$16;

    invoke-direct {v1, p0, p2, p1}, Lcom/lge/camera/controller/QuickFunctionController$16;-><init>(Lcom/lge/camera/controller/QuickFunctionController;ZI)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setMenuEnableForDualRecording(Z)V
    .locals 0
    .parameter "beSet"

    .prologue
    .line 1597
    return-void
.end method

.method public setMenuEnabled(IZ)V
    .locals 2
    .parameter "menuIndex"
    .parameter "enabled"

    .prologue
    .line 989
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_1

    .line 1016
    :cond_0
    :goto_0
    return-void

    .line 993
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuEnabled:[Z

    aput-boolean p2, v0, p1

    .line 994
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 995
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/QuickFunctionController$12;

    invoke-direct {v1, p0, p2, p1}, Lcom/lge/camera/controller/QuickFunctionController$12;-><init>(Lcom/lge/camera/controller/QuickFunctionController;ZI)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setMenuIcon(II)V
    .locals 2
    .parameter "menuIndex"
    .parameter "iconIndex"

    .prologue
    .line 1057
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 1071
    :goto_0
    return-void

    .line 1060
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/QuickFunctionController$14;

    invoke-direct {v1, p0, p1, p2}, Lcom/lge/camera/controller/QuickFunctionController$14;-><init>(Lcom/lge/camera/controller/QuickFunctionController;II)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setMenuSelected(IZ)V
    .locals 4
    .parameter "menuIndex"
    .parameter "selected"

    .prologue
    const/4 v3, 0x0

    .line 1203
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_1

    .line 1212
    :cond_0
    :goto_0
    return-void

    .line 1206
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    .line 1207
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMenuSelected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    invoke-virtual {p0, v3, p1}, Lcom/lge/camera/controller/QuickFunctionController;->setAllMenuSelected(ZI)V

    .line 1209
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageButton;->setPressed(Z)V

    .line 1210
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0, p2}, Lcom/lge/camera/components/RotateImageButton;->setSelected(Z)V

    goto :goto_0
.end method

.method public setMmsLimit()V
    .locals 4

    .prologue
    .line 1296
    iget-boolean v1, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v1, :cond_1

    .line 1308
    :cond_0
    :goto_0
    return-void

    .line 1299
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1300
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_preview_size_on_device"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getQfIndex(Ljava/lang/String;)I

    move-result v0

    .line 1302
    .local v0, videoSizePrefIndex:I
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v0}, Lcom/lge/camera/ControllerFunction;->isQuickFunctionList(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1303
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isMMSIntent()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->setMmsLimitUiQfl(Z)V

    goto :goto_0

    .line 1305
    :cond_2
    const-string v1, "CameraApp"

    const-string v2, "preview size setting is not in QFL"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setMmsLimit(Z)V
    .locals 0
    .parameter "mmsVideo"

    .prologue
    .line 1593
    return-void
.end method

.method public setMmsLimitUiQfl(Z)V
    .locals 0
    .parameter "mmsVideo"

    .prologue
    .line 1594
    return-void
.end method

.method public setQuickFunctionMenuForcedDisable(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 983
    iput-boolean p1, p0, Lcom/lge/camera/controller/QuickFunctionController;->isForcedMenuDisable:Z

    .line 984
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 1311
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 1312
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionController;->qflShow()V

    .line 1313
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/QuickFunctionController;->setAllMenuSelected(Z)V

    .line 1315
    :cond_0
    return-void
.end method

.method public slideQFLIn(Z)V
    .locals 5
    .parameter "useAnimation"

    .prologue
    const/4 v4, 0x1

    .line 1526
    iget-boolean v2, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportClearView()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1560
    :cond_0
    :goto_0
    return-void

    .line 1532
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 1534
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickFunctionController;->setAllMenuSelected(Z)V

    .line 1536
    if-nez p1, :cond_3

    .line 1537
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionController;->qflShow()V

    .line 1538
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateImageButton;

    .line 1539
    .local v1, menu:Lcom/lge/camera/components/RotateImageButton;
    invoke-virtual {v1, v4}, Lcom/lge/camera/components/RotateImageButton;->setClickable(Z)V

    .line 1540
    invoke-virtual {v1, v4}, Lcom/lge/camera/components/RotateImageButton;->setEnabled(Z)V

    goto :goto_1

    .line 1543
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #menu:Lcom/lge/camera/components/RotateImageButton;
    :cond_3
    const/16 v2, 0xc8

    new-instance v3, Lcom/lge/camera/controller/QuickFunctionController$18;

    invoke-direct {v3, p0}, Lcom/lge/camera/controller/QuickFunctionController$18;-><init>(Lcom/lge/camera/controller/QuickFunctionController;)V

    invoke-virtual {p0, v4, v2, v3}, Lcom/lge/camera/controller/QuickFunctionController;->qflMenuAnimation(ZILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method public slideQFLOut(Z)V
    .locals 5
    .parameter "useAnimation"

    .prologue
    const/4 v4, 0x0

    .line 1563
    iget-boolean v2, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportClearView()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1591
    :cond_0
    :goto_0
    return-void

    .line 1569
    :cond_1
    if-nez p1, :cond_3

    .line 1570
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateImageButton;

    .line 1571
    .local v1, menu:Lcom/lge/camera/components/RotateImageButton;
    invoke-virtual {v1, v4}, Lcom/lge/camera/components/RotateImageButton;->setClickable(Z)V

    .line 1572
    invoke-virtual {v1, v4}, Lcom/lge/camera/components/RotateImageButton;->setEnabled(Z)V

    goto :goto_1

    .line 1574
    .end local v1           #menu:Lcom/lge/camera/components/RotateImageButton;
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionController;->qflHide()V

    goto :goto_0

    .line 1576
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_3
    const/16 v2, 0xc8

    new-instance v3, Lcom/lge/camera/controller/QuickFunctionController$19;

    invoke-direct {v3, p0}, Lcom/lge/camera/controller/QuickFunctionController$19;-><init>(Lcom/lge/camera/controller/QuickFunctionController;)V

    invoke-virtual {p0, v4, v2, v3}, Lcom/lge/camera/controller/QuickFunctionController;->qflMenuAnimation(ZILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method public startAudiozoomMenuRotation(I)V
    .locals 3
    .parameter "degree"

    .prologue
    .line 949
    iget-boolean v1, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v1

    if-nez v1, :cond_1

    .line 964
    :cond_0
    :goto_0
    return-void

    .line 952
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 955
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAudiozoom()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 956
    const/4 v0, 0x1

    .line 957
    .local v0, enable:Z
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/16 v2, 0x5a

    invoke-static {v1, p1, v2}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/16 v2, 0x10e

    invoke-static {v1, p1, v2}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 960
    :cond_2
    const/4 v0, 0x0

    .line 962
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v0}, Lcom/lge/camera/ControllerFunction;->setForced_audiozoom(Z)V

    goto :goto_0
.end method

.method public startLiveEffectDrawerSubMenuRotation(I)V
    .locals 25
    .parameter "degree"

    .prologue
    .line 668
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/controller/Controller;->mInit:Z

    move/from16 v23, v0

    if-nez v23, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v23

    if-nez v23, :cond_1

    .line 807
    :cond_0
    :goto_0
    return-void

    .line 671
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/lge/camera/ControllerFunction;->isConfigurationChanging()Z

    move-result v23

    if-nez v23, :cond_0

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v23, v0

    const v24, 0x7f0900e7

    invoke-interface/range {v23 .. v24}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v23

    if-eqz v23, :cond_0

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v23, v0

    const v24, 0x7f0900eb

    invoke-interface/range {v23 .. v24}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 680
    .local v12, ll:Landroid/widget/LinearLayout;
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v13

    .line 681
    .local v13, numPIPMask:I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 682
    .local v7, lArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/camera/components/RotateLayout;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v13, :cond_2

    .line 683
    invoke-virtual {v12, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/lge/camera/components/RotateLayout;

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 686
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/QuickFunctionController;->mDegreeSlidingDrawer:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, p1

    if-eq v0, v1, :cond_3

    .line 687
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v23, 0x3f80

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v2, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 688
    .local v2, anim:Landroid/view/animation/Animation;
    new-instance v23, Lcom/lge/camera/controller/QuickFunctionController$8;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController$8;-><init>(Lcom/lge/camera/controller/QuickFunctionController;)V

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 695
    const-wide/16 v23, 0x1f4

    move-wide/from16 v0, v23

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 697
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v13, :cond_3

    .line 698
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/camera/components/RotateLayout;

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 697
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 702
    .end local v2           #anim:Landroid/view/animation/Animation;
    :cond_3
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v13, :cond_4

    .line 703
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/camera/components/RotateLayout;

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateLayout;->setAngle(I)V

    .line 702
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 706
    :cond_4
    const/16 v20, 0x0

    .line 708
    .local v20, sv_frameLayout:Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v23, v0

    const v24, 0x7f0900ea

    invoke-interface/range {v23 .. v24}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .end local v20           #sv_frameLayout:Landroid/widget/FrameLayout;
    check-cast v20, Landroid/widget/FrameLayout;

    .line 710
    .restart local v20       #sv_frameLayout:Landroid/widget/FrameLayout;
    invoke-virtual/range {v20 .. v20}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 712
    .local v14, params:Landroid/view/ViewGroup$MarginLayoutParams;
    const v23, 0x7f0a027b

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v8

    .line 713
    .local v8, leftMargin:I
    const v23, 0x7f0a027c

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v11

    .line 715
    .local v11, leftMargin_portrait:I
    const v23, 0x7f0a0280

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v21

    .line 716
    .local v21, topMargin_land:I
    const v23, 0x7f0a0281

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v22

    .line 718
    .local v22, topMargin_portrait_land:I
    const v23, 0x7f0a028a

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v3

    .line 719
    .local v3, bottomMarginRotate:I
    const v23, 0x7f0a028b

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v4

    .line 720
    .local v4, bottomMarginRotate_portrait:I
    const v23, 0x7f0a0288

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v9

    .line 721
    .local v9, leftMarginRotate:I
    const v23, 0x7f0a0289

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v10

    .line 723
    .local v10, leftMarginRotate_portrait:I
    const v23, 0x7f0a0284

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v18

    .line 724
    .local v18, rlWidth:I
    const v23, 0x7f0a0286

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v19

    .line 725
    .local v19, rlWidth_portrait:I
    const v23, 0x7f0a0285

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v16

    .line 726
    .local v16, rlHeight:I
    const v23, 0x7f0a0287

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v17

    .line 730
    .local v17, rlHeight_portrait:I
    move/from16 v5, p1

    .line 731
    .local v5, convDegree:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v23

    if-nez v23, :cond_5

    .line 732
    add-int/lit8 v23, p1, 0x5a

    move/from16 v0, v23

    rem-int/lit16 v5, v0, 0x168

    .line 735
    :cond_5
    sparse-switch v5, :sswitch_data_0

    .line 788
    :cond_6
    if-eqz v20, :cond_7

    .line 789
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 792
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/QuickFunctionController;->mDegreeSlidingDrawer:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, p1

    if-eq v0, v1, :cond_a

    .line 793
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/16 v23, 0x0

    const/high16 v24, 0x3f80

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v2, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 794
    .restart local v2       #anim:Landroid/view/animation/Animation;
    new-instance v23, Lcom/lge/camera/controller/QuickFunctionController$9;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController$9;-><init>(Lcom/lge/camera/controller/QuickFunctionController;)V

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 801
    const-wide/16 v23, 0x1f4

    move-wide/from16 v0, v23

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 802
    const/4 v6, 0x0

    :goto_4
    if-ge v6, v13, :cond_a

    .line 803
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/camera/components/RotateLayout;

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 802
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 738
    .end local v2           #anim:Landroid/view/animation/Animation;
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v23

    if-eqz v23, :cond_8

    .line 739
    move/from16 v0, v21

    iput v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 740
    const/4 v6, 0x0

    :goto_5
    if-ge v6, v13, :cond_6

    .line 741
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/camera/components/RotateLayout;

    invoke-virtual/range {v23 .. v23}, Lcom/lge/camera/components/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 742
    .local v15, params2:Landroid/view/ViewGroup$MarginLayoutParams;
    iput v3, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 743
    iput v9, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 744
    move/from16 v0, v18

    iput v0, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 745
    move/from16 v0, v16

    iput v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 746
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/camera/components/RotateLayout;

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/lge/camera/components/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 740
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 749
    .end local v15           #params2:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_8
    iput v8, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 750
    const/4 v6, 0x0

    :goto_6
    if-ge v6, v13, :cond_6

    .line 751
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/camera/components/RotateLayout;

    invoke-virtual/range {v23 .. v23}, Lcom/lge/camera/components/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 752
    .restart local v15       #params2:Landroid/view/ViewGroup$MarginLayoutParams;
    iput v3, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 753
    iput v9, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 754
    move/from16 v0, v18

    iput v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 755
    move/from16 v0, v16

    iput v0, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 756
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/camera/components/RotateLayout;

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/lge/camera/components/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 750
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 762
    .end local v15           #params2:Landroid/view/ViewGroup$MarginLayoutParams;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v23

    if-eqz v23, :cond_9

    .line 763
    move/from16 v0, v22

    iput v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 764
    const/4 v6, 0x0

    :goto_7
    if-ge v6, v13, :cond_6

    .line 765
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/camera/components/RotateLayout;

    invoke-virtual/range {v23 .. v23}, Lcom/lge/camera/components/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 766
    .restart local v15       #params2:Landroid/view/ViewGroup$MarginLayoutParams;
    iput v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 767
    iput v10, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 768
    move/from16 v0, v19

    iput v0, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 769
    move/from16 v0, v17

    iput v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 770
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/camera/components/RotateLayout;

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/lge/camera/components/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 764
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 773
    .end local v15           #params2:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_9
    iput v11, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 774
    const/4 v6, 0x0

    :goto_8
    if-ge v6, v13, :cond_6

    .line 775
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/camera/components/RotateLayout;

    invoke-virtual/range {v23 .. v23}, Lcom/lge/camera/components/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 776
    .restart local v15       #params2:Landroid/view/ViewGroup$MarginLayoutParams;
    iput v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 777
    iput v10, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 778
    move/from16 v0, v19

    iput v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 779
    move/from16 v0, v17

    iput v0, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 780
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/camera/components/RotateLayout;

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/lge/camera/components/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 774
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 806
    .end local v15           #params2:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_a
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/controller/QuickFunctionController;->mDegreeSlidingDrawer:I

    goto/16 :goto_0

    .line 735
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method public startPIPFrameSubMenuRotation(I)V
    .locals 25
    .parameter "degree"

    .prologue
    .line 810
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/controller/Controller;->mInit:Z

    move/from16 v23, v0

    if-nez v23, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v23

    if-nez v23, :cond_1

    .line 946
    :cond_0
    :goto_0
    return-void

    .line 813
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/lge/camera/ControllerFunction;->isConfigurationChanging()Z

    move-result v23

    if-nez v23, :cond_0

    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v23, v0

    const v24, 0x7f09011a

    invoke-interface/range {v23 .. v24}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v23

    if-eqz v23, :cond_0

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v23, v0

    const v24, 0x7f09011e

    invoke-interface/range {v23 .. v24}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 821
    .local v12, ll:Landroid/widget/LinearLayout;
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v13

    .line 822
    .local v13, numPIPMask:I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 823
    .local v7, lArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/camera/components/RotateLayout;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v13, :cond_2

    .line 824
    invoke-virtual {v12, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/lge/camera/components/RotateLayout;

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 823
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 827
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/QuickFunctionController;->mDegreeSlidingDrawer:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, p1

    if-eq v0, v1, :cond_3

    .line 828
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v23, 0x3f80

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v2, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 829
    .local v2, anim:Landroid/view/animation/Animation;
    new-instance v23, Lcom/lge/camera/controller/QuickFunctionController$10;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController$10;-><init>(Lcom/lge/camera/controller/QuickFunctionController;)V

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 836
    const-wide/16 v23, 0x1f4

    move-wide/from16 v0, v23

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 838
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v13, :cond_3

    .line 839
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/camera/components/RotateLayout;

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 838
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 842
    .end local v2           #anim:Landroid/view/animation/Animation;
    :cond_3
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v13, :cond_4

    .line 843
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/camera/components/RotateLayout;

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateLayout;->setAngle(I)V

    .line 842
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 846
    :cond_4
    const/16 v20, 0x0

    .line 848
    .local v20, sv_frameLayout:Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v23, v0

    const v24, 0x7f09011d

    invoke-interface/range {v23 .. v24}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .end local v20           #sv_frameLayout:Landroid/widget/FrameLayout;
    check-cast v20, Landroid/widget/FrameLayout;

    .line 849
    .restart local v20       #sv_frameLayout:Landroid/widget/FrameLayout;
    invoke-virtual/range {v20 .. v20}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 851
    .local v14, params:Landroid/view/ViewGroup$MarginLayoutParams;
    const v23, 0x7f0a0264

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v8

    .line 852
    .local v8, leftMargin:I
    const v23, 0x7f0a0265

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v11

    .line 854
    .local v11, leftMargin_portrait:I
    const v23, 0x7f0a0269

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v21

    .line 855
    .local v21, topMargin_land:I
    const v23, 0x7f0a026a

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v22

    .line 857
    .local v22, topMargin_portrait_land:I
    const v23, 0x7f0a0273

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v3

    .line 858
    .local v3, bottomMarginRotate:I
    const v23, 0x7f0a0274

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v4

    .line 859
    .local v4, bottomMarginRotate_portrait:I
    const v23, 0x7f0a0271

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v9

    .line 860
    .local v9, leftMarginRotate:I
    const v23, 0x7f0a0272

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v10

    .line 862
    .local v10, leftMarginRotate_portrait:I
    const v23, 0x7f0a026d

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v18

    .line 863
    .local v18, rlWidth:I
    const v23, 0x7f0a026f

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v19

    .line 864
    .local v19, rlWidth_portrait:I
    const v23, 0x7f0a026e

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v16

    .line 865
    .local v16, rlHeight:I
    const v23, 0x7f0a0270

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v17

    .line 869
    .local v17, rlHeight_portrait:I
    move/from16 v5, p1

    .line 870
    .local v5, convDegree:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v23

    if-nez v23, :cond_5

    .line 871
    add-int/lit8 v23, p1, 0x5a

    move/from16 v0, v23

    rem-int/lit16 v5, v0, 0x168

    .line 874
    :cond_5
    sparse-switch v5, :sswitch_data_0

    .line 927
    :cond_6
    if-eqz v20, :cond_7

    .line 928
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 931
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/QuickFunctionController;->mDegreeSlidingDrawer:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, p1

    if-eq v0, v1, :cond_a

    .line 932
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/16 v23, 0x0

    const/high16 v24, 0x3f80

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v2, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 933
    .restart local v2       #anim:Landroid/view/animation/Animation;
    new-instance v23, Lcom/lge/camera/controller/QuickFunctionController$11;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController$11;-><init>(Lcom/lge/camera/controller/QuickFunctionController;)V

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 940
    const-wide/16 v23, 0x1f4

    move-wide/from16 v0, v23

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 941
    const/4 v6, 0x0

    :goto_4
    if-ge v6, v13, :cond_a

    .line 942
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/camera/components/RotateLayout;

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 941
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 877
    .end local v2           #anim:Landroid/view/animation/Animation;
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v23

    if-eqz v23, :cond_8

    .line 878
    move/from16 v0, v21

    iput v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 879
    const/4 v6, 0x0

    :goto_5
    if-ge v6, v13, :cond_6

    .line 880
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/camera/components/RotateLayout;

    invoke-virtual/range {v23 .. v23}, Lcom/lge/camera/components/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 881
    .local v15, params2:Landroid/view/ViewGroup$MarginLayoutParams;
    iput v3, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 882
    iput v9, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 883
    move/from16 v0, v18

    iput v0, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 884
    move/from16 v0, v16

    iput v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 885
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/camera/components/RotateLayout;

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/lge/camera/components/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 879
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 888
    .end local v15           #params2:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_8
    iput v8, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 889
    const/4 v6, 0x0

    :goto_6
    if-ge v6, v13, :cond_6

    .line 890
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/camera/components/RotateLayout;

    invoke-virtual/range {v23 .. v23}, Lcom/lge/camera/components/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 891
    .restart local v15       #params2:Landroid/view/ViewGroup$MarginLayoutParams;
    iput v3, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 892
    iput v9, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 893
    move/from16 v0, v18

    iput v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 894
    move/from16 v0, v16

    iput v0, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 895
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/camera/components/RotateLayout;

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/lge/camera/components/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 889
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 901
    .end local v15           #params2:Landroid/view/ViewGroup$MarginLayoutParams;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v23

    if-eqz v23, :cond_9

    .line 902
    move/from16 v0, v22

    iput v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 903
    const/4 v6, 0x0

    :goto_7
    if-ge v6, v13, :cond_6

    .line 904
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/camera/components/RotateLayout;

    invoke-virtual/range {v23 .. v23}, Lcom/lge/camera/components/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 905
    .restart local v15       #params2:Landroid/view/ViewGroup$MarginLayoutParams;
    iput v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 906
    iput v10, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 907
    move/from16 v0, v19

    iput v0, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 908
    move/from16 v0, v17

    iput v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 909
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/camera/components/RotateLayout;

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/lge/camera/components/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 903
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 912
    .end local v15           #params2:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_9
    iput v11, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 913
    const/4 v6, 0x0

    :goto_8
    if-ge v6, v13, :cond_6

    .line 914
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/camera/components/RotateLayout;

    invoke-virtual/range {v23 .. v23}, Lcom/lge/camera/components/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 915
    .restart local v15       #params2:Landroid/view/ViewGroup$MarginLayoutParams;
    iput v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 916
    iput v10, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 917
    move/from16 v0, v19

    iput v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 918
    move/from16 v0, v17

    iput v0, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 919
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/camera/components/RotateLayout;

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/lge/camera/components/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 913
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 945
    .end local v15           #params2:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_a
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/controller/QuickFunctionController;->mDegreeSlidingDrawer:I

    goto/16 :goto_0

    .line 874
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method public startSubMenuRotation(I)V
    .locals 14
    .parameter "degree"

    .prologue
    .line 573
    iget-boolean v12, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v13, 0x7f0900e1

    invoke-interface {v12, v13}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_0

    iget v12, p0, Lcom/lge/camera/controller/QuickFunctionController;->mDegree:I

    if-ne v12, p1, :cond_1

    .line 665
    :cond_0
    :goto_0
    return-void

    .line 578
    :cond_1
    iget-object v12, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v13, 0x7f0900e1

    invoke-interface {v12, v13}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lge/camera/components/RotateLayout;

    .line 579
    .local v6, rl:Lcom/lge/camera/components/RotateLayout;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v12, 0x3f80

    const/4 v13, 0x0

    invoke-direct {v0, v12, v13}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 580
    .local v0, anim:Landroid/view/animation/Animation;
    new-instance v12, Lcom/lge/camera/controller/QuickFunctionController$6;

    invoke-direct {v12, p0}, Lcom/lge/camera/controller/QuickFunctionController$6;-><init>(Lcom/lge/camera/controller/QuickFunctionController;)V

    invoke-virtual {v0, v12}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 587
    const-wide/16 v12, 0x12c

    invoke-virtual {v0, v12, v13}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 588
    invoke-virtual {v6, v0}, Lcom/lge/camera/components/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 589
    const/4 v12, -0x1

    iput v12, p0, Lcom/lge/camera/controller/QuickFunctionController;->mDegree:I

    .line 591
    iget-object v12, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v13, 0x7f0900e3

    invoke-interface {v12, v13}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/HorizontalScrollView;

    .line 593
    .local v7, s1:Landroid/widget/HorizontalScrollView;
    invoke-virtual {v6, p1}, Lcom/lge/camera/components/RotateLayout;->setAngle(I)V

    .line 595
    invoke-virtual {v6}, Lcom/lge/camera/components/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 596
    .local v5, params:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v7}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 599
    .local v10, scroll_face_params:Landroid/view/ViewGroup$MarginLayoutParams;
    move v1, p1

    .line 600
    .local v1, convDegree:I
    iget-object v12, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v12

    if-nez v12, :cond_2

    .line 601
    add-int/lit8 v12, p1, 0x5a

    rem-int/lit16 v1, v12, 0x168

    .line 604
    :cond_2
    const v12, 0x7f0a01e2

    invoke-virtual {p0, v12}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v2

    .line 605
    .local v2, leftMargin:I
    const v12, 0x7f0a01e3

    invoke-virtual {p0, v12}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v11

    .line 606
    .local v11, topMargin:I
    const v12, 0x7f0a01e0

    invoke-virtual {p0, v12}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v4

    .line 607
    .local v4, menuWidth:I
    const v12, 0x7f0a01e1

    invoke-virtual {p0, v12}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v3

    .line 608
    .local v3, menuHeight:I
    const v12, 0x7f0a01e5

    invoke-virtual {p0, v12}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v8

    .line 609
    .local v8, scrollWidth:I
    const v12, 0x7f0a01e6

    invoke-virtual {p0, v12}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v9

    .line 611
    .local v9, scrollWidthPort:I
    sparse-switch v1, :sswitch_data_0

    .line 649
    :goto_1
    invoke-virtual {v6, v5}, Lcom/lge/camera/components/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 650
    invoke-virtual {v7, v10}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 653
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0           #anim:Landroid/view/animation/Animation;
    const/4 v12, 0x0

    const/high16 v13, 0x3f80

    invoke-direct {v0, v12, v13}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 654
    .restart local v0       #anim:Landroid/view/animation/Animation;
    new-instance v12, Lcom/lge/camera/controller/QuickFunctionController$7;

    invoke-direct {v12, p0}, Lcom/lge/camera/controller/QuickFunctionController$7;-><init>(Lcom/lge/camera/controller/QuickFunctionController;)V

    invoke-virtual {v0, v12}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 661
    const-wide/16 v12, 0x12c

    invoke-virtual {v0, v12, v13}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 662
    invoke-virtual {v6, v0}, Lcom/lge/camera/components/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 664
    iput p1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mDegree:I

    goto/16 :goto_0

    .line 614
    :sswitch_0
    iget-object v12, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 615
    iput v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 616
    iput v11, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 617
    iput v4, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 618
    iput v3, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 619
    iput v8, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    .line 621
    :cond_3
    sget v12, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_HEIGHT:I

    sub-int/2addr v12, v3

    sub-int/2addr v12, v11

    iput v12, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 622
    iput v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 623
    iput v3, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 624
    iput v4, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 625
    iput v8, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    .line 630
    :sswitch_1
    iget-object v12, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 631
    iput v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 632
    const/4 v12, 0x0

    iput v12, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 633
    iput v3, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 634
    iput v4, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 635
    iput v9, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    .line 637
    :cond_4
    const/4 v12, 0x0

    iput v12, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 638
    iput v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 639
    iput v4, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 640
    iput v3, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 641
    iput v9, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    .line 611
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method
