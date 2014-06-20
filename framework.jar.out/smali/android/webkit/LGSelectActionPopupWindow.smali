.class public Landroid/webkit/LGSelectActionPopupWindow;
.super Ljava/lang/Object;
.source "LGSelectActionPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final DEFAULT_FULL_THRESHOLD_BYTES:I = 0x1e00000

.field private static final GOOGLE_SEARCH_TEXT_MAX:I = 0xc8

.field private static final POPUP_TEXT_LAYOUT:I = 0x2030004

.field private static final QTRANSLATOR:Ljava/lang/String; = "com.cardcam.QTranslator"

.field private static final TEXTLINK:Ljava/lang/String; = "com.lge.smarttext"

.field private static final TEXTLINK_ACTIVITY:Ljava/lang/String; = "com.lge.smarttext.action.SEND"

.field private static final TRANSLATOR:Ljava/lang/String; = "com.lge.texttranslate"


# instance fields
.field private mClientContext:Landroid/content/Context;

.field private mCliptrayView:Landroid/widget/TextView;

.field private mContentView:Landroid/view/ViewGroup;

.field private mCopyView:Landroid/widget/TextView;

.field private mCutView:Landroid/widget/TextView;

.field private mEnableSelectAll:Z

.field private mFindView:Landroid/widget/TextView;

.field mIsEditable:Z

.field private mIsFloatingMode:Z

.field private mIsScrapEnable:Z

.field private mPasteView:Landroid/widget/TextView;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field mPositionX:I

.field mPositionY:I

.field private mScrapView:Landroid/widget/TextView;

.field private mSearchView:Landroid/widget/TextView;

.field private mSelectAllView:Landroid/widget/TextView;

.field private mShareView:Landroid/widget/TextView;

.field private mTextLink:Landroid/widget/TextView;

.field private mTracks:Landroid/view/ViewGroup;

.field private mTranslateView:Landroid/widget/TextView;

.field private mWebViewClassic:Landroid/webkit/WebViewClassic;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebViewClassic;)V
    .locals 8
    .parameter "c"
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    const/4 v7, -0x2

    const/4 v6, 0x1

    .line 96
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-boolean v6, p0, Landroid/webkit/LGSelectActionPopupWindow;->mEnableSelectAll:Z

    .line 77
    iput-boolean v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mIsEditable:Z

    .line 78
    iput-boolean v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mIsFloatingMode:Z

    .line 79
    iput-boolean v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mIsScrapEnable:Z

    .line 97
    iput-object p2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    .line 100
    iget-object v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    .line 101
    .local v0, settings:Landroid/webkit/WebSettings;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->getFloatingMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    iput-boolean v6, p0, Landroid/webkit/LGSelectActionPopupWindow;->mIsFloatingMode:Z

    .line 107
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->getWebScrapEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    iput-boolean v6, p0, Landroid/webkit/LGSelectActionPopupWindow;->mIsScrapEnable:Z

    .line 112
    :cond_1
    iput-object p1, p0, Landroid/webkit/LGSelectActionPopupWindow;->mClientContext:Landroid/content/Context;

    .line 113
    new-instance v2, Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/webkit/LGSelectActionPopupWindow;->mClientContext:Landroid/content/Context;

    const/4 v4, 0x0

    const v5, 0x10102c8

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 116
    iget-object v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_4

    .line 118
    iget-boolean v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mIsFloatingMode:Z

    if-eqz v2, :cond_2

    .line 119
    iget-object v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 v3, 0x7d2

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 121
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_SPLITWINDOW:Z

    if-eqz v2, :cond_2

    .line 122
    iget-object v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setBaseAppType(I)V

    .line 128
    :cond_2
    iget-object v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    iget-object v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 130
    iget-object v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 131
    iget-object v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const v3, 0x1030002

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 132
    iget-object v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 133
    iget-object v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 135
    iget-object v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v3, Landroid/webkit/LGSelectActionPopupWindow$1;

    invoke-direct {v3, p0}, Landroid/webkit/LGSelectActionPopupWindow$1;-><init>(Landroid/webkit/LGSelectActionPopupWindow;)V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 145
    invoke-virtual {p0}, Landroid/webkit/LGSelectActionPopupWindow;->initContentView()V

    .line 147
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 150
    .local v1, wrapContent:Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    .line 151
    iget-object v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    :cond_3
    iget-object v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/webkit/LGSelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 154
    .end local v1           #wrapContent:Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    return-void
.end method

.method private isActivityAvailable(Ljava/lang/String;)Z
    .locals 6
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    .line 554
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 555
    .local v2, newIntent:Landroid/content/Intent;
    const-string/jumbo v5, "text/plain"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 557
    :try_start_0
    iget-object v5, p0, Landroid/webkit/LGSelectActionPopupWindow;->mClientContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 558
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/high16 v5, 0x1

    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 559
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-gtz v5, :cond_1

    .line 566
    .end local v0           #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return v4

    .line 562
    .restart local v0       #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v3       #pm:Landroid/content/pm/PackageManager;
    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    .line 564
    .end local v0           #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 566
    .local v1, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method private static isLowOnDisc()Z
    .locals 8

    .prologue
    .line 573
    const-string v3, "/data"

    .line 575
    .local v3, strDATA_PATH:Ljava/lang/String;
    new-instance v0, Landroid/os/StatFs;

    const-string v4, "/data"

    invoke-direct {v0, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 576
    .local v0, mDataFileStats:Landroid/os/StatFs;
    const-string v4, "/data"

    invoke-virtual {v0, v4}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 577
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v6, v6

    mul-long v1, v4, v6

    .line 579
    .local v1, mFreeMem:J
    const-wide/32 v4, 0x1e00000

    cmp-long v4, v1, v4

    if-gez v4, :cond_0

    .line 580
    const/4 v4, 0x1

    .line 582
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isPackageAvailable(Ljava/lang/String;)Z
    .locals 6
    .parameter "name"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 537
    :try_start_0
    iget-object v5, p0, Landroid/webkit/LGSelectActionPopupWindow;->mClientContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 538
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 539
    .local v1, mComponentState:I
    if-eq v1, v4, :cond_0

    if-nez v1, :cond_1

    :cond_0
    move v3, v4

    .line 547
    .end local v1           #mComponentState:I
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :cond_1
    :goto_0
    return v3

    .line 545
    :catch_0
    move-exception v0

    .line 547
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method private measureContent()V
    .locals 5

    .prologue
    const/high16 v4, -0x8000

    .line 301
    iget-object v1, p0, Landroid/webkit/LGSelectActionPopupWindow;->mClientContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 302
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v1, p0, Landroid/webkit/LGSelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->measure(II)V

    .line 307
    return-void
.end method

.method private updateBubblePopup()V
    .locals 4

    .prologue
    .line 592
    iget-object v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v1

    .line 593
    .local v1, settings:Landroid/webkit/WebSettings;
    if-eqz v1, :cond_5

    .line 595
    invoke-virtual {v1}, Landroid/webkit/WebSettingsClassic;->getLGCustomizedBubbleActionsFlag()I

    move-result v0

    .line 596
    .local v0, disableOptions:I
    and-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 597
    iget-object v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mTracks:Landroid/view/ViewGroup;

    iget-object v3, p0, Landroid/webkit/LGSelectActionPopupWindow;->mCopyView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 599
    :cond_0
    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 600
    iget-object v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mTracks:Landroid/view/ViewGroup;

    iget-object v3, p0, Landroid/webkit/LGSelectActionPopupWindow;->mCutView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 602
    :cond_1
    and-int/lit8 v2, v0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 603
    iget-object v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mTracks:Landroid/view/ViewGroup;

    iget-object v3, p0, Landroid/webkit/LGSelectActionPopupWindow;->mPasteView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 605
    :cond_2
    and-int/lit8 v2, v0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    .line 606
    iget-object v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mTracks:Landroid/view/ViewGroup;

    iget-object v3, p0, Landroid/webkit/LGSelectActionPopupWindow;->mShareView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 608
    :cond_3
    and-int/lit8 v2, v0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_4

    .line 609
    iget-object v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mTracks:Landroid/view/ViewGroup;

    iget-object v3, p0, Landroid/webkit/LGSelectActionPopupWindow;->mFindView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 611
    :cond_4
    and-int/lit8 v2, v0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_5

    .line 612
    iget-object v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mTracks:Landroid/view/ViewGroup;

    iget-object v3, p0, Landroid/webkit/LGSelectActionPopupWindow;->mSearchView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 615
    .end local v0           #disableOptions:I
    :cond_5
    return-void
.end method

.method private updateSelectAll()V
    .locals 3

    .prologue
    .line 296
    iget-object v0, p0, Landroid/webkit/LGSelectActionPopupWindow;->mSelectAllView:Landroid/widget/TextView;

    iget-boolean v1, p0, Landroid/webkit/LGSelectActionPopupWindow;->mEnableSelectAll:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 297
    iget-object v1, p0, Landroid/webkit/LGSelectActionPopupWindow;->mSelectAllView:Landroid/widget/TextView;

    iget-boolean v0, p0, Landroid/webkit/LGSelectActionPopupWindow;->mEnableSelectAll:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/high16 v0, -0x100

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 298
    return-void

    .line 297
    :cond_0
    const v0, -0x777778

    goto :goto_0
.end method


# virtual methods
.method public enableSelectAll(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 291
    iput-boolean p1, p0, Landroid/webkit/LGSelectActionPopupWindow;->mEnableSelectAll:Z

    .line 292
    invoke-direct {p0}, Landroid/webkit/LGSelectActionPopupWindow;->updateSelectAll()V

    .line 293
    return-void
.end method

.method public getEnableSelectAll()Z
    .locals 1

    .prologue
    .line 287
    iget-boolean v0, p0, Landroid/webkit/LGSelectActionPopupWindow;->mEnableSelectAll:Z

    return v0
.end method

.method protected getLocalPosition(Landroid/view/View;)Landroid/graphics/Point;
    .locals 17
    .parameter "v"

    .prologue
    .line 310
    invoke-direct/range {p0 .. p0}, Landroid/webkit/LGSelectActionPopupWindow;->measureContent()V

    .line 312
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 313
    .local v4, point:Landroid/graphics/Point;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 315
    .local v6, selection:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/LGSelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v14

    .line 316
    .local v14, width:I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/LGSelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    .line 318
    .local v1, height:I
    const/4 v15, 0x2

    new-array v2, v15, [I

    .line 319
    .local v2, location:[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 320
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/LGSelectActionPopupWindow;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v15}, Landroid/webkit/WebViewClassic;->getSelectionRegion()Landroid/graphics/Rect;

    move-result-object v6

    .line 321
    const/4 v15, 0x0

    aget v15, v2, v15

    const/16 v16, 0x1

    aget v16, v2, v16

    move/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 324
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/LGSelectActionPopupWindow;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v15}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v9

    .line 330
    .local v9, webView:Landroid/webkit/WebView;
    const/4 v3, 0x0

    .line 332
    .local v3, mSpliteWindow:Z
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/webkit/LGSelectActionPopupWindow;->mIsFloatingMode:Z

    if-eqz v15, :cond_2

    .line 333
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 334
    .local v5, r:Landroid/graphics/Rect;
    invoke-virtual {v9, v5}, Landroid/webkit/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 336
    iget v15, v5, Landroid/graphics/Rect;->left:I

    const/16 v16, 0x0

    aget v16, v2, v16

    add-int v11, v15, v16

    .line 337
    .local v11, webviewLeft:I
    iget v15, v5, Landroid/graphics/Rect;->right:I

    const/16 v16, 0x0

    aget v16, v2, v16

    add-int v12, v15, v16

    .line 338
    .local v12, webviewRight:I
    iget v15, v5, Landroid/graphics/Rect;->top:I

    const/16 v16, 0x1

    aget v16, v2, v16

    add-int v13, v15, v16

    .line 339
    .local v13, webviewTop:I
    iget v15, v5, Landroid/graphics/Rect;->bottom:I

    const/16 v16, 0x1

    aget v16, v2, v16

    add-int v10, v15, v16

    .line 352
    .local v10, webviewBottom:I
    :goto_0
    sget-boolean v15, Lcom/lge/config/ConfigBuildFlags;->CAPP_SPLITWINDOW:Z

    if-eqz v15, :cond_0

    .line 353
    new-instance v5, Landroid/graphics/Rect;

    .end local v5           #r:Landroid/graphics/Rect;
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 354
    .restart local v5       #r:Landroid/graphics/Rect;
    invoke-virtual {v9, v5}, Landroid/webkit/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 356
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 357
    .local v7, splitWinRect:Landroid/graphics/Rect;
    invoke-virtual {v9, v7}, Landroid/webkit/WebView;->isWindowSplit(Landroid/graphics/Rect;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 358
    const/4 v3, 0x1

    .line 359
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/LGSelectActionPopupWindow;->mClientContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x105000c

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 360
    .local v8, statusBarHeight:I
    iget v15, v5, Landroid/graphics/Rect;->left:I

    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    add-int v11, v15, v16

    .line 361
    iget v15, v5, Landroid/graphics/Rect;->right:I

    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    add-int v12, v15, v16

    .line 362
    iget v15, v5, Landroid/graphics/Rect;->top:I

    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    sub-int v16, v16, v8

    add-int v13, v15, v16

    .line 363
    iget v15, v5, Landroid/graphics/Rect;->bottom:I

    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    sub-int v16, v16, v8

    add-int v10, v15, v16

    .line 369
    .end local v7           #splitWinRect:Landroid/graphics/Rect;
    .end local v8           #statusBarHeight:I
    :cond_0
    iget v15, v6, Landroid/graphics/Rect;->right:I

    if-lt v15, v11, :cond_1

    iget v15, v6, Landroid/graphics/Rect;->left:I

    if-le v15, v12, :cond_3

    .line 370
    :cond_1
    const/4 v4, 0x0

    .line 397
    .end local v1           #height:I
    .end local v4           #point:Landroid/graphics/Point;
    :goto_1
    return-object v4

    .line 341
    .end local v5           #r:Landroid/graphics/Rect;
    .end local v10           #webviewBottom:I
    .end local v11           #webviewLeft:I
    .end local v12           #webviewRight:I
    .end local v13           #webviewTop:I
    .restart local v1       #height:I
    .restart local v4       #point:Landroid/graphics/Point;
    :cond_2
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 342
    .restart local v5       #r:Landroid/graphics/Rect;
    invoke-virtual {v9, v5}, Landroid/webkit/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 344
    iget v11, v5, Landroid/graphics/Rect;->left:I

    .line 345
    .restart local v11       #webviewLeft:I
    iget v12, v5, Landroid/graphics/Rect;->right:I

    .line 346
    .restart local v12       #webviewRight:I
    iget v13, v5, Landroid/graphics/Rect;->top:I

    .line 347
    .restart local v13       #webviewTop:I
    iget v10, v5, Landroid/graphics/Rect;->bottom:I

    .restart local v10       #webviewBottom:I
    goto :goto_0

    .line 372
    :cond_3
    const/4 v15, 0x0

    aget v15, v2, v15

    sub-int v16, v12, v11

    div-int/lit8 v16, v16, 0x2

    add-int v15, v15, v16

    div-int/lit8 v16, v14, 0x2

    sub-int v15, v15, v16

    iput v15, v4, Landroid/graphics/Point;->x:I

    .line 376
    iget v15, v6, Landroid/graphics/Rect;->bottom:I

    if-lt v15, v13, :cond_4

    iget v15, v6, Landroid/graphics/Rect;->top:I

    if-le v15, v10, :cond_5

    .line 377
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 379
    :cond_5
    iget v15, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v15, v13

    if-ge v1, v15, :cond_7

    .line 380
    iget v15, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/LGSelectActionPopupWindow;->mIsFloatingMode:Z

    move/from16 v16, v0

    if-eqz v16, :cond_6

    .end local v1           #height:I
    :goto_2
    sub-int/2addr v15, v1

    iput v15, v4, Landroid/graphics/Point;->y:I

    goto :goto_1

    .restart local v1       #height:I
    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    .line 381
    :cond_7
    iget v15, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v15, v10, v15

    if-ge v1, v15, :cond_9

    .line 382
    iget v15, v6, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/LGSelectActionPopupWindow;->mIsFloatingMode:Z

    move/from16 v16, v0

    if-eqz v16, :cond_8

    .end local v1           #height:I
    :goto_3
    sub-int/2addr v15, v1

    iput v15, v4, Landroid/graphics/Point;->y:I

    goto :goto_1

    .restart local v1       #height:I
    :cond_8
    const/4 v1, 0x0

    goto :goto_3

    .line 385
    :cond_9
    if-eqz v3, :cond_b

    .line 386
    iget v15, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v15, v13

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    sub-int v16, v10, v16

    move/from16 v0, v16

    if-le v15, v0, :cond_a

    .line 387
    iput v13, v4, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 389
    :cond_a
    sub-int v15, v10, v1

    iput v15, v4, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 393
    :cond_b
    sub-int v15, v10, v13

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v15, v13

    div-int/lit8 v16, v1, 0x2

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/LGSelectActionPopupWindow;->mIsFloatingMode:Z

    move/from16 v16, v0

    if-eqz v16, :cond_c

    .end local v1           #height:I
    :goto_4
    sub-int/2addr v15, v1

    iput v15, v4, Landroid/graphics/Point;->y:I

    goto/16 :goto_1

    .restart local v1       #height:I
    :cond_c
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Landroid/webkit/LGSelectActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 528
    return-void
.end method

.method protected initContentView()V
    .locals 13

    .prologue
    .line 157
    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mClientContext:Landroid/content/Context;

    const-string/jumbo v12, "layout_inflater"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 160
    .local v8, inflater:Landroid/view/LayoutInflater;
    const v11, 0x2030003

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    iput-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 162
    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v12, 0x20e0041

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    iput-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mTracks:Landroid/view/ViewGroup;

    .line 164
    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v12, 0x10805d0

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 167
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 170
    .local v10, wrapContent:Landroid/view/ViewGroup$LayoutParams;
    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mClientContext:Landroid/content/Context;

    iget-object v12, p0, Landroid/webkit/LGSelectActionPopupWindow;->mClientContext:Landroid/content/Context;

    const-string v12, "clipboard"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ClipboardManager;

    move-object v7, v11

    check-cast v7, Landroid/content/ClipboardManager;

    .line 174
    .local v7, cm:Landroid/content/ClipboardManager;
    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkit/WebViewClassic;->isSelectingInEditText()Z

    move-result v11

    iput-boolean v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mIsEditable:Z

    .line 175
    iget-boolean v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mIsEditable:Z

    if-eqz v11, :cond_7

    invoke-virtual {v7}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v3, 0x1

    .line 176
    .local v3, canPaste:Z
    :goto_0
    iget-boolean v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mIsEditable:Z

    if-nez v11, :cond_8

    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mClientContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "com.android.browser"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    const/4 v2, 0x1

    .line 177
    .local v2, canFind:Z
    :goto_1
    iget-boolean v1, p0, Landroid/webkit/LGSelectActionPopupWindow;->mIsEditable:Z

    .line 179
    .local v1, canCut:Z
    iget-boolean v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mIsScrapEnable:Z

    if-eqz v11, :cond_9

    iget-boolean v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mIsEditable:Z

    if-nez v11, :cond_9

    const/4 v4, 0x1

    .line 180
    .local v4, canScrap:Z
    :goto_2
    const-string v11, "com.lge.smarttext.action.SEND"

    invoke-direct {p0, v11}, Landroid/webkit/LGSelectActionPopupWindow;->isActivityAvailable(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    iget-boolean v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mIsFloatingMode:Z

    if-nez v11, :cond_a

    const/4 v5, 0x1

    .line 181
    .local v5, canTextLink:Z
    :goto_3
    const-string v11, "com.lge.texttranslate"

    invoke-direct {p0, v11}, Landroid/webkit/LGSelectActionPopupWindow;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    const-string v11, "com.cardcam.QTranslator"

    invoke-direct {p0, v11}, Landroid/webkit/LGSelectActionPopupWindow;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    iget-boolean v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mIsEditable:Z

    if-nez v11, :cond_b

    const/4 v6, 0x1

    .line 184
    .local v6, canTranslate:Z
    :goto_4
    iget-boolean v0, p0, Landroid/webkit/LGSelectActionPopupWindow;->mIsEditable:Z

    .line 187
    .local v0, canClip:Z
    const v11, 0x2030004

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mSelectAllView:Landroid/widget/TextView;

    .line 188
    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mSelectAllView:Landroid/widget/TextView;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mTracks:Landroid/view/ViewGroup;

    iget-object v12, p0, Landroid/webkit/LGSelectActionPopupWindow;->mSelectAllView:Landroid/widget/TextView;

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 190
    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mSelectAllView:Landroid/widget/TextView;

    const v12, 0x104000d

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 191
    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mSelectAllView:Landroid/widget/TextView;

    invoke-virtual {v11, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 193
    if-eqz v1, :cond_0

    .line 194
    const v11, 0x2030004

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mCutView:Landroid/widget/TextView;

    .line 195
    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mCutView:Landroid/widget/TextView;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mTracks:Landroid/view/ViewGroup;

    iget-object v12, p0, Landroid/webkit/LGSelectActionPopupWindow;->mCutView:Landroid/widget/TextView;

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 197
    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mCutView:Landroid/widget/TextView;

    const v12, 0x1040003

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 198
    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mCutView:Landroid/widget/TextView;

    invoke-virtual {v11, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 201
    :cond_0
    const v11, 0x2030004

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mCopyView:Landroid/widget/TextView;

    .line 202
    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mCopyView:Landroid/widget/TextView;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mTracks:Landroid/view/ViewGroup;

    iget-object v12, p0, Landroid/webkit/LGSelectActionPopupWindow;->mCopyView:Landroid/widget/TextView;

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 204
    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mCopyView:Landroid/widget/TextView;

    const v12, 0x1040001

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 205
    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mCopyView:Landroid/widget/TextView;

    invoke-virtual {v11, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 207
    if-eqz v3, :cond_1

    .line 208
    const v11, 0x2030004

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mPasteView:Landroid/widget/TextView;

    .line 209
    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mPasteView:Landroid/widget/TextView;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mTracks:Landroid/view/ViewGroup;

    iget-object v12, p0, Landroid/webkit/LGSelectActionPopupWindow;->mPasteView:Landroid/widget/TextView;

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 211
    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mPasteView:Landroid/widget/TextView;

    const v12, 0x104000b

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 212
    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mPasteView:Landroid/widget/TextView;

    invoke-virtual {v11, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 216
    :cond_1
    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v9

    .line 217
    .local v9, settings:Landroid/webkit/WebSettings;
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Landroid/webkit/WebSettingsClassic;->getCliptrayEnabled()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 218
    if-eqz v0, :cond_2

    .line 219
    const v11, 0x2030004

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mCliptrayView:Landroid/widget/TextView;

    .line 220
    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mCliptrayView:Landroid/widget/TextView;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mTracks:Landroid/view/ViewGroup;

    iget-object v12, p0, Landroid/webkit/LGSelectActionPopupWindow;->mCliptrayView:Landroid/widget/TextView;

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 222
    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mCliptrayView:Landroid/widget/TextView;

    const v12, 0x20b02ab

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 223
    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mCliptrayView:Landroid/widget/TextView;

    invoke-virtual {v11, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 229
    :cond_2
    if-eqz v4, :cond_3

    iget-boolean v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mIsFloatingMode:Z

    if-nez v11, :cond_3

    .line 230
    const v11, 0x2030004

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mScrapView:Landroid/widget/TextView;

    .line 231
    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mScrapView:Landroid/widget/TextView;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mTracks:Landroid/view/ViewGroup;

    iget-object v12, p0, Landroid/webkit/LGSelectActionPopupWindow;->mScrapView:Landroid/widget/TextView;

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 233
    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mScrapView:Landroid/widget/TextView;

    const v12, 0x20b02ee

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 234
    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mScrapView:Landroid/widget/TextView;

    invoke-virtual {v11, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 239
    :cond_3
    if-eqz v5, :cond_4

    .line 240
    const v11, 0x2030004

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mTextLink:Landroid/widget/TextView;

    .line 241
    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mTextLink:Landroid/widget/TextView;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mTracks:Landroid/view/ViewGroup;

    iget-object v12, p0, Landroid/webkit/LGSelectActionPopupWindow;->mTextLink:Landroid/widget/TextView;

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 243
    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mTextLink:Landroid/widget/TextView;

    const v12, 0x20b02ed

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 244
    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mTextLink:Landroid/widget/TextView;

    invoke-virtual {v11, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 249
    :cond_4
    iget-boolean v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mIsFloatingMode:Z

    if-nez v11, :cond_6

    .line 250
    const v11, 0x2030004

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mShareView:Landroid/widget/TextView;

    .line 251
    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mShareView:Landroid/widget/TextView;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mTracks:Landroid/view/ViewGroup;

    iget-object v12, p0, Landroid/webkit/LGSelectActionPopupWindow;->mShareView:Landroid/widget/TextView;

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 253
    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mShareView:Landroid/widget/TextView;

    const v12, 0x10404d1

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 254
    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mShareView:Landroid/widget/TextView;

    invoke-virtual {v11, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 256
    if-eqz v2, :cond_5

    .line 257
    const v11, 0x2030004

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mFindView:Landroid/widget/TextView;

    .line 258
    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mFindView:Landroid/widget/TextView;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mTracks:Landroid/view/ViewGroup;

    iget-object v12, p0, Landroid/webkit/LGSelectActionPopupWindow;->mFindView:Landroid/widget/TextView;

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 260
    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mFindView:Landroid/widget/TextView;

    const v12, 0x10404d2

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 261
    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mFindView:Landroid/widget/TextView;

    invoke-virtual {v11, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 264
    :cond_5
    const v11, 0x2030004

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mSearchView:Landroid/widget/TextView;

    .line 265
    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mSearchView:Landroid/widget/TextView;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mTracks:Landroid/view/ViewGroup;

    iget-object v12, p0, Landroid/webkit/LGSelectActionPopupWindow;->mSearchView:Landroid/widget/TextView;

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 267
    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mSearchView:Landroid/widget/TextView;

    const v12, 0x10404d3

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 268
    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mSearchView:Landroid/widget/TextView;

    invoke-virtual {v11, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 271
    if-eqz v6, :cond_6

    .line 272
    const v11, 0x2030004

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mTranslateView:Landroid/widget/TextView;

    .line 273
    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mTranslateView:Landroid/widget/TextView;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mTracks:Landroid/view/ViewGroup;

    iget-object v12, p0, Landroid/webkit/LGSelectActionPopupWindow;->mTranslateView:Landroid/widget/TextView;

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 275
    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mTranslateView:Landroid/widget/TextView;

    const v12, 0x20b02ec

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 276
    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mTranslateView:Landroid/widget/TextView;

    invoke-virtual {v11, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 282
    :cond_6
    invoke-direct {p0}, Landroid/webkit/LGSelectActionPopupWindow;->updateBubblePopup()V

    .line 284
    return-void

    .line 175
    .end local v0           #canClip:Z
    .end local v1           #canCut:Z
    .end local v2           #canFind:Z
    .end local v3           #canPaste:Z
    .end local v4           #canScrap:Z
    .end local v5           #canTextLink:Z
    .end local v6           #canTranslate:Z
    .end local v9           #settings:Landroid/webkit/WebSettings;
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 176
    .restart local v3       #canPaste:Z
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 179
    .restart local v1       #canCut:Z
    .restart local v2       #canFind:Z
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 180
    .restart local v4       #canScrap:Z
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 181
    .restart local v5       #canTextLink:Z
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_4
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Landroid/webkit/LGSelectActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "v"
    .parameter "event"

    .prologue
    const/16 v6, 0xc8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 402
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 504
    :goto_0
    :pswitch_0
    invoke-direct {p0}, Landroid/webkit/LGSelectActionPopupWindow;->updateSelectAll()V

    .line 506
    return v8

    .line 404
    :pswitch_1
    const v5, -0x3c2d29

    invoke-virtual {p1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 408
    :pswitch_2
    invoke-virtual {p1, v7}, Landroid/view/View;->playSoundEffect(I)V

    .line 410
    iget-object v5, p0, Landroid/webkit/LGSelectActionPopupWindow;->mSelectAllView:Landroid/widget/TextView;

    if-ne p1, v5, :cond_1

    .line 411
    iget-object v5, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-boolean v6, p0, Landroid/webkit/LGSelectActionPopupWindow;->mIsEditable:Z

    invoke-virtual {v5, v6}, Landroid/webkit/WebViewClassic;->selectAll(Z)V

    .line 412
    invoke-virtual {p0, v7}, Landroid/webkit/LGSelectActionPopupWindow;->enableSelectAll(Z)V

    .line 495
    :cond_0
    :goto_1
    invoke-virtual {p1, v7}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 413
    :cond_1
    iget-object v5, p0, Landroid/webkit/LGSelectActionPopupWindow;->mCopyView:Landroid/widget/TextView;

    if-ne p1, v5, :cond_2

    .line 414
    iget-object v5, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->copySelection()Z

    .line 415
    iget-object v5, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 416
    invoke-virtual {p0}, Landroid/webkit/LGSelectActionPopupWindow;->hide()V

    goto :goto_1

    .line 418
    :cond_2
    iget-object v5, p0, Landroid/webkit/LGSelectActionPopupWindow;->mScrapView:Landroid/widget/TextView;

    if-ne p1, v5, :cond_5

    .line 419
    new-instance v2, Landroid/webkit/LGScrapManager;

    iget-object v5, p0, Landroid/webkit/LGSelectActionPopupWindow;->mClientContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-direct {v2, v5, v6}, Landroid/webkit/LGScrapManager;-><init>(Landroid/content/Context;Landroid/webkit/WebViewClassic;)V

    .line 420
    .local v2, scrap:Landroid/webkit/LGScrapManager;
    invoke-static {}, Landroid/webkit/LGSelectActionPopupWindow;->isLowOnDisc()Z

    move-result v5

    if-nez v5, :cond_4

    .line 421
    if-eqz v2, :cond_3

    .line 422
    invoke-virtual {v2}, Landroid/webkit/LGScrapManager;->scrapSelection()V

    .line 428
    :cond_3
    :goto_2
    iget-object v5, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 429
    invoke-virtual {p0}, Landroid/webkit/LGSelectActionPopupWindow;->hide()V

    goto :goto_1

    .line 425
    :cond_4
    iget-object v5, p0, Landroid/webkit/LGSelectActionPopupWindow;->mClientContext:Landroid/content/Context;

    const v6, 0x20b026d

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 432
    .end local v2           #scrap:Landroid/webkit/LGScrapManager;
    :cond_5
    iget-object v5, p0, Landroid/webkit/LGSelectActionPopupWindow;->mTextLink:Landroid/widget/TextView;

    if-ne p1, v5, :cond_6

    .line 433
    iget-object v5, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->textLinkSelection()V

    .line 434
    iget-object v5, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 435
    invoke-virtual {p0}, Landroid/webkit/LGSelectActionPopupWindow;->hide()V

    goto :goto_1

    .line 437
    :cond_6
    iget-object v5, p0, Landroid/webkit/LGSelectActionPopupWindow;->mShareView:Landroid/widget/TextView;

    if-ne p1, v5, :cond_8

    .line 438
    iget-object v5, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getSelection()Ljava/lang/String;

    move-result-object v3

    .line 439
    .local v3, text:Ljava/lang/String;
    iget-object v5, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 441
    iget-object v5, p0, Landroid/webkit/LGSelectActionPopupWindow;->mClientContext:Landroid/content/Context;

    instance-of v5, v5, Landroid/app/Activity;

    if-eqz v5, :cond_7

    .line 442
    iget-object v5, p0, Landroid/webkit/LGSelectActionPopupWindow;->mClientContext:Landroid/content/Context;

    invoke-static {v5, v3}, Landroid/provider/Browser;->sendStringEx(Landroid/content/Context;Ljava/lang/String;)V

    .line 446
    :goto_3
    invoke-virtual {p0}, Landroid/webkit/LGSelectActionPopupWindow;->hide()V

    goto :goto_1

    .line 445
    :cond_7
    iget-object v5, p0, Landroid/webkit/LGSelectActionPopupWindow;->mClientContext:Landroid/content/Context;

    invoke-static {v5, v3}, Landroid/provider/Browser;->sendString(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 447
    .end local v3           #text:Ljava/lang/String;
    :cond_8
    iget-object v5, p0, Landroid/webkit/LGSelectActionPopupWindow;->mFindView:Landroid/widget/TextView;

    if-ne p1, v5, :cond_9

    .line 448
    iget-object v5, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getSelection()Ljava/lang/String;

    move-result-object v3

    .line 449
    .restart local v3       #text:Ljava/lang/String;
    iget-object v5, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 450
    iget-object v5, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5, v3, v7}, Landroid/webkit/WebViewClassic;->showFindDialog(Ljava/lang/String;Z)Z

    .line 451
    invoke-virtual {p0}, Landroid/webkit/LGSelectActionPopupWindow;->hide()V

    goto/16 :goto_1

    .line 452
    .end local v3           #text:Ljava/lang/String;
    :cond_9
    iget-object v5, p0, Landroid/webkit/LGSelectActionPopupWindow;->mSearchView:Landroid/widget/TextView;

    if-ne p1, v5, :cond_d

    .line 453
    iget-object v5, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getSelection()Ljava/lang/String;

    move-result-object v3

    .line 454
    .restart local v3       #text:Ljava/lang/String;
    iget-object v5, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 455
    if-eqz v3, :cond_c

    .line 456
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.WEB_SEARCH"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 457
    .local v1, i:Landroid/content/Intent;
    const-string/jumbo v5, "new_search"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 458
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_a

    .line 459
    invoke-virtual {v3, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 460
    :cond_a
    const-string/jumbo v5, "query"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 462
    iget-object v5, p0, Landroid/webkit/LGSelectActionPopupWindow;->mClientContext:Landroid/content/Context;

    instance-of v5, v5, Landroid/app/Activity;

    if-nez v5, :cond_b

    .line 463
    const/high16 v5, 0x1000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 466
    :cond_b
    iget-object v5, p0, Landroid/webkit/LGSelectActionPopupWindow;->mClientContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 468
    .end local v1           #i:Landroid/content/Intent;
    :cond_c
    invoke-virtual {p0}, Landroid/webkit/LGSelectActionPopupWindow;->hide()V

    goto/16 :goto_1

    .line 469
    .end local v3           #text:Ljava/lang/String;
    :cond_d
    iget-object v5, p0, Landroid/webkit/LGSelectActionPopupWindow;->mCutView:Landroid/widget/TextView;

    if-ne p1, v5, :cond_e

    .line 470
    iget-object v5, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->cutSelection()V

    .line 471
    iget-object v5, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 472
    invoke-virtual {p0}, Landroid/webkit/LGSelectActionPopupWindow;->hide()V

    goto/16 :goto_1

    .line 473
    :cond_e
    iget-object v5, p0, Landroid/webkit/LGSelectActionPopupWindow;->mPasteView:Landroid/widget/TextView;

    if-ne p1, v5, :cond_f

    .line 474
    iget-object v5, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->pasteFromClipboard()V

    .line 475
    invoke-virtual {p0}, Landroid/webkit/LGSelectActionPopupWindow;->hide()V

    .line 476
    iget-object v5, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->selectionDone()V

    goto/16 :goto_1

    .line 478
    :cond_f
    iget-object v5, p0, Landroid/webkit/LGSelectActionPopupWindow;->mTranslateView:Landroid/widget/TextView;

    if-ne p1, v5, :cond_11

    .line 479
    iget-object v5, p0, Landroid/webkit/LGSelectActionPopupWindow;->mClientContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-static {v5, v6}, Landroid/webkit/LGTranslateReceiver;->getInstance(Landroid/content/Context;Landroid/webkit/WebViewClassic;)Landroid/webkit/LGTranslateReceiver;

    move-result-object v4

    .line 480
    .local v4, translate:Landroid/webkit/LGTranslateReceiver;
    if-eqz v4, :cond_10

    .line 481
    invoke-virtual {v4}, Landroid/webkit/LGTranslateReceiver;->translateSelection()V

    .line 483
    :cond_10
    invoke-virtual {p0}, Landroid/webkit/LGSelectActionPopupWindow;->hide()V

    goto/16 :goto_1

    .line 487
    .end local v4           #translate:Landroid/webkit/LGTranslateReceiver;
    :cond_11
    iget-object v5, p0, Landroid/webkit/LGSelectActionPopupWindow;->mCliptrayView:Landroid/widget/TextView;

    if-ne p1, v5, :cond_0

    .line 488
    invoke-virtual {p0}, Landroid/webkit/LGSelectActionPopupWindow;->hide()V

    .line 489
    invoke-static {}, Landroid/webkit/LGCliptrayManager;->getInstance()Landroid/webkit/LGCliptrayManager;

    move-result-object v0

    .line 490
    .local v0, cliptray:Landroid/webkit/LGCliptrayManager;
    if-eqz v0, :cond_0

    .line 491
    iget-object v5, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v5, v5, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v0, v5}, Landroid/webkit/LGCliptrayManager;->showCliptray(Landroid/webkit/WebViewClassic$WebViewInputConnection;)V

    goto/16 :goto_1

    .line 498
    .end local v0           #cliptray:Landroid/webkit/LGCliptrayManager;
    :pswitch_3
    invoke-virtual {p1, v7}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 402
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public show(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, -0x1

    .line 510
    invoke-virtual {p0, p1}, Landroid/webkit/LGSelectActionPopupWindow;->getLocalPosition(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    .line 511
    .local v0, p:Landroid/graphics/Point;
    if-nez v0, :cond_0

    .line 512
    invoke-virtual {p0}, Landroid/webkit/LGSelectActionPopupWindow;->hide()V

    .line 524
    :goto_0
    return-void

    .line 515
    :cond_0
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Landroid/webkit/LGSelectActionPopupWindow;->mPositionX:I

    .line 516
    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Landroid/webkit/LGSelectActionPopupWindow;->mPositionY:I

    .line 518
    invoke-virtual {p0}, Landroid/webkit/LGSelectActionPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 519
    iget-object v1, p0, Landroid/webkit/LGSelectActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mPositionX:I

    iget v3, p0, Landroid/webkit/LGSelectActionPopupWindow;->mPositionY:I

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 521
    :cond_1
    iget-object v1, p0, Landroid/webkit/LGSelectActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    iget v3, p0, Landroid/webkit/LGSelectActionPopupWindow;->mPositionX:I

    iget v4, p0, Landroid/webkit/LGSelectActionPopupWindow;->mPositionY:I

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method
