.class Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ForcingNavHideManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;
    }
.end annotation


# static fields
.field private static final ENABLED_HIDE_NAVIGATION_SEPARATOR:C = ':'


# instance fields
.field private hideNavDelayed:Ljava/lang/Runnable;

.field private mBootComplete:Z

.field private mGestureScanner:Landroid/view/GestureDetector;

.field mHideAppListSet:Ljava/util/HashSet;

.field private mIsAccessibilityEnabled:Z

.field private mIsReadDB:Z

.field public mLastNavHiddenState:Z

.field private mLastRunningPkgName:Ljava/lang/String;

.field private mNavHiddenBySetting:Z

.field private mNavRegionTouched:Z

.field private mNavShowingCueView:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;

.field private mNavShownByTouch:Z

.field private mPreUpdateNeeded:Z

.field private mPreUpdatedPkgName:Ljava/lang/String;

.field private final mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field private observer:Landroid/database/ContentObserver;

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 5247
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5228
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mHideAppListSet:Ljava/util/HashSet;

    .line 5229
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mNavHiddenBySetting:Z

    .line 5230
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mNavShownByTouch:Z

    .line 5231
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mNavRegionTouched:Z

    .line 5232
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mIsReadDB:Z

    .line 5233
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mBootComplete:Z

    .line 5235
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mIsAccessibilityEnabled:Z

    .line 5237
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mPreUpdateNeeded:Z

    .line 5239
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 5241
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mNavShowingCueView:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;

    .line 5242
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mLastNavHiddenState:Z

    .line 5244
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mLastRunningPkgName:Ljava/lang/String;

    .line 5245
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mPreUpdatedPkgName:Ljava/lang/String;

    .line 5319
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->hideNavDelayed:Ljava/lang/Runnable;

    .line 5374
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$2;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->observer:Landroid/database/ContentObserver;

    .line 5248
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mGestureScanner:Landroid/view/GestureDetector;

    .line 5249
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mNavShowingCueView:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;

    .line 5250
    return-void
.end method

.method static synthetic access$3300(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 5226
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->checkAccessibilityEnabled()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 5226
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->hideNavIfNeeded()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 5226
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->readDB()V

    return-void
.end method

.method static synthetic access$3802(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5226
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mIsReadDB:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;)Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5226
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mNavShowingCueView:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5226
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mNavShownByTouch:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5226
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->hideNavDelayed:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 5226
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mIsAccessibilityEnabled:Z

    return v0
.end method

.method private checkAccessibilityEnabled()V
    .locals 3

    .prologue
    .line 5307
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 5308
    .local v0, am:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mIsAccessibilityEnabled:Z

    .line 5309
    return-void

    .line 5308
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hideNavIfNeeded()V
    .locals 2

    .prologue
    .line 5490
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mNavHiddenBySetting:Z

    if-eqz v0, :cond_0

    .line 5491
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    .line 5492
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mNavShownByTouch:Z

    .line 5493
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mNavShowingCueView:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->showNavCueView()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->access$3600(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;)V

    .line 5495
    :cond_0
    return-void
.end method

.method private readDB()V
    .locals 7

    .prologue
    .line 5473
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enable_hide_navigation_apps"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5474
    .local v3, enableHideApp:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 5475
    const-string v3, ""

    .line 5477
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 5478
    .local v0, colonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v0, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 5480
    :goto_0
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5481
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 5482
    .local v1, componentNameString:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mHideAppListSet:Ljava/util/HashSet;

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5484
    .end local v0           #colonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v1           #componentNameString:Ljava/lang/String;
    .end local v3           #enableHideApp:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 5485
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FileNotFoundException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5487
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    return-void
.end method


# virtual methods
.method public createNavCueWindow(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 5277
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mNavShowingCueView:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;

    if-nez v0, :cond_0

    .line 5278
    const-string v0, "NavHide"

    const-string v1, "isNavBarHidingWindow.. set NavShowingCueView..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5280
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mNavShowingCueView:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;

    .line 5282
    :cond_0
    return-void
.end method

.method public forceNavShowByGesture()V
    .locals 1

    .prologue
    .line 5312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mNavShownByTouch:Z

    .line 5313
    return-void
.end method

.method public getGestureDetecter()Landroid/view/GestureDetector;
    .locals 1

    .prologue
    .line 5316
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mGestureScanner:Landroid/view/GestureDetector;

    return-object v0
.end method

.method public getLastRunningPkg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5265
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mLastRunningPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getPreUpdatedPkg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5273
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mPreUpdatedPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public isForcingNavHideState()Z
    .locals 1

    .prologue
    .line 5303
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mNavHiddenBySetting:Z

    return v0
.end method

.method public isNavBarHidingWindow(Landroid/view/WindowManagerPolicy$WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 7
    .parameter "win"
    .parameter "pf"
    .parameter "df"
    .parameter "cf"
    .parameter "vf"
    .parameter "lp"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5385
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mIsAccessibilityEnabled:Z

    if-eqz v5, :cond_1

    .line 5468
    :cond_0
    :goto_0
    return v3

    .line 5389
    :cond_1
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mIsReadDB:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    if-eqz v5, :cond_2

    .line 5390
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->readDB()V

    .line 5391
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mIsReadDB:Z

    .line 5394
    :cond_2
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mBootComplete:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    if-eqz v5, :cond_3

    .line 5395
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 5396
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v5, "enable_hide_navigation_apps"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->observer:Landroid/database/ContentObserver;

    invoke-virtual {v2, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 5397
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mBootComplete:Z

    .line 5401
    .end local v2           #resolver:Landroid/content/ContentResolver;
    :cond_3
    sget-boolean v5, Lcom/lge/config/ConfigBuildFlags;->CAPP_SPLITWINDOW:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    if-eqz v5, :cond_4

    .line 5403
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSplitWindowManager:Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    invoke-interface {v5}, Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;->isSplitMode()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->isSplitFullScreen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-eqz v5, :cond_0

    .line 5414
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_0

    .line 5415
    iget v5, p6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7d2

    if-ne v5, v6, :cond_5

    invoke-virtual {p6}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "LG_AppDrawer"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 5416
    const-string v3, "HideNav"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "this is app drawer related windows.. check nav frame = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5417
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mLastNavHiddenState:Z

    goto/16 :goto_0

    .line 5406
    :catch_0
    move-exception v0

    .line 5407
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "SplitWindow"

    const-string v6, "Binder service (SplitWindowPolicyService) is not available"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5408
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 5409
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v5, "SplitWindow"

    const-string v6, "SplitWindowPolicyService is not created well.. check service routine"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5419
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_5
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget-object v1, v5, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 5423
    .local v1, pkgName:Ljava/lang/String;
    if-nez v1, :cond_6

    .line 5424
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mLastNavHiddenState:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->isPreUpdateNeeded()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5425
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7d4

    if-eq v5, v6, :cond_0

    move v3, v4

    .line 5428
    goto/16 :goto_0

    .line 5432
    :cond_6
    if-eqz v1, :cond_7

    const-string v5, "android"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.internal"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 5433
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mLastNavHiddenState:Z

    goto/16 :goto_0

    .line 5437
    :cond_7
    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mHideAppListSet:Ljava/util/HashSet;

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5438
    iget v3, p6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x3eb

    if-ne v3, v5, :cond_8

    .line 5439
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-eqz v3, :cond_a

    .line 5440
    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, p3, Landroid/graphics/Rect;->bottom:I

    iput v3, p4, Landroid/graphics/Rect;->bottom:I

    iput v3, p2, Landroid/graphics/Rect;->bottom:I

    .line 5444
    :goto_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->hideNavDelayed:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5447
    :cond_8
    iget v3, p6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x3e8

    if-eq v3, v5, :cond_9

    iget v3, p6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7e8

    if-ne v3, v5, :cond_b

    :cond_9
    move v3, v4

    .line 5449
    goto/16 :goto_0

    .line 5442
    :cond_a
    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iput v3, p3, Landroid/graphics/Rect;->right:I

    iput v3, p4, Landroid/graphics/Rect;->right:I

    iput v3, p2, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 5463
    :cond_b
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingNavHideManager:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    invoke-virtual {v3, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->setLastRunningPkg(Ljava/lang/String;)V

    move v3, v4

    .line 5464
    goto/16 :goto_0
.end method

.method public isPreUpdateNeeded()Z
    .locals 1

    .prologue
    .line 5257
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mPreUpdateNeeded:Z

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "e"

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 5352
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    .line 5354
    .local v0, touchRegion:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 5355
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 5358
    .local v2, y:I
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mNavShownByTouch:Z

    if-eqz v3, :cond_0

    .line 5359
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5360
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mNavRegionTouched:Z

    .line 5361
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->hideNavDelayed:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5362
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->hideNavDelayed:Ljava/lang/Runnable;

    const-wide/16 v5, 0x7d0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5371
    :cond_0
    :goto_0
    return v7

    .line 5364
    :cond_1
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mNavRegionTouched:Z

    .line 5365
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mNavShownByTouch:Z

    .line 5366
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3, v4}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    .line 5367
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mNavShowingCueView:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->showNavCueView()V
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->access$3600(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;)V

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 5329
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 5334
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 5338
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 5343
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 5347
    const/4 v0, 0x0

    return v0
.end method

.method public resetForcingNavHide()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5294
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mNavHiddenBySetting:Z

    .line 5295
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mNavRegionTouched:Z

    .line 5296
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mNavShownByTouch:Z

    .line 5297
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mNavShowingCueView:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;

    if-eqz v0, :cond_0

    .line 5298
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mNavShowingCueView:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->hideNavCueView()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->access$3400(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;)V

    .line 5300
    :cond_0
    return-void
.end method

.method public setForcingNavHide()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 5285
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mNavShownByTouch:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mNavRegionTouched:Z

    if-nez v0, :cond_0

    .line 5286
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->hideNavDelayed:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5287
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0, v2}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    .line 5288
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mNavShownByTouch:Z

    .line 5289
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mNavHiddenBySetting:Z

    .line 5291
    :cond_0
    return-void
.end method

.method public setLastRunningPkg(Ljava/lang/String;)V
    .locals 0
    .parameter "pkgName"

    .prologue
    .line 5261
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mLastRunningPkgName:Ljava/lang/String;

    .line 5262
    return-void
.end method

.method public setPreUpdateBeforeLayout(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 5253
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mPreUpdateNeeded:Z

    .line 5254
    return-void
.end method

.method public setPreUpdatedPkg(Ljava/lang/String;)V
    .locals 0
    .parameter "pkgName"

    .prologue
    .line 5269
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mPreUpdatedPkgName:Ljava/lang/String;

    .line 5270
    return-void
.end method
