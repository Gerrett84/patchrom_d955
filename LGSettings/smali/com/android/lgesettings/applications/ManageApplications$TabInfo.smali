.class public Lcom/android/lgesettings/applications/ManageApplications$TabInfo;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/applications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabInfo"
.end annotation


# instance fields
.field private mAppStorage:J

.field public mApplications:Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;

.field public final mApplicationsState:Lcom/android/lgesettings/applications/ApplicationsState;

.field public final mClickListener:Lcom/android/lgesettings/applications/AppClickListener;

.field private mColorBar:Lcom/android/lgesettings/applications/LinearColorBar;

.field public final mComputingSizeStr:Ljava/lang/CharSequence;

.field private mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field public final mFilter:I

.field private mFreeStorage:J

.field private mFreeStorageText:Landroid/widget/TextView;

.field public mInflater:Landroid/view/LayoutInflater;

.field public final mInvalidSizeStr:Ljava/lang/CharSequence;

.field public final mLabel:Ljava/lang/CharSequence;

.field private mLastFreeStorage:J

.field private mLastUsedStorage:J

.field private mListContainer:Landroid/view/View;

.field public final mListType:I

.field private mListView:Landroid/widget/ListView;

.field private mLoadingContainer:Landroid/view/View;

.field public final mOwner:Lcom/android/lgesettings/applications/ManageApplications;

.field public mRootView:Landroid/view/View;

.field final mRunningProcessesAvail:Ljava/lang/Runnable;

.field private mRunningProcessesView:Lcom/android/lgesettings/applications/RunningProcessesView;

.field private final mSavedInstanceState:Landroid/os/Bundle;

.field private mStorageChartLabel:Landroid/widget/TextView;

.field private mTotalStorage:J

.field private mUsedStorageText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/applications/ManageApplications;Lcom/android/lgesettings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/lgesettings/applications/AppClickListener;Landroid/os/Bundle;)V
    .locals 2
    .parameter "owner"
    .parameter "apps"
    .parameter "label"
    .parameter "listType"
    .parameter "clickListener"
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v0, 0x0

    .line 226
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-wide v0, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mFreeStorage:J

    iput-wide v0, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mAppStorage:J

    iput-wide v0, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mTotalStorage:J

    .line 218
    new-instance v0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/applications/ManageApplications$TabInfo$1;-><init>(Lcom/android/lgesettings/applications/ManageApplications$TabInfo;)V

    iput-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mRunningProcessesAvail:Ljava/lang/Runnable;

    .line 227
    iput-object p1, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/lgesettings/applications/ManageApplications;

    .line 228
    iput-object p2, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mApplicationsState:Lcom/android/lgesettings/applications/ApplicationsState;

    .line 229
    iput-object p3, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mLabel:Ljava/lang/CharSequence;

    .line 230
    iput p4, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mListType:I

    .line 231
    packed-switch p4, :pswitch_data_0

    .line 234
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mFilter:I

    .line 236
    :goto_0
    iput-object p5, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mClickListener:Lcom/android/lgesettings/applications/AppClickListener;

    .line 237
    invoke-virtual {p1}, Lcom/android/lgesettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0805af

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 238
    invoke-virtual {p1}, Lcom/android/lgesettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0805ae

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mComputingSizeStr:Ljava/lang/CharSequence;

    .line 239
    iput-object p6, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mSavedInstanceState:Landroid/os/Bundle;

    .line 240
    return-void

    .line 232
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mFilter:I

    goto :goto_0

    .line 233
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mFilter:I

    goto :goto_0

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$1100(Lcom/android/lgesettings/applications/ManageApplications$TabInfo;)Lcom/android/lgesettings/applications/RunningProcessesView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/lgesettings/applications/RunningProcessesView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/lgesettings/applications/ManageApplications$TabInfo;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/lgesettings/applications/ManageApplications$TabInfo;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method applyCurrentStorage()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    const-wide/16 v7, -0x1

    .line 394
    iget-object v3, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    if-nez v3, :cond_1

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    iget-wide v3, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mTotalStorage:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    .line 409
    iget-object v3, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mColorBar:Lcom/android/lgesettings/applications/LinearColorBar;

    iget-wide v4, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mTotalStorage:J

    iget-wide v6, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mFreeStorage:J

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mAppStorage:J

    sub-long/2addr v4, v6

    long-to-float v4, v4

    iget-wide v5, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mTotalStorage:J

    long-to-float v5, v5

    div-float/2addr v4, v5

    iget-wide v5, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mAppStorage:J

    long-to-float v5, v5

    iget-wide v6, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mTotalStorage:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    iget-wide v6, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mFreeStorage:J

    long-to-float v6, v6

    iget-wide v7, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mTotalStorage:J

    long-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/lgesettings/applications/LinearColorBar;->setRatios(FFF)V

    .line 411
    iget-wide v3, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mTotalStorage:J

    iget-wide v5, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mFreeStorage:J

    sub-long v1, v3, v5

    .line 412
    .local v1, usedStorage:J
    iget-wide v3, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mLastUsedStorage:J

    cmp-long v3, v3, v1

    if-eqz v3, :cond_2

    .line 413
    iput-wide v1, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mLastUsedStorage:J

    .line 414
    iget-object v3, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/lgesettings/applications/ManageApplications;

    invoke-virtual {v3}, Lcom/android/lgesettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v1, v2}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, sizeStr:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mUsedStorageText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/lgesettings/applications/ManageApplications;

    invoke-virtual {v4}, Lcom/android/lgesettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0805d3

    new-array v6, v11, [Ljava/lang/Object;

    aput-object v0, v6, v10

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    .end local v0           #sizeStr:Ljava/lang/String;
    :cond_2
    iget-wide v3, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mLastFreeStorage:J

    iget-wide v5, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mFreeStorage:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 420
    iget-wide v3, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mFreeStorage:J

    iput-wide v3, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mLastFreeStorage:J

    .line 421
    iget-object v3, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/lgesettings/applications/ManageApplications;

    invoke-virtual {v3}, Lcom/android/lgesettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mFreeStorage:J

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 423
    .restart local v0       #sizeStr:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mFreeStorageText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/lgesettings/applications/ManageApplications;

    invoke-virtual {v4}, Lcom/android/lgesettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0805d2

    new-array v6, v11, [Ljava/lang/Object;

    aput-object v0, v6, v10

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 427
    .end local v0           #sizeStr:Ljava/lang/String;
    .end local v1           #usedStorage:J
    :cond_3
    iget-object v3, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mColorBar:Lcom/android/lgesettings/applications/LinearColorBar;

    invoke-virtual {v3, v9, v9, v9}, Lcom/android/lgesettings/applications/LinearColorBar;->setRatios(FFF)V

    .line 428
    iget-wide v3, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mLastUsedStorage:J

    cmp-long v3, v3, v7

    if-eqz v3, :cond_4

    .line 429
    iput-wide v7, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mLastUsedStorage:J

    .line 430
    iget-object v3, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mUsedStorageText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    :cond_4
    iget-wide v3, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mLastFreeStorage:J

    cmp-long v3, v3, v7

    if-eqz v3, :cond_0

    .line 433
    iput-wide v7, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mLastFreeStorage:J

    .line 434
    iget-object v3, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mFreeStorageText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public build(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "contentParent"
    .parameter "contentChild"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 248
    iget-object v2, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 249
    iget-object v2, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    .line 295
    :goto_0
    return-object v2

    .line 252
    :cond_0
    iput-object p1, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mInflater:Landroid/view/LayoutInflater;

    .line 253
    iget v2, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mListType:I

    if-ne v2, v4, :cond_5

    const v2, 0x7f0400c2

    :goto_1
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    .line 256
    iget-object v2, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    const v3, 0x7f0a01a0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    .line 257
    iget-object v2, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 258
    iget-object v2, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    const v3, 0x7f0a019b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    .line 259
    iget-object v2, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 261
    iget-object v2, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 262
    .local v0, emptyView:Landroid/view/View;
    iget-object v2, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 263
    .local v1, lv:Landroid/widget/ListView;
    if-eqz v0, :cond_1

    .line 264
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 266
    :cond_1
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 267
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 268
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 269
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 270
    iput-object v1, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mListView:Landroid/widget/ListView;

    .line 271
    new-instance v2, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;

    iget-object v3, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mApplicationsState:Lcom/android/lgesettings/applications/ApplicationsState;

    iget v4, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mFilter:I

    invoke-direct {v2, v3, p0, v4}, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;-><init>(Lcom/android/lgesettings/applications/ApplicationsState;Lcom/android/lgesettings/applications/ManageApplications$TabInfo;I)V

    iput-object v2, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;

    .line 272
    iget-object v2, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 273
    iget-object v2, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 274
    iget-object v2, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    const v3, 0x7f0a019c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/lgesettings/applications/LinearColorBar;

    iput-object v2, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mColorBar:Lcom/android/lgesettings/applications/LinearColorBar;

    .line 275
    iget-object v2, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    const v3, 0x7f0a019e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mStorageChartLabel:Landroid/widget/TextView;

    .line 276
    iget-object v2, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    const v3, 0x7f0a019d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mUsedStorageText:Landroid/widget/TextView;

    .line 277
    iget-object v2, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    const v3, 0x7f0a019f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mFreeStorageText:Landroid/widget/TextView;

    .line 278
    iget-object v2, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mListView:Landroid/widget/ListView;

    invoke-static {p2, p3, v2, v5}, Lcom/android/lgesettings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/ListView;Z)V

    .line 279
    iget v2, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mFilter:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 280
    iget-object v2, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mStorageChartLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/lgesettings/applications/ManageApplications;

    invoke-virtual {v3}, Lcom/android/lgesettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f080599

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    invoke-static {}, Lcom/android/lgesettings/Utils;->supportInternalMemory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 282
    iget-object v2, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mStorageChartLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/lgesettings/applications/ManageApplications;

    invoke-virtual {v3}, Lcom/android/lgesettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f080d0f

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->applyCurrentStorage()V

    .line 289
    .end local v0           #emptyView:Landroid/view/View;
    .end local v1           #lv:Landroid/widget/ListView;
    :cond_3
    iget-object v2, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    const v3, 0x7f0a01a6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/lgesettings/applications/RunningProcessesView;

    iput-object v2, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/lgesettings/applications/RunningProcessesView;

    .line 291
    iget-object v2, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/lgesettings/applications/RunningProcessesView;

    if-eqz v2, :cond_4

    .line 292
    iget-object v2, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/lgesettings/applications/RunningProcessesView;

    iget-object v3, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/applications/RunningProcessesView;->doCreate(Landroid/os/Bundle;)V

    .line 295
    :cond_4
    iget-object v2, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    goto/16 :goto_0

    .line 253
    :cond_5
    const v2, 0x7f0400bf

    goto/16 :goto_1

    .line 284
    .restart local v0       #emptyView:Landroid/view/View;
    .restart local v1       #lv:Landroid/widget/ListView;
    :cond_6
    iget-object v2, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mStorageChartLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/lgesettings/applications/ManageApplications;

    invoke-virtual {v3}, Lcom/android/lgesettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f080598

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public detachView()V
    .locals 2

    .prologue
    .line 299
    iget-object v1, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 301
    .local v0, group:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 302
    iget-object v1, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 305
    .end local v0           #group:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method handleRunningProcessesAvail()V
    .locals 3

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/lgesettings/applications/ManageApplications;

    invoke-virtual {v1}, Lcom/android/lgesettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 447
    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/lgesettings/applications/RunningProcessesView;

    iget-object v1, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/lgesettings/applications/ManageApplications;

    invoke-virtual {v1}, Lcom/android/lgesettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/high16 v2, 0x10a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/applications/RunningProcessesView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 449
    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/lgesettings/applications/RunningProcessesView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/applications/RunningProcessesView;->setVisibility(I)V

    .line 450
    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 451
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    .line 441
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mClickListener:Lcom/android/lgesettings/applications/AppClickListener;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/lgesettings/applications/AppClickListener;->onItemClick(Lcom/android/lgesettings/applications/ManageApplications$TabInfo;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 442
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->pause()V

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/lgesettings/applications/RunningProcessesView;

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/lgesettings/applications/RunningProcessesView;

    invoke-virtual {v0}, Lcom/android/lgesettings/applications/RunningProcessesView;->doPause()V

    .line 329
    :cond_1
    return-void
.end method

.method public resume(I)V
    .locals 5
    .parameter "sortOrder"

    .prologue
    const/4 v4, 0x0

    .line 308
    iget-object v1, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1, p1}, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->resume(I)V

    .line 311
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/lgesettings/applications/RunningProcessesView;

    if-eqz v1, :cond_1

    .line 312
    iget-object v1, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/lgesettings/applications/RunningProcessesView;

    iget-object v2, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/lgesettings/applications/ManageApplications;

    iget-object v3, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mRunningProcessesAvail:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v3}, Lcom/android/lgesettings/applications/RunningProcessesView;->doResume(Landroid/app/Fragment;Ljava/lang/Runnable;)Z

    move-result v0

    .line 313
    .local v0, haveData:Z
    if-eqz v0, :cond_2

    .line 314
    iget-object v1, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/lgesettings/applications/RunningProcessesView;

    invoke-virtual {v1, v4}, Lcom/android/lgesettings/applications/RunningProcessesView;->setVisibility(I)V

    .line 315
    iget-object v1, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 320
    .end local v0           #haveData:Z
    :cond_1
    :goto_0
    return-void

    .line 317
    .restart local v0       #haveData:Z
    :cond_2
    iget-object v1, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setContainerService(Lcom/android/internal/app/IMediaContainerService;)V
    .locals 0
    .parameter "containerService"

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    .line 244
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->updateStorageUsage()V

    .line 245
    return-void
.end method

.method updateStorageUsage()V
    .locals 12

    .prologue
    const-wide/16 v7, 0x0

    .line 333
    iget-object v6, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/lgesettings/applications/ManageApplications;

    invoke-virtual {v6}, Lcom/android/lgesettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-nez v6, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    iget-object v6, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v6, :cond_0

    .line 337
    iput-wide v7, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mFreeStorage:J

    .line 338
    iput-wide v7, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mAppStorage:J

    .line 339
    iput-wide v7, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mTotalStorage:J

    .line 341
    iget v6, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mFilter:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 342
    iget-object v6, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    if-eqz v6, :cond_2

    .line 344
    :try_start_0
    iget-object v6, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/internal/app/IMediaContainerService;->getFileSystemStats(Ljava/lang/String;)[J

    move-result-object v5

    .line 346
    .local v5, stats:[J
    const/4 v6, 0x0

    aget-wide v6, v5, v6

    iput-wide v6, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mTotalStorage:J

    .line 347
    const/4 v6, 0x1

    aget-wide v6, v5, v6

    iput-wide v6, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mFreeStorage:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    .end local v5           #stats:[J
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v6, :cond_9

    .line 354
    iget-object v6, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v6}, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v0

    .line 355
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v0, :cond_9

    .line 356
    iget-object v6, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v6, v4}, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    move-result-object v1

    .line 357
    .local v1, ae:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;
    if-nez v1, :cond_3

    .line 355
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 348
    .end local v0           #N:I
    .end local v1           #ae:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;
    .end local v4           #i:I
    :catch_0
    move-exception v2

    .line 349
    .local v2, e:Landroid/os/RemoteException;
    const-string v6, "ManageApplications"

    const-string v7, "Problem in container service"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 358
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v0       #N:I
    .restart local v1       #ae:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;
    .restart local v4       #i:I
    :cond_3
    iget-wide v6, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mAppStorage:J

    iget-wide v8, v1, Lcom/android/lgesettings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    iget-wide v10, v1, Lcom/android/lgesettings/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    add-long/2addr v8, v10

    iget-wide v10, v1, Lcom/android/lgesettings/applications/ApplicationsState$SizeInfo;->externalCacheSize:J

    add-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mAppStorage:J

    goto :goto_3

    .line 363
    .end local v0           #N:I
    .end local v1           #ae:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;
    .end local v4           #i:I
    :cond_4
    iget-object v6, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    if-eqz v6, :cond_5

    .line 365
    :try_start_1
    iget-object v6, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/internal/app/IMediaContainerService;->getFileSystemStats(Ljava/lang/String;)[J

    move-result-object v5

    .line 367
    .restart local v5       #stats:[J
    const/4 v6, 0x0

    aget-wide v6, v5, v6

    iput-wide v6, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mTotalStorage:J

    .line 368
    const/4 v6, 0x1

    aget-wide v6, v5, v6

    iput-wide v6, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mFreeStorage:J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 374
    .end local v5           #stats:[J
    :cond_5
    :goto_4
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v3

    .line 375
    .local v3, emulatedStorage:Z
    iget-object v6, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v6, :cond_8

    .line 376
    iget-object v6, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v6}, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v0

    .line 377
    .restart local v0       #N:I
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_5
    if-ge v4, v0, :cond_8

    .line 378
    iget-object v6, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v6, v4}, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    move-result-object v1

    .line 379
    .restart local v1       #ae:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;
    if-nez v1, :cond_7

    .line 377
    :cond_6
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 369
    .end local v0           #N:I
    .end local v1           #ae:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;
    .end local v3           #emulatedStorage:Z
    .end local v4           #i:I
    :catch_1
    move-exception v2

    .line 370
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string v6, "ManageApplications"

    const-string v7, "Problem in container service"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 380
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v0       #N:I
    .restart local v1       #ae:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;
    .restart local v3       #emulatedStorage:Z
    .restart local v4       #i:I
    :cond_7
    iget-wide v6, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mAppStorage:J

    iget-wide v8, v1, Lcom/android/lgesettings/applications/ApplicationsState$SizeInfo;->codeSize:J

    iget-wide v10, v1, Lcom/android/lgesettings/applications/ApplicationsState$SizeInfo;->dataSize:J

    add-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mAppStorage:J

    .line 381
    if-eqz v3, :cond_6

    .line 382
    iget-wide v6, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mAppStorage:J

    iget-wide v8, v1, Lcom/android/lgesettings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    iget-wide v10, v1, Lcom/android/lgesettings/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    add-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mAppStorage:J

    goto :goto_6

    .line 386
    .end local v0           #N:I
    .end local v1           #ae:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;
    .end local v4           #i:I
    :cond_8
    iget-wide v6, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mFreeStorage:J

    iget-object v8, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mApplicationsState:Lcom/android/lgesettings/applications/ApplicationsState;

    invoke-virtual {v8}, Lcom/android/lgesettings/applications/ApplicationsState;->sumCacheSizes()J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mFreeStorage:J

    .line 389
    .end local v3           #emulatedStorage:Z
    :cond_9
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->applyCurrentStorage()V

    goto/16 :goto_0
.end method
