.class public Lcom/lge/camera/controller/SettingRotatableExpandableController;
.super Lcom/lge/camera/controller/SettingController;
.source "SettingRotatableExpandableController.java"


# static fields
.field private static final CHILD_CLOSE_DELAY_TIME:I = 0xc8

.field private static final CHILD_OPENCLOSE_ANI_TIME:I = 0xc8

.field private static final CHILD_POSITION_NONE:I = -0x1

.field private static final PARENT_SCROLL_TIME:I = 0x64

.field private static final RATE_SAME:D = 1.0

.field private static final SCROLLBAR_ANIMATION_TIME:I = 0x12c

.field private static final SCROLLBAR_HIDE_TIME:I = 0xbb8

.field private static final SETTING_ANIMATION_TIME:I = 0x12c

.field private static SETTING_EXPAND_NUM_OF_CHILD_ROW:I = 0x0

.field private static final STATE_CHILD_CLOSE:I = 0x64

.field private static final STATE_CHILD_CLOSE_ANIMATION_START:I = 0x65

.field private static final STATE_CHILD_DISPLAY_START:I = 0xa

.field private static final STATE_CHILD_NONE:I = 0x0

.field private static final STATE_CHILD_OPEN:I = 0xc

.field private static final STATE_CHILD_OPEN_ADD:I = 0xb

.field private static final STATE_CHILD_OPEN_ANIMATION_START:I = 0xd


# instance fields
.field protected CONFIG_ITEM_HEIGHT:I

.field protected DIVIDER:I

.field protected mChildAdapter:Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;

.field private mChildCloseAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field protected mChildListView:Lcom/lge/camera/components/InnerListView;

.field private mChildOpenAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mChildSettingListViewItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mDegree:I

.field protected mOnBackCoverTouchListener:Landroid/view/View$OnTouchListener;

.field private mOpenChildLayout:Landroid/view/ViewGroup;

.field private mOpenChildPosition:Landroid/graphics/Point;

.field private mOrderBackCamcorder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOrderBackCamera:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mOrderCurrentSetting:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOrderFrontCamcorder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOrderFrontCamera:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mParentAdapter:Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;

.field protected mParentListView:Landroid/widget/ListView;

.field private mParentListViewTouchListener:Landroid/view/View$OnTouchListener;

.field private mParentScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field protected mParentScrollbarThumb:Landroid/widget/ImageView;

.field private mParentTouchActionState:I

.field protected mSettingView:Landroid/view/View;

.field private mSettingViewRemoving:Z

.field private mStateDisplayChild:I

.field private mTempChildLayout:Landroid/view/ViewGroup;

.field private mTempColumn:I

.field private mTempKey:Ljava/lang/String;

.field private mTempNeedOpenChild:Z

.field private mTempParentLayout:Landroid/view/ViewGroup;

.field private mTempRow:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 851
    const/4 v0, 0x4

    sput v0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->SETTING_EXPAND_NUM_OF_CHILD_ROW:I

    return-void
.end method

.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 3
    .parameter "function"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 74
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/SettingController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 69
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->DIVIDER:I

    .line 70
    iput v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mDegree:I

    .line 163
    const/4 v0, 0x3

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentTouchActionState:I

    .line 164
    new-instance v0, Lcom/lge/camera/controller/SettingRotatableExpandableController$1;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController$1;-><init>(Lcom/lge/camera/controller/SettingRotatableExpandableController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 261
    new-instance v0, Lcom/lge/camera/controller/SettingRotatableExpandableController$2;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController$2;-><init>(Lcom/lge/camera/controller/SettingRotatableExpandableController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 376
    iput-boolean v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingViewRemoving:Z

    .line 495
    iput v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempColumn:I

    .line 496
    iput v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempRow:I

    .line 498
    iput-boolean v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempNeedOpenChild:Z

    .line 500
    iput v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I

    .line 694
    new-instance v0, Lcom/lge/camera/controller/SettingRotatableExpandableController$6;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController$6;-><init>(Lcom/lge/camera/controller/SettingRotatableExpandableController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildOpenAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 815
    new-instance v0, Lcom/lge/camera/controller/SettingRotatableExpandableController$8;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController$8;-><init>(Lcom/lge/camera/controller/SettingRotatableExpandableController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildCloseAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 1126
    new-instance v0, Lcom/lge/camera/controller/SettingRotatableExpandableController$11;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController$11;-><init>(Lcom/lge/camera/controller/SettingRotatableExpandableController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildSettingListViewItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamera:Ljava/util/ArrayList;

    .line 1313
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamera:Ljava/util/ArrayList;

    .line 1314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamcorder:Ljava/util/ArrayList;

    .line 1315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamcorder:Ljava/util/ArrayList;

    .line 1400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderCurrentSetting:Ljava/util/ArrayList;

    .line 1439
    new-instance v0, Lcom/lge/camera/controller/SettingRotatableExpandableController$12;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController$12;-><init>(Lcom/lge/camera/controller/SettingRotatableExpandableController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOnBackCoverTouchListener:Landroid/view/View$OnTouchListener;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/SettingRotatableExpandableController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentTouchActionState:I

    return v0
.end method

.method static synthetic access$002(Lcom/lge/camera/controller/SettingRotatableExpandableController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentTouchActionState:I

    return p1
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/SettingRotatableExpandableController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->updateParentScrollbar()V

    return-void
.end method

.method static synthetic access$1000(Lcom/lge/camera/controller/SettingRotatableExpandableController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mDegree:I

    return v0
.end method

.method static synthetic access$1100(Lcom/lge/camera/controller/SettingRotatableExpandableController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->doCommandSubMenuClicked(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/lge/camera/controller/SettingRotatableExpandableController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I

    return p1
.end method

.method static synthetic access$300(Lcom/lge/camera/controller/SettingRotatableExpandableController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempRow:I

    return v0
.end method

.method static synthetic access$400(Lcom/lge/camera/controller/SettingRotatableExpandableController;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempChildLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/camera/controller/SettingRotatableExpandableController;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$502(Lcom/lge/camera/controller/SettingRotatableExpandableController;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildLayout:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic access$600(Lcom/lge/camera/controller/SettingRotatableExpandableController;)Landroid/graphics/Point;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildPosition:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lge/camera/controller/SettingRotatableExpandableController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempColumn:I

    return v0
.end method

.method static synthetic access$800(Lcom/lge/camera/controller/SettingRotatableExpandableController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->doOnCloseAnimationEnd()V

    return-void
.end method

.method static synthetic access$900(Lcom/lge/camera/controller/SettingRotatableExpandableController;Landroid/view/ViewGroup;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->closeChildView(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method private declared-synchronized addChildView(Landroid/view/ViewGroup;IILjava/lang/String;)Z
    .locals 6
    .parameter "childLayout"
    .parameter "column"
    .parameter "row"
    .parameter "key"

    .prologue
    .line 609
    monitor-enter p0

    const/16 v3, 0xb

    :try_start_0
    iput v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    if-nez p1, :cond_0

    .line 611
    const/4 v3, 0x0

    .line 642
    :goto_0
    monitor-exit p0

    return v3

    .line 613
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 614
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 617
    :cond_1
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 618
    .local v1, innerChildLayout:Landroid/widget/RelativeLayout;
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 620
    const/4 v0, 0x0

    .line 621
    .local v0, childView:Landroid/view/View;
    const-string v3, "key_brightness"

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 622
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->initSettingBrightnessBar()Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 623
    if-eqz v0, :cond_2

    .line 624
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 625
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->refreshBrightnessExpandSettingBars()V

    .line 634
    :cond_2
    :goto_1
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 635
    .local v2, upperShadow:Landroid/widget/ImageView;
    const v3, 0x7f020320

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 636
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 637
    if-eqz v2, :cond_3

    .line 638
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 641
    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 642
    const/4 v3, 0x1

    goto :goto_0

    .line 628
    .end local v2           #upperShadow:Landroid/widget/ImageView;
    :cond_4
    invoke-direct {p0, p2, p3, p4}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->getChildListView(IILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 629
    if-eqz v0, :cond_2

    .line 630
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 609
    .end local v0           #childView:Landroid/view/View;
    .end local v1           #innerChildLayout:Landroid/widget/RelativeLayout;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private addParentMenuItem()V
    .locals 14

    .prologue
    .line 190
    iget-object v9, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderCurrentSetting:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 192
    .local v7, numOfMenus:I
    const/4 v9, 0x7

    if-lt v7, v9, :cond_1

    const/16 v9, 0x9

    if-gt v7, v9, :cond_1

    .line 193
    const/4 v9, 0x3

    sput v9, Lcom/lge/camera/properties/CameraConstants;->SETTING_EXPAND_MAX_COLUMN:I

    .line 194
    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v10, 0x7f0901b3

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v9

    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v11, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0a0155

    invoke-static {v11, v12}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v11

    iget-object v12, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f0a0158

    invoke-static {v12, v13}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v12

    invoke-direct {v10, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    :goto_0
    sget v9, Lcom/lge/camera/properties/CameraConstants;->SETTING_EXPAND_MAX_COLUMN:I

    div-int v8, v7, v9

    .line 234
    .local v8, numOfRow:I
    sget v9, Lcom/lge/camera/properties/CameraConstants;->SETTING_EXPAND_MAX_COLUMN:I

    rem-int v6, v7, v9

    .line 237
    .local v6, numOfLastRowItems:I
    iget-object v9, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentAdapter:Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;

    invoke-virtual {v9}, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->clear()V

    .line 238
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-gt v1, v8, :cond_a

    .line 239
    if-ne v1, v8, :cond_7

    .line 240
    move v5, v6

    .line 245
    .local v5, numOfEachColumn:I
    :goto_2
    new-array v0, v5, [Lcom/lge/camera/setting/SettingMenuItem;

    .line 246
    .local v0, arraySettingMenuItem:[Lcom/lge/camera/setting/SettingMenuItem;
    const/4 v4, 0x0

    .local v4, j:I
    :goto_3
    if-ge v4, v5, :cond_8

    .line 247
    sget v9, Lcom/lge/camera/properties/CameraConstants;->SETTING_EXPAND_MAX_COLUMN:I

    mul-int/2addr v9, v1

    add-int v2, v9, v4

    .line 248
    .local v2, index:I
    const/4 v3, 0x0

    .line 249
    .local v3, item:Lcom/lge/camera/setting/SettingMenuItem;
    iget-object v9, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderCurrentSetting:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v10

    iget-object v9, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderCurrentSetting:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Lcom/lge/camera/setting/SettingMenu;->getMenu(Ljava/lang/String;)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v3

    .line 251
    aput-object v3, v0, v4

    .line 246
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 197
    .end local v0           #arraySettingMenuItem:[Lcom/lge/camera/setting/SettingMenuItem;
    .end local v1           #i:I
    .end local v2           #index:I
    .end local v3           #item:Lcom/lge/camera/setting/SettingMenuItem;
    .end local v4           #j:I
    .end local v5           #numOfEachColumn:I
    .end local v6           #numOfLastRowItems:I
    .end local v8           #numOfRow:I
    :cond_1
    const/16 v9, 0xa

    if-lt v7, v9, :cond_4

    const/16 v9, 0xc

    if-gt v7, v9, :cond_4

    .line 198
    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget v10, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mDegree:I

    const/16 v11, 0x5a

    invoke-static {v9, v10, v11}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget v10, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mDegree:I

    const/16 v11, 0x10e

    invoke-static {v9, v10, v11}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 200
    :cond_2
    const/4 v9, 0x3

    sput v9, Lcom/lge/camera/properties/CameraConstants;->SETTING_EXPAND_MAX_COLUMN:I

    .line 201
    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v10, 0x7f0901b3

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v9

    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v11, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0a0155

    invoke-static {v11, v12}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v11

    iget-object v12, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f0a0157

    invoke-static {v12, v13}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v12

    invoke-direct {v10, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 205
    :cond_3
    const/4 v9, 0x4

    sput v9, Lcom/lge/camera/properties/CameraConstants;->SETTING_EXPAND_MAX_COLUMN:I

    .line 206
    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v10, 0x7f0901b3

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v9

    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v11, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0a0156

    invoke-static {v11, v12}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v11

    iget-object v12, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f0a0158

    invoke-static {v12, v13}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v12

    invoke-direct {v10, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 211
    :cond_4
    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget v10, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mDegree:I

    const/16 v11, 0x5a

    invoke-static {v9, v10, v11}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget v10, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mDegree:I

    const/16 v11, 0x10e

    invoke-static {v9, v10, v11}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 213
    :cond_5
    const/4 v9, 0x3

    sput v9, Lcom/lge/camera/properties/CameraConstants;->SETTING_EXPAND_MAX_COLUMN:I

    .line 214
    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v10, 0x7f0901b3

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v9

    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v11, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0a0155

    invoke-static {v11, v12}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v11

    iget-object v12, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f0a0159

    invoke-static {v12, v13}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v12

    invoke-direct {v10, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 222
    :cond_6
    const/4 v9, 0x4

    sput v9, Lcom/lge/camera/properties/CameraConstants;->SETTING_EXPAND_MAX_COLUMN:I

    .line 223
    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v10, 0x7f0901b3

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v9

    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v11, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0a0156

    invoke-static {v11, v12}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v11

    iget-object v12, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f0a0157

    invoke-static {v12, v13}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v12

    invoke-direct {v10, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 242
    .restart local v1       #i:I
    .restart local v6       #numOfLastRowItems:I
    .restart local v8       #numOfRow:I
    :cond_7
    sget v5, Lcom/lge/camera/properties/CameraConstants;->SETTING_EXPAND_MAX_COLUMN:I

    .restart local v5       #numOfEachColumn:I
    goto/16 :goto_2

    .line 255
    .restart local v0       #arraySettingMenuItem:[Lcom/lge/camera/setting/SettingMenuItem;
    .restart local v4       #j:I
    :cond_8
    if-eqz v5, :cond_9

    .line 256
    iget-object v9, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentAdapter:Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;

    invoke-virtual {v9, v0}, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->add(Ljava/lang/Object;)V

    .line 238
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 259
    .end local v0           #arraySettingMenuItem:[Lcom/lge/camera/setting/SettingMenuItem;
    .end local v4           #j:I
    .end local v5           #numOfEachColumn:I
    :cond_a
    return-void
.end method

.method private calcWantedRow(Landroid/widget/ListView;I)I
    .locals 3
    .parameter "listView"
    .parameter "row"

    .prologue
    .line 522
    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 523
    .local v0, firstRow:I
    sub-int v1, p2, v0

    .line 524
    .local v1, wantedRow:I
    if-ltz v1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 525
    :cond_0
    const/4 v1, -0x1

    .line 527
    .end local v1           #wantedRow:I
    :cond_1
    return v1
.end method

.method private declared-synchronized closeChildView(Landroid/view/ViewGroup;Z)V
    .locals 1
    .parameter "childLayout"
    .parameter "needOpenAfterAnimation"

    .prologue
    .line 731
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->closeChildView(Landroid/view/ViewGroup;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 732
    monitor-exit p0

    return-void

    .line 731
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized closeChildView(Landroid/view/ViewGroup;ZZ)V
    .locals 12
    .parameter "childLayout"
    .parameter "needOpenAfterAnimation"
    .parameter "needAnimation"

    .prologue
    .line 738
    monitor-enter p0

    :try_start_0
    const-string v8, "CameraApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "closeChildView mStateDisplayChild="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    iget v8, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I

    if-eqz v8, :cond_1

    iget v8, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I

    const/16 v9, 0xa

    if-le v8, v9, :cond_1

    .line 741
    const-string v8, "CameraApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "exit closeChildView mStateDisplayChild="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 813
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 745
    :cond_1
    const/16 v8, 0x64

    :try_start_1
    iput v8, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I

    .line 748
    if-nez p1, :cond_2

    .line 749
    const/4 v8, 0x0

    iput v8, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 738
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 753
    :cond_2
    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_3

    .line 754
    const/4 v8, 0x0

    iput v8, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I

    goto :goto_0

    .line 758
    :cond_3
    iget-object v8, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    iget-object v9, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildPosition:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v8, v9}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->calcWantedRow(Landroid/widget/ListView;I)I

    move-result v7

    .line 759
    .local v7, wantedRow:I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_5

    .line 760
    iget-object v8, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    invoke-virtual {v8, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    sget-object v9, Lcom/lge/camera/properties/CameraConstants;->PARENT_ITEM_ID:[I

    iget-object v10, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildPosition:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 762
    .local v3, parentLayout:Landroid/view/View;
    if-eqz v3, :cond_5

    .line 763
    const v8, 0x7f0901ac

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/SettingExpandParentImage;

    .line 764
    .local v2, parentImage:Lcom/lge/camera/components/SettingExpandParentImage;
    const/4 v8, 0x0

    iput-boolean v8, v2, Lcom/lge/camera/components/SettingExpandParentImage;->selected:Z

    .line 765
    const/4 v8, 0x4

    invoke-direct {p0, v3, v8}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->setArrowVisibility(Landroid/view/View;I)V

    .line 767
    const v8, 0x7f0901ad

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setSelected(Z)V

    .line 769
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 770
    .local v1, currentLanguage:Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v8

    const/16 v9, 0x9

    if-ne v8, v9, :cond_4

    const-string v8, "th"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 772
    const v8, 0x7f0901ad

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 773
    .local v5, txt:Landroid/widget/TextView;
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 774
    sget-object v8, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 778
    .end local v5           #txt:Landroid/widget/TextView;
    :cond_4
    const v8, 0x7f0901ae

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setSelected(Z)V

    .line 780
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v8

    const/16 v9, 0x9

    if-ne v8, v9, :cond_5

    const-string v8, "th"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 782
    const v8, 0x7f0901ae

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 783
    .local v6, txt1:Landroid/widget/TextView;
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    invoke-virtual {v6, v8, v9, v10, v11}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 784
    sget-object v8, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 793
    .end local v1           #currentLanguage:Ljava/lang/String;
    .end local v2           #parentImage:Lcom/lge/camera/components/SettingExpandParentImage;
    .end local v3           #parentLayout:Landroid/view/View;
    .end local v6           #txt1:Landroid/widget/TextView;
    :cond_5
    iput-boolean p2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempNeedOpenChild:Z

    .line 794
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v8

    if-nez v8, :cond_0

    .line 795
    if-eqz p3, :cond_7

    .line 796
    new-instance v0, Lcom/lge/camera/setting/ExpandAnimation;

    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const/16 v9, 0xc8

    const/4 v10, 0x0

    invoke-direct {v0, v8, p1, v9, v10}, Lcom/lge/camera/setting/ExpandAnimation;-><init>(Landroid/content/Context;Landroid/view/View;IZ)V

    .line 797
    .local v0, animationChildClose:Lcom/lge/camera/setting/ExpandAnimation;
    iget-object v8, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildCloseAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v8}, Lcom/lge/camera/setting/ExpandAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 799
    new-instance v4, Lcom/lge/camera/controller/SettingRotatableExpandableController$7;

    invoke-direct {v4, p0, p1}, Lcom/lge/camera/controller/SettingRotatableExpandableController$7;-><init>(Lcom/lge/camera/controller/SettingRotatableExpandableController;Landroid/view/ViewGroup;)V

    .line 805
    .local v4, runnerForClearAnimation:Ljava/lang/Runnable;
    iget-boolean v8, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempNeedOpenChild:Z

    if-nez v8, :cond_6

    .line 806
    invoke-virtual {v0}, Lcom/lge/camera/setting/ExpandAnimation;->getDuration()J

    move-result-wide v8

    invoke-virtual {p1, v4, v8, v9}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 808
    :cond_6
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 810
    .end local v0           #animationChildClose:Lcom/lge/camera/setting/ExpandAnimation;
    .end local v4           #runnerForClearAnimation:Ljava/lang/Runnable;
    :cond_7
    invoke-direct {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->doOnCloseAnimationEnd()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private doCommandSubMenuClicked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "key"
    .parameter "command"

    .prologue
    const/4 v4, 0x1

    .line 1200
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

    .line 1201
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

    .line 1204
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1205
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "subMenuClicked"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1206
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, p2, v0}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1232
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_1
    :goto_0
    return-void

    .line 1208
    :cond_2
    const-string v1, "key_swap"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1209
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isLiveEffectSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1210
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isEffectsCamcorderActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1211
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v1

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_swap"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingIndex(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 1214
    const-string v1, "CameraApp"

    const-string v2, "SwapCameraPrepared-start, liveeffect active"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v2, 0x66

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->effectRecorderStopPreviewByCallFrom(I)V

    .line 1218
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1219
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v1, "liveeffect_mode"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1220
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x0

    invoke-interface {v1, p2, v2, v0}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1230
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, p2}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doNoChildMenu(IILjava/lang/String;)Z
    .locals 4
    .parameter "column"
    .parameter "row"
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    .line 585
    const-string v3, "key_edit_shortcut"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "key_au_cloud"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "key_help_guide"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "key_restore"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 589
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/lge/camera/setting/SettingMenu;->getMenuIndex(Ljava/lang/String;)I

    move-result v0

    .line 590
    .local v0, childPosition:I
    invoke-direct {p0, v0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->setChildViewPattern(I)V

    .line 591
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getSettingMenuCommand()Ljava/lang/String;

    move-result-object v1

    .line 592
    .local v1, className:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 593
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 596
    :cond_1
    const-string v3, "key_restore"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 597
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v3, v2}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->closeChildView(Landroid/view/ViewGroup;Z)V

    .line 601
    :goto_0
    const/4 v2, 0x1

    .line 603
    .end local v0           #childPosition:I
    .end local v1           #className:Ljava/lang/String;
    :cond_2
    return v2

    .line 599
    .restart local v0       #childPosition:I
    .restart local v1       #className:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->removeSettingView()V

    goto :goto_0
.end method

.method private doOnCloseAnimationEnd()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 832
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempChildLayout:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 833
    iput v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I

    .line 849
    :goto_0
    return-void

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempChildLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 837
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempChildLayout:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 838
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->updateSetting()V

    .line 839
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollBarFadeDuration(I)V

    .line 841
    iget-boolean v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempNeedOpenChild:Z

    if-eqz v0, :cond_1

    .line 842
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempChildLayout:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempColumn:I

    iget v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempRow:I

    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempKey:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->openChildView(Landroid/view/ViewGroup;IILjava/lang/String;)V

    goto :goto_0

    .line 844
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildLayout:Landroid/view/ViewGroup;

    .line 845
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildPosition:Landroid/graphics/Point;

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 846
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildPosition:Landroid/graphics/Point;

    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 847
    iput v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I

    goto :goto_0
.end method

.method private getChildListView(IILjava/lang/String;)Landroid/view/View;
    .locals 14
    .parameter "column"
    .parameter "row"
    .parameter "key"

    .prologue
    .line 853
    new-instance v8, Lcom/lge/camera/components/InnerListView;

    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/lge/camera/components/InnerListView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildListView:Lcom/lge/camera/components/InnerListView;

    .line 854
    iget-object v8, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildListView:Lcom/lge/camera/components/InnerListView;

    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f020314

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/lge/camera/components/InnerListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 855
    iget-object v8, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildListView:Lcom/lge/camera/components/InnerListView;

    iget v9, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->DIVIDER:I

    invoke-virtual {v8, v9}, Lcom/lge/camera/components/InnerListView;->setDividerHeight(I)V

    .line 856
    iget-object v8, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildListView:Lcom/lge/camera/components/InnerListView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/lge/camera/components/InnerListView;->setFocusable(Z)V

    .line 857
    iget-object v8, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildListView:Lcom/lge/camera/components/InnerListView;

    iget-object v9, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildAdapter:Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;

    invoke-virtual {v8, v9}, Lcom/lge/camera/components/InnerListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 858
    iget-object v8, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildListView:Lcom/lge/camera/components/InnerListView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/lge/camera/components/InnerListView;->setSelected(Z)V

    .line 860
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v8

    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Lcom/lge/camera/setting/SettingMenu;->getMenuIndex(Ljava/lang/String;)I

    move-result v5

    .line 861
    .local v5, childPosition:I
    iget-object v8, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildAdapter:Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;

    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->setCurrentParentKey(Ljava/lang/String;)V

    .line 862
    invoke-direct {p0, v5}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->setChildViewPattern(I)V

    .line 864
    const/4 v4, -0x1

    .line 866
    .local v4, childListWidth:I
    iget-object v8, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderCurrentSetting:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 867
    .local v6, numOfMenus:I
    const/4 v8, 0x7

    if-lt v6, v8, :cond_2

    const/16 v8, 0x9

    if-gt v6, v8, :cond_2

    .line 868
    const/4 v8, 0x3

    sput v8, Lcom/lge/camera/controller/SettingRotatableExpandableController;->SETTING_EXPAND_NUM_OF_CHILD_ROW:I

    .line 885
    :goto_0
    iget v8, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->CONFIG_ITEM_HEIGHT:I

    int-to-double v8, v8

    sget v10, Lcom/lge/camera/controller/SettingRotatableExpandableController;->SETTING_EXPAND_NUM_OF_CHILD_ROW:I

    int-to-double v10, v10

    const-wide/high16 v12, 0x3fe0

    add-double/2addr v10, v12

    mul-double/2addr v8, v10

    double-to-int v3, v8

    .line 886
    .local v3, childListHeight:I
    iget-object v8, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildListView:Lcom/lge/camera/components/InnerListView;

    invoke-virtual {v8}, Lcom/lge/camera/components/InnerListView;->getCount()I

    move-result v2

    .line 888
    .local v2, childListCountWithOutHeader:I
    iget v8, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->CONFIG_ITEM_HEIGHT:I

    iget v9, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->DIVIDER:I

    add-int/2addr v8, v9

    mul-int v1, v2, v8

    .line 889
    .local v1, childHeight:I
    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getSelectedChildIndex()I

    move-result v7

    .line 890
    .local v7, topPosition:I
    sget v8, Lcom/lge/camera/controller/SettingRotatableExpandableController;->SETTING_EXPAND_NUM_OF_CHILD_ROW:I

    if-le v2, v8, :cond_0

    .line 891
    int-to-double v8, v1

    iget v10, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->CONFIG_ITEM_HEIGHT:I

    int-to-double v10, v10

    const-wide/high16 v12, 0x3fe0

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-int v1, v8

    .line 892
    sget v8, Lcom/lge/camera/controller/SettingRotatableExpandableController;->SETTING_EXPAND_NUM_OF_CHILD_ROW:I

    if-lt v7, v8, :cond_8

    .line 893
    add-int/lit8 v7, v7, -0x1

    .line 899
    :cond_0
    :goto_1
    if-le v3, v1, :cond_1

    .line 900
    move v3, v1

    .line 903
    :cond_1
    iget-object v8, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildListView:Lcom/lge/camera/components/InnerListView;

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v9, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Lcom/lge/camera/components/InnerListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 906
    iget-object v8, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildListView:Lcom/lge/camera/components/InnerListView;

    iget-object v9, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildSettingListViewItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v8, v9}, Lcom/lge/camera/components/InnerListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 907
    iget-object v8, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildListView:Lcom/lge/camera/components/InnerListView;

    const/4 v9, 0x0

    invoke-virtual {v8, v7, v9}, Lcom/lge/camera/components/InnerListView;->setSelectionFromTop(II)V

    .line 908
    iget-object v8, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildListView:Lcom/lge/camera/components/InnerListView;

    return-object v8

    .line 869
    .end local v1           #childHeight:I
    .end local v2           #childListCountWithOutHeader:I
    .end local v3           #childListHeight:I
    .end local v7           #topPosition:I
    :cond_2
    const/16 v8, 0xa

    if-lt v6, v8, :cond_5

    const/16 v8, 0xc

    if-gt v6, v8, :cond_5

    .line 870
    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mDegree:I

    const/16 v10, 0x5a

    invoke-static {v8, v9, v10}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mDegree:I

    const/16 v10, 0x10e

    invoke-static {v8, v9, v10}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 872
    :cond_3
    const/4 v8, 0x4

    sput v8, Lcom/lge/camera/controller/SettingRotatableExpandableController;->SETTING_EXPAND_NUM_OF_CHILD_ROW:I

    goto :goto_0

    .line 874
    :cond_4
    const/4 v8, 0x3

    sput v8, Lcom/lge/camera/controller/SettingRotatableExpandableController;->SETTING_EXPAND_NUM_OF_CHILD_ROW:I

    goto :goto_0

    .line 877
    :cond_5
    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mDegree:I

    const/16 v10, 0x5a

    invoke-static {v8, v9, v10}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mDegree:I

    const/16 v10, 0x10e

    invoke-static {v8, v9, v10}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 879
    :cond_6
    const/4 v8, 0x5

    sput v8, Lcom/lge/camera/controller/SettingRotatableExpandableController;->SETTING_EXPAND_NUM_OF_CHILD_ROW:I

    goto/16 :goto_0

    .line 881
    :cond_7
    const/4 v8, 0x4

    sput v8, Lcom/lge/camera/controller/SettingRotatableExpandableController;->SETTING_EXPAND_NUM_OF_CHILD_ROW:I

    goto/16 :goto_0

    .line 895
    .restart local v1       #childHeight:I
    .restart local v2       #childListCountWithOutHeader:I
    .restart local v3       #childListHeight:I
    .restart local v7       #topPosition:I
    :cond_8
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private initSettingOrder()V
    .locals 2

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamera:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1318
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamera:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1319
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamera:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1322
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamera:Ljava/util/ArrayList;

    const-string v1, "key_voiceshutter"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1323
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamera:Ljava/util/ArrayList;

    const-string v1, "key_brightness"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1324
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamera:Ljava/util/ArrayList;

    const-string v1, "key_focus"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1325
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamera:Ljava/util/ArrayList;

    const-string v1, "key_camera_picturesize"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1326
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamera:Ljava/util/ArrayList;

    const-string v1, "key_iso"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1327
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamera:Ljava/util/ArrayList;

    const-string v1, "key_camera_whitebalance"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1328
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamera:Ljava/util/ArrayList;

    const-string v1, "key_camera_coloreffect"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1329
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamera:Ljava/util/ArrayList;

    const-string v1, "key_camera_timer"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1330
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamera:Ljava/util/ArrayList;

    const-string v1, "key_camera_auto_review"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1331
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamera:Ljava/util/ArrayList;

    const-string v1, "key_camera_tag_location"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1332
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamera:Ljava/util/ArrayList;

    const-string v1, "key_camera_shutter_sound"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1333
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamera:Ljava/util/ArrayList;

    const-string v1, "key_volume"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1334
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamera:Ljava/util/ArrayList;

    const-string v1, "key_storage"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1335
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamera:Ljava/util/ArrayList;

    const-string v1, "key_au_cloud"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1336
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamera:Ljava/util/ArrayList;

    const-string v1, "key_help_guide"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1337
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamera:Ljava/util/ArrayList;

    const-string v1, "key_restore"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1340
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamera:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 1341
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamera:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1342
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamera:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1344
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamera:Ljava/util/ArrayList;

    const-string v1, "key_voiceshutter"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1345
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamera:Ljava/util/ArrayList;

    const-string v1, "key_brightness"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1346
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamera:Ljava/util/ArrayList;

    const-string v1, "key_camera_picturesize"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1347
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamera:Ljava/util/ArrayList;

    const-string v1, "key_camera_whitebalance"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1348
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamera:Ljava/util/ArrayList;

    const-string v1, "key_camera_coloreffect"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1349
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamera:Ljava/util/ArrayList;

    const-string v1, "key_camera_timer"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1350
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamera:Ljava/util/ArrayList;

    const-string v1, "key_save_direction"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1351
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamera:Ljava/util/ArrayList;

    const-string v1, "key_camera_auto_review"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1352
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamera:Ljava/util/ArrayList;

    const-string v1, "key_camera_tag_location"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1353
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamera:Ljava/util/ArrayList;

    const-string v1, "key_camera_shutter_sound"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1354
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamera:Ljava/util/ArrayList;

    const-string v1, "key_volume"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1355
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamera:Ljava/util/ArrayList;

    const-string v1, "key_storage"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1356
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamera:Ljava/util/ArrayList;

    const-string v1, "key_au_cloud"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1357
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamera:Ljava/util/ArrayList;

    const-string v1, "key_help_guide"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1358
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamera:Ljava/util/ArrayList;

    const-string v1, "key_restore"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1361
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamcorder:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 1362
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamcorder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 1363
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamcorder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1365
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamcorder:Ljava/util/ArrayList;

    const-string v1, "key_audiozoom"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1367
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamcorder:Ljava/util/ArrayList;

    const-string v1, "key_preview_size_on_device"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1368
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamcorder:Ljava/util/ArrayList;

    const-string v1, "key_brightness"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1369
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamcorder:Ljava/util/ArrayList;

    const-string v1, "key_video_stabilization"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1370
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamcorder:Ljava/util/ArrayList;

    const-string v1, "key_camera_whitebalance"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1371
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamcorder:Ljava/util/ArrayList;

    const-string v1, "key_camera_coloreffect"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1372
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamcorder:Ljava/util/ArrayList;

    const-string v1, "key_video_auto_review"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1373
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamcorder:Ljava/util/ArrayList;

    const-string v1, "key_camera_tag_location"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1374
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamcorder:Ljava/util/ArrayList;

    const-string v1, "key_volume"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1375
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamcorder:Ljava/util/ArrayList;

    const-string v1, "key_storage"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1376
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamcorder:Ljava/util/ArrayList;

    const-string v1, "key_au_cloud"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1377
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamcorder:Ljava/util/ArrayList;

    const-string v1, "key_help_guide"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1378
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamcorder:Ljava/util/ArrayList;

    const-string v1, "key_restore"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1381
    :cond_5
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamcorder:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 1382
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamcorder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 1383
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamcorder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1385
    :cond_6
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamcorder:Ljava/util/ArrayList;

    const-string v1, "key_preview_size_on_device"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1386
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamcorder:Ljava/util/ArrayList;

    const-string v1, "key_brightness"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1387
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamcorder:Ljava/util/ArrayList;

    const-string v1, "key_video_stabilization"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1388
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamcorder:Ljava/util/ArrayList;

    const-string v1, "key_camera_whitebalance"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1389
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamcorder:Ljava/util/ArrayList;

    const-string v1, "key_camera_coloreffect"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1390
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamcorder:Ljava/util/ArrayList;

    const-string v1, "key_video_auto_review"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1391
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamcorder:Ljava/util/ArrayList;

    const-string v1, "key_camera_tag_location"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1392
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamcorder:Ljava/util/ArrayList;

    const-string v1, "key_volume"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1393
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamcorder:Ljava/util/ArrayList;

    const-string v1, "key_storage"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1394
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamcorder:Ljava/util/ArrayList;

    const-string v1, "key_au_cloud"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1395
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamcorder:Ljava/util/ArrayList;

    const-string v1, "key_help_guide"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1396
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamcorder:Ljava/util/ArrayList;

    const-string v1, "key_restore"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1398
    :cond_7
    return-void
.end method

.method private makeSettingItemOrder()V
    .locals 4

    .prologue
    .line 1403
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportExpandSettings()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1437
    :cond_0
    return-void

    .line 1407
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1409
    .local v2, orderGuide:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v3

    if-nez v3, :cond_5

    .line 1410
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v3

    if-nez v3, :cond_4

    .line 1411
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCameraDimension()I

    move-result v3

    if-nez v3, :cond_2

    .line 1412
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamera:Ljava/util/ArrayList;

    .line 1431
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderCurrentSetting:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1432
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1433
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/lge/camera/setting/SettingMenu;->getMenu(Ljava/lang/String;)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1434
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderCurrentSetting:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1417
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #key:Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamera:Ljava/util/ArrayList;

    goto :goto_0

    .line 1420
    :cond_5
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v3

    if-nez v3, :cond_6

    .line 1421
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCameraDimension()I

    move-result v3

    if-nez v3, :cond_2

    .line 1422
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderBackCamcorder:Ljava/util/ArrayList;

    goto :goto_0

    .line 1427
    :cond_6
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOrderFrontCamcorder:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private declared-synchronized openChildView(Landroid/view/ViewGroup;IILjava/lang/String;)V
    .locals 6
    .parameter "childLayout"
    .parameter "column"
    .parameter "row"
    .parameter "key"

    .prologue
    .line 662
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->addChildView(Landroid/view/ViewGroup;IILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 663
    const/4 v3, 0x0

    iput v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 692
    :goto_0
    monitor-exit p0

    return-void

    .line 669
    :cond_0
    if-nez p1, :cond_1

    .line 670
    const/4 v3, 0x0

    :try_start_1
    iput v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 662
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 673
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-gez v3, :cond_2

    .line 674
    const/4 v3, 0x0

    iput v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I

    goto :goto_0

    .line 678
    :cond_2
    const/16 v3, 0xc

    iput v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I

    .line 680
    if-ltz p2, :cond_3

    .line 681
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempParentLayout:Landroid/view/ViewGroup;

    sget-object v4, Lcom/lge/camera/properties/CameraConstants;->PARENT_ITEM_ID:[I

    aget v4, v4, p2

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 682
    .local v2, parentLayout:Landroid/view/View;
    if-eqz v2, :cond_3

    .line 683
    const v3, 0x7f0901ac

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/SettingExpandParentImage;

    .line 684
    .local v1, parentImage:Lcom/lge/camera/components/SettingExpandParentImage;
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/lge/camera/components/SettingExpandParentImage;->selected:Z

    .line 685
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->setArrowVisibility(Landroid/view/View;I)V

    .line 689
    .end local v1           #parentImage:Lcom/lge/camera/components/SettingExpandParentImage;
    .end local v2           #parentLayout:Landroid/view/View;
    :cond_3
    new-instance v0, Lcom/lge/camera/setting/ExpandAnimation;

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0xc8

    const/4 v5, 0x1

    invoke-direct {v0, v3, p1, v4, v5}, Lcom/lge/camera/setting/ExpandAnimation;-><init>(Landroid/content/Context;Landroid/view/View;IZ)V

    .line 690
    .local v0, animationChildOpen:Lcom/lge/camera/setting/ExpandAnimation;
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildOpenAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v3}, Lcom/lge/camera/setting/ExpandAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 691
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private resetChildShowingValues()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 510
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildPosition:Landroid/graphics/Point;

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 511
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildPosition:Landroid/graphics/Point;

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 512
    iput-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildLayout:Landroid/view/ViewGroup;

    .line 513
    iput-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempChildLayout:Landroid/view/ViewGroup;

    .line 514
    iput v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempColumn:I

    .line 515
    iput v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempRow:I

    .line 516
    iput-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempKey:Ljava/lang/String;

    .line 517
    iput-boolean v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempNeedOpenChild:Z

    .line 518
    iput v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I

    .line 519
    return-void
.end method

.method private setArrowVisibility(Landroid/view/View;I)V
    .locals 1
    .parameter "parentItem"
    .parameter "visibility"

    .prologue
    .line 646
    const v0, 0x7f0901af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 647
    return-void
.end method

.method private setChildViewPattern(I)V
    .locals 5
    .parameter "position"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 998
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, p1}, Lcom/lge/camera/ControllerFunction;->setCurrentSettingMenu(I)Z

    .line 1000
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildListView:Lcom/lge/camera/components/InnerListView;

    if-eqz v1, :cond_1

    .line 1001
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, p1}, Lcom/lge/camera/ControllerFunction;->getIndexMenuKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1002
    .local v0, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_camera_shutter_sound"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1003
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildListView:Lcom/lge/camera/components/InnerListView;

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/InnerListView;->setSoundEffectsEnabled(Z)V

    .line 1007
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildAdapter:Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;

    invoke-virtual {v1, v4}, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->setShowSelectedChild(Z)V

    .line 1008
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_help_guide"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_au_cloud"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1009
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildAdapter:Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;

    invoke-virtual {v1, v3}, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->setShowSelectedChild(Z)V

    .line 1010
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildListView:Lcom/lge/camera/components/InnerListView;

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/InnerListView;->setSelected(Z)V

    .line 1011
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v2, Lcom/lge/camera/controller/SettingRotatableExpandableController$10;

    invoke-direct {v2, p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController$10;-><init>(Lcom/lge/camera/controller/SettingRotatableExpandableController;)V

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1023
    .end local v0           #pref:Lcom/lge/camera/setting/ListPreference;
    :cond_1
    return-void

    .line 1005
    .restart local v0       #pref:Lcom/lge/camera/setting/ListPreference;
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildListView:Lcom/lge/camera/components/InnerListView;

    invoke-virtual {v1, v4}, Lcom/lge/camera/components/InnerListView;->setSoundEffectsEnabled(Z)V

    goto :goto_0
.end method

.method private showSettingView()V
    .locals 3

    .prologue
    .line 364
    const-string v1, "CameraApp"

    const-string v2, "settingView : showSettingView - animation start"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingViewRemoving:Z

    if-eqz v1, :cond_1

    .line 366
    :cond_0
    const-string v1, "CameraApp"

    const-string v2, "settingView : showSettingView - return"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    :goto_0
    return-void

    .line 370
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 371
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 372
    .local v0, anim:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 373
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private updateParentScrollbar()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x0

    .line 296
    iget-object v7, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentScrollbarThumb:Landroid/widget/ImageView;

    if-nez v7, :cond_0

    .line 335
    :goto_0
    return-void

    .line 300
    :cond_0
    const/4 v0, 0x0

    .line 301
    .local v0, childHeight:I
    iget-object v7, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildLayout:Landroid/view/ViewGroup;

    if-eqz v7, :cond_1

    .line 302
    iget-object v7, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildLayout:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    .line 308
    const v7, 0x7f0a0160

    invoke-virtual {p0, v7}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->getPixelFromDimens(I)I

    move-result v3

    .line 309
    .local v3, parentItemHeight:I
    iget-object v7, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getHeight()I

    move-result v7

    int-to-double v7, v7

    iget-object v9, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getCount()I

    move-result v9

    mul-int/2addr v9, v3

    int-to-double v9, v9

    int-to-double v11, v0

    add-double/2addr v9, v11

    div-double v4, v7, v9

    .line 312
    .local v4, rate:D
    const-wide/high16 v7, 0x3ff0

    cmpg-double v7, v4, v7

    if-gez v7, :cond_2

    .line 313
    iget-object v7, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentScrollbarThumb:Landroid/widget/ImageView;

    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 319
    iget-object v7, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentScrollbarThumb:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 321
    .local v2, lpParentScrollbarThumb:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v7, -0x2

    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 322
    iget-object v7, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getHeight()I

    move-result v7

    int-to-double v7, v7

    mul-double/2addr v7, v4

    double-to-int v7, v7

    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 324
    iget-object v7, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    invoke-virtual {v7, v13}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    .line 325
    .local v6, topMargin:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v7, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v7

    if-ge v1, v7, :cond_4

    .line 326
    iget-object v7, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildPosition:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    if-ne v1, v7, :cond_3

    .line 327
    iget-object v7, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildLayout:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    .line 325
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 304
    .end local v1           #i:I
    .end local v2           #lpParentScrollbarThumb:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3           #parentItemHeight:I
    .end local v4           #rate:D
    .end local v6           #topMargin:I
    :cond_1
    iget-object v7, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentScrollbarThumb:Landroid/widget/ImageView;

    invoke-virtual {v7, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 315
    .restart local v3       #parentItemHeight:I
    .restart local v4       #rate:D
    :cond_2
    iget-object v7, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentScrollbarThumb:Landroid/widget/ImageView;

    invoke-virtual {v7, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 329
    .restart local v1       #i:I
    .restart local v2       #lpParentScrollbarThumb:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v6       #topMargin:I
    :cond_3
    sub-int/2addr v6, v3

    goto :goto_2

    .line 332
    :cond_4
    int-to-double v7, v6

    mul-double/2addr v7, v4

    double-to-int v7, v7

    neg-int v7, v7

    iput v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 334
    iget-object v7, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentScrollbarThumb:Landroid/widget/ImageView;

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public checkAndCloseChildView()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 650
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le v1, v2, :cond_1

    .line 652
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->closeChildView(Landroid/view/ViewGroup;Z)V

    .line 653
    const/4 v0, 0x1

    .line 655
    :cond_1
    return v0
.end method

.method public displaySettingView()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 91
    const-string v2, "CameraApp"

    const-string v3, "settingView : displaySettingView-start"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-boolean v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingViewRemoving:Z

    if-eqz v2, :cond_0

    .line 94
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.DisplaySettingMenu"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 95
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.ShowSettingMenu"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 96
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.ShowSettingMenu"

    const-wide/16 v4, 0x12c

    invoke-interface {v2, v3, v4, v5}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    .line 97
    const-string v2, "CameraApp"

    const-string v3, "settingView : displaySettingView - return, send command"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-wide/16 v3, 0x1388

    invoke-interface {v2, v7, v3, v4, v7}, Lcom/lge/camera/ControllerFunction;->showBubblePopupVisibility(IJZ)V

    .line 101
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v2

    iput v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mDegree:I

    .line 103
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v3, 0x5

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 105
    new-instance v2, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;-><init>(Landroid/content/Context;Lcom/lge/camera/setting/SettingMenu;)V

    iput-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildAdapter:Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;

    .line 106
    new-instance v2, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f03003d

    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;-><init>(Landroid/content/Context;ILcom/lge/camera/setting/SettingMenu;Lcom/lge/camera/ControllerFunction;)V

    iput-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentAdapter:Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;

    .line 108
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 109
    const-string v2, "CameraApp"

    const-string v3, "inflate Setting Layout...!!"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f03003f

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->inflateView(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingView:Landroid/view/View;

    .line 111
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0900c1

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 112
    .local v1, vg:Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    .line 113
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 117
    .end local v1           #vg:Landroid/view/ViewGroup;
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingView:Landroid/view/View;

    iget v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mDegree:I

    invoke-virtual {p0, v2, v3}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->setLayoutDegree(Landroid/view/View;I)V

    .line 119
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 121
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getBackupCurrentMenuIndex()I

    move-result v2

    if-eq v2, v8, :cond_2

    .line 122
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getBackupCurrentMenuIndex()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setCurrentSettingMenu(I)Z

    .line 123
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v8}, Lcom/lge/camera/ControllerFunction;->setBackupCurrentMenuIndex(I)V

    .line 126
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCurrentSettingMenuIndex()I

    move-result v0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getSettingMenuCount()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 127
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v0}, Lcom/lge/camera/ControllerFunction;->getSettingMenuItem(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v2

    iget-boolean v2, v2, Lcom/lge/camera/setting/SettingMenuItem;->enable:Z

    if-nez v2, :cond_3

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 130
    :cond_3
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 131
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v7}, Lcom/lge/camera/ControllerFunction;->setCurrentSettingMenu(I)Z

    .line 139
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->makeSettingItemOrder()V

    .line 141
    invoke-direct {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->addParentMenuItem()V

    .line 143
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0901b5

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    .line 144
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 145
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 146
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentAdapter:Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 147
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 148
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 149
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    const v3, 0x7f02005b

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelector(I)V

    .line 150
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 152
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0901b6

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentScrollbarThumb:Landroid/widget/ImageView;

    .line 155
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingView:Landroid/view/View;

    const v3, 0x7f09006d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOnBackCoverTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 157
    iget v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mDegree:I

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->rotateExpandList(I)V

    .line 158
    invoke-direct {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->showSettingView()V

    .line 160
    const-string v2, "CameraApp"

    const-string v3, "displaySettingView-end"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 133
    :cond_5
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v0}, Lcom/lge/camera/ControllerFunction;->setCurrentSettingMenu(I)Z

    goto :goto_2
.end method

.method public hideAnimation()V
    .locals 4

    .prologue
    const v3, 0x7f0901b2

    .line 945
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    .line 958
    :goto_0
    return-void

    .line 948
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateLayout;

    .line 950
    .local v1, rl:Lcom/lge/camera/components/RotateLayout;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 951
    .local v0, anim:Landroid/view/animation/Animation;
    new-instance v2, Lcom/lge/camera/controller/SettingRotatableExpandableController$9;

    invoke-direct {v2, p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController$9;-><init>(Lcom/lge/camera/controller/SettingRotatableExpandableController;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 956
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 957
    invoke-virtual {v1, v0}, Lcom/lge/camera/components/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public hideParentScrollbar()V
    .locals 3

    .prologue
    .line 338
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentScrollbarThumb:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentScrollbarThumb:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentTouchActionState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 346
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentScrollbarThumb:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 347
    .local v0, anim:Landroid/view/animation/Animation;
    new-instance v1, Lcom/lge/camera/controller/SettingRotatableExpandableController$3;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController$3;-><init>(Lcom/lge/camera/controller/SettingRotatableExpandableController;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 359
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 360
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentScrollbarThumb:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public initController()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 79
    const v0, 0x7f0a0165

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->CONFIG_ITEM_HEIGHT:I

    .line 80
    const v0, 0x7f0a0166

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->DIVIDER:I

    .line 81
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mDegree:I

    .line 84
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildPosition:Landroid/graphics/Point;

    .line 86
    invoke-direct {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->initSettingOrder()V

    .line 87
    invoke-super {p0}, Lcom/lge/camera/controller/SettingController;->initController()V

    .line 88
    return-void
.end method

.method public isNullSettingView()Z
    .locals 1

    .prologue
    .line 990
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingView:Landroid/view/View;

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
    .line 485
    iget-boolean v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingViewRemoving:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 994
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->isNullSettingView()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1263
    const-string v0, "CameraApp"

    const-string v1, "onDestroy-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_4

    .line 1266
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCameraMainSettingMenu:Lcom/lge/camera/setting/CameraMainSettingMenu;

    invoke-virtual {v0}, Lcom/lge/camera/setting/CameraMainSettingMenu;->close()V

    .line 1267
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCameraFrontSettingMenu:Lcom/lge/camera/setting/CameraFrontSettingMenu;

    invoke-virtual {v0}, Lcom/lge/camera/setting/CameraFrontSettingMenu;->close()V

    .line 1268
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCameraMainSetting:Lcom/lge/camera/setting/CameraSetting;

    invoke-virtual {v0}, Lcom/lge/camera/setting/CameraSetting;->close()V

    .line 1269
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCameraFrontSetting:Lcom/lge/camera/setting/CameraSetting;

    invoke-virtual {v0}, Lcom/lge/camera/setting/CameraSetting;->close()V

    .line 1276
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v0}, Lcom/lge/camera/setting/Setting;->close()V

    .line 1278
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildListView:Lcom/lge/camera/components/InnerListView;

    if-eqz v0, :cond_1

    .line 1279
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wow not null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildAdapter:Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildListView:Lcom/lge/camera/components/InnerListView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildListView:Lcom/lge/camera/components/InnerListView;

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/InnerListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1281
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildListView:Lcom/lge/camera/components/InnerListView;

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/InnerListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1282
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildListView:Lcom/lge/camera/components/InnerListView;

    invoke-virtual {v0}, Lcom/lge/camera/components/InnerListView;->removeAllViewsInLayout()V

    .line 1283
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildListView:Lcom/lge/camera/components/InnerListView;

    invoke-virtual {v0}, Lcom/lge/camera/components/InnerListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1284
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildListView:Lcom/lge/camera/components/InnerListView;

    invoke-virtual {v0}, Lcom/lge/camera/components/InnerListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1285
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildListView:Lcom/lge/camera/components/InnerListView;

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/InnerListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1287
    :cond_0
    iput-object v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildListView:Lcom/lge/camera/components/InnerListView;

    .line 1290
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    if-eqz v0, :cond_3

    .line 1292
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1293
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1294
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->removeAllViewsInLayout()V

    .line 1295
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1296
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1297
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1299
    :cond_2
    iput-object v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    .line 1302
    :cond_3
    iput-object v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentScrollbarThumb:Landroid/widget/ImageView;

    .line 1307
    invoke-super {p0}, Lcom/lge/camera/controller/SettingController;->onDestroy()V

    .line 1308
    const-string v0, "CameraApp"

    const-string v1, "onDestroy-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    return-void

    .line 1271
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mVideoMainSettingMenu:Lcom/lge/camera/setting/VideoMainSettingMenu;

    invoke-virtual {v0}, Lcom/lge/camera/setting/VideoMainSettingMenu;->close()V

    .line 1272
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mVideoFrontSettingMenu:Lcom/lge/camera/setting/VideoFrontSettingMenu;

    invoke-virtual {v0}, Lcom/lge/camera/setting/VideoFrontSettingMenu;->close()V

    .line 1273
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderMainSetting:Lcom/lge/camera/setting/VideoSetting;

    invoke-virtual {v0}, Lcom/lge/camera/setting/VideoSetting;->close()V

    .line 1274
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderFrontSetting:Lcom/lge/camera/setting/VideoSetting;

    invoke-virtual {v0}, Lcom/lge/camera/setting/VideoSetting;->close()V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1241
    const-string v0, "CameraApp"

    const-string v1, "onPause-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    iget-boolean v0, p0, Lcom/lge/camera/controller/SettingController;->mSettingInit:Z

    if-eqz v0, :cond_0

    .line 1243
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 1244
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCameraMainSetting:Lcom/lge/camera/setting/CameraSetting;

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/CameraSetting;->saveSetting(Landroid/content/Context;)V

    .line 1245
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCameraFrontSetting:Lcom/lge/camera/setting/CameraSetting;

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/CameraSetting;->saveSetting(Landroid/content/Context;)V

    .line 1252
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1253
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 1254
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.RemoveSettingMenu"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 1257
    :cond_1
    invoke-super {p0}, Lcom/lge/camera/controller/SettingController;->onPause()V

    .line 1258
    const-string v0, "CameraApp"

    const-string v1, "onPause-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    return-void

    .line 1247
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderMainSetting:Lcom/lge/camera/setting/VideoSetting;

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/VideoSetting;->saveSetting(Landroid/content/Context;)V

    .line 1248
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderFrontSetting:Lcom/lge/camera/setting/VideoSetting;

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/VideoSetting;->saveSetting(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public removeChildSettingView(Z)V
    .locals 0
    .parameter "isShowAnim"

    .prologue
    .line 488
    return-void
.end method

.method public removeSettingView()V
    .locals 6

    .prologue
    .line 379
    const-string v4, "CameraApp"

    const-string v5, "settingView : removeSettingView - animation start"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v5, 0x7f0901b0

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 382
    .local v2, rl:Landroid/widget/RelativeLayout;
    if-eqz v2, :cond_0

    iget-boolean v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingViewRemoving:Z

    if-eqz v4, :cond_1

    .line 383
    :cond_0
    const-string v4, "CameraApp"

    const-string v5, "settingView : removeSettingView - return"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :goto_0
    return-void

    .line 387
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingViewRemoving:Z

    .line 388
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 389
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 390
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->removeSettingViewAll()V

    .line 424
    :goto_1
    invoke-direct {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->resetChildShowingValues()V

    goto :goto_0

    .line 392
    :cond_2
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 393
    .local v0, anim:Landroid/view/animation/Animation;
    new-instance v4, Lcom/lge/camera/controller/SettingRotatableExpandableController$4;

    invoke-direct {v4, p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController$4;-><init>(Lcom/lge/camera/controller/SettingRotatableExpandableController;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 411
    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 412
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 414
    move-object v1, v2

    .line 415
    .local v1, layout:Landroid/widget/RelativeLayout;
    new-instance v3, Lcom/lge/camera/controller/SettingRotatableExpandableController$5;

    invoke-direct {v3, p0, v1}, Lcom/lge/camera/controller/SettingRotatableExpandableController$5;-><init>(Lcom/lge/camera/controller/SettingRotatableExpandableController;Landroid/widget/RelativeLayout;)V

    .line 421
    .local v3, runnerForClearAnimation:Ljava/lang/Runnable;
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method public removeSettingViewAll()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 428
    const-string v1, "CameraApp"

    const-string v2, "settingView : removeSettingViewAll -start"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v6, :cond_1

    .line 431
    :cond_0
    const-string v1, "CameraApp"

    const-string v2, "settingView : removeSettingView -return, mSettingView is null"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iput-boolean v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingViewRemoving:Z

    .line 482
    :goto_0
    return-void

    .line 436
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.Rotate"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 437
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 439
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 440
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 441
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 442
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->removeAllViewsInLayout()V

    .line 443
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 444
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 445
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 447
    :cond_2
    iput-object v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    .line 449
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentAdapter:Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;

    if-eqz v1, :cond_3

    .line 450
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentAdapter:Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;

    invoke-virtual {v1}, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->close()V

    .line 451
    iput-object v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentAdapter:Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;

    .line 454
    :cond_3
    iput-object v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildListView:Lcom/lge/camera/components/InnerListView;

    .line 455
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildAdapter:Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;

    if-eqz v1, :cond_4

    .line 456
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildAdapter:Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;

    invoke-virtual {v1}, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->close()V

    .line 457
    iput-object v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildAdapter:Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;

    .line 460
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingView:Landroid/view/View;

    const v2, 0x7f09006d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 462
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0900c1

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 463
    .local v0, vg:Landroid/view/ViewGroup;
    if-eqz v0, :cond_5

    .line 464
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 466
    :cond_5
    iput-object v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingView:Landroid/view/View;

    .line 468
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->initSettingMenu()V

    .line 469
    const/4 v1, -0x1

    iput v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mDegree:I

    .line 470
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 471
    iput-boolean v4, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingViewRemoving:Z

    .line 473
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v1

    const/16 v2, 0x19

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v1

    const/16 v2, 0x12

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v1

    const/16 v2, 0xf

    if-eq v1, v2, :cond_6

    .line 477
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 480
    :cond_6
    invoke-direct {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->resetChildShowingValues()V

    .line 481
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v5, v5}, Lcom/lge/camera/ControllerFunction;->showControllerForHideSettingMenu(ZZ)V

    goto/16 :goto_0
.end method

.method public rotateExpandList(I)V
    .locals 3
    .parameter "degree"

    .prologue
    const v2, 0x7f0901b2

    .line 982
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 987
    :goto_0
    return-void

    .line 985
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateLayout;

    .line 986
    .local v0, rl:Lcom/lge/camera/components/RotateLayout;
    invoke-virtual {v0, p1}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    goto :goto_0
.end method

.method protected setLayoutDegree(Landroid/view/View;I)V
    .locals 5
    .parameter "settingMenuLayout"
    .parameter "degree"

    .prologue
    .line 912
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v1, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 913
    .local v1, lcdWidth:I
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 915
    .local v0, lcdHeight:I
    const v4, 0x7f0901b1

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 916
    .local v3, settingSubLayout:Landroid/widget/RelativeLayout;
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 917
    .local v2, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 918
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 919
    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 920
    return-void
.end method

.method public showAnimation()V
    .locals 4

    .prologue
    .line 961
    iget-boolean v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingViewRemoving:Z

    if-eqz v2, :cond_0

    .line 979
    :goto_0
    return-void

    .line 965
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0901b2

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateLayout;

    .line 966
    .local v1, rl:Lcom/lge/camera/components/RotateLayout;
    invoke-virtual {v1}, Lcom/lge/camera/components/RotateLayout;->clearAnimation()V

    .line 967
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 968
    .local v0, anim:Landroid/view/animation/Animation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 969
    invoke-virtual {v1, v0}, Lcom/lge/camera/components/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public declared-synchronized showChildSetting(IILjava/lang/String;)V
    .locals 4
    .parameter "column"
    .parameter "row"
    .parameter "key"

    .prologue
    const/4 v3, -0x1

    .line 531
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I

    if-lez v1, :cond_0

    .line 532
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exit because state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    :goto_0
    monitor-exit p0

    return-void

    .line 536
    :cond_0
    const/16 v1, 0xa

    :try_start_1
    iput v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I

    .line 537
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->doNoChildMenu(IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 538
    const/4 v1, 0x0

    iput v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 531
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 542
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    invoke-direct {p0, v1, p2}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->calcWantedRow(Landroid/widget/ListView;I)I

    move-result v0

    .line 543
    .local v0, wantedRow:I
    if-ne v0, v3, :cond_2

    .line 544
    const/4 v1, 0x0

    iput v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I

    goto :goto_0

    .line 548
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempParentLayout:Landroid/view/ViewGroup;

    .line 549
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempParentLayout:Landroid/view/ViewGroup;

    const v2, 0x7f0901aa

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempChildLayout:Landroid/view/ViewGroup;

    .line 551
    iput p1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempColumn:I

    .line 552
    iput p2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempRow:I

    .line 553
    iput-object p3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempKey:Ljava/lang/String;

    .line 556
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    if-gt v1, v3, :cond_3

    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-gt v1, v3, :cond_3

    .line 559
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempChildLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->openChildView(Landroid/view/ViewGroup;IILjava/lang/String;)V

    goto :goto_0

    .line 561
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-eq v1, p2, :cond_4

    .line 566
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildLayout:Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->closeChildView(Landroid/view/ViewGroup;Z)V

    goto :goto_0

    .line 568
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    if-ne v1, p1, :cond_5

    .line 571
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempChildLayout:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->closeChildView(Landroid/view/ViewGroup;Z)V

    goto :goto_0

    .line 578
    :cond_5
    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mTempChildLayout:Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->closeChildView(Landroid/view/ViewGroup;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public startRotation(I)V
    .locals 4
    .parameter "degree"

    .prologue
    const/4 v3, 0x0

    .line 923
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDegree = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mDegree:I

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

    .line 925
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->checkMediator()Z

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
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->isNullSettingView()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingViewRemoving:Z

    if-nez v0, :cond_1

    .line 931
    iget v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mDegree:I

    if-ne v0, p1, :cond_2

    .line 942
    :cond_1
    :goto_0
    return-void

    .line 935
    :cond_2
    iput p1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mDegree:I

    .line 936
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->hideAnimation()V

    .line 937
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mOpenChildLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v3, v3}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->closeChildView(Landroid/view/ViewGroup;ZZ)V

    .line 938
    invoke-direct {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->addParentMenuItem()V

    .line 939
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->rotateExpandList(I)V

    .line 940
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->showAnimation()V

    goto :goto_0
.end method

.method public updateSetting()V
    .locals 1

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mParentAdapter:Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->update()V

    .line 1236
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mChildAdapter:Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;->update()V

    .line 1237
    return-void
.end method
