.class public Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;
.super Landroid/app/Activity;
.source "KeyguardAppWidgetPickActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/lgesettings/AppWidgetLoader$ItemConstructor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;,
        Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/android/lgesettings/AppWidgetLoader$ItemConstructor",
        "<",
        "Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item;",
        ">;"
    }
.end annotation


# static fields
.field private static mAppThemeWidget:Lcom/android/lgesettings/AppThemeWidget;


# instance fields
.field private mAddingToKeyguard:Z

.field private mAppWidgetAdapter:Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;

.field private mAppWidgetId:I

.field private mAppWidgetLoader:Lcom/android/lgesettings/AppWidgetLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/lgesettings/AppWidgetLoader",
            "<",
            "Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mExtraConfigureOptions:Landroid/os/Bundle;

.field private mGridView:Landroid/widget/GridView;

.field private mIsCameraEnabled:Z

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mResultData:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->mAddingToKeyguard:Z

    .line 559
    return-void
.end method

.method static synthetic access$100()Lcom/android/lgesettings/AppThemeWidget;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->mAppThemeWidget:Lcom/android/lgesettings/AppThemeWidget;

    return-object v0
.end method

.method private finishDelayedAndShowLockScreen(I)V
    .locals 10
    .parameter "appWidgetId"

    .prologue
    .line 724
    const-string v6, "window"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 725
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    .line 726
    .local v3, iWm:Landroid/view/IWindowManager;
    const/4 v4, 0x0

    .line 727
    .local v4, opts:Landroid/os/Bundle;
    if-eqz p1, :cond_0

    .line 728
    new-instance v4, Landroid/os/Bundle;

    .end local v4           #opts:Landroid/os/Bundle;
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 729
    .restart local v4       #opts:Landroid/os/Bundle;
    const-string v6, "showappwidget"

    invoke-virtual {v4, v6, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 732
    :cond_0
    :try_start_0
    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    :goto_0
    const v6, 0x7f0a0095

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 738
    .local v5, root:Landroid/view/ViewGroup;
    const/high16 v6, -0x100

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 740
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 741
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 742
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 741
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 744
    :cond_1
    iget-object v6, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->mGridView:Landroid/widget/GridView;

    new-instance v7, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$1;

    invoke-direct {v7, p0}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$1;-><init>(Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;)V

    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, v7, v8, v9}, Landroid/widget/GridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 749
    return-void

    .line 733
    .end local v1           #childCount:I
    .end local v2           #i:I
    .end local v5           #root:Landroid/view/ViewGroup;
    :catch_0
    move-exception v6

    goto :goto_0
.end method


# virtual methods
.method public createItem(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item;
    .locals 3
    .parameter "context"
    .parameter "info"
    .parameter "extras"

    .prologue
    .line 548
    iget-object v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 550
    .local v1, label:Ljava/lang/CharSequence;
    new-instance v0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item;

    invoke-direct {v0, p1, v1}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 551
    .local v0, item:Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item;
    iget v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    iput v2, v0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item;->appWidgetPreviewId:I

    .line 552
    iget v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    iput v2, v0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item;->iconId:I

    .line 553
    iget-object v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item;->packageName:Ljava/lang/String;

    .line 554
    iget-object v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item;->className:Ljava/lang/String;

    .line 555
    iput-object p3, v0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item;->extras:Landroid/os/Bundle;

    .line 556
    return-object v0
.end method

.method public bridge synthetic createItem(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 75
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->createItem(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v8, 0x7e

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/16 v5, 0x7f

    .line 683
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 684
    if-eq p1, v8, :cond_0

    if-ne p1, v5, :cond_1

    .line 686
    :cond_0
    if-nez p3, :cond_2

    .line 687
    const/4 v1, 0x0

    .line 692
    .local v1, appWidgetId:I
    :goto_0
    if-ne p1, v8, :cond_4

    if-ne p2, v6, :cond_4

    .line 693
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 695
    .local v2, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    const/4 v0, 0x0

    .line 696
    .local v0, appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    invoke-virtual {v2, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 698
    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v4, :cond_3

    .line 700
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 701
    .local v3, intent:Landroid/content/Intent;
    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 702
    const/high16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 703
    const-string v4, "appWidgetId"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 705
    invoke-virtual {p0, v3, v5}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->startActivityForResultSafely(Landroid/content/Intent;I)V

    .line 721
    .end local v0           #appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v1           #appWidgetId:I
    .end local v2           #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_1
    :goto_1
    return-void

    .line 689
    :cond_2
    const-string v4, "appWidgetId"

    invoke-virtual {p3, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .restart local v1       #appWidgetId:I
    goto :goto_0

    .line 708
    .restart local v0       #appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v2       #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    :cond_3
    invoke-virtual {p0, v5, v6, p3}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_1

    .line 710
    .end local v0           #appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v2           #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    :cond_4
    if-ne p1, v5, :cond_5

    if-ne p2, v6, :cond_5

    .line 711
    iget-object v4, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v1, v7}, Lcom/android/internal/widget/LockPatternUtils;->addAppWidget(II)Z

    .line 712
    invoke-direct {p0, v1}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->finishDelayedAndShowLockScreen(I)V

    goto :goto_1

    .line 714
    :cond_5
    iget-boolean v4, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->mAddingToKeyguard:Z

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->mAppWidgetId:I

    if-eqz v4, :cond_6

    .line 716
    iget v4, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->mAppWidgetId:I

    invoke-static {v4}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetIdForSystem(I)V

    .line 718
    :cond_6
    invoke-direct {p0, v7}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->finishDelayedAndShowLockScreen(I)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 98
    const v4, 0x7f0400b1

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->setContentView(I)V

    .line 99
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    const/4 v4, 0x0

    invoke-virtual {p0, v6, v4}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->setResultData(ILandroid/content/Intent;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 106
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "appWidgetId"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 107
    const-string v4, "appWidgetId"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->mAppWidgetId:I

    .line 112
    :goto_0
    const-string v4, "appWidgetOptions"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->mExtraConfigureOptions:Landroid/os/Bundle;

    .line 113
    const-string v4, "config_feature_camera_widget"

    invoke-static {p0, v4}, Lcom/android/lgesettings/lockscreen/LockSettingsFeatureConfig;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->mIsCameraEnabled:Z

    .line 115
    new-instance v4, Lcom/android/lgesettings/AppThemeWidget;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/AppThemeWidget;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->mAppThemeWidget:Lcom/android/lgesettings/AppThemeWidget;

    .line 116
    const v4, 0x7f0a017c

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/GridView;

    iput-object v4, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->mGridView:Landroid/widget/GridView;

    .line 117
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 118
    .local v1, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0058

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 122
    .local v3, maxGridWidth:I
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ge v3, v4, :cond_0

    .line 123
    iget-object v4, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 125
    :cond_0
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 126
    new-instance v4, Lcom/android/lgesettings/AppWidgetLoader;

    iget-object v5, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-direct {v4, p0, v5, p0}, Lcom/android/lgesettings/AppWidgetLoader;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Lcom/android/lgesettings/AppWidgetLoader$ItemConstructor;)V

    iput-object v4, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->mAppWidgetLoader:Lcom/android/lgesettings/AppWidgetLoader;

    .line 127
    iget-object v4, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->mAppWidgetLoader:Lcom/android/lgesettings/AppWidgetLoader;

    invoke-virtual {p0}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/lgesettings/AppWidgetLoader;->getItems(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->mItems:Ljava/util/List;

    .line 128
    iget-boolean v4, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->mIsCameraEnabled:Z

    if-eqz v4, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080144

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, cameraStr:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->mItems:Ljava/util/List;

    new-instance v5, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item;

    invoke-direct {v5, p0, v0}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-interface {v4, v6, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 132
    .end local v0           #cameraStr:Ljava/lang/String;
    :cond_1
    new-instance v4, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;

    iget-object v5, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->mItems:Ljava/util/List;

    iget-boolean v6, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->mIsCameraEnabled:Z

    invoke-direct {v4, p0, v5, v6}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    iput-object v4, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->mAppWidgetAdapter:Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;

    .line 133
    iget-object v4, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->mGridView:Landroid/widget/GridView;

    iget-object v5, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->mAppWidgetAdapter:Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 134
    iget-object v4, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 136
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 137
    return-void

    .line 110
    .end local v1           #dm:Landroid/util/DisplayMetrics;
    .end local v3           #maxGridWidth:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->finish()V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->mAppWidgetAdapter:Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->mAppWidgetAdapter:Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;

    invoke-virtual {v0}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;->cancelAllWidgetPreviewLoaders()V

    .line 677
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->mAppThemeWidget:Lcom/android/lgesettings/AppThemeWidget;

    .line 678
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 679
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 11
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 629
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v7, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->mItems:Ljava/util/List;

    invoke-interface {v7, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item;

    .line 630
    .local v4, item:Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item;
    invoke-virtual {v4}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 631
    .local v3, intent:Landroid/content/Intent;
    iget-boolean v7, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->mIsCameraEnabled:Z

    if-eqz v7, :cond_0

    if-nez p3, :cond_0

    .line 633
    invoke-virtual {p0}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "show_camera_widget"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 635
    .local v6, selection:I
    if-nez v6, :cond_1

    const/4 v1, 0x1

    .line 636
    .local v1, checked:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "show_camera_widget"

    invoke-static {v7, v8, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 641
    .end local v1           #checked:I
    .end local v6           #selection:I
    :cond_0
    iget-object v7, v4, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item;->extras:Landroid/os/Bundle;

    if-eqz v7, :cond_2

    .line 644
    const/4 v5, -0x1

    .line 645
    .local v5, result:I
    invoke-virtual {p0, v5, v3}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->setResultData(ILandroid/content/Intent;)V

    .line 666
    :goto_1
    iget-boolean v7, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->mAddingToKeyguard:Z

    if-eqz v7, :cond_4

    .line 667
    const/16 v7, 0x7e

    iget-object v8, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->mResultData:Landroid/content/Intent;

    invoke-virtual {p0, v7, v5, v8}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 671
    :goto_2
    return-void

    .line 635
    .end local v5           #result:I
    .restart local v6       #selection:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 648
    .end local v6           #selection:I
    :cond_2
    :try_start_0
    iget-boolean v7, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->mAddingToKeyguard:Z

    if-eqz v7, :cond_3

    iget v7, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->mAppWidgetId:I

    if-nez v7, :cond_3

    .line 650
    const v0, 0x4b455947

    .line 651
    .local v0, KEYGUARD_HOST_ID:I
    const v7, 0x4b455947

    invoke-static {v7}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetIdForSystem(I)I

    move-result v7

    iput v7, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->mAppWidgetId:I

    .line 653
    .end local v0           #KEYGUARD_HOST_ID:I
    :cond_3
    iget-object v7, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v8, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->mAppWidgetId:I

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    iget-object v10, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->mExtraConfigureOptions:Landroid/os/Bundle;

    invoke-virtual {v7, v8, v9, v10}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    const/4 v5, -0x1

    .line 664
    .restart local v5       #result:I
    :goto_3
    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->setResultData(ILandroid/content/Intent;)V

    goto :goto_1

    .line 656
    .end local v5           #result:I
    :catch_0
    move-exception v2

    .line 662
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const/4 v5, 0x0

    .restart local v5       #result:I
    goto :goto_3

    .line 669
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :cond_4
    invoke-virtual {p0}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->finish()V

    goto :goto_2
.end method

.method setResultData(ILandroid/content/Intent;)V
    .locals 3
    .parameter "code"
    .parameter "intent"

    .prologue
    .line 145
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 146
    .local v0, result:Landroid/content/Intent;
    :goto_0
    const-string v1, "appWidgetId"

    iget v2, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->mAppWidgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 147
    iput-object v0, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->mResultData:Landroid/content/Intent;

    .line 148
    invoke-virtual {p0, p1, v0}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->setResult(ILandroid/content/Intent;)V

    .line 149
    return-void

    .line 145
    .end local v0           #result:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    goto :goto_0
.end method

.method startActivityForResultSafely(Landroid/content/Intent;I)V
    .locals 4
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    const v2, 0x7f080556

    const/4 v1, 0x0

    .line 753
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 760
    :goto_0
    return-void

    .line 754
    :catch_0
    move-exception v0

    .line 755
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 756
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 757
    .local v0, e:Ljava/lang/SecurityException;
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 758
    const-string v1, "KeyguardAppWidgetPickActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings does not have the permission to launch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
