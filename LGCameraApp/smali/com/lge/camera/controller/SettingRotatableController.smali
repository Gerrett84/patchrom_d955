.class public Lcom/lge/camera/controller/SettingRotatableController;
.super Lcom/lge/camera/controller/SettingController;
.source "SettingRotatableController.java"


# static fields
.field private static final SETTING_ANIMATION_TIME:J = 0x12cL


# instance fields
.field protected BG_BORDER_HEIGHT:I

.field protected CHILD_BRIGHTNESS_LAND_HEIGHT:I

.field protected CHILD_BRIGHTNESS_MARGIN_LEFT:I

.field protected CHILD_BRIGHTNESS_PORT_HEIGHT:I

.field protected CHILD_BRIGHTNESS_WIDTH:I

.field protected CHILD_HEIGHT:I

.field protected CHILD_MARGIN_LEFT:I

.field protected CHILD_MARGIN_TOP:I

.field protected CHILD_WIDTH:I

.field protected CHILD_ZOOM_HEIGHT:I

.field protected CHILD_ZOOM_WIDTH:I

.field protected CONFIG_ITEM_HEIGHT:I

.field protected DIVIDER:I

.field protected LCD_HEIGHT:I

.field protected LCD_WIDTH:I

.field protected MARGIN_HEIGHT:I

.field protected PANEL_WIDTH:I

.field protected PARENT_HEIGHT:I

.field protected PARENT_MARGIN_LEFT:I

.field protected PARENT_MARGIN_TOP:I

.field protected PARENT_WIDTH:I

.field protected TITLE_HEIGHT:I

.field protected mChildAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

.field protected mChildSettingListView:Landroid/widget/ListView;

.field private mChildSettingListViewItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mChildSettingListViewTouchListener:Landroid/view/View$OnTouchListener;

.field private mDegree:I

.field private mInitSettingBar:Z

.field private mIsRtoL:Z

.field protected mParentAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

.field protected mParentSettingListView:Landroid/widget/ListView;

.field private mParentSettingListViewItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mParentSettingListViewTouchListener:Landroid/view/View$OnTouchListener;

.field protected mSettingView:Landroid/view/View;

.field private mSettingViewRemoving:Z


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 2
    .parameter "function"

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/SettingController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 71
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getSettingMenuBoarderHeight()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->BG_BORDER_HEIGHT:I

    .line 72
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->DIVIDER:I

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    .line 76
    iput-boolean v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mInitSettingBar:Z

    .line 79
    iput-boolean v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mIsRtoL:Z

    .line 207
    iput-boolean v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingViewRemoving:Z

    .line 1118
    new-instance v0, Lcom/lge/camera/controller/SettingRotatableController$10;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/SettingRotatableController$10;-><init>(Lcom/lge/camera/controller/SettingRotatableController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 1145
    new-instance v0, Lcom/lge/camera/controller/SettingRotatableController$11;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/SettingRotatableController$11;-><init>(Lcom/lge/camera/controller/SettingRotatableController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListViewItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1204
    new-instance v0, Lcom/lge/camera/controller/SettingRotatableController$12;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/SettingRotatableController$12;-><init>(Lcom/lge/camera/controller/SettingRotatableController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 1218
    new-instance v0, Lcom/lge/camera/controller/SettingRotatableController$13;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/SettingRotatableController$13;-><init>(Lcom/lge/camera/controller/SettingRotatableController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListViewItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/SettingRotatableController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    return v0
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/SettingRotatableController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/SettingRotatableController;->setChildViewPattern(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/camera/controller/SettingRotatableController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/controller/SettingRotatableController;->doCommandSubMenuClicked(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private doCommandSubMenuClicked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "key"
    .parameter "command"

    .prologue
    const/4 v4, 0x1

    .line 1268
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doCommandSubMenuClicked key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    const-string v1, "key_voiceshutter"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "key_time_machine"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "key_uplus_box"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1272
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1273
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "subMenuClicked"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1274
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, p2, v0}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1300
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_1
    :goto_0
    return-void

    .line 1276
    :cond_2
    const-string v1, "key_swap"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1277
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isLiveEffectSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1278
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    if-ne v1, v4, :cond_3

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isEffectsCamcorderActive()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1279
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v1

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_swap"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingIndex(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 1282
    const-string v1, "CameraApp"

    const-string v2, "SwapCameraPrepared-start, liveeffect active"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v2, 0x66

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->effectRecorderStopPreviewByCallFrom(I)V

    .line 1286
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1287
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v1, "liveeffect_mode"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1288
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x0

    invoke-interface {v1, p2, v2, v0}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1292
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1293
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v1, "showAll"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1294
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.RemoveSettingMenu"

    invoke-interface {v1, v2, v0}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1295
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-wide/16 v2, 0x0

    invoke-interface {v1, p2, v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    goto :goto_0

    .line 1298
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, p2}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getCurrentParentSettingListHeight()I
    .locals 4

    .prologue
    .line 942
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    if-eqz v2, :cond_0

    .line 943
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0901bd

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 944
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 945
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 946
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 949
    .end local v0           #params:Landroid/view/ViewGroup$LayoutParams;
    .end local v1           #view:Landroid/view/View;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getMenuListHeight(I)I
    .locals 2
    .parameter "visibleCount"

    .prologue
    .line 1035
    iget v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->CONFIG_ITEM_HEIGHT:I

    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->DIVIDER:I

    add-int/2addr v0, v1

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->DIVIDER:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->BG_BORDER_HEIGHT:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getVisibleMenuCount()I
    .locals 2

    .prologue
    .line 1031
    iget v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->LCD_WIDTH:I

    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->PANEL_WIDTH:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->TITLE_HEIGHT:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->CONFIG_ITEM_HEIGHT:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x4000

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private hideChildSettingViewImmediately()V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 364
    :cond_0
    return-void
.end method

.method private isChildCustomView(Ljava/lang/String;)Z
    .locals 1
    .parameter "className"

    .prologue
    .line 1039
    if-eqz p1, :cond_0

    .line 1040
    const/4 v0, 0x1

    .line 1042
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private rotateChildCustom(I)V
    .locals 1
    .parameter "degree"

    .prologue
    .line 493
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/SettingRotatableController;->rotateSettingZoom(I)V

    .line 494
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/SettingRotatableController;->rotateSettingBrightness(I)V

    .line 495
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/SettingRotatableController;->rotateSettingBeautyShot(I)V

    .line 496
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/SettingRotatableController;->rotateSettingCamera3dDepth(I)V

    .line 497
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mInitSettingBar:Z

    .line 498
    return-void
.end method

.method private setChildViewPattern(I)V
    .locals 6
    .parameter "position"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1047
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->hideChildCustomView(Z)V

    .line 1049
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, p1}, Lcom/lge/camera/ControllerFunction;->setCurrentSettingMenu(I)Z

    .line 1050
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getSettingMenuCommand()Ljava/lang/String;

    move-result-object v0

    .line 1052
    .local v0, className:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/lge/camera/controller/SettingRotatableController;->isChildCustomView(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1053
    invoke-direct {p0}, Lcom/lge/camera/controller/SettingRotatableController;->hideChildSettingViewImmediately()V

    .line 1054
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v3, Lcom/lge/camera/controller/SettingRotatableController$7;

    invoke-direct {v3, p0}, Lcom/lge/camera/controller/SettingRotatableController$7;-><init>(Lcom/lge/camera/controller/SettingRotatableController;)V

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1062
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p1}, Lcom/lge/camera/ControllerFunction;->getIndexMenuKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 1064
    .local v1, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_restore"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1065
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v2, v4}, Lcom/lge/camera/setting/SettingMenuAdapter;->setShowChild(Z)V

    .line 1066
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v0}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 1067
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v3, 0x5

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 1116
    :cond_0
    :goto_0
    return-void

    .line 1070
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_edit_shortcut"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1071
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v0}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto :goto_0

    .line 1073
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v2, v5}, Lcom/lge/camera/setting/SettingMenuAdapter;->setShowChild(Z)V

    .line 1074
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v0}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 1075
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v3, 0x10

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    goto :goto_0

    .line 1078
    .end local v1           #pref:Lcom/lge/camera/setting/ListPreference;
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v3, Lcom/lge/camera/controller/SettingRotatableController$8;

    invoke-direct {v3, p0}, Lcom/lge/camera/controller/SettingRotatableController$8;-><init>(Lcom/lge/camera/controller/SettingRotatableController;)V

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1087
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p1}, Lcom/lge/camera/ControllerFunction;->getIndexMenuKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 1088
    .restart local v1       #pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_camera_shutter_sound"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1089
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setSoundEffectsEnabled(Z)V

    .line 1094
    :goto_1
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v2, v5}, Lcom/lge/camera/setting/SettingMenuAdapter;->setShowChild(Z)V

    .line 1095
    iget v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_LEFT:I

    iget v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_TOP:I

    invoke-direct {p0, p1, v2, v3}, Lcom/lge/camera/controller/SettingRotatableController;->updateChildSettingListHeight(III)V

    .line 1096
    iget v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    invoke-virtual {p0, v2, v4}, Lcom/lge/camera/controller/SettingRotatableController;->setChildMenuLocation(IZ)V

    .line 1097
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableController;->showChildSettingView()V

    .line 1099
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    if-eqz v2, :cond_0

    .line 1100
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v2, v5}, Lcom/lge/camera/setting/SettingMenuAdapter;->setShowSelectedChild(Z)V

    .line 1101
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_help_guide"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1102
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v2, v4}, Lcom/lge/camera/setting/SettingMenuAdapter;->setShowSelectedChild(Z)V

    .line 1103
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setSelected(Z)V

    .line 1104
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v3, Lcom/lge/camera/controller/SettingRotatableController$9;

    invoke-direct {v3, p0}, Lcom/lge/camera/controller/SettingRotatableController$9;-><init>(Lcom/lge/camera/controller/SettingRotatableController;)V

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1091
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setSoundEffectsEnabled(Z)V

    goto :goto_1
.end method

.method private updateChildSettingListHeight(III)V
    .locals 9
    .parameter "parentSettingPosition"
    .parameter "leftMargin"
    .parameter "topMargin"

    .prologue
    const/16 v8, 0xb4

    const/4 v7, 0x0

    .line 995
    const/4 v2, 0x0

    .line 997
    .local v2, mNumOfChildItems:I
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, p1}, Lcom/lge/camera/ControllerFunction;->getSelectedChildCount(I)I

    move-result v2

    .line 999
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getSettingListHeight()I

    move-result v4

    if-gt v2, v4, :cond_1

    .line 1000
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_WIDTH:I

    const/4 v5, -0x2

    invoke-direct {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1001
    .local v1, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    invoke-static {v4, v5, v8}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1002
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_LEFT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_TOP:I

    invoke-virtual {v1, v4, v5, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1006
    :goto_0
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1028
    :goto_1
    return-void

    .line 1004
    :cond_0
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_LEFT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_TOP:I

    invoke-virtual {v1, v4, v5, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 1008
    .end local v1           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    const/16 v6, 0x5a

    invoke-static {v4, v5, v6}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    const/16 v6, 0x10e

    invoke-static {v4, v5, v6}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1010
    :cond_2
    const/4 v0, -0x2

    .line 1011
    .local v0, childLayoutHeight:I
    invoke-direct {p0}, Lcom/lge/camera/controller/SettingRotatableController;->getVisibleMenuCount()I

    move-result v3

    .line 1012
    .local v3, visibleCount:I
    if-le v2, v3, :cond_3

    .line 1013
    invoke-direct {p0, v3}, Lcom/lge/camera/controller/SettingRotatableController;->getMenuListHeight(I)I

    move-result v0

    .line 1015
    :cond_3
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_WIDTH:I

    invoke-direct {v1, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1016
    .restart local v1       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, p2, p3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1017
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 1019
    .end local v0           #childLayoutHeight:I
    .end local v1           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3           #visibleCount:I
    :cond_4
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_WIDTH:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_HEIGHT:I

    iget v6, p0, Lcom/lge/camera/controller/SettingRotatableController;->MARGIN_HEIGHT:I

    add-int/2addr v5, v6

    invoke-direct {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1020
    .restart local v1       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    invoke-static {v4, v5, v8}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1021
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->TITLE_HEIGHT:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_TOP:I

    invoke-virtual {v1, v4, v5, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1025
    :goto_2
    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 1023
    :cond_5
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_LEFT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_TOP:I

    invoke-virtual {v1, v4, v5, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2
.end method

.method private updateParentSettingListHeight(II)V
    .locals 13
    .parameter "leftMargin"
    .parameter "topMargin"

    .prologue
    const/16 v12, 0xb4

    const/4 v10, -0x2

    const/4 v11, 0x0

    .line 953
    iget-object v8, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v8}, Lcom/lge/camera/setting/SettingMenuAdapter;->getCount()I

    move-result v2

    .line 954
    .local v2, parentAdapterCount:I
    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v9, 0x7f0901bd

    invoke-interface {v8, v9}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 956
    .local v3, parentLayout:Landroid/view/View;
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getSettingListHeight()I

    move-result v8

    if-gt v2, v8, :cond_1

    .line 957
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    iget v8, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_WIDTH:I

    invoke-direct {v6, v8, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 958
    .local v6, parentLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v8, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_WIDTH:I

    invoke-direct {v1, v8, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 959
    .local v1, listLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v8, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v8, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 960
    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    invoke-static {v8, v9, v12}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 961
    iget v8, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    iget v9, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_TOP:I

    invoke-virtual {v6, v8, v9, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 965
    :goto_0
    invoke-virtual {v3, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 992
    .end local v1           #listLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v6           #parentLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :goto_1
    return-void

    .line 963
    .restart local v1       #listLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v6       #parentLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget v8, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    iget v9, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_TOP:I

    invoke-virtual {v6, v8, v9, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 967
    .end local v1           #listLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v6           #parentLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    const/16 v10, 0x5a

    invoke-static {v8, v9, v10}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    const/16 v10, 0x10e

    invoke-static {v8, v9, v10}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 969
    :cond_2
    invoke-direct {p0}, Lcom/lge/camera/controller/SettingRotatableController;->getVisibleMenuCount()I

    move-result v7

    .line 970
    .local v7, visibleCount:I
    const/4 v4, -0x2

    .line 971
    .local v4, parentLayoutHeight:I
    if-le v2, v7, :cond_3

    .line 972
    const/16 v8, 0x8

    if-lt v2, v8, :cond_3

    .line 973
    invoke-direct {p0, v7}, Lcom/lge/camera/controller/SettingRotatableController;->getMenuListHeight(I)I

    move-result v8

    iget v9, p0, Lcom/lge/camera/controller/SettingRotatableController;->TITLE_HEIGHT:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/lge/camera/controller/SettingRotatableController;->MARGIN_HEIGHT:I

    add-int v4, v8, v9

    .line 976
    :cond_3
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v8, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_WIDTH:I

    invoke-direct {v1, v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 977
    .restart local v1       #listLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v8, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v8, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 979
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    iget v8, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_WIDTH:I

    invoke-direct {v5, v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 980
    .local v5, parentLayoutParam:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v5, p1, p2, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 981
    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 983
    .end local v1           #listLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4           #parentLayoutHeight:I
    .end local v5           #parentLayoutParam:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v7           #visibleCount:I
    :cond_4
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v8, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_WIDTH:I

    iget v9, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_HEIGHT:I

    iget v10, p0, Lcom/lge/camera/controller/SettingRotatableController;->MARGIN_HEIGHT:I

    add-int/2addr v9, v10

    invoke-direct {v0, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 984
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    invoke-static {v8, v9, v12}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 985
    iget v8, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_LEFT:I

    iget v9, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_TOP:I

    invoke-virtual {v0, v8, v9, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 989
    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 987
    :cond_5
    iget v8, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    iget v9, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_TOP:I

    invoke-virtual {v0, v8, v9, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2
.end method


# virtual methods
.method public childCustomViewAnimation(Landroid/view/animation/Animation;)V
    .locals 6
    .parameter "anim"

    .prologue
    const v5, 0x7f0901c2

    const v4, 0x7f090199

    const v3, 0x7f09018e

    .line 478
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 479
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateLayout;

    .line 480
    .local v1, rlZ:Lcom/lge/camera/components/RotateLayout;
    invoke-virtual {v1, p1}, Lcom/lge/camera/components/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 482
    .end local v1           #rlZ:Lcom/lge/camera/components/RotateLayout;
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 483
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateLayout;

    .line 484
    .local v0, rlB:Lcom/lge/camera/components/RotateLayout;
    invoke-virtual {v0, p1}, Lcom/lge/camera/components/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 486
    .end local v0           #rlB:Lcom/lge/camera/components/RotateLayout;
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 487
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateLayout;

    .line 488
    .restart local v0       #rlB:Lcom/lge/camera/components/RotateLayout;
    invoke-virtual {v0, p1}, Lcom/lge/camera/components/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 490
    .end local v0           #rlB:Lcom/lge/camera/components/RotateLayout;
    :cond_2
    return-void
.end method

.method public displaySettingView()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 127
    const-string v3, "CameraApp"

    const-string v4, "settingView : displaySettingView-start"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-boolean v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingViewRemoving:Z

    if-eqz v3, :cond_0

    .line 130
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.DisplaySettingMenu"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 131
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.ShowSettingMenu"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 132
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.ShowSettingMenu"

    const-wide/16 v5, 0x12c

    invoke-interface {v3, v4, v5, v6}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    .line 133
    const-string v3, "CameraApp"

    const-string v4, "settingView : displaySettingView - return, send command"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v3

    iput v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    .line 138
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v7}, Lcom/lge/camera/ControllerFunction;->hideChildCustomView(Z)V

    .line 140
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v4, 0x5

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 141
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableController;->removeSettingItem()V

    .line 143
    new-instance v3, Lcom/lge/camera/setting/SettingMenuAdapter;

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Lcom/lge/camera/setting/SettingMenuAdapter;-><init>(Landroid/content/Context;Lcom/lge/camera/setting/SettingMenu;I)V

    iput-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    .line 144
    new-instance v3, Lcom/lge/camera/setting/SettingMenuAdapter;

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v5

    invoke-direct {v3, v4, v5, v7}, Lcom/lge/camera/setting/SettingMenuAdapter;-><init>(Landroid/content/Context;Lcom/lge/camera/setting/SettingMenu;I)V

    iput-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    .line 146
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingView:Landroid/view/View;

    if-nez v3, :cond_1

    .line 147
    const-string v3, "CameraApp"

    const-string v4, "inflate Setting Layout...!!"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f030042

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->inflateView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingView:Landroid/view/View;

    .line 149
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f0900c1

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 150
    .local v2, vg:Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 152
    .end local v2           #vg:Landroid/view/ViewGroup;
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 154
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getBackupCurrentMenuIndex()I

    move-result v3

    if-eq v3, v8, :cond_2

    .line 155
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getBackupCurrentMenuIndex()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->setCurrentSettingMenu(I)Z

    .line 156
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v8}, Lcom/lge/camera/ControllerFunction;->setBackupCurrentMenuIndex(I)V

    .line 159
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCurrentSettingMenuIndex()I

    move-result v0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getSettingMenuCount()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 160
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v0}, Lcom/lge/camera/ControllerFunction;->getSettingMenuItem(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v3

    iget-boolean v3, v3, Lcom/lge/camera/setting/SettingMenuItem;->enable:Z

    if-nez v3, :cond_3

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 163
    :cond_3
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_5

    .line 164
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v7}, Lcom/lge/camera/ControllerFunction;->setCurrentSettingMenu(I)Z

    .line 172
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f09018c

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    .line 173
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 174
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 175
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setSelected(Z)V

    .line 178
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 179
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListViewItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 180
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getSelectedChildIndex()I

    move-result v4

    invoke-virtual {v3, v4, v7}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 181
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 183
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f09018b

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    .line 184
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 185
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 186
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setSelected(Z)V

    .line 189
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 190
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListViewItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 191
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getSelectedChildIndex()I

    move-result v4

    invoke-virtual {v3, v4, v7}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 193
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f0901be

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 194
    .local v1, mParentSettingTitle:Landroid/widget/TextView;
    const/4 v3, 0x2

    invoke-static {v3}, Lcom/lge/camera/util/ColorUtil;->getItemColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 199
    iget v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/SettingRotatableController;->rotateParentList(I)V

    .line 200
    iget v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/SettingRotatableController;->rotateChildList(I)V

    .line 201
    iget v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    invoke-direct {p0, v3}, Lcom/lge/camera/controller/SettingRotatableController;->rotateChildCustom(I)V

    .line 202
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableController;->showAnimation()V

    .line 204
    const-string v3, "CameraApp"

    const-string v4, "displaySettingView-end"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 166
    .end local v1           #mParentSettingTitle:Landroid/widget/TextView;
    :cond_5
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v0}, Lcom/lge/camera/ControllerFunction;->setCurrentSettingMenu(I)Z

    goto/16 :goto_2
.end method

.method public hideAnimation()V
    .locals 6

    .prologue
    const v5, 0x7f0901c0

    const v4, 0x7f0901bc

    .line 413
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateLayout;

    .line 418
    .local v2, rlP:Lcom/lge/camera/components/RotateLayout;
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateLayout;

    .line 420
    .local v1, rlC:Lcom/lge/camera/components/RotateLayout;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 421
    .local v0, anim:Landroid/view/animation/Animation;
    new-instance v3, Lcom/lge/camera/controller/SettingRotatableController$5;

    invoke-direct {v3, p0}, Lcom/lge/camera/controller/SettingRotatableController$5;-><init>(Lcom/lge/camera/controller/SettingRotatableController;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 431
    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 432
    invoke-virtual {v2, v0}, Lcom/lge/camera/components/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 433
    invoke-virtual {v1, v0}, Lcom/lge/camera/components/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 434
    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SettingRotatableController;->childCustomViewAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public initController()V
    .locals 1

    .prologue
    .line 87
    const v0, 0x7f0a014d

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SettingRotatableController;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_WIDTH:I

    .line 88
    const v0, 0x7f0a014e

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SettingRotatableController;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_HEIGHT:I

    .line 89
    const v0, 0x7f0a014b

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SettingRotatableController;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    .line 91
    const v0, 0x7f0a014c

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SettingRotatableController;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_TOP:I

    .line 92
    const v0, 0x7f0a0151

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SettingRotatableController;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_WIDTH:I

    .line 93
    const v0, 0x7f0a0152

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SettingRotatableController;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_HEIGHT:I

    .line 94
    const v0, 0x7f0a014f

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SettingRotatableController;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_LEFT:I

    .line 95
    const v0, 0x7f0a0150

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SettingRotatableController;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_TOP:I

    .line 96
    const v0, 0x7f0a0153

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SettingRotatableController;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->TITLE_HEIGHT:I

    .line 98
    const v0, 0x7f0a0008

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SettingRotatableController;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->LCD_WIDTH:I

    .line 99
    const v0, 0x7f0a0009

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SettingRotatableController;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->LCD_HEIGHT:I

    .line 100
    const v0, 0x7f0a001a

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SettingRotatableController;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->PANEL_WIDTH:I

    .line 101
    const v0, 0x7f0a0058

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SettingRotatableController;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->CONFIG_ITEM_HEIGHT:I

    .line 102
    iget v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->CONFIG_ITEM_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->MARGIN_HEIGHT:I

    .line 104
    const v0, 0x7f0a00ee

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SettingRotatableController;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_ZOOM_WIDTH:I

    .line 105
    const v0, 0x7f0a00ef

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SettingRotatableController;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_ZOOM_HEIGHT:I

    .line 106
    const v0, 0x7f0a00f9

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SettingRotatableController;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_WIDTH:I

    .line 107
    const v0, 0x7f0a00fa

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SettingRotatableController;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_LAND_HEIGHT:I

    .line 108
    const v0, 0x7f0a00fb

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SettingRotatableController;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_PORT_HEIGHT:I

    .line 109
    const v0, 0x7f0a00fc

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SettingRotatableController;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_MARGIN_LEFT:I

    .line 112
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    .line 123
    invoke-super {p0}, Lcom/lge/camera/controller/SettingController;->initController()V

    .line 124
    return-void
.end method

.method public isNullSettingView()Z
    .locals 1

    .prologue
    .line 934
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingView:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSettingViewRemoving()Z
    .locals 1

    .prologue
    .line 318
    iget-boolean v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingViewRemoving:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 938
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableController;->isNullSettingView()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1327
    const-string v0, "CameraApp"

    const-string v1, "onDestroy-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_4

    .line 1330
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCameraMainSettingMenu:Lcom/lge/camera/setting/CameraMainSettingMenu;

    invoke-virtual {v0}, Lcom/lge/camera/setting/CameraMainSettingMenu;->close()V

    .line 1331
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCameraFrontSettingMenu:Lcom/lge/camera/setting/CameraFrontSettingMenu;

    invoke-virtual {v0}, Lcom/lge/camera/setting/CameraFrontSettingMenu;->close()V

    .line 1332
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCameraMainSetting:Lcom/lge/camera/setting/CameraSetting;

    invoke-virtual {v0}, Lcom/lge/camera/setting/CameraSetting;->close()V

    .line 1333
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCameraFrontSetting:Lcom/lge/camera/setting/CameraSetting;

    invoke-virtual {v0}, Lcom/lge/camera/setting/CameraSetting;->close()V

    .line 1340
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v0}, Lcom/lge/camera/setting/Setting;->close()V

    .line 1342
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 1343
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wow not null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1345
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1346
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->removeAllViewsInLayout()V

    .line 1347
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1348
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1349
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1351
    :cond_0
    iput-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    .line 1353
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    if-eqz v0, :cond_3

    .line 1354
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wow not null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1356
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1357
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->removeAllViewsInLayout()V

    .line 1358
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1359
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1360
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1362
    :cond_2
    iput-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    .line 1369
    :cond_3
    invoke-super {p0}, Lcom/lge/camera/controller/SettingController;->onDestroy()V

    .line 1370
    const-string v0, "CameraApp"

    const-string v1, "onDestroy-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    return-void

    .line 1335
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mVideoMainSettingMenu:Lcom/lge/camera/setting/VideoMainSettingMenu;

    invoke-virtual {v0}, Lcom/lge/camera/setting/VideoMainSettingMenu;->close()V

    .line 1336
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mVideoFrontSettingMenu:Lcom/lge/camera/setting/VideoFrontSettingMenu;

    invoke-virtual {v0}, Lcom/lge/camera/setting/VideoFrontSettingMenu;->close()V

    .line 1337
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderMainSetting:Lcom/lge/camera/setting/VideoSetting;

    invoke-virtual {v0}, Lcom/lge/camera/setting/VideoSetting;->close()V

    .line 1338
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderFrontSetting:Lcom/lge/camera/setting/VideoSetting;

    invoke-virtual {v0}, Lcom/lge/camera/setting/VideoSetting;->close()V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1304
    const-string v0, "CameraApp"

    const-string v1, "onPause-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    iget-boolean v0, p0, Lcom/lge/camera/controller/SettingController;->mSettingInit:Z

    if-eqz v0, :cond_0

    .line 1306
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_3

    .line 1307
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCameraMainSetting:Lcom/lge/camera/setting/CameraSetting;

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/CameraSetting;->saveSetting(Landroid/content/Context;)V

    .line 1308
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCameraFrontSetting:Lcom/lge/camera/setting/CameraSetting;

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/CameraSetting;->saveSetting(Landroid/content/Context;)V

    .line 1315
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    .line 1317
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 1318
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.RemoveSettingMenu"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 1321
    :cond_2
    invoke-super {p0}, Lcom/lge/camera/controller/SettingController;->onPause()V

    .line 1322
    const-string v0, "CameraApp"

    const-string v1, "onPause-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    return-void

    .line 1310
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderMainSetting:Lcom/lge/camera/setting/VideoSetting;

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/VideoSetting;->saveSetting(Landroid/content/Context;)V

    .line 1311
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderFrontSetting:Lcom/lge/camera/setting/VideoSetting;

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/VideoSetting;->saveSetting(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public removeChildSettingView(Z)V
    .locals 6
    .parameter "isShowAnim"

    .prologue
    const v5, 0x7f0901c0

    const/4 v4, 0x0

    .line 322
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0901bc

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    .line 327
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateLayout;

    .line 329
    .local v1, rlC:Lcom/lge/camera/components/RotateLayout;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 330
    .local v0, anim:Landroid/view/animation/Animation;
    new-instance v2, Lcom/lge/camera/controller/SettingRotatableController$2;

    invoke-direct {v2, p0}, Lcom/lge/camera/controller/SettingRotatableController$2;-><init>(Lcom/lge/camera/controller/SettingRotatableController;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 343
    if-eqz p1, :cond_2

    const-wide/16 v2, 0x12c

    :goto_1
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 344
    invoke-virtual {v1, v0}, Lcom/lge/camera/components/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 345
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v3, 0x5

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 346
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v2, v4}, Lcom/lge/camera/setting/SettingMenuAdapter;->setShowChild(Z)V

    .line 347
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setSelected(Z)V

    .line 349
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v3, Lcom/lge/camera/controller/SettingRotatableController$3;

    invoke-direct {v3, p0}, Lcom/lge/camera/controller/SettingRotatableController$3;-><init>(Lcom/lge/camera/controller/SettingRotatableController;)V

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 343
    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_1
.end method

.method public removeSettingView()V
    .locals 8

    .prologue
    const v7, 0x7f0901c0

    const v6, 0x7f0901bc

    const/4 v5, 0x1

    .line 210
    const-string v3, "CameraApp"

    const-string v4, "settingView : removeSettingView - animation start"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v6}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v7}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingViewRemoving:Z

    if-eqz v3, :cond_1

    .line 214
    :cond_0
    const-string v3, "CameraApp"

    const-string v4, "settingView : removeSettingView - return"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :goto_0
    return-void

    .line 218
    :cond_1
    iput-boolean v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingViewRemoving:Z

    .line 219
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v6}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateLayout;

    .line 220
    .local v2, rlP:Lcom/lge/camera/components/RotateLayout;
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v7}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateLayout;

    .line 221
    .local v1, rlC:Lcom/lge/camera/components/RotateLayout;
    invoke-virtual {v2}, Lcom/lge/camera/components/RotateLayout;->clearAnimation()V

    .line 222
    invoke-virtual {v1}, Lcom/lge/camera/components/RotateLayout;->clearAnimation()V

    .line 223
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 224
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableController;->removeSettingViewAll()V

    .line 258
    :goto_1
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v5}, Lcom/lge/camera/ControllerFunction;->hideChildCustomView(Z)V

    goto :goto_0

    .line 226
    :cond_2
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 227
    .local v0, anim:Landroid/view/animation/Animation;
    new-instance v3, Lcom/lge/camera/controller/SettingRotatableController$1;

    invoke-direct {v3, p0}, Lcom/lge/camera/controller/SettingRotatableController$1;-><init>(Lcom/lge/camera/controller/SettingRotatableController;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 254
    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 255
    invoke-virtual {v2, v0}, Lcom/lge/camera/components/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 256
    invoke-virtual {v1, v0}, Lcom/lge/camera/components/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method public removeSettingViewAll()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 262
    const-string v1, "CameraApp"

    const-string v2, "settingView : removeSettingViewAll -start"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 266
    :cond_0
    const-string v1, "CameraApp"

    const-string v2, "settingView : removeSettingView -return, mSettingView is null"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iput-boolean v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingViewRemoving:Z

    .line 315
    :cond_1
    :goto_0
    return-void

    .line 271
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.Rotate"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 274
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 275
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 276
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 277
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->removeAllViewsInLayout()V

    .line 278
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 279
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 280
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 282
    :cond_3
    iput-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    .line 283
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v1, v4}, Lcom/lge/camera/setting/SettingMenuAdapter;->setShowChild(Z)V

    .line 284
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v1}, Lcom/lge/camera/setting/SettingMenuAdapter;->close()V

    .line 285
    iput-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    .line 287
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 288
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 289
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 290
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->removeAllViewsInLayout()V

    .line 291
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 292
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 293
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 295
    :cond_4
    iput-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    .line 296
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v1}, Lcom/lge/camera/setting/SettingMenuAdapter;->close()V

    .line 297
    iput-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mChildAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    .line 299
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0900c1

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 300
    .local v0, vg:Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 301
    iput-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingView:Landroid/view/View;

    .line 303
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->hideChildCustomView(Z)V

    .line 304
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableController;->initSettingMenu()V

    .line 305
    const/4 v1, -0x1

    iput v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    .line 306
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 307
    iput-boolean v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mSettingViewRemoving:Z

    .line 310
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v1

    const/16 v2, 0x19

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v1

    const/16 v2, 0x12

    if-eq v1, v2, :cond_1

    .line 313
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    goto/16 :goto_0
.end method

.method public rotateChildList(I)V
    .locals 7
    .parameter "degree"

    .prologue
    const v5, 0x7f0901c0

    .line 553
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    .line 594
    :goto_0
    return-void

    .line 556
    :cond_0
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateLayout;

    .line 557
    .local v0, cl:Lcom/lge/camera/components/RotateLayout;
    invoke-virtual {v0, p1}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 560
    invoke-virtual {v0}, Lcom/lge/camera/components/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 561
    .local v2, params:Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v1, 0x0

    .line 562
    .local v1, leftMargin:I
    const/4 v3, 0x0

    .line 563
    .local v3, topMargin:I
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 564
    :goto_1
    sparse-switch p1, :sswitch_data_0

    .line 585
    :goto_2
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 586
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 587
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 592
    :goto_3
    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 593
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCurrentSettingMenuIndex()I

    move-result v4

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-direct {p0, v4, v5, v6}, Lcom/lge/camera/controller/SettingRotatableController;->updateChildSettingListHeight(III)V

    goto :goto_0

    .line 563
    :cond_1
    add-int/lit8 v4, p1, 0x5a

    rem-int/lit16 p1, v4, 0x168

    goto :goto_1

    .line 566
    :sswitch_0
    iget-boolean v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mIsRtoL:Z

    if-eqz v4, :cond_2

    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    .line 567
    :goto_4
    iget v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_TOP:I

    .line 568
    goto :goto_2

    .line 566
    :cond_2
    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_LEFT:I

    goto :goto_4

    .line 570
    :sswitch_1
    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_TOP:I

    .line 571
    iget-boolean v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mIsRtoL:Z

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->LCD_HEIGHT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_WIDTH:I

    sub-int v3, v4, v5

    .line 572
    :goto_5
    goto :goto_2

    .line 571
    :cond_3
    const/4 v3, 0x0

    goto :goto_5

    .line 574
    :sswitch_2
    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_LEFT:I

    .line 575
    iget v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_TOP:I

    .line 576
    goto :goto_2

    .line 578
    :sswitch_3
    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_TOP:I

    .line 579
    const/4 v3, 0x0

    .line 580
    goto :goto_2

    .line 589
    :cond_4
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 590
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_3

    .line 564
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public rotateParentList(I)V
    .locals 8
    .parameter "degree"

    .prologue
    const v7, 0x7f0901bc

    .line 501
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_0

    .line 550
    :goto_0
    return-void

    .line 504
    :cond_0
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/components/RotateLayout;

    .line 505
    .local v4, pl:Lcom/lge/camera/components/RotateLayout;
    invoke-virtual {v4, p1}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 508
    invoke-virtual {v4}, Lcom/lge/camera/components/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 509
    .local v2, params_pl:Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v1, 0x0

    .line 510
    .local v1, leftMargin:I
    const/4 v5, 0x0

    .line 511
    .local v5, topMargin:I
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 512
    :goto_1
    sparse-switch p1, :sswitch_data_0

    .line 541
    :goto_2
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 542
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 543
    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 548
    :goto_3
    invoke-virtual {v4, v2}, Lcom/lge/camera/components/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 549
    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-direct {p0, v6, v7}, Lcom/lge/camera/controller/SettingRotatableController;->updateParentSettingListHeight(II)V

    goto :goto_0

    .line 511
    :cond_1
    add-int/lit8 v6, p1, 0x5a

    rem-int/lit16 p1, v6, 0x168

    goto :goto_1

    .line 514
    :sswitch_0
    iget-boolean v6, p0, Lcom/lge/camera/controller/SettingRotatableController;->mIsRtoL:Z

    if-eqz v6, :cond_2

    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_LEFT:I

    .line 515
    :goto_4
    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_TOP:I

    .line 516
    goto :goto_2

    .line 514
    :cond_2
    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    goto :goto_4

    .line 518
    :sswitch_1
    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    .line 519
    iget-boolean v6, p0, Lcom/lge/camera/controller/SettingRotatableController;->mIsRtoL:Z

    if-eqz v6, :cond_3

    const/4 v5, 0x0

    .line 520
    :goto_5
    goto :goto_2

    .line 519
    :cond_3
    iget v6, p0, Lcom/lge/camera/controller/SettingRotatableController;->LCD_HEIGHT:I

    iget v7, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_WIDTH:I

    sub-int v5, v6, v7

    goto :goto_5

    .line 522
    :sswitch_2
    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    .line 524
    iget-object v6, p0, Lcom/lge/camera/controller/SettingRotatableController;->mParentAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v6}, Lcom/lge/camera/setting/SettingMenuAdapter;->getCount()I

    move-result v3

    .line 525
    .local v3, parentAdapterCount:I
    iget v6, p0, Lcom/lge/camera/controller/SettingRotatableController;->CONFIG_ITEM_HEIGHT:I

    iget v7, p0, Lcom/lge/camera/controller/SettingRotatableController;->DIVIDER:I

    add-int/2addr v6, v7

    mul-int/2addr v6, v3

    iget v7, p0, Lcom/lge/camera/controller/SettingRotatableController;->DIVIDER:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/lge/camera/controller/SettingRotatableController;->TITLE_HEIGHT:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/lge/camera/controller/SettingRotatableController;->BG_BORDER_HEIGHT:I

    add-int v0, v6, v7

    .line 527
    .local v0, layout_height:I
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getSettingListHeight()I

    move-result v6

    if-gt v3, v6, :cond_4

    .line 528
    iget v6, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_TOP:I

    iget v7, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_HEIGHT:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/lge/camera/controller/SettingRotatableController;->MARGIN_HEIGHT:I

    add-int/2addr v6, v7

    sub-int v5, v6, v0

    goto :goto_2

    .line 530
    :cond_4
    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_TOP:I

    .line 532
    goto :goto_2

    .line 534
    .end local v0           #layout_height:I
    .end local v3           #parentAdapterCount:I
    :sswitch_3
    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    .line 535
    iget v6, p0, Lcom/lge/camera/controller/SettingRotatableController;->LCD_HEIGHT:I

    iget v7, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_WIDTH:I

    sub-int v5, v6, v7

    .line 536
    goto :goto_2

    .line 545
    :cond_5
    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 546
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_3

    .line 512
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public rotateSettingBeautyShot(I)V
    .locals 6
    .parameter "degree"

    .prologue
    const v5, 0x7f09018e

    .line 715
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    .line 770
    :goto_0
    return-void

    .line 723
    :cond_0
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateLayout;

    .line 724
    .local v0, cl:Lcom/lge/camera/components/RotateLayout;
    invoke-virtual {v0, p1}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 726
    invoke-virtual {v0}, Lcom/lge/camera/components/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 727
    .local v2, params:Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v1, 0x0

    .line 728
    .local v1, leftMargin:I
    const/4 v3, 0x0

    .line 729
    .local v3, topMargin:I
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 730
    :goto_1
    sparse-switch p1, :sswitch_data_0

    .line 760
    :goto_2
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 761
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 762
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 768
    :goto_3
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->refreshBeautyshotSettingBars()V

    .line 769
    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 729
    :cond_1
    add-int/lit8 v4, p1, 0x5a

    rem-int/lit16 p1, v4, 0x168

    goto :goto_1

    .line 732
    :sswitch_0
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_LEFT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_MARGIN_LEFT:I

    add-int v1, v4, v5

    .line 733
    iget v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_TOP:I

    .line 736
    goto :goto_2

    .line 738
    :sswitch_1
    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    .line 739
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->LCD_HEIGHT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_WIDTH:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_WIDTH:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_MARGIN_LEFT:I

    sub-int v3, v4, v5

    .line 742
    goto :goto_2

    .line 744
    :sswitch_2
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_WIDTH:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_MARGIN_LEFT:I

    add-int v1, v4, v5

    .line 745
    invoke-direct {p0}, Lcom/lge/camera/controller/SettingRotatableController;->getCurrentParentSettingListHeight()I

    move-result v4

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_TOP:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_LAND_HEIGHT:I

    sub-int v3, v4, v5

    .line 748
    goto :goto_2

    .line 751
    :sswitch_3
    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    .line 752
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->LCD_HEIGHT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_WIDTH:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_WIDTH:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_MARGIN_LEFT:I

    sub-int v3, v4, v5

    .line 755
    goto :goto_2

    .line 764
    :cond_2
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 765
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_3

    .line 730
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public rotateSettingBrightness(I)V
    .locals 6
    .parameter "degree"

    .prologue
    const v5, 0x7f090199

    .line 653
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    .line 712
    :goto_0
    return-void

    .line 661
    :cond_0
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateLayout;

    .line 662
    .local v0, cl:Lcom/lge/camera/components/RotateLayout;
    invoke-virtual {v0, p1}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 664
    invoke-virtual {v0}, Lcom/lge/camera/components/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 665
    .local v2, params:Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v1, 0x0

    .line 666
    .local v1, leftMargin:I
    const/4 v3, 0x0

    .line 667
    .local v3, topMargin:I
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 668
    :goto_1
    sparse-switch p1, :sswitch_data_0

    .line 702
    :goto_2
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 703
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 704
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 710
    :goto_3
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->refreshBrightnessSettingBars()V

    .line 711
    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 667
    :cond_1
    add-int/lit8 v4, p1, 0x5a

    rem-int/lit16 p1, v4, 0x168

    goto :goto_1

    .line 670
    :sswitch_0
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_LEFT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_MARGIN_LEFT:I

    add-int v1, v4, v5

    .line 671
    iget v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_TOP:I

    .line 675
    goto :goto_2

    .line 677
    :sswitch_1
    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    .line 678
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->LCD_HEIGHT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_WIDTH:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_WIDTH:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_MARGIN_LEFT:I

    sub-int v3, v4, v5

    .line 682
    goto :goto_2

    .line 684
    :sswitch_2
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_WIDTH:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_MARGIN_LEFT:I

    add-int v1, v4, v5

    .line 685
    invoke-direct {p0}, Lcom/lge/camera/controller/SettingRotatableController;->getCurrentParentSettingListHeight()I

    move-result v4

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_TOP:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_LAND_HEIGHT:I

    sub-int v3, v4, v5

    .line 689
    goto :goto_2

    .line 692
    :sswitch_3
    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    .line 693
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->LCD_HEIGHT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_WIDTH:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_WIDTH:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_MARGIN_LEFT:I

    sub-int v3, v4, v5

    .line 697
    goto :goto_2

    .line 706
    :cond_2
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 707
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_3

    .line 668
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public rotateSettingCamera3dDepth(I)V
    .locals 6
    .parameter "degree"

    .prologue
    const v5, 0x7f09019c

    .line 773
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    .line 831
    :goto_0
    return-void

    .line 782
    :cond_0
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateLayout;

    .line 783
    .local v0, cl:Lcom/lge/camera/components/RotateLayout;
    invoke-virtual {v0, p1}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 785
    invoke-virtual {v0}, Lcom/lge/camera/components/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 786
    .local v2, params:Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v1, 0x0

    .line 787
    .local v1, leftMargin:I
    const/4 v3, 0x0

    .line 788
    .local v3, topMargin:I
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 789
    :goto_1
    sparse-switch p1, :sswitch_data_0

    .line 818
    :goto_2
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 819
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 820
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 826
    :goto_3
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is3dSupportedModel()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 827
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->refresh3dDepthSettingBars()V

    .line 830
    :cond_1
    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 788
    :cond_2
    add-int/lit8 v4, p1, 0x5a

    rem-int/lit16 p1, v4, 0x168

    goto :goto_1

    .line 791
    :sswitch_0
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_LEFT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_MARGIN_LEFT:I

    add-int v1, v4, v5

    .line 792
    iget v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_TOP:I

    .line 795
    goto :goto_2

    .line 797
    :sswitch_1
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->TITLE_HEIGHT:I

    add-int v1, v4, v5

    .line 798
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->LCD_HEIGHT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_WIDTH:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_WIDTH:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_MARGIN_LEFT:I

    sub-int v3, v4, v5

    .line 801
    goto :goto_2

    .line 803
    :sswitch_2
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_WIDTH:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_MARGIN_LEFT:I

    add-int v1, v4, v5

    .line 804
    invoke-direct {p0}, Lcom/lge/camera/controller/SettingRotatableController;->getCurrentParentSettingListHeight()I

    move-result v4

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_TOP:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_LAND_HEIGHT:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->TITLE_HEIGHT:I

    sub-int v3, v4, v5

    .line 807
    goto :goto_2

    .line 809
    :sswitch_3
    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    .line 810
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->LCD_HEIGHT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_WIDTH:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_WIDTH:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_MARGIN_LEFT:I

    sub-int v3, v4, v5

    .line 813
    goto :goto_2

    .line 822
    :cond_3
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 823
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_3

    .line 789
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public rotateSettingZoom(I)V
    .locals 6
    .parameter "degree"

    .prologue
    const v5, 0x7f0901c2

    .line 597
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    .line 650
    :goto_0
    return-void

    .line 603
    :cond_0
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateLayout;

    .line 604
    .local v0, cl:Lcom/lge/camera/components/RotateLayout;
    invoke-virtual {v0, p1}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 606
    invoke-virtual {v0}, Lcom/lge/camera/components/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 607
    .local v2, params:Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v1, 0x0

    .line 608
    .local v1, leftMargin:I
    const/4 v3, 0x0

    .line 609
    .local v3, topMargin:I
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 610
    :goto_1
    sparse-switch p1, :sswitch_data_0

    .line 640
    :goto_2
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 641
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 642
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 648
    :goto_3
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->refreshZoomSettingBars()V

    .line 649
    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 609
    :cond_1
    add-int/lit8 v4, p1, 0x5a

    rem-int/lit16 p1, v4, 0x168

    goto :goto_1

    .line 612
    :sswitch_0
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_LEFT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_MARGIN_LEFT:I

    add-int v1, v4, v5

    .line 613
    iget v3, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_TOP:I

    .line 616
    goto :goto_2

    .line 618
    :sswitch_1
    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    .line 619
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->LCD_HEIGHT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_WIDTH:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_WIDTH:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_MARGIN_LEFT:I

    sub-int v3, v4, v5

    .line 622
    goto :goto_2

    .line 624
    :sswitch_2
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_WIDTH:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_MARGIN_LEFT:I

    add-int v1, v4, v5

    .line 625
    invoke-direct {p0}, Lcom/lge/camera/controller/SettingRotatableController;->getCurrentParentSettingListHeight()I

    move-result v4

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_TOP:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_LAND_HEIGHT:I

    sub-int v3, v4, v5

    .line 628
    goto :goto_2

    .line 631
    :sswitch_3
    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    .line 632
    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->LCD_HEIGHT:I

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_WIDTH:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_WIDTH:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_BRIGHTNESS_MARGIN_LEFT:I

    sub-int v3, v4, v5

    .line 635
    goto :goto_2

    .line 644
    :cond_2
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 645
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_3

    .line 610
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public setChildMenuLocation(IZ)V
    .locals 20
    .parameter "degree"
    .parameter "rotation"

    .prologue
    .line 834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v17, v0

    const v18, 0x7f0901c0

    invoke-interface/range {v17 .. v18}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 931
    :cond_0
    :goto_0
    return-void

    .line 839
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v17, v0

    const v18, 0x7f0901c0

    invoke-interface/range {v17 .. v18}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/components/RotateLayout;

    .line 840
    .local v4, cl:Lcom/lge/camera/components/RotateLayout;
    invoke-virtual {v4}, Lcom/lge/camera/components/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 843
    .local v12, params:Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v9, 0x0

    .line 844
    .local v9, leftMargin:I
    const/4 v15, 0x0

    .line 846
    .local v15, topMargin:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 847
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->mIsRtoL:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    .line 848
    :goto_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_TOP:I

    .line 923
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v17

    if-eqz v17, :cond_10

    .line 924
    iput v9, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 925
    iput v15, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 930
    :goto_3
    invoke-virtual {v4, v12}, Lcom/lge/camera/components/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 847
    :cond_3
    move-object/from16 v0, p0

    iget v9, v0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_LEFT:I

    goto :goto_1

    .line 849
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const/16 v18, 0xb4

    move-object/from16 v0, v17

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 850
    move-object/from16 v0, p0

    iget v9, v0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    .line 851
    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_TOP:I

    .line 852
    const/4 v10, 0x0

    .line 853
    .local v10, mNumOfChildItems:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/lge/camera/ControllerFunction;->getCurrentSettingMenuIndex()I

    move-result v5

    .line 854
    .local v5, currentSelectIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Lcom/lge/camera/ControllerFunction;->getSelectedChildCount(I)I

    move-result v10

    .line 856
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getSettingListHeight()I

    move-result v17

    move/from16 v0, v17

    if-gt v10, v0, :cond_5

    .line 857
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->CONFIG_ITEM_HEIGHT:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->DIVIDER:I

    move/from16 v18, v0

    add-int v17, v17, v18

    mul-int v17, v17, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->DIVIDER:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->BG_BORDER_HEIGHT:I

    move/from16 v18, v0

    add-int v8, v17, v18

    .line 858
    .local v8, layout_height:I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_LEFT:I

    .line 859
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_TOP:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_HEIGHT:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->MARGIN_HEIGHT:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->TITLE_HEIGHT:I

    move/from16 v18, v0

    add-int v18, v18, v8

    sub-int v15, v17, v18

    .line 860
    goto/16 :goto_2

    .end local v8           #layout_height:I
    :cond_5
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getSettingListHeight()I

    move-result v17

    move/from16 v0, v17

    if-le v10, v0, :cond_2

    .line 861
    move-object/from16 v0, p0

    iget v9, v0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_LEFT:I

    .line 862
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_MARGIN_TOP:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->TITLE_HEIGHT:I

    move/from16 v18, v0

    sub-int v15, v17, v18

    goto/16 :goto_2

    .line 865
    .end local v5           #currentSelectIndex:I
    .end local v10           #mNumOfChildItems:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/lge/camera/ControllerFunction;->getCurrentSettingMenuIndex()I

    move-result v5

    .line 866
    .restart local v5       #currentSelectIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v6

    .line 867
    .local v6, firstPosId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v7

    .line 868
    .local v7, lastPosId:I
    invoke-direct/range {p0 .. p0}, Lcom/lge/camera/controller/SettingRotatableController;->getVisibleMenuCount()I

    move-result v16

    .line 869
    .local v16, visibleCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->mParentAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lge/camera/setting/SettingMenuAdapter;->getCount()I

    move-result v11

    .line 871
    .local v11, menuCount:I
    move/from16 v0, v16

    if-gt v11, v0, :cond_7

    .line 872
    move/from16 v16, v11

    .line 875
    :cond_7
    if-eqz p2, :cond_8

    .line 876
    const-string v17, "CameraApp"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "setChildMenuLocation : visibleCount = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", firstPosId = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", lastPosId = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    const-string v17, "CameraApp"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "setChildMenuLocation : currentSelectIndex = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", mParentAdapter.getCount() = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    sub-int v17, v11, v16

    move/from16 v0, v17

    if-gt v5, v0, :cond_d

    .line 879
    move v6, v5

    .line 880
    add-int v17, v5, v16

    add-int/lit8 v7, v17, -0x1

    .line 886
    :cond_8
    :goto_4
    const-string v17, "CameraApp"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "setChildMenuLocation : firstPosId = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", lastPosId = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    move/from16 v0, v16

    if-ge v0, v11, :cond_9

    add-int/lit8 v17, v11, -0x1

    move/from16 v0, v17

    if-ne v7, v0, :cond_9

    .line 888
    sub-int v17, v11, v16

    move/from16 v0, v17

    if-gt v5, v0, :cond_e

    .line 889
    move v6, v5

    .line 894
    :cond_9
    :goto_5
    sub-int v17, v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->CONFIG_ITEM_HEIGHT:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->DIVIDER:I

    move/from16 v19, v0

    add-int v18, v18, v19

    mul-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->TITLE_HEIGHT:I

    move/from16 v18, v0

    add-int v14, v17, v18

    .line 895
    .local v14, parentPos:I
    const/16 v17, 0x8

    move/from16 v0, v17

    if-lt v11, v0, :cond_a

    add-int/lit8 v17, v11, -0x1

    move/from16 v0, v17

    if-ne v7, v0, :cond_a

    .line 896
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->MARGIN_HEIGHT:I

    move/from16 v17, v0

    add-int v14, v14, v17

    .line 898
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Lcom/lge/camera/ControllerFunction;->getSelectedChildCount(I)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/lge/camera/controller/SettingRotatableController;->getMenuListHeight(I)I

    move-result v3

    .line 900
    .local v3, childHeight:I
    add-int v17, v14, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->LCD_WIDTH:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->PANEL_WIDTH:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_b

    .line 901
    add-int v17, v14, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->LCD_WIDTH:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->PANEL_WIDTH:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    sub-int v17, v17, v18

    sub-int v14, v14, v17

    .line 902
    if-gez v14, :cond_b

    .line 903
    const/4 v14, 0x0

    .line 907
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const/16 v18, 0x10e

    move-object/from16 v0, v17

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 908
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_HEIGHT:I

    .line 909
    .local v13, parentHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->mParentAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lge/camera/setting/SettingMenuAdapter;->getCount()I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, v16

    if-lt v0, v1, :cond_c

    .line 910
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/lge/camera/controller/SettingRotatableController;->getMenuListHeight(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->TITLE_HEIGHT:I

    move/from16 v18, v0

    add-int v13, v17, v18

    .line 911
    const/16 v17, 0x8

    move/from16 v0, v17

    if-lt v11, v0, :cond_c

    .line 912
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->MARGIN_HEIGHT:I

    move/from16 v17, v0

    add-int v13, v13, v17

    .line 915
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    move/from16 v17, v0

    add-int v17, v17, v13

    add-int v18, v14, v3

    sub-int v9, v17, v18

    .line 916
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_2

    .line 917
    move-object/from16 v0, p0

    iget v9, v0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    goto/16 :goto_2

    .line 882
    .end local v3           #childHeight:I
    .end local v13           #parentHeight:I
    .end local v14           #parentPos:I
    :cond_d
    sub-int v6, v11, v16

    .line 883
    add-int/lit8 v7, v11, -0x1

    goto/16 :goto_4

    .line 891
    :cond_e
    sub-int v6, v11, v16

    goto/16 :goto_5

    .line 920
    .restart local v3       #childHeight:I
    .restart local v14       #parentPos:I
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->PARENT_MARGIN_LEFT:I

    move/from16 v17, v0

    add-int v9, v14, v17

    goto/16 :goto_2

    .line 927
    .end local v3           #childHeight:I
    .end local v5           #currentSelectIndex:I
    .end local v6           #firstPosId:I
    .end local v7           #lastPosId:I
    .end local v11           #menuCount:I
    .end local v14           #parentPos:I
    .end local v16           #visibleCount:I
    :cond_10
    iput v15, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 928
    iput v9, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto/16 :goto_3
.end method

.method public showAnimation()V
    .locals 6

    .prologue
    .line 438
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f0901bc

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateLayout;

    .line 439
    .local v2, rlP:Lcom/lge/camera/components/RotateLayout;
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f0901c0

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateLayout;

    .line 440
    .local v1, rlC:Lcom/lge/camera/components/RotateLayout;
    invoke-virtual {v2}, Lcom/lge/camera/components/RotateLayout;->clearAnimation()V

    .line 441
    invoke-virtual {v1}, Lcom/lge/camera/components/RotateLayout;->clearAnimation()V

    .line 442
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 443
    .local v0, anim:Landroid/view/animation/Animation;
    new-instance v3, Lcom/lge/camera/controller/SettingRotatableController$6;

    invoke-direct {v3, p0}, Lcom/lge/camera/controller/SettingRotatableController$6;-><init>(Lcom/lge/camera/controller/SettingRotatableController;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 462
    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 463
    invoke-virtual {v2, v0}, Lcom/lge/camera/components/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 464
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAudiozoom()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    const/16 v5, 0x5a

    invoke-static {v3, v4, v5}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    const/16 v5, 0x10e

    invoke-static {v3, v4, v5}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string v3, "key_audiozoom"

    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/setting/SettingMenu;->getCurrentMenu()Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/setting/SettingMenuItem;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 470
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/SettingRotatableController;->removeChildSettingView(Z)V

    .line 474
    :goto_0
    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SettingRotatableController;->childCustomViewAnimation(Landroid/view/animation/Animation;)V

    .line 475
    return-void

    .line 472
    :cond_1
    invoke-virtual {v1, v0}, Lcom/lge/camera/components/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public showChildSettingView()V
    .locals 5

    .prologue
    const v4, 0x7f0901c0

    .line 367
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0901bc

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateLayout;

    .line 372
    .local v1, rlC:Lcom/lge/camera/components/RotateLayout;
    invoke-virtual {v1}, Lcom/lge/camera/components/RotateLayout;->clearAnimation()V

    .line 373
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 374
    .local v0, anim:Landroid/view/animation/Animation;
    new-instance v2, Lcom/lge/camera/controller/SettingRotatableController$4;

    invoke-direct {v2, p0}, Lcom/lge/camera/controller/SettingRotatableController$4;-><init>(Lcom/lge/camera/controller/SettingRotatableController;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 386
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 387
    invoke-virtual {v1, v0}, Lcom/lge/camera/components/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 388
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v3, 0x10

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    goto :goto_0
.end method

.method public startRotation(I)V
    .locals 3
    .parameter "degree"

    .prologue
    .line 392
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDegree = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", degree = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableController;->checkMediator()Z

    move-result v0

    if-eqz v0, :cond_1

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

    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableController;->isNullSettingView()Z

    move-result v0

    if-nez v0, :cond_1

    .line 399
    iget v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    if-ne v0, p1, :cond_2

    iget-boolean v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mIsRtoL:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/lge/camera/controller/SettingRotatableController;->mInitSettingBar:Z

    if-eqz v0, :cond_2

    .line 410
    :cond_1
    :goto_0
    return-void

    .line 403
    :cond_2
    iput p1, p0, Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I

    .line 404
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableController;->hideAnimation()V

    .line 405
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/SettingRotatableController;->rotateParentList(I)V

    .line 406
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/SettingRotatableController;->rotateChildList(I)V

    .line 407
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/SettingRotatableController;->rotateChildCustom(I)V

    .line 408
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableController;->showAnimation()V

    goto :goto_0
.end method
