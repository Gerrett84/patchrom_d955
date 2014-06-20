.class public Lcom/android/lgesettings/applications/RunningServiceDetails;
.super Landroid/app/Fragment;
.source "RunningServiceDetails.java"

# interfaces
.implements Lcom/android/lgesettings/applications/RunningState$OnRefreshUiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/applications/RunningServiceDetails$MyAlertDialogFragment;,
        Lcom/android/lgesettings/applications/RunningServiceDetails$ActiveDetail;
    }
.end annotation


# instance fields
.field final mActiveDetails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/lgesettings/applications/RunningServiceDetails$ActiveDetail;",
            ">;"
        }
    .end annotation
.end field

.field mAllDetails:Landroid/view/ViewGroup;

.field mAm:Landroid/app/ActivityManager;

.field mBuilder:Ljava/lang/StringBuilder;

.field mHaveData:Z

.field mInflater:Landroid/view/LayoutInflater;

.field mMergedItem:Lcom/android/lgesettings/applications/RunningState$MergedItem;

.field mNumProcesses:I

.field mNumServices:I

.field mProcessName:Ljava/lang/String;

.field mProcessesHeader:Landroid/widget/TextView;

.field mRootView:Landroid/view/View;

.field mServicesHeader:Landroid/widget/TextView;

.field mShowBackground:Z

.field mSnippet:Landroid/view/ViewGroup;

.field mSnippetActiveItem:Lcom/android/lgesettings/applications/RunningProcessesView$ActiveItem;

.field mSnippetViewHolder:Lcom/android/lgesettings/applications/RunningProcessesView$ViewHolder;

.field mState:Lcom/android/lgesettings/applications/RunningState;

.field mUid:I

.field mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    .line 578
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/applications/RunningServiceDetails;Landroid/content/ComponentName;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/lgesettings/applications/RunningServiceDetails;->showConfirmStopDialog(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/applications/RunningServiceDetails;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/lgesettings/applications/RunningServiceDetails;->finish()V

    return-void
.end method

.method private finish()V
    .locals 2

    .prologue
    .line 501
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/lgesettings/applications/RunningServiceDetails$1;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/applications/RunningServiceDetails$1;-><init>(Lcom/android/lgesettings/applications/RunningServiceDetails;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 510
    return-void
.end method

.method private showConfirmStopDialog(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "comp"

    .prologue
    .line 572
    const/4 v1, 0x1

    invoke-static {v1, p1}, Lcom/android/lgesettings/applications/RunningServiceDetails$MyAlertDialogFragment;->newConfirmStop(ILandroid/content/ComponentName;)Lcom/android/lgesettings/applications/RunningServiceDetails$MyAlertDialogFragment;

    move-result-object v0

    .line 574
    .local v0, newFragment:Landroid/app/DialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 575
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/RunningServiceDetails;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmstop"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 576
    return-void
.end method


# virtual methods
.method activeDetailForService(Landroid/content/ComponentName;)Lcom/android/lgesettings/applications/RunningServiceDetails$ActiveDetail;
    .locals 3
    .parameter "comp"

    .prologue
    .line 561
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 562
    iget-object v2, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/applications/RunningServiceDetails$ActiveDetail;

    .line 563
    .local v0, ad:Lcom/android/lgesettings/applications/RunningServiceDetails$ActiveDetail;
    iget-object v2, v0, Lcom/android/lgesettings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/lgesettings/applications/RunningState$ServiceItem;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/lgesettings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/lgesettings/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/lgesettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/lgesettings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/lgesettings/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/lgesettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 568
    .end local v0           #ad:Lcom/android/lgesettings/applications/RunningServiceDetails$ActiveDetail;
    :goto_1
    return-object v0

    .line 561
    .restart local v0       #ad:Lcom/android/lgesettings/applications/RunningServiceDetails$ActiveDetail;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 568
    .end local v0           #ad:Lcom/android/lgesettings/applications/RunningServiceDetails$ActiveDetail;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method addDetailViews()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 440
    iget-object v2, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 441
    iget-object v3, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/lgesettings/applications/RunningServiceDetails$ActiveDetail;

    iget-object v2, v2, Lcom/android/lgesettings/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 440
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 443
    :cond_0
    iget-object v2, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 445
    iget-object v2, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 446
    iget-object v2, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 447
    iput-object v6, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    .line 450
    :cond_1
    iget-object v2, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 451
    iget-object v2, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 452
    iput-object v6, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    .line 455
    :cond_2
    iput v5, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mNumProcesses:I

    iput v5, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mNumServices:I

    .line 457
    iget-object v2, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/lgesettings/applications/RunningState$MergedItem;

    if-eqz v2, :cond_6

    .line 458
    iget-object v2, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/lgesettings/applications/RunningState$MergedItem;

    iget-object v2, v2, Lcom/android/lgesettings/applications/RunningState$MergedItem;->mUser:Lcom/android/lgesettings/applications/RunningState$UserState;

    if-eqz v2, :cond_5

    .line 460
    iget-boolean v2, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mShowBackground:Z

    if-eqz v2, :cond_3

    .line 461
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/lgesettings/applications/RunningState$MergedItem;

    iget-object v2, v2, Lcom/android/lgesettings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 462
    .local v1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    iget-object v2, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mState:Lcom/android/lgesettings/applications/RunningState;

    iget-object v2, v2, Lcom/android/lgesettings/applications/RunningState;->mBackgroundComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 466
    :goto_1
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 467
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/lgesettings/applications/RunningState$MergedItem;

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/lgesettings/applications/RunningServiceDetails;->addDetailsViews(Lcom/android/lgesettings/applications/RunningState$MergedItem;ZZ)V

    .line 466
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 464
    .end local v1           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    :cond_3
    iget-object v2, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/lgesettings/applications/RunningState$MergedItem;

    iget-object v1, v2, Lcom/android/lgesettings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    .restart local v1       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    goto :goto_1

    .line 469
    :cond_4
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 470
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/lgesettings/applications/RunningState$MergedItem;

    invoke-virtual {p0, v2, v5, v4}, Lcom/android/lgesettings/applications/RunningServiceDetails;->addDetailsViews(Lcom/android/lgesettings/applications/RunningState$MergedItem;ZZ)V

    .line 469
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 473
    .end local v1           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    :cond_5
    iget-object v2, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/lgesettings/applications/RunningState$MergedItem;

    invoke-virtual {p0, v2, v4, v4}, Lcom/android/lgesettings/applications/RunningServiceDetails;->addDetailsViews(Lcom/android/lgesettings/applications/RunningState$MergedItem;ZZ)V

    .line 476
    :cond_6
    return-void
.end method

.method addDetailsViews(Lcom/android/lgesettings/applications/RunningState$MergedItem;ZZ)V
    .locals 7
    .parameter "item"
    .parameter "inclServices"
    .parameter "inclProcesses"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 409
    if-eqz p1, :cond_1

    .line 410
    if-eqz p2, :cond_0

    .line 411
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p1, Lcom/android/lgesettings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 412
    iget-object v2, p1, Lcom/android/lgesettings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/lgesettings/applications/RunningState$ServiceItem;

    invoke-virtual {p0, v2, p1, v3, v3}, Lcom/android/lgesettings/applications/RunningServiceDetails;->addServiceDetailsView(Lcom/android/lgesettings/applications/RunningState$ServiceItem;Lcom/android/lgesettings/applications/RunningState$MergedItem;ZZ)V

    .line 411
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 416
    .end local v0           #i:I
    :cond_0
    if-eqz p3, :cond_1

    .line 417
    iget-object v2, p1, Lcom/android/lgesettings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_3

    .line 421
    const/4 v5, 0x0

    iget v2, p1, Lcom/android/lgesettings/applications/RunningState$BaseItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-eq v2, v6, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {p0, v5, p1, v4, v2}, Lcom/android/lgesettings/applications/RunningServiceDetails;->addServiceDetailsView(Lcom/android/lgesettings/applications/RunningState$ServiceItem;Lcom/android/lgesettings/applications/RunningState$MergedItem;ZZ)V

    .line 437
    :cond_1
    return-void

    :cond_2
    move v2, v4

    .line 421
    goto :goto_1

    .line 425
    :cond_3
    const/4 v0, -0x1

    .restart local v0       #i:I
    :goto_2
    iget-object v2, p1, Lcom/android/lgesettings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 426
    if-gez v0, :cond_4

    iget-object v1, p1, Lcom/android/lgesettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/lgesettings/applications/RunningState$ProcessItem;

    .line 428
    .local v1, pi:Lcom/android/lgesettings/applications/RunningState$ProcessItem;
    :goto_3
    if-eqz v1, :cond_5

    iget v2, v1, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mPid:I

    if-gtz v2, :cond_5

    .line 425
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 426
    .end local v1           #pi:Lcom/android/lgesettings/applications/RunningState$ProcessItem;
    :cond_4
    iget-object v2, p1, Lcom/android/lgesettings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/lgesettings/applications/RunningState$ProcessItem;

    move-object v1, v2

    goto :goto_3

    .line 432
    .restart local v1       #pi:Lcom/android/lgesettings/applications/RunningState$ProcessItem;
    :cond_5
    if-gez v0, :cond_6

    move v2, v3

    :goto_5
    invoke-virtual {p0, v1, v2}, Lcom/android/lgesettings/applications/RunningServiceDetails;->addProcessDetailsView(Lcom/android/lgesettings/applications/RunningState$ProcessItem;Z)V

    goto :goto_4

    :cond_6
    move v2, v4

    goto :goto_5
.end method

.method addProcessDetailsView(Lcom/android/lgesettings/applications/RunningState$ProcessItem;Z)V
    .locals 13
    .parameter "pi"
    .parameter "isMain"

    .prologue
    const/4 v12, 0x0

    .line 349
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/RunningServiceDetails;->addProcessesHeader()V

    .line 351
    new-instance v2, Lcom/android/lgesettings/applications/RunningServiceDetails$ActiveDetail;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/applications/RunningServiceDetails$ActiveDetail;-><init>(Lcom/android/lgesettings/applications/RunningServiceDetails;)V

    .line 352
    .local v2, detail:Lcom/android/lgesettings/applications/RunningServiceDetails$ActiveDetail;
    iget-object v9, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f04012d

    iget-object v11, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 354
    .local v5, root:Landroid/view/View;
    iget-object v9, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v9, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 355
    iput-object v5, v2, Lcom/android/lgesettings/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    .line 356
    new-instance v9, Lcom/android/lgesettings/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v9, v5}, Lcom/android/lgesettings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v9, v2, Lcom/android/lgesettings/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/lgesettings/applications/RunningProcessesView$ViewHolder;

    .line 357
    iget-object v9, v2, Lcom/android/lgesettings/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/lgesettings/applications/RunningProcessesView$ViewHolder;

    iget-object v10, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mState:Lcom/android/lgesettings/applications/RunningState;

    iget-object v11, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10, p1, v11}, Lcom/android/lgesettings/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/lgesettings/applications/RunningState;Lcom/android/lgesettings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/lgesettings/applications/RunningProcessesView$ActiveItem;

    move-result-object v9

    iput-object v9, v2, Lcom/android/lgesettings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/lgesettings/applications/RunningProcessesView$ActiveItem;

    .line 359
    const v9, 0x7f0a0298

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 360
    .local v1, description:Landroid/widget/TextView;
    iget v9, p1, Lcom/android/lgesettings/applications/RunningState$BaseItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    if-eq v9, v10, :cond_1

    .line 363
    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 404
    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    return-void

    .line 364
    :cond_1
    if-eqz p2, :cond_2

    .line 365
    const v9, 0x7f0805e6

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 367
    :cond_2
    const/4 v8, 0x0

    .line 368
    .local v8, textid:I
    const/4 v3, 0x0

    .line 369
    .local v3, label:Ljava/lang/CharSequence;
    iget-object v6, p1, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 370
    .local v6, rpi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v0, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    .line 373
    .local v0, comp:Landroid/content/ComponentName;
    iget v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    packed-switch v9, :pswitch_data_0

    .line 399
    :cond_3
    :goto_1
    if-eqz v8, :cond_0

    if-eqz v3, :cond_0

    .line 400
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v3, v10, v12

    invoke-virtual {v9, v8, v10}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 375
    :pswitch_0
    const v8, 0x7f0805e8

    .line 376
    iget-object v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    if-eqz v9, :cond_3

    .line 378
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    .line 380
    .local v4, prov:Landroid/content/pm/ProviderInfo;
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v4, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-static {v9, v10, v4}, Lcom/android/lgesettings/applications/RunningState;->makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_1

    .line 387
    .end local v4           #prov:Landroid/content/pm/ProviderInfo;
    :pswitch_1
    const v8, 0x7f0805e7

    .line 388
    iget-object v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    if-eqz v9, :cond_3

    .line 390
    :try_start_1
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v7

    .line 392
    .local v7, serv:Landroid/content/pm/ServiceInfo;
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v7, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-static {v9, v10, v7}, Lcom/android/lgesettings/applications/RunningState;->makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_1

    .line 394
    .end local v7           #serv:Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v9

    goto :goto_1

    .line 382
    :catch_1
    move-exception v9

    goto :goto_1

    .line 373
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method addProcessesHeader()V
    .locals 4

    .prologue
    .line 246
    iget v0, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mNumProcesses:I

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040133

    iget-object v2, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    .line 249
    iget-object v0, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    const v1, 0x7f0805df

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 250
    iget-object v0, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 252
    :cond_0
    iget v0, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mNumProcesses:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mNumProcesses:I

    .line 253
    return-void
.end method

.method addServiceDetailsView(Lcom/android/lgesettings/applications/RunningState$ServiceItem;Lcom/android/lgesettings/applications/RunningState$MergedItem;ZZ)V
    .locals 11
    .parameter "si"
    .parameter "mi"
    .parameter "isService"
    .parameter "inclDetails"

    .prologue
    .line 257
    if-eqz p3, :cond_3

    .line 258
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/RunningServiceDetails;->addServicesHeader()V

    .line 267
    :cond_0
    :goto_0
    if-eqz p1, :cond_4

    move-object v0, p1

    .line 269
    .local v0, bi:Lcom/android/lgesettings/applications/RunningState$BaseItem;
    :goto_1
    new-instance v3, Lcom/android/lgesettings/applications/RunningServiceDetails$ActiveDetail;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/applications/RunningServiceDetails$ActiveDetail;-><init>(Lcom/android/lgesettings/applications/RunningServiceDetails;)V

    .line 270
    .local v3, detail:Lcom/android/lgesettings/applications/RunningServiceDetails$ActiveDetail;
    iget-object v7, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f04012e

    iget-object v9, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 272
    .local v6, root:Landroid/view/View;
    iget-object v7, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 273
    iput-object v6, v3, Lcom/android/lgesettings/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    .line 274
    iput-object p1, v3, Lcom/android/lgesettings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/lgesettings/applications/RunningState$ServiceItem;

    .line 275
    new-instance v7, Lcom/android/lgesettings/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v7, v6}, Lcom/android/lgesettings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v7, v3, Lcom/android/lgesettings/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/lgesettings/applications/RunningProcessesView$ViewHolder;

    .line 276
    iget-object v7, v3, Lcom/android/lgesettings/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/lgesettings/applications/RunningProcessesView$ViewHolder;

    iget-object v8, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mState:Lcom/android/lgesettings/applications/RunningState;

    iget-object v9, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8, v0, v9}, Lcom/android/lgesettings/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/lgesettings/applications/RunningState;Lcom/android/lgesettings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/lgesettings/applications/RunningProcessesView$ActiveItem;

    move-result-object v7

    iput-object v7, v3, Lcom/android/lgesettings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/lgesettings/applications/RunningProcessesView$ActiveItem;

    .line 278
    if-nez p4, :cond_1

    .line 279
    const v7, 0x7f0a0297

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 282
    :cond_1
    if-eqz p1, :cond_2

    iget-object v7, p1, Lcom/android/lgesettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v7, v7, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz v7, :cond_2

    .line 283
    iget-object v7, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mAm:Landroid/app/ActivityManager;

    iget-object v8, p1, Lcom/android/lgesettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Landroid/app/ActivityManager;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v3, Lcom/android/lgesettings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    .line 287
    :cond_2
    const v7, 0x7f0a0298

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 288
    .local v2, description:Landroid/widget/TextView;
    const v7, 0x7f0a0342

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, v3, Lcom/android/lgesettings/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    .line 289
    const v7, 0x7f0a0343

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, v3, Lcom/android/lgesettings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    .line 291
    if-eqz p3, :cond_5

    iget v7, p2, Lcom/android/lgesettings/applications/RunningState$BaseItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-eq v7, v8, :cond_5

    .line 295
    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 296
    const v7, 0x7f0a014e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 345
    :goto_2
    iget-object v7, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    return-void

    .line 259
    .end local v0           #bi:Lcom/android/lgesettings/applications/RunningState$BaseItem;
    .end local v2           #description:Landroid/widget/TextView;
    .end local v3           #detail:Lcom/android/lgesettings/applications/RunningServiceDetails$ActiveDetail;
    .end local v6           #root:Landroid/view/View;
    :cond_3
    iget v7, p2, Lcom/android/lgesettings/applications/RunningState$BaseItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-eq v7, v8, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/RunningServiceDetails;->addProcessesHeader()V

    goto/16 :goto_0

    :cond_4
    move-object v0, p2

    .line 267
    goto/16 :goto_1

    .line 298
    .restart local v0       #bi:Lcom/android/lgesettings/applications/RunningState$BaseItem;
    .restart local v2       #description:Landroid/widget/TextView;
    .restart local v3       #detail:Lcom/android/lgesettings/applications/RunningServiceDetails$ActiveDetail;
    .restart local v6       #root:Landroid/view/View;
    :cond_5
    if-eqz p1, :cond_6

    iget-object v7, p1, Lcom/android/lgesettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget v7, v7, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    if-eqz v7, :cond_6

    .line 299
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p1, Lcom/android/lgesettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v9, p1, Lcom/android/lgesettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget v9, v9, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    iget-object v10, p1, Lcom/android/lgesettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    :goto_3
    iget-object v7, v3, Lcom/android/lgesettings/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    invoke-virtual {v7, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    iget-object v8, v3, Lcom/android/lgesettings/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/lgesettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget-object v7, v3, Lcom/android/lgesettings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    if-eqz v7, :cond_a

    const v7, 0x7f0805e1

    :goto_4
    invoke-virtual {v9, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v7, v3, Lcom/android/lgesettings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    invoke-virtual {v7, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    iget-object v7, v3, Lcom/android/lgesettings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    const v8, 0x1040404

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(I)V

    .line 333
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "send_action_app_error"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 335
    .local v4, enabled:I
    if-eqz v4, :cond_c

    if-eqz p1, :cond_c

    .line 336
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p1, Lcom/android/lgesettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v9, p1, Lcom/android/lgesettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v7, v8, v9}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v7

    iput-object v7, v3, Lcom/android/lgesettings/applications/RunningServiceDetails$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    .line 339
    iget-object v8, v3, Lcom/android/lgesettings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    iget-object v7, v3, Lcom/android/lgesettings/applications/RunningServiceDetails$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    if-eqz v7, :cond_b

    const/4 v7, 0x1

    :goto_5
    invoke-virtual {v8, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2

    .line 303
    .end local v4           #enabled:I
    :cond_6
    iget-boolean v7, p2, Lcom/android/lgesettings/applications/RunningState$BaseItem;->mBackground:Z

    if-eqz v7, :cond_7

    .line 304
    const v7, 0x7f0805e4

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 305
    :cond_7
    iget-object v7, v3, Lcom/android/lgesettings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    if-eqz v7, :cond_8

    .line 307
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p1, Lcom/android/lgesettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 309
    .local v1, clientr:Landroid/content/res/Resources;
    iget-object v7, p1, Lcom/android/lgesettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v7, v7, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 310
    .local v5, label:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0805e5

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 312
    .end local v1           #clientr:Landroid/content/res/Resources;
    .end local v5           #label:Ljava/lang/String;
    :catch_0
    move-exception v7

    goto/16 :goto_3

    .line 315
    :cond_8
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v8

    if-eqz p1, :cond_9

    const v7, 0x7f0805e2

    :goto_6
    invoke-virtual {v8, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_9
    const v7, 0x7f0805e3

    goto :goto_6

    .line 322
    :cond_a
    const v7, 0x7f0805e0

    goto/16 :goto_4

    .line 339
    .restart local v4       #enabled:I
    :cond_b
    const/4 v7, 0x0

    goto :goto_5

    .line 341
    :cond_c
    iget-object v7, v3, Lcom/android/lgesettings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2
.end method

.method addServicesHeader()V
    .locals 4

    .prologue
    .line 236
    iget v0, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mNumServices:I

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040133

    iget-object v2, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    .line 239
    iget-object v0, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    const v1, 0x7f0805de

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 240
    iget-object v0, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 242
    :cond_0
    iget v0, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mNumServices:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mNumServices:I

    .line 243
    return-void
.end method

.method ensureData()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 625
    iget-boolean v0, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mHaveData:Z

    if-nez v0, :cond_0

    .line 626
    iput-boolean v1, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mHaveData:Z

    .line 627
    iget-object v0, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mState:Lcom/android/lgesettings/applications/RunningState;

    invoke-virtual {v0, p0}, Lcom/android/lgesettings/applications/RunningState;->resume(Lcom/android/lgesettings/applications/RunningState$OnRefreshUiListener;)V

    .line 632
    iget-object v0, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mState:Lcom/android/lgesettings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/lgesettings/applications/RunningState;->waitForData()V

    .line 636
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/applications/RunningServiceDetails;->refreshUi(Z)V

    .line 638
    :cond_0
    return-void
.end method

.method findMergedItem()Z
    .locals 6

    .prologue
    .line 208
    const/4 v1, 0x0

    .line 209
    .local v1, item:Lcom/android/lgesettings/applications/RunningState$MergedItem;
    iget-boolean v4, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mShowBackground:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mState:Lcom/android/lgesettings/applications/RunningState;

    invoke-virtual {v4}, Lcom/android/lgesettings/applications/RunningState;->getCurrentBackgroundItems()Ljava/util/ArrayList;

    move-result-object v3

    .line 211
    .local v3, newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    :goto_0
    if-eqz v3, :cond_5

    .line 212
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 213
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/lgesettings/applications/RunningState$MergedItem;

    .line 214
    .local v2, mi:Lcom/android/lgesettings/applications/RunningState$MergedItem;
    iget v4, v2, Lcom/android/lgesettings/applications/RunningState$BaseItem;->mUserId:I

    iget v5, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mUserId:I

    if-eq v4, v5, :cond_2

    .line 212
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 209
    .end local v0           #i:I
    .end local v2           #mi:Lcom/android/lgesettings/applications/RunningState$MergedItem;
    .end local v3           #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    :cond_1
    iget-object v4, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mState:Lcom/android/lgesettings/applications/RunningState;

    invoke-virtual {v4}, Lcom/android/lgesettings/applications/RunningState;->getCurrentMergedItems()Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_0

    .line 217
    .restart local v0       #i:I
    .restart local v2       #mi:Lcom/android/lgesettings/applications/RunningState$MergedItem;
    .restart local v3       #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    :cond_2
    iget v4, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mUid:I

    if-ltz v4, :cond_3

    iget-object v4, v2, Lcom/android/lgesettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/lgesettings/applications/RunningState$ProcessItem;

    if-eqz v4, :cond_3

    iget-object v4, v2, Lcom/android/lgesettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/lgesettings/applications/RunningState$ProcessItem;

    iget v4, v4, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mUid:I

    iget v5, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mUid:I

    if-ne v4, v5, :cond_0

    .line 220
    :cond_3
    iget-object v4, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, v2, Lcom/android/lgesettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/lgesettings/applications/RunningState$ProcessItem;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/lgesettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/lgesettings/applications/RunningState$ProcessItem;

    iget-object v5, v5, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 222
    :cond_4
    move-object v1, v2

    .line 228
    .end local v0           #i:I
    .end local v2           #mi:Lcom/android/lgesettings/applications/RunningState$MergedItem;
    :cond_5
    iget-object v4, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/lgesettings/applications/RunningState$MergedItem;

    if-eq v4, v1, :cond_6

    .line 229
    iput-object v1, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/lgesettings/applications/RunningState$MergedItem;

    .line 230
    const/4 v4, 0x1

    .line 232
    :goto_2
    return v4

    :cond_6
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 514
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 516
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "uid"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mUid:I

    .line 517
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mUserId:I

    .line 518
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "process"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    .line 519
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "background"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mShowBackground:Z

    .line 521
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mAm:Landroid/app/ActivityManager;

    .line 522
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    .line 524
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/applications/RunningState;->getInstance(Landroid/content/Context;)Lcom/android/lgesettings/applications/RunningState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mState:Lcom/android/lgesettings/applications/RunningState;

    .line 525
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 529
    const v1, 0x7f04012c

    invoke-virtual {p1, v1, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mRootView:Landroid/view/View;

    .line 531
    .local v0, view:Landroid/view/View;
    instance-of v1, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v1, :cond_0

    .line 532
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 535
    :cond_0
    const v1, 0x7f0a014c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    .line 536
    const v1, 0x7f0a0296

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    .line 537
    iget-object v1, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v1, v4, v2, v4, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 538
    new-instance v1, Lcom/android/lgesettings/applications/RunningProcessesView$ViewHolder;

    iget-object v2, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    invoke-direct {v1, v2}, Lcom/android/lgesettings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mSnippetViewHolder:Lcom/android/lgesettings/applications/RunningProcessesView$ViewHolder;

    .line 542
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/RunningServiceDetails;->ensureData()V

    .line 544
    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 549
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 550
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mHaveData:Z

    .line 551
    iget-object v0, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mState:Lcom/android/lgesettings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/lgesettings/applications/RunningState;->pause()V

    .line 552
    return-void
.end method

.method public onRefreshUi(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 651
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 665
    :goto_0
    return-void

    .line 652
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 654
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/RunningServiceDetails;->updateTimes()V

    goto :goto_0

    .line 657
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/applications/RunningServiceDetails;->refreshUi(Z)V

    .line 658
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/RunningServiceDetails;->updateTimes()V

    goto :goto_0

    .line 661
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/applications/RunningServiceDetails;->refreshUi(Z)V

    .line 662
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/RunningServiceDetails;->updateTimes()V

    goto :goto_0

    .line 652
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 556
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 557
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/RunningServiceDetails;->ensureData()V

    .line 558
    return-void
.end method

.method refreshUi(Z)V
    .locals 4
    .parameter "dataChanged"

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/RunningServiceDetails;->findMergedItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    const/4 p1, 0x1

    .line 482
    :cond_0
    if-eqz p1, :cond_1

    .line 483
    iget-object v0, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/lgesettings/applications/RunningState$MergedItem;

    if-eqz v0, :cond_2

    .line 484
    iget-object v0, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mSnippetViewHolder:Lcom/android/lgesettings/applications/RunningProcessesView$ViewHolder;

    iget-object v1, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mState:Lcom/android/lgesettings/applications/RunningState;

    iget-object v2, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/lgesettings/applications/RunningState$MergedItem;

    iget-object v3, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/lgesettings/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/lgesettings/applications/RunningState;Lcom/android/lgesettings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/lgesettings/applications/RunningProcessesView$ActiveItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/lgesettings/applications/RunningProcessesView$ActiveItem;

    .line 496
    :goto_0
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/RunningServiceDetails;->addDetailViews()V

    .line 498
    :cond_1
    :goto_1
    return-void

    .line 486
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/lgesettings/applications/RunningProcessesView$ActiveItem;

    if-eqz v0, :cond_3

    .line 488
    iget-object v0, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/lgesettings/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/lgesettings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningProcessesView$ViewHolder;->size:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    iget-object v0, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/lgesettings/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/lgesettings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningProcessesView$ViewHolder;->uptime:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    iget-object v0, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/lgesettings/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/lgesettings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningProcessesView$ViewHolder;->description:Landroid/widget/TextView;

    const v1, 0x7f0805dd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 493
    :cond_3
    invoke-direct {p0}, Lcom/android/lgesettings/applications/RunningServiceDetails;->finish()V

    goto :goto_1
.end method

.method updateTimes()V
    .locals 4

    .prologue
    .line 641
    iget-object v1, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/lgesettings/applications/RunningProcessesView$ActiveItem;

    if-eqz v1, :cond_0

    .line 642
    iget-object v1, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/lgesettings/applications/RunningProcessesView$ActiveItem;

    invoke-virtual {p0}, Lcom/android/lgesettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Lcom/android/lgesettings/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 644
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 645
    iget-object v1, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/applications/RunningServiceDetails$ActiveDetail;

    iget-object v1, v1, Lcom/android/lgesettings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/lgesettings/applications/RunningProcessesView$ActiveItem;

    invoke-virtual {p0}, Lcom/android/lgesettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Lcom/android/lgesettings/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 644
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 647
    :cond_1
    return-void
.end method
