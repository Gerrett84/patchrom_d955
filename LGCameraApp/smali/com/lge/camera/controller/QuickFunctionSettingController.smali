.class public Lcom/lge/camera/controller/QuickFunctionSettingController;
.super Lcom/lge/camera/controller/Controller;
.source "QuickFunctionSettingController.java"


# instance fields
.field protected CONFIG_ITEM_HEIGHT:I

.field protected DIVIDER_HEIGHT:I

.field protected LCD_HEIGHT:I

.field protected LCD_WIDTH:I

.field protected MARGIN_HEIGHT:I

.field protected PANEL_WIDTH:I

.field protected QFL_SETTING_HEIGHT:I

.field protected QFL_SETTING_MARGIN_LEFT:I

.field protected QFL_SETTING_MARGIN_TOP:I

.field protected QFL_SETTING_WIDTH:I

.field private mDegree:I

.field protected mQuickFunctionSettingListView:Landroid/widget/ListView;

.field protected mQuickFunctionSettingView:Landroid/view/View;

.field private mQuickFunctionSettingViewRemoving:Z

.field protected mSettingAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

.field private mSettingListViewItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mSettingListViewItemTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 1
    .parameter "function"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/Controller;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 44
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->DIVIDER_HEIGHT:I

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mDegree:I

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingViewRemoving:Z

    .line 263
    new-instance v0, Lcom/lge/camera/controller/QuickFunctionSettingController$1;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/QuickFunctionSettingController$1;-><init>(Lcom/lge/camera/controller/QuickFunctionSettingController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mSettingListViewItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 317
    new-instance v0, Lcom/lge/camera/controller/QuickFunctionSettingController$2;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/QuickFunctionSettingController$2;-><init>(Lcom/lge/camera/controller/QuickFunctionSettingController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mSettingListViewItemTouchListener:Landroid/view/View$OnTouchListener;

    .line 52
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mDegree:I

    .line 53
    return-void
.end method

.method private updateSettingListHeight(III)V
    .locals 9
    .parameter "parentSettingPosition"
    .parameter "leftMargin"
    .parameter "topMargin"

    .prologue
    const/16 v8, 0xb4

    const/4 v7, 0x0

    .line 227
    const/4 v3, 0x0

    .line 229
    .local v3, mNumOfChildItems:I
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, p1}, Lcom/lge/camera/ControllerFunction;->getSettingMenuItem(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/setting/SettingMenuItem;->getChildCount()I

    move-result v3

    .line 231
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getSettingListHeight()I

    move-result v4

    if-gt v3, v4, :cond_2

    .line 232
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->QFL_SETTING_WIDTH:I

    const/4 v5, -0x2

    invoke-direct {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 233
    .local v1, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mDegree:I

    invoke-static {v4, v5, v8}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 234
    iget v4, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->QFL_SETTING_MARGIN_LEFT:I

    iget v5, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->QFL_SETTING_MARGIN_TOP:I

    invoke-virtual {v1, v4, v5, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 238
    :goto_0
    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    .end local v1           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    :goto_1
    return-void

    .line 236
    .restart local v1       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    iget v4, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->QFL_SETTING_MARGIN_LEFT:I

    iget v5, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->QFL_SETTING_MARGIN_TOP:I

    invoke-virtual {v1, v4, v5, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 239
    .end local v1           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getSettingListHeight()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 240
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mDegree:I

    const/16 v6, 0x5a

    invoke-static {v4, v5, v6}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mDegree:I

    const/16 v6, 0x10e

    invoke-static {v4, v5, v6}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 242
    :cond_3
    const/4 v2, -0x2

    .line 243
    .local v2, layout_height:I
    iget v4, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->LCD_WIDTH:I

    iget v5, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->PANEL_WIDTH:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->QFL_SETTING_MARGIN_LEFT:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->CONFIG_ITEM_HEIGHT:I

    div-int/2addr v4, v5

    add-int/lit8 v0, v4, -0x2

    .line 245
    .local v0, itemCount:I
    if-le v3, v0, :cond_4

    .line 246
    iget v4, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->CONFIG_ITEM_HEIGHT:I

    iget v5, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->DIVIDER_HEIGHT:I

    add-int/2addr v4, v5

    mul-int/2addr v4, v0

    iget v5, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->DIVIDER_HEIGHT:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->MARGIN_HEIGHT:I

    add-int v2, v4, v5

    .line 248
    :cond_4
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->QFL_SETTING_WIDTH:I

    invoke-direct {v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 249
    .restart local v1       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, p2, p3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 250
    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 252
    .end local v0           #itemCount:I
    .end local v1           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2           #layout_height:I
    :cond_5
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->QFL_SETTING_WIDTH:I

    iget v5, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->QFL_SETTING_HEIGHT:I

    iget v6, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->MARGIN_HEIGHT:I

    add-int/2addr v5, v6

    invoke-direct {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 253
    .restart local v1       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mDegree:I

    invoke-static {v4, v5, v8}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 254
    iget v4, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->QFL_SETTING_MARGIN_LEFT:I

    iget v5, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->QFL_SETTING_MARGIN_TOP:I

    invoke-virtual {v1, v4, v5, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 258
    :goto_2
    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 256
    :cond_6
    iget v4, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->QFL_SETTING_MARGIN_LEFT:I

    iget v5, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->QFL_SETTING_MARGIN_TOP:I

    invoke-virtual {v1, v4, v5, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2
.end method


# virtual methods
.method public displaySettingView(Ljava/lang/String;)V
    .locals 7
    .parameter "key"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 56
    const-string v2, "CameraApp"

    const-string v3, "QuickFunctionSettingController settingView : displaySettingView-start"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const v2, 0x7f0a017c

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickFunctionSettingController;->getPixelFromDimens(I)I

    move-result v2

    iput v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->QFL_SETTING_WIDTH:I

    .line 59
    const v2, 0x7f0a017d

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickFunctionSettingController;->getPixelFromDimens(I)I

    move-result v2

    iput v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->QFL_SETTING_HEIGHT:I

    .line 60
    const v2, 0x7f0a017a

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickFunctionSettingController;->getPixelFromDimens(I)I

    move-result v2

    iput v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->QFL_SETTING_MARGIN_LEFT:I

    .line 61
    const v2, 0x7f0a017b

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickFunctionSettingController;->getPixelFromDimens(I)I

    move-result v2

    iput v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->QFL_SETTING_MARGIN_TOP:I

    .line 63
    const v2, 0x7f0a0008

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickFunctionSettingController;->getPixelFromDimens(I)I

    move-result v2

    iput v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->LCD_WIDTH:I

    .line 64
    const v2, 0x7f0a0009

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickFunctionSettingController;->getPixelFromDimens(I)I

    move-result v2

    iput v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->LCD_HEIGHT:I

    .line 65
    const v2, 0x7f0a001a

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickFunctionSettingController;->getPixelFromDimens(I)I

    move-result v2

    iput v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->PANEL_WIDTH:I

    .line 66
    const v2, 0x7f0a0058

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickFunctionSettingController;->getPixelFromDimens(I)I

    move-result v2

    iput v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->CONFIG_ITEM_HEIGHT:I

    .line 67
    iget v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->CONFIG_ITEM_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->MARGIN_HEIGHT:I

    .line 69
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getBackupCurrentMenuIndex()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 70
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCurrentSettingMenuIndex()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setBackupCurrentMenuIndex(I)V

    .line 73
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v2

    iput v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mDegree:I

    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, index:I
    if-nez p1, :cond_3

    .line 77
    const/4 v0, 0x0

    .line 81
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v0}, Lcom/lge/camera/ControllerFunction;->setCurrentSettingMenu(I)Z

    .line 83
    new-instance v2, Lcom/lge/camera/setting/SettingMenuAdapter;

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v4

    invoke-direct {v2, v3, v4, v6}, Lcom/lge/camera/setting/SettingMenuAdapter;-><init>(Landroid/content/Context;Lcom/lge/camera/setting/SettingMenu;I)V

    iput-object v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mSettingAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    .line 86
    if-eqz p1, :cond_1

    const-string v2, "key_help_guide"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mSettingAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v2, v5}, Lcom/lge/camera/setting/SettingMenuAdapter;->setShowSelectedChild(Z)V

    .line 90
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingView:Landroid/view/View;

    if-nez v2, :cond_2

    .line 91
    const-string v2, "CameraApp"

    const-string v3, "inflate Setting Layout...!!"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f03002e

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->inflateView(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingView:Landroid/view/View;

    .line 93
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0900c1

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 94
    .local v1, vg:Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 96
    .end local v1           #vg:Landroid/view/ViewGroup;
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 98
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f090174

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    .line 99
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 100
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mSettingAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 101
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setSelected(Z)V

    .line 103
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mSettingListViewItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 104
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mSettingListViewItemTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 105
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getSelectedChildIndex()I

    move-result v3

    invoke-virtual {v2, v3, v5}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 106
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v3, 0x15

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 111
    iget v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mDegree:I

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickFunctionSettingController;->rotateSettingList(I)V

    .line 112
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    invoke-virtual {p0, v2, v6}, Lcom/lge/camera/controller/QuickFunctionSettingController;->qflSettingAnimation(Landroid/view/View;Z)V

    .line 114
    const-string v2, "CameraApp"

    const-string v3, "displaySettingView-end"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void

    .line 79
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, p1}, Lcom/lge/camera/ControllerFunction;->getCurrentSettingMenuIndex(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0
.end method

.method public isNullSettingView()Z
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingView:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQuickFunctionSettingViewRemoving()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingViewRemoving:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionSettingController;->isNullSettingView()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 384
    const-string v0, "CameraApp"

    const-string v1, "onDestroy-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 387
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wow not null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mSettingAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 389
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 390
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->removeAllViewsInLayout()V

    .line 391
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 393
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 395
    :cond_0
    iput-object v3, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    .line 398
    :cond_1
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onDestroy()V

    .line 399
    const-string v0, "CameraApp"

    const-string v1, "onDestroy-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionSettingController;->removeSettingView()V

    .line 379
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onPause()V

    .line 380
    return-void
.end method

.method public qflSettingAnimation(Landroid/view/View;Z)V
    .locals 8
    .parameter "aniView"
    .parameter "show"

    .prologue
    .line 337
    const-string v6, "CameraApp"

    const-string v7, "qflSettingAnimation-start"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    if-eqz p1, :cond_0

    .line 340
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 341
    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 343
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v6

    if-eqz v6, :cond_1

    const v5, 0x7f04000f

    .line 344
    .local v5, showResId:I
    :goto_0
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v6

    if-eqz v6, :cond_2

    const v3, 0x7f04000d

    .line 345
    .local v3, hideResId:I
    :goto_1
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    .line 346
    .local v4, showAni:Landroid/view/animation/Animation;
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 348
    .local v2, hideAni:Landroid/view/animation/Animation;
    if-eqz p2, :cond_3

    move-object v0, v4

    .line 349
    .local v0, animation:Landroid/view/animation/Animation;
    :goto_2
    new-instance v6, Lcom/lge/camera/controller/QuickFunctionSettingController$3;

    invoke-direct {v6, p0, p1, p2}, Lcom/lge/camera/controller/QuickFunctionSettingController$3;-><init>(Lcom/lge/camera/controller/QuickFunctionSettingController;Landroid/view/View;Z)V

    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 368
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    .end local v0           #animation:Landroid/view/animation/Animation;
    .end local v2           #hideAni:Landroid/view/animation/Animation;
    .end local v3           #hideResId:I
    .end local v4           #showAni:Landroid/view/animation/Animation;
    .end local v5           #showResId:I
    :cond_0
    :goto_3
    return-void

    .line 343
    :cond_1
    const v5, 0x7f040010

    goto :goto_0

    .line 344
    .restart local v5       #showResId:I
    :cond_2
    const v3, 0x7f04000e

    goto :goto_1

    .restart local v2       #hideAni:Landroid/view/animation/Animation;
    .restart local v3       #hideResId:I
    .restart local v4       #showAni:Landroid/view/animation/Animation;
    :cond_3
    move-object v0, v2

    .line 348
    goto :goto_2

    .line 370
    .end local v2           #hideAni:Landroid/view/animation/Animation;
    .end local v3           #hideResId:I
    .end local v4           #showAni:Landroid/view/animation/Animation;
    .end local v5           #showResId:I
    :catch_0
    move-exception v1

    .line 371
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v6, "CameraApp"

    const-string v7, "NullPointerException : "

    invoke-static {v6, v7, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public removeSettingView()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 120
    const-string v1, "CameraApp"

    const-string v2, "settingView : removeSettingView"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f090173

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 123
    const-string v1, "CameraApp"

    const-string v2, "settingView : removeSettingView - return"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 129
    :cond_1
    const-string v1, "CameraApp"

    const-string v2, "settingView : removeSettingView -return, mSettingView is null"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingViewRemoving:Z

    .line 133
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.Rotate"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 137
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 138
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 139
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->removeAllViewsInLayout()V

    .line 140
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 141
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 142
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 144
    :cond_3
    iput-object v3, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    .line 146
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mSettingAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v1}, Lcom/lge/camera/setting/SettingMenuAdapter;->close()V

    .line 147
    iput-object v3, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mSettingAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    .line 149
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0900c1

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 150
    .local v0, vg:Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 151
    iput-object v3, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingView:Landroid/view/View;

    .line 152
    const/4 v1, -0x1

    iput v1, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mDegree:I

    .line 153
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 154
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v1

    const/16 v2, 0x12

    if-eq v1, v2, :cond_4

    .line 155
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 157
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->quickFunctionAllMenuSelected(Z)V

    .line 158
    iput-boolean v4, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingViewRemoving:Z

    goto :goto_0
.end method

.method public rotateSettingList(I)V
    .locals 7
    .parameter "degree"

    .prologue
    const v5, 0x7f090173

    .line 174
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    .line 216
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateLayout;

    .line 179
    .local v0, cl:Lcom/lge/camera/components/RotateLayout;
    invoke-virtual {v0, p1}, Lcom/lge/camera/components/RotateLayout;->setAngle(I)V

    .line 181
    invoke-virtual {v0}, Lcom/lge/camera/components/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 182
    .local v2, params:Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v1, 0x0

    .line 183
    .local v1, leftMargin:I
    const/4 v3, 0x0

    .line 184
    .local v3, topMargin:I
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 185
    :goto_1
    sparse-switch p1, :sswitch_data_0

    .line 206
    :goto_2
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 207
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 208
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 214
    :goto_3
    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCurrentSettingMenuIndex()I

    move-result v4

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-direct {p0, v4, v5, v6}, Lcom/lge/camera/controller/QuickFunctionSettingController;->updateSettingListHeight(III)V

    goto :goto_0

    .line 184
    :cond_1
    add-int/lit8 v4, p1, 0x5a

    rem-int/lit16 p1, v4, 0x168

    goto :goto_1

    .line 187
    :sswitch_0
    iget v1, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->QFL_SETTING_MARGIN_LEFT:I

    .line 188
    iget v3, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->QFL_SETTING_MARGIN_TOP:I

    .line 189
    goto :goto_2

    .line 191
    :sswitch_1
    iget v1, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->QFL_SETTING_MARGIN_LEFT:I

    .line 192
    iget v4, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->LCD_HEIGHT:I

    iget v5, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->QFL_SETTING_WIDTH:I

    sub-int/2addr v4, v5

    div-int/lit8 v3, v4, 0x2

    .line 193
    goto :goto_2

    .line 195
    :sswitch_2
    iget v1, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->QFL_SETTING_MARGIN_LEFT:I

    .line 196
    iget v3, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->QFL_SETTING_MARGIN_TOP:I

    .line 197
    goto :goto_2

    .line 199
    :sswitch_3
    iget v1, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->QFL_SETTING_MARGIN_LEFT:I

    .line 200
    iget v4, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->LCD_HEIGHT:I

    iget v5, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->QFL_SETTING_WIDTH:I

    sub-int/2addr v4, v5

    div-int/lit8 v3, v4, 0x2

    .line 201
    goto :goto_2

    .line 210
    :cond_2
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 211
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_3

    .line 185
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public startRotation(I)V
    .locals 3
    .parameter "degree"

    .prologue
    .line 162
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRotation mDegree = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mDegree:I

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

    .line 164
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionSettingController;->checkMediator()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionSettingController;->isNullSettingView()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mDegree:I

    if-eq v0, p1, :cond_0

    .line 168
    iput p1, p0, Lcom/lge/camera/controller/QuickFunctionSettingController;->mDegree:I

    .line 169
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/QuickFunctionSettingController;->rotateSettingList(I)V

    .line 171
    :cond_0
    return-void
.end method
