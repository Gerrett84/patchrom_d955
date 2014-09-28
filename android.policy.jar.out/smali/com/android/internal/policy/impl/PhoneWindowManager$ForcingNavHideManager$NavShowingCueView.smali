.class Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;
.super Landroid/widget/RelativeLayout;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NavShowingCueView"
.end annotation


# instance fields
.field private final MIN_MOVING_OFFSET:I

.field private final NAV_CUE_HIDE:I

.field private final NAV_CUE_RESET:I

.field private final NAV_CUE_SHOW:I

.field private final button_height_land:I

.field private final button_height_port:I

.field private final button_width_land:I

.field private final button_width_port:I

.field private initTouchDownedX:I

.field private initTouchDownedY:I

.field private isTouchDowned:Z

.field private lastTouchX:I

.field private lastTouchY:I

.field mCue:Landroid/view/View;

.field private mIsPortrait:Z

.field mLandCue:Landroid/view/View;

.field private mLastOrientation:I

.field private final mNavShowingCueWin:Landroid/view/Window;

.field mPortCue:Landroid/view/View;

.field private mWm:Landroid/view/WindowManager;

.field private movingDelta:I

.field private posX:I

.field private posY:I

.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;Landroid/content/Context;)V
    .locals 7
    .parameter
    .parameter "context"

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v2, -0x1

    .line 5524
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    .line 5525
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 5506
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->mLastOrientation:I

    .line 5508
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->mIsPortrait:Z

    .line 5511
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->isTouchDowned:Z

    .line 5512
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->initTouchDownedX:I

    .line 5513
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->initTouchDownedY:I

    .line 5514
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->lastTouchX:I

    .line 5515
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->lastTouchY:I

    .line 5517
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->movingDelta:I

    .line 5518
    const/16 v2, 0x32

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->MIN_MOVING_OFFSET:I

    .line 5520
    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->NAV_CUE_SHOW:I

    .line 5521
    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->NAV_CUE_HIDE:I

    .line 5522
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->NAV_CUE_RESET:I

    .line 5527
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20d0076

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->button_width_port:I

    .line 5528
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20d0077

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->button_height_port:I

    .line 5529
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20d0078

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->button_width_land:I

    .line 5530
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20d0079

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->button_height_land:I

    .line 5532
    invoke-static {p2}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v1

    .line 5533
    .local v1, win:Landroid/view/Window;
    const-string v2, "window"

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->mWm:Landroid/view/WindowManager;

    .line 5535
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->mNavShowingCueWin:Landroid/view/Window;

    .line 5537
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->mWm:Landroid/view/WindowManager;

    if-nez v2, :cond_1

    .line 5562
    :cond_0
    :goto_0
    return-void

    .line 5539
    :cond_1
    const-string v2, "layout_inflater"

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 5540
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x2030017

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 5542
    const v2, 0x20e006b

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->mPortCue:Landroid/view/View;

    .line 5543
    const v2, 0x20e006c

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->mLandCue:Landroid/view/View;

    .line 5544
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->getRootView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->mCue:Landroid/view/View;

    .line 5546
    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    iget-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    if-ge v2, v3, :cond_2

    .line 5547
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->mIsPortrait:Z

    .line 5552
    :goto_1
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->mIsPortrait:Z

    invoke-direct {p0, v2, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->setEnvViaRotation(ZI)V

    .line 5553
    const-string v2, "NavShowingCue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ini navshowingCueView.. inflater = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", this = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5556
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->mWm:Landroid/view/WindowManager;

    if-eqz v2, :cond_0

    .line 5557
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->mPortCue:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5558
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->mLandCue:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5559
    const-string v2, "NavShowingCue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ini navshowingCueView.. posX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->posX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", posY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->posY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5560
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->mWm:Landroid/view/WindowManager;

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->updateLayout(Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v2, p0, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 5549
    :cond_2
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->mIsPortrait:Z

    goto :goto_1
.end method

.method static synthetic access$3400(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 5497
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->hideNavCueView()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 5497
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->showNavCueView()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 5497
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->setEnvViaRotation(ZI)V

    return-void
.end method

.method private hideNavCueView()V
    .locals 2

    .prologue
    .line 5591
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mNavShowingCueView:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->access$3900(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;)Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5592
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mNavShowingCueView:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->access$3900(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;)Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;

    move-result-object v0

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->post(Ljava/lang/Runnable;)Z

    .line 5600
    :cond_0
    return-void
.end method

.method private setEnvViaRotation(ZI)V
    .locals 3
    .parameter "isPortrait"
    .parameter "requestType"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 5565
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->mIsPortrait:Z

    .line 5566
    packed-switch p2, :pswitch_data_0

    .line 5588
    :goto_0
    return-void

    .line 5568
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->mCue:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5569
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->mPortCue:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5570
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->mLandCue:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 5573
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->mCue:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5574
    if-eqz p1, :cond_0

    .line 5575
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->mPortCue:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5576
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->mLandCue:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 5578
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->mLandCue:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5579
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->mPortCue:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 5583
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->mCue:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5584
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->mPortCue:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5585
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->mLandCue:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 5566
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private showNavCueView()V
    .locals 2

    .prologue
    .line 5603
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mNavShowingCueView:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->access$3900(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;)Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5604
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mNavShowingCueView:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->access$3900(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;)Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;

    move-result-object v0

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView$2;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->post(Ljava/lang/Runnable;)Z

    .line 5612
    :cond_0
    return-void
.end method

.method private updateLayout(Z)Landroid/view/WindowManager$LayoutParams;
    .locals 6
    .parameter "isInitial"

    .prologue
    const/16 v5, 0x33

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5617
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->mNavShowingCueWin:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 5619
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x7d7

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 5620
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 5621
    const v1, 0x1040328

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 5627
    const-string v1, "NaviShowingButton"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 5630
    if-eqz p1, :cond_2

    .line 5631
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    if-ge v1, v2, :cond_1

    .line 5633
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 5634
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->button_width_port:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 5635
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->button_height_port:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 5637
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->button_width_port:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5638
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->button_height_port:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5648
    :goto_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->posX:I

    .line 5649
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->posY:I

    .line 5677
    :cond_0
    :goto_1
    return-object v0

    .line 5641
    :cond_1
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 5642
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->button_height_land:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 5643
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->button_width_land:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 5645
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->button_width_land:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5646
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->button_height_land:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 5651
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    if-ge v1, v2, :cond_4

    .line 5653
    invoke-direct {p0, v4, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->setEnvViaRotation(ZI)V

    .line 5654
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->button_width_port:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5655
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->button_height_port:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5656
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->button_height_port:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 5657
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->posX:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 5659
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->posX:I

    if-gez v1, :cond_3

    .line 5660
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_1

    .line 5661
    :cond_3
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->posX:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->button_width_port:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_0

    .line 5662
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->button_width_port:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_1

    .line 5665
    :cond_4
    invoke-direct {p0, v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->setEnvViaRotation(ZI)V

    .line 5666
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->button_width_land:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5667
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->button_height_land:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5668
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->button_width_land:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 5669
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->posY:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 5670
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->posY:I

    if-gez v1, :cond_5

    .line 5671
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_1

    .line 5672
    :cond_5
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->posY:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->button_height_land:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_0

    .line 5673
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->button_height_land:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_1
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .parameter "newConfig"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 5682
    const-string v0, "NavShowingCue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configurationChanged..  orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mLastOrientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->mLastOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5683
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingNavHideManager:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->isForcingNavHideState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5684
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_2

    .line 5685
    invoke-direct {p0, v3, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->setEnvViaRotation(ZI)V

    .line 5690
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->mLastOrientation:I

    if-eq v0, v4, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->mLastOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1

    .line 5692
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->mLastOrientation:I

    if-ne v0, v3, :cond_3

    .line 5695
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->posX:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->button_height_land:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->posY:I

    .line 5702
    :cond_1
    :goto_1
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->mLastOrientation:I

    if-ne v0, v4, :cond_4

    .line 5703
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->mWm:Landroid/view/WindowManager;

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->updateLayout(Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5706
    :goto_2
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->mLastOrientation:I

    .line 5707
    return-void

    .line 5686
    :cond_2
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v6, :cond_0

    .line 5687
    invoke-direct {p0, v5, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->setEnvViaRotation(ZI)V

    goto :goto_0

    .line 5696
    :cond_3
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->mLastOrientation:I

    if-ne v0, v6, :cond_1

    .line 5699
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->posY:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->button_width_port:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->posX:I

    goto :goto_1

    .line 5705
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->mWm:Landroid/view/WindowManager;

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->updateLayout(Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "v"
    .parameter "ev"

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/16 v6, 0x32

    const/4 v7, 0x0

    .line 5711
    const/4 v0, 0x1

    .line 5712
    .local v0, result:Z
    const-string v3, "NavShowingCue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "touch event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5714
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 5808
    :cond_0
    :goto_0
    return v0

    .line 5716
    :pswitch_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    if-ge v3, v4, :cond_1

    .line 5717
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->mPortCue:Landroid/view/View;

    const v4, 0x20205e2

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 5721
    :goto_1
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->isTouchDowned:Z

    .line 5722
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->lastTouchX:I

    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->initTouchDownedX:I

    .line 5723
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->lastTouchY:I

    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->initTouchDownedY:I

    goto :goto_0

    .line 5719
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->mLandCue:Landroid/view/View;

    const v4, 0x20205e3

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 5726
    :pswitch_1
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->isTouchDowned:Z

    if-eqz v3, :cond_0

    .line 5727
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v1, v3

    .line 5728
    .local v1, touchX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v2, v3

    .line 5730
    .local v2, touchY:I
    const-string v3, "NavShowingCue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateViewLayout called.. mUnrestrictedScreenWidth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mUnrestrictedScreenHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5731
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    if-ge v3, v4, :cond_4

    .line 5733
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->movingDelta:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v6, :cond_2

    .line 5734
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->initTouchDownedX:I

    sub-int v3, v1, v3

    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->movingDelta:I

    .line 5736
    :cond_2
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->posX:I

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->lastTouchX:I

    sub-int v4, v1, v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->posX:I

    .line 5737
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->posX:I

    if-lez v3, :cond_3

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->posX:I

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_3

    .line 5738
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->mWm:Landroid/view/WindowManager;

    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->updateLayout(Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-interface {v3, p0, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5742
    :goto_2
    const-string v3, "NavShowingCue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateViewLayout called.. check position initTouchDownedX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->initTouchDownedX:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", lastTouchX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->lastTouchX:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5743
    const-string v3, "NavShowingCue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateViewLayout called.. check position current.. touchX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", movingDelta = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->movingDelta:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5744
    const-string v3, "NavShowingCue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateViewLayout called.. check position posX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->posX:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", posY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->posY:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5758
    :goto_3
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->lastTouchX:I

    .line 5759
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->lastTouchY:I

    goto/16 :goto_0

    .line 5740
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->posX:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->posX:I

    goto/16 :goto_2

    .line 5747
    :cond_4
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->movingDelta:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v6, :cond_5

    .line 5748
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->initTouchDownedY:I

    sub-int v3, v2, v3

    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->movingDelta:I

    .line 5750
    :cond_5
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->posY:I

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->lastTouchY:I

    sub-int v4, v2, v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->posY:I

    .line 5751
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->posY:I

    if-lez v3, :cond_6

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->posY:I

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_6

    .line 5752
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->mWm:Landroid/view/WindowManager;

    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->updateLayout(Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-interface {v3, p0, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 5754
    :cond_6
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->posY:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->posY:I

    goto :goto_3

    .line 5763
    .end local v1           #touchX:I
    .end local v2           #touchY:I
    :pswitch_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    if-ge v3, v4, :cond_a

    .line 5764
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->mPortCue:Landroid/view/View;

    const v4, 0x20205e0

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 5768
    :goto_4
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->isTouchDowned:Z

    if-eqz v3, :cond_0

    .line 5769
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v1, v3

    .line 5770
    .restart local v1       #touchX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v2, v3

    .line 5772
    .restart local v2       #touchY:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    if-ge v3, v4, :cond_b

    .line 5774
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->movingDelta:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v6, :cond_7

    .line 5775
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->initTouchDownedX:I

    sub-int v3, v1, v3

    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->movingDelta:I

    .line 5777
    :cond_7
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->posX:I

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->lastTouchX:I

    sub-int v4, v1, v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->posX:I

    .line 5778
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->posX:I

    if-lez v3, :cond_8

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->posX:I

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_8

    .line 5779
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->mWm:Landroid/view/WindowManager;

    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->updateLayout(Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-interface {v3, p0, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5792
    :cond_8
    :goto_5
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->movingDelta:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v6, :cond_9

    .line 5794
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->hideNavCueView()V

    .line 5795
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3, v9}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    .line 5796
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mNavShownByTouch:Z
    invoke-static {v3, v9}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->access$4102(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;Z)Z

    .line 5797
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->hideNavDelayed:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->access$4200(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v5, 0x7d0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5800
    :cond_9
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->isTouchDowned:Z

    .line 5801
    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->lastTouchX:I

    .line 5802
    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->lastTouchY:I

    .line 5803
    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->initTouchDownedX:I

    .line 5804
    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->initTouchDownedY:I

    .line 5805
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->movingDelta:I

    goto/16 :goto_0

    .line 5766
    .end local v1           #touchX:I
    .end local v2           #touchY:I
    :cond_a
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->mLandCue:Landroid/view/View;

    const v4, 0x20205e1

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_4

    .line 5783
    .restart local v1       #touchX:I
    .restart local v2       #touchY:I
    :cond_b
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->movingDelta:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v6, :cond_c

    .line 5784
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->initTouchDownedY:I

    sub-int v3, v2, v3

    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->movingDelta:I

    .line 5786
    :cond_c
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->posY:I

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->lastTouchY:I

    sub-int v4, v2, v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->posY:I

    .line 5787
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->posY:I

    if-lez v3, :cond_8

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->posY:I

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_8

    .line 5788
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->mWm:Landroid/view/WindowManager;

    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->updateLayout(Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-interface {v3, p0, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    .line 5714
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
