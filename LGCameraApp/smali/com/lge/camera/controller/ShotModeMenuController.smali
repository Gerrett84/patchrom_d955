.class public abstract Lcom/lge/camera/controller/ShotModeMenuController;
.super Lcom/lge/camera/controller/Controller;
.source "ShotModeMenuController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    }
.end annotation


# static fields
.field protected static final ANI_DURATION:I = 0x12c

.field protected static final BACK_COVER_ANI_DURATION:I = 0x1f4

.field protected static final COMMAND_DELAY:I = 0x12c

.field protected static final MODE_MENU_VIEW_LIST:Ljava/lang/String; = "mode_menu_view_list"

.field protected static final VIEW_MODE_GRID:I = 0x1

.field protected static final VIEW_MODE_LIST:I


# instance fields
.field protected CENTER_POS:I

.field protected LAYOUT_HEIGHT:I

.field protected LAYOUT_WIDTH:I

.field protected NAVI_MARGIN:I

.field protected SELECTED_POS:I

.field protected mAutoButtonClickListener:Landroid/view/View$OnClickListener;

.field protected mAutoModeButton:Lcom/lge/camera/components/RotateImageButton;

.field protected mChangeButton:Lcom/lge/camera/components/RotateImageView;

.field protected mChangeButtonClickListener:Landroid/view/View$OnClickListener;

.field protected mContentView:Landroid/view/View;

.field protected mDescText:Landroid/widget/TextView;

.field protected mGridAdapter:Lcom/lge/camera/setting/ShotModeMenuGridAdapter;

.field protected mGridMenuView:Landroid/widget/GridView;

.field protected mGridViewTouchListener:Landroid/view/View$OnTouchListener;

.field protected mHide:Landroid/view/animation/Animation;

.field private mImageCacheThread:Ljava/lang/Thread;

.field protected mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

.field protected mListView:Lcom/lge/camera/components/ModeMenuListView;

.field protected mModeItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mModeMenuClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field protected mOnBackCoverTouchListener:Landroid/view/View$OnTouchListener;

.field protected mOnModeMenuListListener:Lcom/lge/camera/components/ModeMenuListView$OnModeMenuListListener;

.field protected mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field protected mScrollStarted:Ljava/lang/Runnable;

.field protected mScrollState:I

.field protected mScrollStateIdle:Ljava/lang/Runnable;

.field protected mScrollView:Lcom/lge/camera/components/CustomHelpScrollView;

.field protected mShotModeMenuView:Landroid/view/View;

.field protected mShow:Landroid/view/animation/Animation;

.field protected mShowAnimation:Z

.field protected mTitleText:Landroid/widget/TextView;

.field protected mViewMode:I


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 5
    .parameter "function"

    .prologue
    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/Controller;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 61
    iput-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    .line 62
    iput-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    .line 63
    iput-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    .line 64
    iput-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridAdapter:Lcom/lge/camera/setting/ShotModeMenuGridAdapter;

    .line 65
    iput-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    .line 66
    iput-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mContentView:Landroid/view/View;

    .line 67
    iput-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mTitleText:Landroid/widget/TextView;

    .line 68
    iput-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mDescText:Landroid/widget/TextView;

    .line 69
    iput-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mChangeButton:Lcom/lge/camera/components/RotateImageView;

    .line 70
    iput-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mAutoModeButton:Lcom/lge/camera/components/RotateImageButton;

    .line 71
    iput-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mScrollView:Lcom/lge/camera/components/CustomHelpScrollView;

    .line 73
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mViewMode:I

    .line 75
    iput v2, p0, Lcom/lge/camera/controller/ShotModeMenuController;->LAYOUT_WIDTH:I

    .line 76
    iput v2, p0, Lcom/lge/camera/controller/ShotModeMenuController;->LAYOUT_HEIGHT:I

    .line 78
    iput v2, p0, Lcom/lge/camera/controller/ShotModeMenuController;->NAVI_MARGIN:I

    .line 79
    iput v2, p0, Lcom/lge/camera/controller/ShotModeMenuController;->CENTER_POS:I

    .line 80
    iput v2, p0, Lcom/lge/camera/controller/ShotModeMenuController;->SELECTED_POS:I

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShow:Landroid/view/animation/Animation;

    .line 85
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mHide:Landroid/view/animation/Animation;

    .line 159
    iput-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mImageCacheThread:Ljava/lang/Thread;

    .line 706
    iput v2, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mScrollState:I

    .line 707
    new-instance v0, Lcom/lge/camera/controller/ShotModeMenuController$3;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/ShotModeMenuController$3;-><init>(Lcom/lge/camera/controller/ShotModeMenuController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 762
    new-instance v0, Lcom/lge/camera/controller/ShotModeMenuController$4;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/ShotModeMenuController$4;-><init>(Lcom/lge/camera/controller/ShotModeMenuController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeMenuClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 831
    iput-boolean v2, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShowAnimation:Z

    .line 832
    new-instance v0, Lcom/lge/camera/controller/ShotModeMenuController$5;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/ShotModeMenuController$5;-><init>(Lcom/lge/camera/controller/ShotModeMenuController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mOnModeMenuListListener:Lcom/lge/camera/components/ModeMenuListView$OnModeMenuListListener;

    .line 872
    new-instance v0, Lcom/lge/camera/controller/ShotModeMenuController$6;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/ShotModeMenuController$6;-><init>(Lcom/lge/camera/controller/ShotModeMenuController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mChangeButtonClickListener:Landroid/view/View$OnClickListener;

    .line 920
    new-instance v0, Lcom/lge/camera/controller/ShotModeMenuController$7;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/ShotModeMenuController$7;-><init>(Lcom/lge/camera/controller/ShotModeMenuController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mAutoButtonClickListener:Landroid/view/View$OnClickListener;

    .line 927
    new-instance v0, Lcom/lge/camera/controller/ShotModeMenuController$8;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/ShotModeMenuController$8;-><init>(Lcom/lge/camera/controller/ShotModeMenuController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mOnBackCoverTouchListener:Landroid/view/View$OnTouchListener;

    .line 958
    new-instance v0, Lcom/lge/camera/controller/ShotModeMenuController$9;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/ShotModeMenuController$9;-><init>(Lcom/lge/camera/controller/ShotModeMenuController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 989
    new-instance v0, Lcom/lge/camera/controller/ShotModeMenuController$10;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/ShotModeMenuController$10;-><init>(Lcom/lge/camera/controller/ShotModeMenuController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mScrollStarted:Ljava/lang/Runnable;

    .line 999
    new-instance v0, Lcom/lge/camera/controller/ShotModeMenuController$11;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/ShotModeMenuController$11;-><init>(Lcom/lge/camera/controller/ShotModeMenuController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mScrollStateIdle:Ljava/lang/Runnable;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/ShotModeMenuController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/ShotModeMenuController;->updateGridView(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/ShotModeMenuController;)Ljava/lang/Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mImageCacheThread:Ljava/lang/Thread;

    return-object v0
.end method

.method private addFooterView()V
    .locals 7

    .prologue
    .line 285
    iget-object v4, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    if-eqz v4, :cond_0

    .line 286
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a0297

    invoke-static {v4, v5}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v3

    .line 287
    .local v3, width:I
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a0298

    invoke-static {v4, v5}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    .line 288
    .local v0, height:I
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    div-int/lit8 v4, v3, 0x2

    div-int/lit8 v5, v0, 0x2

    invoke-direct {v1, v4, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 289
    .local v1, params:Landroid/widget/AbsListView$LayoutParams;
    new-instance v2, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 290
    .local v2, view:Landroid/widget/ImageView;
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    iget-object v4, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v6}, Lcom/lge/camera/components/ModeMenuListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 293
    .end local v0           #height:I
    .end local v1           #params:Landroid/widget/AbsListView$LayoutParams;
    .end local v2           #view:Landroid/widget/ImageView;
    .end local v3           #width:I
    :cond_0
    return-void
.end method

.method private addHeaderView()V
    .locals 7

    .prologue
    .line 274
    iget-object v4, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    if-eqz v4, :cond_0

    .line 275
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a0297

    invoke-static {v4, v5}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v3

    .line 276
    .local v3, width:I
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a0298

    invoke-static {v4, v5}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    .line 277
    .local v0, height:I
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    div-int/lit8 v4, v3, 0x2

    div-int/lit8 v5, v0, 0x2

    invoke-direct {v1, v4, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 278
    .local v1, params:Landroid/widget/AbsListView$LayoutParams;
    new-instance v2, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 279
    .local v2, view:Landroid/widget/ImageView;
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    iget-object v4, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v6}, Lcom/lge/camera/components/ModeMenuListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 282
    .end local v0           #height:I
    .end local v1           #params:Landroid/widget/AbsListView$LayoutParams;
    .end local v2           #view:Landroid/widget/ImageView;
    .end local v3           #width:I
    :cond_0
    return-void
.end method

.method private makeAllImageResources()V
    .locals 1

    .prologue
    .line 1084
    new-instance v0, Lcom/lge/camera/controller/ShotModeMenuController$12;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/ShotModeMenuController$12;-><init>(Lcom/lge/camera/controller/ShotModeMenuController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mImageCacheThread:Ljava/lang/Thread;

    .line 1098
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mImageCacheThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1099
    return-void
.end method

.method private releaseAllImageResources()V
    .locals 3

    .prologue
    .line 1102
    iget-object v2, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 1103
    iget-object v2, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;

    .line 1104
    .local v1, item:Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    iget-object v2, v1, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->mDrawable:Landroid/graphics/drawable/LevelListDrawable;

    if-eqz v2, :cond_0

    .line 1105
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->mDrawable:Landroid/graphics/drawable/LevelListDrawable;

    goto :goto_0

    .line 1108
    .end local v1           #item:Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1110
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private setDefaultAutoButton()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 296
    iget-object v6, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    const v7, 0x7f0901dc

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lge/camera/components/RotateImageButton;

    iput-object v6, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mAutoModeButton:Lcom/lge/camera/components/RotateImageButton;

    .line 297
    iget-object v6, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mAutoModeButton:Lcom/lge/camera/components/RotateImageButton;

    iget-object v7, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mAutoButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Lcom/lge/camera/components/RotateImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    iget-object v6, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mAutoModeButton:Lcom/lge/camera/components/RotateImageButton;

    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v8, 0x7f0b0343

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lge/camera/components/RotateImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v6, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mAutoModeButton:Lcom/lge/camera/components/RotateImageButton;

    const/high16 v7, 0x3f80

    invoke-virtual {v6, v7}, Lcom/lge/camera/components/RotateImageButton;->setTextScaleX(F)V

    .line 301
    iget-object v6, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mAutoModeButton:Lcom/lge/camera/components/RotateImageButton;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/lge/camera/components/RotateImageButton;->setTextStyle(I)V

    .line 302
    iget-object v6, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mAutoModeButton:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v6}, Lcom/lge/camera/components/RotateImageButton;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v5

    .line 303
    .local v5, tp:Landroid/graphics/Paint;
    iget-object v6, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mAutoModeButton:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v6}, Lcom/lge/camera/components/RotateImageButton;->getTextSize()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 305
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02023a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 306
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x4100

    invoke-static {v6, v7}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v2

    .line 307
    .local v2, drawablePadding:F
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float v0, v6, v2

    .line 308
    .local v0, buttonTargetWidth:F
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v7, 0x7f0b00cc

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 309
    .local v3, mearsureText:F
    const/4 v4, 0x0

    .line 311
    .local v4, scaleFactor:F
    invoke-static {v3, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v0, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v3, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-eqz v6, :cond_1

    .line 316
    invoke-static {v3, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-ltz v6, :cond_0

    .line 317
    div-float v4, v0, v3

    .line 319
    :cond_0
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "scaleFactor = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-static {v4, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-eqz v6, :cond_1

    .line 321
    iget-object v6, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mAutoModeButton:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v6, v4}, Lcom/lge/camera/components/RotateImageButton;->setTextScaleX(F)V

    .line 324
    :cond_1
    return-void
.end method

.method private showMenuForEffects()V
    .locals 3

    .prologue
    .line 814
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isDualCameraActive()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isDualRecordingActive()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isSmartZoomRecordingActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 815
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.ShowPIPFrameSubMenu"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 821
    :cond_1
    :goto_0
    return-void

    .line 816
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isLiveEffectActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 817
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 818
    .local v0, isOpen:Landroid/os/Bundle;
    const-string v1, "menu_open"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 819
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.ShowLiveEffectSubMenuDrawer"

    invoke-interface {v1, v2, v0}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private showViewForShotMode()V
    .locals 3

    .prologue
    .line 824
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 825
    .local v0, shotMode:Ljava/lang/String;
    const-string v1, "shotmode_front_beauty"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "shotmode_main_beauty"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 827
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->showBeautyshotController(Z)V

    .line 829
    :cond_1
    return-void
.end method

.method private updateGridView(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 742
    iget-object v2, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridAdapter:Lcom/lge/camera/setting/ShotModeMenuGridAdapter;

    if-nez v2, :cond_1

    .line 744
    :cond_0
    const-string v2, "CameraApp"

    const-string v3, "mGridMenuView is null = "

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    :goto_0
    return-void

    .line 747
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridAdapter:Lcom/lge/camera/setting/ShotModeMenuGridAdapter;

    invoke-virtual {v3}, Lcom/lge/camera/setting/ShotModeMenuGridAdapter;->getSelectedItem()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 748
    .local v1, v:Landroid/view/View;
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current scenemode index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridAdapter:Lcom/lge/camera/setting/ShotModeMenuGridAdapter;

    invoke-virtual {v4}, Lcom/lge/camera/setting/ShotModeMenuGridAdapter;->getSelectedItem()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    if-nez v1, :cond_2

    .line 750
    const-string v2, "CameraApp"

    const-string v3, "v is null = "

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 754
    :cond_2
    const v2, 0x7f0901df

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 755
    .local v0, imgView:Landroid/widget/ImageView;
    const v2, 0x7f020443

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 756
    iget-object v2, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridAdapter:Lcom/lge/camera/setting/ShotModeMenuGridAdapter;

    invoke-virtual {v2, p1}, Lcom/lge/camera/setting/ShotModeMenuGridAdapter;->setSelectedItem(I)V

    .line 757
    iget-object v2, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridAdapter:Lcom/lge/camera/setting/ShotModeMenuGridAdapter;

    invoke-virtual {v2}, Lcom/lge/camera/setting/ShotModeMenuGridAdapter;->notifyDataSetChanged()V

    .line 758
    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_0
.end method

.method private waitImageCacheThread(Z)V
    .locals 3
    .parameter "cancel"

    .prologue
    .line 1070
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mImageCacheThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mImageCacheThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1071
    if-eqz p1, :cond_0

    .line 1072
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mImageCacheThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 1075
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mImageCacheThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1079
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mImageCacheThread:Ljava/lang/Thread;

    .line 1081
    :cond_1
    return-void

    .line 1076
    :catch_0
    move-exception v0

    .line 1077
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "CameraApp"

    const-string v2, "Image cache thread join. "

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected checkComponents()Z
    .locals 1

    .prologue
    .line 1038
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridAdapter:Lcom/lge/camera/setting/ShotModeMenuGridAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mTitleText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mDescText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mChangeButton:Lcom/lge/camera/components/RotateImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mAutoModeButton:Lcom/lge/camera/components/RotateImageButton;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkScrollContents()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1030
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mScrollView:Lcom/lge/camera/components/CustomHelpScrollView;

    if-eqz v0, :cond_0

    .line 1031
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mScrollView:Lcom/lge/camera/components/CustomHelpScrollView;

    invoke-virtual {v0}, Lcom/lge/camera/components/CustomHelpScrollView;->getScrollY()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1032
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mScrollView:Lcom/lge/camera/components/CustomHelpScrollView;

    invoke-virtual {v0, v1, v1}, Lcom/lge/camera/components/CustomHelpScrollView;->scrollTo(II)V

    .line 1035
    :cond_0
    return-void
.end method

.method protected displayShotModeMenuView()V
    .locals 14

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 161
    const-string v8, "CameraApp"

    const-string v9, "displayShotModeMenuView - start"

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v9, "com.lge.camera.command.ExitZoomBrightnessInteraction"

    invoke-interface {v8, v9}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/lge/camera/controller/ShotModeMenuController;->makeItemList()V

    .line 166
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_0

    .line 167
    const-string v8, "CameraApp"

    const-string v9, "Item List is empty."

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-direct {p0}, Lcom/lge/camera/controller/ShotModeMenuController;->makeAllImageResources()V

    .line 173
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    if-nez v8, :cond_1

    .line 174
    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v9, 0x7f030044

    invoke-interface {v8, v9}, Lcom/lge/camera/ControllerFunction;->inflateView(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    .line 175
    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v9, 0x7f0900c1

    invoke-interface {v8, v9}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 176
    .local v7, vg:Landroid/view/ViewGroup;
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 181
    .end local v7           #vg:Landroid/view/ViewGroup;
    :cond_1
    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v9, 0x7f0901d4

    invoke-interface {v8, v9}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mContentView:Landroid/view/View;

    .line 182
    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v9, 0x7f0901d5

    invoke-interface {v8, v9}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mTitleText:Landroid/widget/TextView;

    .line 183
    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v9, 0x7f0901d6

    invoke-interface {v8, v9}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mDescText:Landroid/widget/TextView;

    .line 185
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    .line 187
    new-instance v8, Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    invoke-direct {v8, v9, v10}, Lcom/lge/camera/setting/ShotModeMenuListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    .line 188
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    const v9, 0x7f0901d8

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lge/camera/components/ModeMenuListView;

    iput-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    .line 195
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    iget-object v9, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    invoke-virtual {v8, v9}, Lcom/lge/camera/components/ModeMenuListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 196
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    invoke-virtual {v8, v11}, Lcom/lge/camera/components/ModeMenuListView;->setFocusable(Z)V

    .line 197
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    invoke-virtual {v8, v11}, Lcom/lge/camera/components/ModeMenuListView;->setSelected(Z)V

    .line 198
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/lge/camera/components/ModeMenuListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 199
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    iget-object v9, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeMenuClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v8, v9}, Lcom/lge/camera/components/ModeMenuListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 200
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    iget-object v9, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mOnModeMenuListListener:Lcom/lge/camera/components/ModeMenuListView$OnModeMenuListListener;

    invoke-virtual {v8, v9}, Lcom/lge/camera/components/ModeMenuListView;->setOnModeMenuListListener(Lcom/lge/camera/components/ModeMenuListView$OnModeMenuListListener;)V

    .line 201
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    iget-object v9, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v8, v9}, Lcom/lge/camera/components/ModeMenuListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 203
    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/lge/camera/controller/ShotModeMenuController;->isLandscape(I)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v5, 0x4

    .line 206
    .local v5, rowNum:I
    :goto_1
    new-instance v8, Lcom/lge/camera/setting/ShotModeMenuGridAdapter;

    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    invoke-direct {v8, v9, v10, v5}, Lcom/lge/camera/setting/ShotModeMenuGridAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    iput-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridAdapter:Lcom/lge/camera/setting/ShotModeMenuGridAdapter;

    .line 207
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    const v9, 0x7f0901da

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/GridView;

    iput-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    .line 208
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    invoke-virtual {v8, v11}, Landroid/widget/GridView;->setFocusable(Z)V

    .line 209
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    iget-object v9, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridAdapter:Lcom/lge/camera/setting/ShotModeMenuGridAdapter;

    invoke-virtual {v8, v9}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 210
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    invoke-virtual {v8, v11}, Landroid/widget/GridView;->setSelected(Z)V

    .line 211
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    const v9, 0x7f02005b

    invoke-virtual {v8, v9}, Landroid/widget/GridView;->setSelector(I)V

    .line 212
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    iget-object v9, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeMenuClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 213
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    iget-object v9, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v8, v9}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 215
    invoke-virtual {p0}, Lcom/lge/camera/controller/ShotModeMenuController;->getCurrentItem()I

    move-result v8

    iput v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->SELECTED_POS:I

    .line 216
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    invoke-virtual {v8}, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->getMiddleValue()I

    move-result v8

    iget v9, p0, Lcom/lge/camera/controller/ShotModeMenuController;->SELECTED_POS:I

    add-int/2addr v8, v9

    iput v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->CENTER_POS:I

    .line 218
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    const v9, 0x7f0901d3

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lge/camera/components/CustomHelpScrollView;

    iput-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mScrollView:Lcom/lge/camera/components/CustomHelpScrollView;

    .line 220
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    const v9, 0x7f0901de

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lge/camera/components/RotateImageView;

    iput-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mChangeButton:Lcom/lge/camera/components/RotateImageView;

    .line 221
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mChangeButton:Lcom/lge/camera/components/RotateImageView;

    iget-object v9, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mChangeButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Lcom/lge/camera/components/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    invoke-direct {p0}, Lcom/lge/camera/controller/ShotModeMenuController;->setDefaultAutoButton()V

    .line 225
    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "Main_CameraAppConfig"

    invoke-virtual {v8, v9, v11}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 226
    .local v4, pref:Landroid/content/SharedPreferences;
    if-eqz v4, :cond_2

    .line 227
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    const v9, 0x7f0901d0

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 228
    .local v0, contentsLayout:Landroid/view/View;
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    const v9, 0x7f0901d7

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 229
    .local v2, listLayout:Landroid/view/View;
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    const v9, 0x7f0901d9

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 230
    .local v1, gridLayout:Landroid/view/View;
    const-string v8, "mode_menu_view_list"

    invoke-interface {v4, v8, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 231
    iput v11, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mViewMode:I

    .line 232
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 233
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 234
    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 235
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mChangeButton:Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v8, v11}, Lcom/lge/camera/components/RotateImageView;->setImageLevel(I)V

    .line 236
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mChangeButton:Lcom/lge/camera/components/RotateImageView;

    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v10, 0x7f0b0342

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/lge/camera/components/RotateImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 247
    .end local v0           #contentsLayout:Landroid/view/View;
    .end local v1           #gridLayout:Landroid/view/View;
    .end local v2           #listLayout:Landroid/view/View;
    :cond_2
    :goto_2
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    const v9, 0x7f09006d

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mOnBackCoverTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 249
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    const v9, 0x7f0901cd

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 250
    .local v6, shotModeMenuLayout:Landroid/view/View;
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSoftKeyNavigationBarModel()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 251
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 252
    .local v3, marginParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v3}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 254
    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 255
    const/16 v8, 0x9

    invoke-virtual {v3, v8, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 256
    iget v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->NAVI_MARGIN:I

    iput v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 261
    :goto_3
    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    .end local v3           #marginParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v8

    invoke-virtual {p0, v6, v8, v11}, Lcom/lge/camera/controller/ShotModeMenuController;->setLayoutDegree(Landroid/view/View;IZ)V

    .line 266
    invoke-direct {p0, v11}, Lcom/lge/camera/controller/ShotModeMenuController;->waitImageCacheThread(Z)V

    .line 268
    invoke-virtual {p0}, Lcom/lge/camera/controller/ShotModeMenuController;->showBackcoverAnimation()V

    .line 269
    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v9, 0x1b

    invoke-interface {v8, v9}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 270
    const-string v8, "CameraApp"

    const-string v9, "displayShotModeMenuView - end"

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 203
    .end local v4           #pref:Landroid/content/SharedPreferences;
    .end local v5           #rowNum:I
    .end local v6           #shotModeMenuLayout:Landroid/view/View;
    :cond_4
    const/4 v5, 0x3

    goto/16 :goto_1

    .line 238
    .restart local v0       #contentsLayout:Landroid/view/View;
    .restart local v1       #gridLayout:Landroid/view/View;
    .restart local v2       #listLayout:Landroid/view/View;
    .restart local v4       #pref:Landroid/content/SharedPreferences;
    .restart local v5       #rowNum:I
    :cond_5
    iput v12, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mViewMode:I

    .line 239
    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    .line 240
    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 241
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 242
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mChangeButton:Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v8, v12}, Lcom/lge/camera/components/RotateImageView;->setImageLevel(I)V

    .line 243
    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mChangeButton:Lcom/lge/camera/components/RotateImageView;

    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v10, 0x7f0b0341

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/lge/camera/components/RotateImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 258
    .end local v0           #contentsLayout:Landroid/view/View;
    .end local v1           #gridLayout:Landroid/view/View;
    .end local v2           #listLayout:Landroid/view/View;
    .restart local v3       #marginParams:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v6       #shotModeMenuLayout:Landroid/view/View;
    :cond_6
    const/16 v8, 0xa

    invoke-virtual {v3, v8, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 259
    iget v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->NAVI_MARGIN:I

    iput v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_3
.end method

.method protected abstract getCurrentItem()I
.end method

.method protected abstract getCurrentItemTitle()Ljava/lang/String;
.end method

.method public getCurrentSelectedTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1053
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 1054
    monitor-enter p0

    .line 1055
    :try_start_0
    const-string v0, ""

    .line 1056
    .local v0, title:Ljava/lang/String;
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 1057
    invoke-virtual {p0}, Lcom/lge/camera/controller/ShotModeMenuController;->makeItemList()V

    .line 1058
    invoke-virtual {p0}, Lcom/lge/camera/controller/ShotModeMenuController;->getCurrentItemTitle()Ljava/lang/String;

    move-result-object v0

    .line 1059
    invoke-direct {p0}, Lcom/lge/camera/controller/ShotModeMenuController;->releaseAllImageResources()V

    .line 1063
    :goto_0
    monitor-exit p0

    .line 1066
    .end local v0           #title:Ljava/lang/String;
    :goto_1
    return-object v0

    .line 1061
    .restart local v0       #title:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/ShotModeMenuController;->getCurrentItemTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1064
    .end local v0           #title:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1066
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 553
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/ShotModeMenuController;->hide(Z)V

    .line 554
    return-void
.end method

.method public hide(Z)V
    .locals 5
    .parameter "showAnimation"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 557
    iget-boolean v1, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 560
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    if-eqz v1, :cond_2

    .line 561
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/ModeMenuListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 563
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    if-eqz v1, :cond_3

    .line 564
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 566
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    const v2, 0x7f09006d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 567
    .local v0, backCover:Landroid/view/View;
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mAutoModeButton:Lcom/lge/camera/components/RotateImageButton;

    if-eqz v1, :cond_4

    .line 568
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mAutoModeButton:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/RotateImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 569
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mAutoModeButton:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v1, v4}, Lcom/lge/camera/components/RotateImageButton;->setEnabled(Z)V

    .line 571
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mChangeButton:Lcom/lge/camera/components/RotateImageView;

    if-eqz v1, :cond_5

    .line 572
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mChangeButton:Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 573
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mChangeButton:Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v1, v4}, Lcom/lge/camera/components/RotateImageView;->setEnabled(Z)V

    .line 575
    :cond_5
    if-eqz v0, :cond_6

    .line 576
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 578
    :cond_6
    if-eqz p1, :cond_9

    .line 579
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    invoke-virtual {p0, v1, v4}, Lcom/lge/camera/controller/ShotModeMenuController;->shotModeMenuAnimation(Landroid/view/View;Z)V

    .line 583
    :goto_1
    invoke-direct {p0}, Lcom/lge/camera/controller/ShotModeMenuController;->showMenuForEffects()V

    .line 584
    invoke-direct {p0}, Lcom/lge/camera/controller/ShotModeMenuController;->showViewForShotMode()V

    .line 586
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->needProgressBar()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 587
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->recordingControllerShow()V

    .line 590
    :cond_7
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v1

    const/16 v2, 0xf

    if-eq v1, v2, :cond_8

    .line 591
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 593
    :cond_8
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

    .line 595
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->showFocus()Z

    goto/16 :goto_0

    .line 581
    :cond_9
    invoke-virtual {p0}, Lcom/lge/camera/controller/ShotModeMenuController;->removeShotModeMenuView()V

    goto :goto_1
.end method

.method public initController()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x12c

    .line 92
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShow:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 93
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShow:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 94
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mHide:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 95
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mHide:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 97
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a028c

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->LAYOUT_WIDTH:I

    .line 98
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a028d

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->LAYOUT_HEIGHT:I

    .line 100
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a001d

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->NAVI_MARGIN:I

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    .line 104
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->updateModeMenuIndicator()V

    .line 105
    return-void
.end method

.method protected isCurrentCentered()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 622
    const-string v7, "CameraApp"

    const-string v8, "isCurrentCentered"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    iget-object v7, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    invoke-virtual {v7}, Lcom/lge/camera/components/ModeMenuListView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_2

    .line 626
    iget-object v7, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    invoke-virtual {v8}, Lcom/lge/camera/components/ModeMenuListView;->getMeasuredWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    iget-object v9, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    invoke-virtual {v9}, Lcom/lge/camera/components/ModeMenuListView;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {v7, v8, v9}, Lcom/lge/camera/components/ModeMenuListView;->pointToPosition(II)I

    move-result v0

    .line 627
    .local v0, center_pos:I
    iget-object v7, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    invoke-virtual {v7}, Lcom/lge/camera/components/ModeMenuListView;->getMeasuredHeight()I

    move-result v7

    iget-object v8, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    invoke-virtual {v8, v10}, Lcom/lge/camera/components/ModeMenuListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v2, v7, 0x2

    .line 628
    .local v2, destY:I
    iget-object v7, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    invoke-virtual {v7}, Lcom/lge/camera/components/ModeMenuListView;->getFirstVisiblePosition()I

    move-result v3

    .line 629
    .local v3, firstPos:I
    iget-object v7, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    sub-int v8, v0, v3

    invoke-virtual {v7, v8}, Lcom/lge/camera/components/ModeMenuListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 630
    .local v6, view:Landroid/view/View;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v7

    :goto_0
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 632
    .local v1, childY:I
    sub-int v7, v1, v2

    if-eqz v7, :cond_0

    .line 633
    iget-object v7, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    sub-int v8, v1, v2

    invoke-virtual {v7, v8, v10}, Lcom/lge/camera/components/ModeMenuListView;->smoothScrollBy(II)V

    .line 636
    :cond_0
    move v5, v0

    .line 637
    .local v5, pos:I
    iput v5, p0, Lcom/lge/camera/controller/ShotModeMenuController;->CENTER_POS:I

    .line 638
    iget-object v7, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    invoke-virtual {v7, v5}, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->getItem(I)Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;

    move-result-object v4

    .line 639
    .local v4, item:Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    if-eqz v4, :cond_1

    iget-object v7, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mTitleText:Landroid/widget/TextView;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mDescText:Landroid/widget/TextView;

    if-eqz v7, :cond_1

    .line 642
    iget-object v7, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 643
    iget-object v7, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mDescText:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 645
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/ShotModeMenuController;->checkScrollContents()V

    .line 647
    .end local v0           #center_pos:I
    .end local v1           #childY:I
    .end local v2           #destY:I
    .end local v3           #firstPos:I
    .end local v4           #item:Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    .end local v5           #pos:I
    .end local v6           #view:Landroid/view/View;
    :cond_2
    return-void

    .line 630
    .restart local v0       #center_pos:I
    .restart local v2       #destY:I
    .restart local v3       #firstPos:I
    .restart local v6       #view:Landroid/view/View;
    :cond_3
    const/4 v7, 0x0

    goto :goto_0
.end method

.method protected isLandscape(I)Z
    .locals 3
    .parameter "degree"

    .prologue
    const/4 v0, 0x0

    .line 617
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/16 v2, 0xb4

    invoke-static {v1, p1, v2}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isVisible()Z
    .locals 4

    .prologue
    const v3, 0x7f0901cc

    const/4 v1, 0x0

    .line 607
    iget-boolean v2, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v2, :cond_0

    .line 608
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 609
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 610
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 613
    .end local v0           #view:Landroid/view/View;
    :cond_0
    return v1
.end method

.method protected abstract makeItemList()V
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1024
    const-string v0, "CameraApp"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onPause()V

    .line 1027
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 1012
    const-string v1, "CameraApp"

    const-string v2, "onPause-start"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    invoke-virtual {p0}, Lcom/lge/camera/controller/ShotModeMenuController;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1014
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1015
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "immediately"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1016
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.HideModeMenu"

    invoke-interface {v1, v2, v0}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1018
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onPause()V

    .line 1019
    const-string v1, "CameraApp"

    const-string v2, "onPause-end"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    return-void
.end method

.method protected removeShotModeMenuView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 327
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    if-eqz v1, :cond_1

    .line 328
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/ModeMenuListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 329
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/ModeMenuListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 330
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/ModeMenuListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 331
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/ModeMenuListView;->setOnModeMenuListListener(Lcom/lge/camera/components/ModeMenuListView$OnModeMenuListListener;)V

    .line 333
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    invoke-virtual {v1}, Lcom/lge/camera/components/ModeMenuListView;->removeAllViewsInLayout()V

    .line 334
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    invoke-virtual {v1}, Lcom/lge/camera/components/ModeMenuListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 335
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    invoke-virtual {v1}, Lcom/lge/camera/components/ModeMenuListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 336
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/ModeMenuListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 338
    :cond_0
    iput-object v3, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    .line 341
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    if-eqz v1, :cond_3

    .line 342
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 343
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 344
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 346
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->removeAllViewsInLayout()V

    .line 347
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 348
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 349
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 351
    :cond_2
    iput-object v3, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    .line 354
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 355
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 356
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0900c1

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 357
    .local v0, vg:Landroid/view/ViewGroup;
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 358
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 360
    :cond_4
    iput-object v3, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    .line 362
    .end local v0           #vg:Landroid/view/ViewGroup;
    :cond_5
    iput-object v3, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    .line 363
    iput-object v3, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridAdapter:Lcom/lge/camera/setting/ShotModeMenuGridAdapter;

    .line 365
    iput-object v3, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mContentView:Landroid/view/View;

    .line 366
    iput-object v3, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mTitleText:Landroid/widget/TextView;

    .line 367
    iput-object v3, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mDescText:Landroid/widget/TextView;

    .line 368
    iput-object v3, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mScrollView:Lcom/lge/camera/components/CustomHelpScrollView;

    .line 371
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mChangeButton:Lcom/lge/camera/components/RotateImageView;

    if-eqz v1, :cond_6

    .line 372
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mChangeButton:Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    iput-object v3, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mChangeButton:Lcom/lge/camera/components/RotateImageView;

    .line 375
    :cond_6
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mAutoModeButton:Lcom/lge/camera/components/RotateImageButton;

    if-eqz v1, :cond_7

    .line 376
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mAutoModeButton:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/RotateImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    iput-object v3, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mAutoModeButton:Lcom/lge/camera/components/RotateImageButton;

    .line 379
    :cond_7
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/lge/camera/controller/ShotModeMenuController;->waitImageCacheThread(Z)V

    .line 380
    invoke-direct {p0}, Lcom/lge/camera/controller/ShotModeMenuController;->releaseAllImageResources()V

    .line 382
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 383
    return-void
.end method

.method protected abstract setDefaultMode()V
.end method

.method protected setLayoutDegree(Landroid/view/View;IZ)V
    .locals 30
    .parameter "shotModeMenuLayout"
    .parameter "degree"
    .parameter "animation"

    .prologue
    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    move-object/from16 v26, v0

    const v27, 0x7f0901ce

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/lge/camera/components/RotateLayout;

    .line 398
    .local v24, rl:Lcom/lge/camera/components/RotateLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    move-object/from16 v26, v0

    const v27, 0x7f0901cf

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 400
    .local v19, innerLayout:Landroid/view/View;
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Landroid/widget/RelativeLayout$LayoutParams;

    .line 401
    .local v20, innerParams:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    move-object/from16 v26, v0

    const v27, 0x7f0901d1

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/lge/camera/components/RotateLayout;

    .line 403
    .local v12, contentRl:Lcom/lge/camera/components/RotateLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    move-object/from16 v26, v0

    const v27, 0x7f0901db

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 404
    .local v5, autoModeButtonLayout:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    move-object/from16 v26, v0

    const v27, 0x7f0901dd

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 406
    .local v7, changeButtonLayout:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 407
    .local v4, autoButtonParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v4}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 408
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 409
    .local v8, changeButtonParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v8}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v26

    const v27, 0x7f0a029c

    invoke-static/range {v26 .. v27}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v10

    .line 412
    .local v10, contentManginTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v26

    const v27, 0x7f0a0294

    invoke-static/range {v26 .. v27}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v16

    .line 413
    .local v16, gridMargin:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v26

    const v27, 0x7f0a02a5

    invoke-static/range {v26 .. v27}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v6

    .line 415
    .local v6, buttonMargin:I
    const-string v26, "NO_R2L"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 416
    const-string v26, "NO_R2L"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 418
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mViewMode:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    .line 419
    move-object/from16 v0, v24

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 420
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v12, v0}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    move-object/from16 v26, v0

    const v27, 0x7f0901d9

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 423
    .local v15, girdLayout:Landroid/view/View;
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/widget/RelativeLayout$LayoutParams;

    .line 425
    .local v17, gridParams:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/ShotModeMenuController;->isLandscape(I)Z

    move-result v26

    if-eqz v26, :cond_0

    .line 426
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->LAYOUT_WIDTH:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 427
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->LAYOUT_HEIGHT:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    move-object/from16 v26, v0

    const/16 v27, 0x4

    invoke-virtual/range {v26 .. v27}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 430
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 431
    move/from16 v0, v16

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 433
    const/16 v26, 0x9

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 434
    const/16 v26, 0xa

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 435
    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 436
    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 437
    const/16 v26, 0x0

    move/from16 v0, v26

    iput v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 439
    const/16 v26, 0x9

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 440
    const/16 v26, 0xc

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 441
    iput v6, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 442
    const/16 v26, 0x0

    move/from16 v0, v26

    iput v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 443
    iput v6, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 464
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridAdapter:Lcom/lge/camera/setting/ShotModeMenuGridAdapter;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->SELECTED_POS:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/lge/camera/setting/ShotModeMenuGridAdapter;->setSelectedItem(I)V

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v26, v0

    const v27, 0x7f0901de

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-interface/range {v26 .. v29}, Lcom/lge/camera/ControllerFunction;->setDegree(IIZ)V

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v26, v0

    const v27, 0x7f0901dc

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-interface/range {v26 .. v29}, Lcom/lge/camera/ControllerFunction;->setDegree(IIZ)V

    .line 469
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 524
    .end local v15           #girdLayout:Landroid/view/View;
    .end local v17           #gridParams:Landroid/widget/RelativeLayout$LayoutParams;
    :goto_1
    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 525
    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 526
    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v26

    new-instance v27, Lcom/lge/camera/controller/ShotModeMenuController$1;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/camera/controller/ShotModeMenuController$1;-><init>(Lcom/lge/camera/controller/ShotModeMenuController;Landroid/view/View;Z)V

    const-wide/16 v28, 0x64

    invoke-virtual/range {v26 .. v29}, Lcom/lge/camera/util/MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 550
    return-void

    .line 445
    .restart local v15       #girdLayout:Landroid/view/View;
    .restart local v17       #gridParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->LAYOUT_HEIGHT:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 446
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->LAYOUT_WIDTH:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    move-object/from16 v26, v0

    const/16 v27, 0x3

    invoke-virtual/range {v26 .. v27}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 449
    move/from16 v0, v16

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 450
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 452
    const/16 v26, 0xb

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 453
    const/16 v26, 0xa

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 454
    const/16 v26, 0x0

    move/from16 v0, v26

    iput v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 455
    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 456
    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 458
    const/16 v26, 0x9

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 459
    const/16 v26, 0xa

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 460
    iput v6, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 461
    iput v6, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 462
    const/16 v26, 0x0

    move/from16 v0, v26

    iput v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto/16 :goto_0

    .line 473
    .end local v15           #girdLayout:Landroid/view/View;
    .end local v17           #gridParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    const/16 v26, 0x9

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 474
    const/16 v26, 0xa

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 475
    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 476
    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 477
    const/16 v26, 0x0

    move/from16 v0, v26

    iput v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 479
    const/16 v26, 0x9

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 480
    const/16 v26, 0xc

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 481
    iput v6, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 482
    const/16 v26, 0x0

    move/from16 v0, v26

    iput v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 483
    iput v6, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 485
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->LAYOUT_WIDTH:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 486
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->LAYOUT_HEIGHT:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v26

    const v27, 0x7f0a029f

    invoke-static/range {v26 .. v27}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v23

    .line 489
    .local v23, paddingTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v26

    const v27, 0x7f0a02a0

    invoke-static/range {v26 .. v27}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v22

    .line 490
    .local v22, paddingLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v26

    const v27, 0x7f0a02a1

    invoke-static/range {v26 .. v27}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v21

    .line 491
    .local v21, paddingExtra:I
    const/4 v11, 0x0

    .line 493
    .local v11, contentMarginLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    move-object/from16 v26, v0

    const v27, 0x7f0901d2

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 494
    .local v13, contents:Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/ShotModeMenuController;->isLandscape(I)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 495
    add-int v26, v10, v23

    move/from16 v0, v22

    move/from16 v1, v26

    move/from16 v2, v22

    move/from16 v3, v21

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 496
    move-object/from16 v0, v24

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 497
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v12, v0}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->setListItemDegree(I)V

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v26, v0

    const v27, 0x7f0901de

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-interface/range {v26 .. v29}, Lcom/lge/camera/ControllerFunction;->setDegree(IIZ)V

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v26, v0

    const v27, 0x7f0901dc

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-interface/range {v26 .. v29}, Lcom/lge/camera/ControllerFunction;->setDegree(IIZ)V

    .line 514
    :goto_2
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 515
    .local v14, contentsParams:Landroid/view/ViewGroup$MarginLayoutParams;
    iput v11, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 516
    invoke-virtual {v13, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/lge/camera/components/ModeMenuListView;->invalidateViews()V

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v26

    const v27, 0x7f0a0298

    invoke-static/range {v26 .. v27}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v18

    .line 521
    .local v18, height:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->CENTER_POS:I

    move/from16 v25, v0

    .line 522
    .local v25, select_pos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mListView:Lcom/lge/camera/components/ModeMenuListView;

    move-object/from16 v26, v0

    div-int/lit8 v27, v18, 0x2

    move-object/from16 v0, v26

    move/from16 v1, v25

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/components/ModeMenuListView;->setSelectionFromTop(II)V

    goto/16 :goto_1

    .line 503
    .end local v14           #contentsParams:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v18           #height:I
    .end local v25           #select_pos:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v26

    const v27, 0x7f0a02a2

    invoke-static/range {v26 .. v27}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v11

    .line 504
    add-int v26, v10, v23

    move/from16 v0, v22

    move/from16 v1, v26

    move/from16 v2, v22

    move/from16 v3, v21

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 506
    if-nez p2, :cond_3

    const/16 v26, 0x10e

    :goto_3
    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 507
    const/16 v9, 0x5a

    .line 508
    .local v9, contentDegree:I
    const/16 v26, 0x5a

    move/from16 v0, v26

    invoke-virtual {v12, v0}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController;->mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    move-object/from16 v26, v0

    const/16 v27, 0x5a

    invoke-virtual/range {v26 .. v27}, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->setListItemDegree(I)V

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v26, v0

    const v27, 0x7f0901de

    const/16 v28, 0x5a

    const/16 v29, 0x0

    invoke-interface/range {v26 .. v29}, Lcom/lge/camera/ControllerFunction;->setDegree(IIZ)V

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v26, v0

    const v27, 0x7f0901dc

    const/16 v28, 0x5a

    const/16 v29, 0x0

    invoke-interface/range {v26 .. v29}, Lcom/lge/camera/ControllerFunction;->setDegree(IIZ)V

    goto/16 :goto_2

    .line 506
    .end local v9           #contentDegree:I
    :cond_3
    const/16 v26, 0x5a

    goto :goto_3
.end method

.method protected shotModeMenuAnimation(Landroid/view/View;Z)V
    .locals 5
    .parameter "aniView"
    .parameter "show"

    .prologue
    .line 650
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shotModeMenuAnimation-start : show = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    if-eqz p1, :cond_0

    .line 653
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 654
    if-eqz p2, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 655
    if-eqz p2, :cond_2

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 656
    .local v0, animation:Landroid/view/animation/Animation;
    :goto_1
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 657
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 658
    new-instance v2, Lcom/lge/camera/controller/ShotModeMenuController$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/lge/camera/controller/ShotModeMenuController$2;-><init>(Lcom/lge/camera/controller/ShotModeMenuController;Landroid/view/View;Z)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 676
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 681
    .end local v0           #animation:Landroid/view/animation/Animation;
    :cond_0
    :goto_2
    return-void

    .line 654
    :cond_1
    const/4 v2, 0x4

    goto :goto_0

    .line 655
    :cond_2
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 678
    :catch_0
    move-exception v1

    .line 679
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v2, "CameraApp"

    const-string v3, "NullPointerException : "

    invoke-static {v2, v3, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public show()V
    .locals 1

    .prologue
    .line 600
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 604
    :goto_0
    return-void

    .line 603
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/ShotModeMenuController;->displayShotModeMenuView()V

    goto :goto_0
.end method

.method protected showBackcoverAnimation()V
    .locals 4

    .prologue
    .line 698
    iget-object v2, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 699
    iget-object v2, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    const v3, 0x7f09006d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 700
    .local v1, rl:Landroid/widget/RelativeLayout;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 701
    .local v0, anim:Landroid/view/animation/Animation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 702
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 704
    .end local v0           #anim:Landroid/view/animation/Animation;
    .end local v1           #rl:Landroid/widget/RelativeLayout;
    :cond_0
    return-void
.end method

.method protected showingAnimation(Landroid/view/View;Z)V
    .locals 3
    .parameter "aniView"
    .parameter "show"

    .prologue
    .line 684
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollAnimation-start : show = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    if-eqz p1, :cond_0

    .line 686
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 687
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShow:Landroid/view/animation/Animation;

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 689
    :cond_0
    return-void

    .line 686
    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    .line 687
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mHide:Landroid/view/animation/Animation;

    goto :goto_1
.end method

.method protected startAlphaAnimation(Landroid/view/View;III)V
    .locals 3
    .parameter "v"
    .parameter "start"
    .parameter "end"
    .parameter "duration"

    .prologue
    .line 692
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 693
    .local v0, anim:Landroid/view/animation/Animation;
    int-to-long v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 694
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 695
    return-void
.end method

.method public startRotation(IZ)V
    .locals 3
    .parameter "degree"
    .parameter "animation"

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/lge/camera/controller/ShotModeMenuController;->checkComponents()Z

    move-result v1

    if-nez v1, :cond_0

    .line 392
    :goto_0
    return-void

    .line 389
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController;->mShotModeMenuView:Landroid/view/View;

    const v2, 0x7f0901cd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 390
    .local v0, shotModeMenuLayout:Landroid/view/View;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 391
    invoke-virtual {p0, v0, p1, p2}, Lcom/lge/camera/controller/ShotModeMenuController;->setLayoutDegree(Landroid/view/View;IZ)V

    goto :goto_0
.end method
