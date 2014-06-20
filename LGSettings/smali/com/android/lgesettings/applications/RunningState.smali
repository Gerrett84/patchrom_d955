.class public Lcom/android/lgesettings/applications/RunningState;
.super Ljava/lang/Object;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/applications/RunningState$ServiceProcessComparator;,
        Lcom/android/lgesettings/applications/RunningState$MergedItem;,
        Lcom/android/lgesettings/applications/RunningState$ProcessItem;,
        Lcom/android/lgesettings/applications/RunningState$ServiceItem;,
        Lcom/android/lgesettings/applications/RunningState$BaseItem;,
        Lcom/android/lgesettings/applications/RunningState$UserState;,
        Lcom/android/lgesettings/applications/RunningState$OnRefreshUiListener;,
        Lcom/android/lgesettings/applications/RunningState$BackgroundHandler;,
        Lcom/android/lgesettings/applications/RunningState$AppProcessInfo;
    }
.end annotation


# static fields
.field static sGlobalLock:Ljava/lang/Object;

.field static sInstance:Lcom/android/lgesettings/applications/RunningState;


# instance fields
.field final mAllProcessItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/lgesettings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field final mAm:Landroid/app/ActivityManager;

.field final mApplicationContext:Landroid/content/Context;

.field final mBackgroundComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/lgesettings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mBackgroundHandler:Lcom/android/lgesettings/applications/RunningState$BackgroundHandler;

.field mBackgroundItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/lgesettings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mBackgroundProcessMemory:J

.field final mBackgroundThread:Landroid/os/HandlerThread;

.field mForegroundProcessMemory:J

.field final mHandler:Landroid/os/Handler;

.field mHaveData:Z

.field final mInterestingConfigChanges:Lcom/android/lgesettings/applications/InterestingConfigChanges;

.field final mInterestingProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/lgesettings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/lgesettings/applications/RunningState$BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field mMergedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/lgesettings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mMyUserId:I

.field mNumBackgroundProcesses:I

.field mNumForegroundProcesses:I

.field mNumServiceProcesses:I

.field final mOtherUserBackgroundItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/lgesettings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mOtherUserMergedItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/lgesettings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mPm:Landroid/content/pm/PackageManager;

.field final mProcessItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/lgesettings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mRefreshUiListener:Lcom/android/lgesettings/applications/RunningState$OnRefreshUiListener;

.field mResumed:Z

.field final mRunningProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/lgesettings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mSequence:I

.field final mServiceProcessComparator:Lcom/android/lgesettings/applications/RunningState$ServiceProcessComparator;

.field mServiceProcessMemory:J

.field final mServiceProcessesByName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/lgesettings/applications/RunningState$ProcessItem;",
            ">;>;"
        }
    .end annotation
.end field

.field final mServiceProcessesByPid:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/lgesettings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field final mTmpAppProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/lgesettings/applications/RunningState$AppProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mUm:Landroid/os/UserManager;

.field mUserBackgroundItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/lgesettings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mUsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/lgesettings/applications/RunningState$UserState;",
            ">;"
        }
    .end annotation
.end field

.field mWatchingBackgroundItems:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/lgesettings/applications/RunningState;->sGlobalLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 726
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lcom/android/lgesettings/applications/InterestingConfigChanges;

    invoke-direct {v0}, Lcom/android/lgesettings/applications/InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/applications/RunningState;->mInterestingConfigChanges:Lcom/android/lgesettings/applications/InterestingConfigChanges;

    .line 88
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    .line 93
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    .line 97
    new-instance v0, Lcom/android/lgesettings/applications/RunningState$ServiceProcessComparator;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/applications/RunningState$ServiceProcessComparator;-><init>(Lcom/android/lgesettings/applications/RunningState;)V

    iput-object v0, p0, Lcom/android/lgesettings/applications/RunningState;->mServiceProcessComparator:Lcom/android/lgesettings/applications/RunningState$ServiceProcessComparator;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    .line 105
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    .line 116
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    .line 120
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    .line 123
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/applications/RunningState;->mUsers:Landroid/util/SparseArray;

    .line 136
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    .line 138
    iput v2, p0, Lcom/android/lgesettings/applications/RunningState;->mSequence:I

    .line 140
    new-instance v0, Lcom/android/lgesettings/applications/RunningState$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/applications/RunningState$1;-><init>(Lcom/android/lgesettings/applications/RunningState;)V

    iput-object v0, p0, Lcom/android/lgesettings/applications/RunningState;->mBackgroundComparator:Ljava/util/Comparator;

    .line 201
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/applications/RunningState;->mLock:Ljava/lang/Object;

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/applications/RunningState;->mItems:Ljava/util/ArrayList;

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;

    .line 252
    new-instance v0, Lcom/android/lgesettings/applications/RunningState$2;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/applications/RunningState$2;-><init>(Lcom/android/lgesettings/applications/RunningState;)V

    iput-object v0, p0, Lcom/android/lgesettings/applications/RunningState;->mHandler:Landroid/os/Handler;

    .line 727
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    .line 728
    iget-object v0, p0, Lcom/android/lgesettings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/lgesettings/applications/RunningState;->mAm:Landroid/app/ActivityManager;

    .line 729
    iget-object v0, p0, Lcom/android/lgesettings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/applications/RunningState;->mPm:Landroid/content/pm/PackageManager;

    .line 730
    iget-object v0, p0, Lcom/android/lgesettings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/lgesettings/applications/RunningState;->mUm:Landroid/os/UserManager;

    .line 731
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/applications/RunningState;->mMyUserId:I

    .line 732
    iput-boolean v2, p0, Lcom/android/lgesettings/applications/RunningState;->mResumed:Z

    .line 733
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RunningState:Background"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/lgesettings/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 734
    iget-object v0, p0, Lcom/android/lgesettings/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 735
    new-instance v0, Lcom/android/lgesettings/applications/RunningState$BackgroundHandler;

    iget-object v1, p0, Lcom/android/lgesettings/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/lgesettings/applications/RunningState$BackgroundHandler;-><init>(Lcom/android/lgesettings/applications/RunningState;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/lgesettings/applications/RunningState;->mBackgroundHandler:Lcom/android/lgesettings/applications/RunningState$BackgroundHandler;

    .line 736
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/applications/RunningState;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/lgesettings/applications/RunningState;->reset()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/applications/RunningState;Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/lgesettings/applications/RunningState;->update(Landroid/content/Context;Landroid/app/ActivityManager;)Z

    move-result v0

    return v0
.end method

.method private addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/lgesettings/applications/RunningState$MergedItem;)V
    .locals 9
    .parameter "context"
    .parameter
    .parameter
    .parameter "newItem"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/lgesettings/applications/RunningState$MergedItem;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/lgesettings/applications/RunningState$MergedItem;",
            ">;",
            "Lcom/android/lgesettings/applications/RunningState$MergedItem;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, newMergedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    .local p3, userItems:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 813
    iget v4, p4, Lcom/android/lgesettings/applications/RunningState$BaseItem;->mUserId:I

    invoke-virtual {p3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/lgesettings/applications/RunningState$MergedItem;

    .line 814
    .local v3, userItem:Lcom/android/lgesettings/applications/RunningState$MergedItem;
    if-eqz v3, :cond_0

    iget v4, v3, Lcom/android/lgesettings/applications/RunningState$BaseItem;->mCurSeq:I

    iget v7, p0, Lcom/android/lgesettings/applications/RunningState;->mSequence:I

    if-eq v4, v7, :cond_5

    :cond_0
    move v0, v6

    .line 815
    .local v0, first:Z
    :goto_0
    if-eqz v0, :cond_4

    .line 816
    if-nez v3, :cond_6

    .line 817
    new-instance v3, Lcom/android/lgesettings/applications/RunningState$MergedItem;

    .end local v3           #userItem:Lcom/android/lgesettings/applications/RunningState$MergedItem;
    iget v4, p4, Lcom/android/lgesettings/applications/RunningState$BaseItem;->mUserId:I

    invoke-direct {v3, v4}, Lcom/android/lgesettings/applications/RunningState$MergedItem;-><init>(I)V

    .line 818
    .restart local v3       #userItem:Lcom/android/lgesettings/applications/RunningState$MergedItem;
    iget v4, p4, Lcom/android/lgesettings/applications/RunningState$BaseItem;->mUserId:I

    invoke-virtual {p3, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 822
    :goto_1
    iget v4, p0, Lcom/android/lgesettings/applications/RunningState;->mSequence:I

    iput v4, v3, Lcom/android/lgesettings/applications/RunningState$BaseItem;->mCurSeq:I

    .line 823
    iget-object v4, p0, Lcom/android/lgesettings/applications/RunningState;->mUsers:Landroid/util/SparseArray;

    iget v7, p4, Lcom/android/lgesettings/applications/RunningState$BaseItem;->mUserId:I

    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/lgesettings/applications/RunningState$UserState;

    iput-object v4, v3, Lcom/android/lgesettings/applications/RunningState$MergedItem;->mUser:Lcom/android/lgesettings/applications/RunningState$UserState;

    if-nez v4, :cond_3

    .line 824
    new-instance v4, Lcom/android/lgesettings/applications/RunningState$UserState;

    invoke-direct {v4}, Lcom/android/lgesettings/applications/RunningState$UserState;-><init>()V

    iput-object v4, v3, Lcom/android/lgesettings/applications/RunningState$MergedItem;->mUser:Lcom/android/lgesettings/applications/RunningState$UserState;

    .line 825
    iget-object v4, p0, Lcom/android/lgesettings/applications/RunningState;->mUm:Landroid/os/UserManager;

    iget v7, p4, Lcom/android/lgesettings/applications/RunningState$BaseItem;->mUserId:I

    invoke-virtual {v4, v7}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 826
    .local v1, info:Landroid/content/pm/UserInfo;
    iget-object v4, v3, Lcom/android/lgesettings/applications/RunningState$MergedItem;->mUser:Lcom/android/lgesettings/applications/RunningState$UserState;

    iput-object v1, v4, Lcom/android/lgesettings/applications/RunningState$UserState;->mInfo:Landroid/content/pm/UserInfo;

    .line 827
    if-eqz v1, :cond_1

    .line 828
    iget-object v4, v3, Lcom/android/lgesettings/applications/RunningState$MergedItem;->mUser:Lcom/android/lgesettings/applications/RunningState$UserState;

    iget-object v7, p0, Lcom/android/lgesettings/applications/RunningState;->mUm:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v7, v1, v8}, Lcom/android/lgesettings/users/UserUtils;->getUserIcon(Landroid/os/UserManager;Landroid/content/pm/UserInfo;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v4, Lcom/android/lgesettings/applications/RunningState$UserState;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 831
    :cond_1
    if-eqz v1, :cond_7

    iget-object v2, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 832
    .local v2, name:Ljava/lang/String;
    :goto_2
    if-nez v2, :cond_2

    .line 833
    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 835
    :cond_2
    iget-object v4, v3, Lcom/android/lgesettings/applications/RunningState$MergedItem;->mUser:Lcom/android/lgesettings/applications/RunningState$UserState;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0805d6

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v5

    invoke-virtual {v7, v8, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/lgesettings/applications/RunningState$UserState;->mLabel:Ljava/lang/String;

    .line 838
    .end local v1           #info:Landroid/content/pm/UserInfo;
    .end local v2           #name:Ljava/lang/String;
    :cond_3
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 840
    :cond_4
    iget-object v4, v3, Lcom/android/lgesettings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 841
    return-void

    .end local v0           #first:Z
    :cond_5
    move v0, v5

    .line 814
    goto :goto_0

    .line 820
    .restart local v0       #first:Z
    :cond_6
    iget-object v4, v3, Lcom/android/lgesettings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 831
    .restart local v1       #info:Landroid/content/pm/UserInfo;
    :cond_7
    const/4 v2, 0x0

    goto :goto_2
.end method

.method static getInstance(Landroid/content/Context;)Lcom/android/lgesettings/applications/RunningState;
    .locals 2
    .parameter "context"

    .prologue
    .line 718
    sget-object v1, Lcom/android/lgesettings/applications/RunningState;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v1

    .line 719
    :try_start_0
    sget-object v0, Lcom/android/lgesettings/applications/RunningState;->sInstance:Lcom/android/lgesettings/applications/RunningState;

    if-nez v0, :cond_0

    .line 720
    new-instance v0, Lcom/android/lgesettings/applications/RunningState;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/applications/RunningState;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/lgesettings/applications/RunningState;->sInstance:Lcom/android/lgesettings/applications/RunningState;

    .line 722
    :cond_0
    sget-object v0, Lcom/android/lgesettings/applications/RunningState;->sInstance:Lcom/android/lgesettings/applications/RunningState;

    monitor-exit v1

    return-object v0

    .line 723
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z
    .locals 3
    .parameter "pi"

    .prologue
    const/4 v0, 0x1

    .line 788
    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 798
    :cond_0
    :goto_0
    return v0

    .line 791
    :cond_1
    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-lt v1, v2, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0xaa

    if-ge v1, v2, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    if-eqz v1, :cond_0

    .line 798
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "pm"
    .parameter "className"
    .parameter "item"

    .prologue
    .line 701
    if-eqz p2, :cond_2

    iget v2, p2, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v2, :cond_0

    iget-object v2, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    .line 703
    :cond_0
    invoke-virtual {p2, p0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 704
    .local v0, label:Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    .line 714
    .end local v0           #label:Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    return-object v0

    .line 709
    :cond_2
    move-object v0, p1

    .line 710
    .local v0, label:Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 711
    .local v1, tail:I
    if-ltz v1, :cond_1

    .line 712
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lcom/android/lgesettings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 803
    iget-object v0, p0, Lcom/android/lgesettings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 804
    iget-object v0, p0, Lcom/android/lgesettings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 805
    iget-object v0, p0, Lcom/android/lgesettings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 806
    iget-object v0, p0, Lcom/android/lgesettings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 807
    iget-object v0, p0, Lcom/android/lgesettings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 808
    iget-object v0, p0, Lcom/android/lgesettings/applications/RunningState;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 809
    return-void
.end method

.method private update(Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 67
    .parameter "context"
    .parameter "am"

    .prologue
    .line 844
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v47

    .line 846
    .local v47, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mUm:Landroid/os/UserManager;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v62

    .line 848
    .local v62, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/lgesettings/applications/RunningState;->mSequence:I

    move/from16 v63, v0

    add-int/lit8 v63, v63, 0x1

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/lgesettings/applications/RunningState;->mSequence:I

    .line 850
    const/16 v17, 0x0

    .line 852
    .local v17, changed:Z
    const/16 v20, 0x1

    .line 856
    .local v20, deleted:Z
    const/16 v63, 0x64

    move-object/from16 v0, p2

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v54

    .line 858
    .local v54, services:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-eqz v54, :cond_0

    invoke-interface/range {v54 .. v54}, Ljava/util/List;->size()I

    move-result v10

    .line 859
    .local v10, NS:I
    :goto_0
    const/16 v26, 0x0

    .local v26, i:I
    :goto_1
    move/from16 v0, v26

    if-ge v0, v10, :cond_6

    .line 860
    move-object/from16 v0, v54

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 864
    .local v55, si:Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v55

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    move/from16 v63, v0

    if-nez v63, :cond_1

    move-object/from16 v0, v55

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    move/from16 v63, v0

    if-nez v63, :cond_1

    .line 865
    move-object/from16 v0, v54

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 866
    add-int/lit8 v26, v26, -0x1

    .line 867
    add-int/lit8 v10, v10, -0x1

    .line 859
    :goto_2
    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    .line 858
    .end local v10           #NS:I
    .end local v26           #i:I
    .end local v55           #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 872
    .restart local v10       #NS:I
    .restart local v26       #i:I
    .restart local v55       #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1
    move-object/from16 v0, v55

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    move/from16 v63, v0

    and-int/lit8 v63, v63, 0x8

    if-eqz v63, :cond_2

    .line 874
    move-object/from16 v0, v54

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 875
    add-int/lit8 v26, v26, -0x1

    .line 876
    add-int/lit8 v10, v10, -0x1

    .line 877
    goto :goto_2

    .line 880
    :cond_2
    const/16 v29, 0x0

    .local v29, j:I
    :goto_3
    invoke-interface/range {v62 .. v62}, Ljava/util/List;->size()I

    move-result v63

    move/from16 v0, v29

    move/from16 v1, v63

    if-ge v0, v1, :cond_4

    .line 881
    const-string v64, "RunningState"

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "users : "

    move-object/from16 v0, v63

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    move-object/from16 v0, v62

    move/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v63

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v63, v0

    move-object/from16 v0, v65

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    move-object/from16 v0, v64

    move-object/from16 v1, v63

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    move-object/from16 v0, v62

    move/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v63

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v63, v0

    move-object/from16 v0, v55

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v64, v0

    invoke-static/range {v64 .. v64}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v64

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_3

    .line 883
    const/16 v20, 0x0

    .line 880
    :cond_3
    add-int/lit8 v29, v29, 0x1

    goto :goto_3

    .line 886
    :cond_4
    const-string v63, "RunningState"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "UserID : "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v55

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v65, v0

    invoke-static/range {v65 .. v65}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    if-eqz v20, :cond_5

    .line 888
    const-string v63, "RunningState"

    const-string v64, "remove deleted user\'s service"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    move-object/from16 v0, v54

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 890
    add-int/lit8 v26, v26, -0x1

    .line 891
    add-int/lit8 v10, v10, -0x1

    .line 892
    goto/16 :goto_2

    .line 894
    :cond_5
    const/16 v20, 0x1

    goto/16 :goto_2

    .line 900
    .end local v29           #j:I
    .end local v55           #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v49

    .line 902
    .local v49, processes:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v49, :cond_7

    invoke-interface/range {v49 .. v49}, Ljava/util/List;->size()I

    move-result v8

    .line 903
    .local v8, NP:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->clear()V

    .line 904
    const/16 v26, 0x0

    :goto_5
    move/from16 v0, v26

    if-ge v0, v8, :cond_8

    .line 905
    move-object/from16 v0, v49

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 906
    .local v43, pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v64, v0

    new-instance v65, Lcom/android/lgesettings/applications/RunningState$AppProcessInfo;

    move-object/from16 v0, v65

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/lgesettings/applications/RunningState$AppProcessInfo;-><init>(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    invoke-virtual/range {v63 .. v65}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 904
    add-int/lit8 v26, v26, 0x1

    goto :goto_5

    .line 902
    .end local v8           #NP:I
    .end local v43           #pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_7
    const/4 v8, 0x0

    goto :goto_4

    .line 911
    .restart local v8       #NP:I
    :cond_8
    const/16 v26, 0x0

    :goto_6
    move/from16 v0, v26

    if-ge v0, v10, :cond_a

    .line 912
    move-object/from16 v0, v54

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 913
    .restart local v55       #si:Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v55

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v63, v0

    const-wide/16 v65, 0x0

    cmp-long v63, v63, v65

    if-nez v63, :cond_9

    move-object/from16 v0, v55

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v63, v0

    if-lez v63, :cond_9

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v55

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/lgesettings/applications/RunningState$AppProcessInfo;

    .line 915
    .local v12, ainfo:Lcom/android/lgesettings/applications/RunningState$AppProcessInfo;
    if-eqz v12, :cond_9

    .line 916
    const/16 v63, 0x1

    move/from16 v0, v63

    iput-boolean v0, v12, Lcom/android/lgesettings/applications/RunningState$AppProcessInfo;->hasServices:Z

    .line 917
    move-object/from16 v0, v55

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    move/from16 v63, v0

    if-eqz v63, :cond_9

    .line 918
    const/16 v63, 0x1

    move/from16 v0, v63

    iput-boolean v0, v12, Lcom/android/lgesettings/applications/RunningState$AppProcessInfo;->hasForegroundServices:Z

    .line 911
    .end local v12           #ainfo:Lcom/android/lgesettings/applications/RunningState$AppProcessInfo;
    :cond_9
    add-int/lit8 v26, v26, 0x1

    goto :goto_6

    .line 925
    .end local v55           #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_a
    const/16 v26, 0x0

    :goto_7
    move/from16 v0, v26

    if-ge v0, v10, :cond_16

    .line 926
    move-object/from16 v0, v54

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 933
    .restart local v55       #si:Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v55

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v63, v0

    const-wide/16 v65, 0x0

    cmp-long v63, v63, v65

    if-nez v63, :cond_e

    move-object/from16 v0, v55

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v63, v0

    if-lez v63, :cond_e

    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v55

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/lgesettings/applications/RunningState$AppProcessInfo;

    .line 935
    .restart local v12       #ainfo:Lcom/android/lgesettings/applications/RunningState$AppProcessInfo;
    if-eqz v12, :cond_e

    iget-boolean v0, v12, Lcom/android/lgesettings/applications/RunningState$AppProcessInfo;->hasForegroundServices:Z

    move/from16 v63, v0

    if-nez v63, :cond_e

    .line 941
    iget-object v0, v12, Lcom/android/lgesettings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v63, v0

    const/16 v64, 0x12c

    move/from16 v0, v63

    move/from16 v1, v64

    if-ge v0, v1, :cond_e

    .line 945
    const/16 v57, 0x0

    .line 946
    .local v57, skip:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    iget-object v0, v12, Lcom/android/lgesettings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #ainfo:Lcom/android/lgesettings/applications/RunningState$AppProcessInfo;
    check-cast v12, Lcom/android/lgesettings/applications/RunningState$AppProcessInfo;

    .line 947
    .restart local v12       #ainfo:Lcom/android/lgesettings/applications/RunningState$AppProcessInfo;
    :goto_8
    if-eqz v12, :cond_c

    .line 948
    iget-boolean v0, v12, Lcom/android/lgesettings/applications/RunningState$AppProcessInfo;->hasServices:Z

    move/from16 v63, v0

    if-nez v63, :cond_b

    iget-object v0, v12, Lcom/android/lgesettings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v1}, Lcom/android/lgesettings/applications/RunningState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v63

    if-eqz v63, :cond_d

    .line 949
    :cond_b
    const/16 v57, 0x1

    .line 954
    :cond_c
    if-eqz v57, :cond_e

    .line 925
    .end local v12           #ainfo:Lcom/android/lgesettings/applications/RunningState$AppProcessInfo;
    .end local v57           #skip:Z
    :goto_9
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_7

    .line 952
    .restart local v12       #ainfo:Lcom/android/lgesettings/applications/RunningState$AppProcessInfo;
    .restart local v57       #skip:Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    iget-object v0, v12, Lcom/android/lgesettings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #ainfo:Lcom/android/lgesettings/applications/RunningState$AppProcessInfo;
    check-cast v12, Lcom/android/lgesettings/applications/RunningState$AppProcessInfo;

    .restart local v12       #ainfo:Lcom/android/lgesettings/applications/RunningState$AppProcessInfo;
    goto :goto_8

    .line 961
    .end local v12           #ainfo:Lcom/android/lgesettings/applications/RunningState$AppProcessInfo;
    .end local v57           #skip:Z
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v55

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/util/HashMap;

    .line 962
    .local v50, procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/lgesettings/applications/RunningState$ProcessItem;>;"
    if-nez v50, :cond_f

    .line 963
    new-instance v50, Ljava/util/HashMap;

    .end local v50           #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/lgesettings/applications/RunningState$ProcessItem;>;"
    invoke-direct/range {v50 .. v50}, Ljava/util/HashMap;-><init>()V

    .line 964
    .restart local v50       #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/lgesettings/applications/RunningState$ProcessItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v55

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v64, v0

    move-object/from16 v0, v63

    move/from16 v1, v64

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 966
    :cond_f
    move-object/from16 v0, v55

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v63, v0

    move-object/from16 v0, v50

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/lgesettings/applications/RunningState$ProcessItem;

    .line 967
    .local v48, proc:Lcom/android/lgesettings/applications/RunningState$ProcessItem;
    if-nez v48, :cond_10

    .line 968
    const/16 v17, 0x1

    .line 969
    new-instance v48, Lcom/android/lgesettings/applications/RunningState$ProcessItem;

    .end local v48           #proc:Lcom/android/lgesettings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v55

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v63, v0

    move-object/from16 v0, v55

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v64, v0

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move/from16 v2, v63

    move-object/from16 v3, v64

    invoke-direct {v0, v1, v2, v3}, Lcom/android/lgesettings/applications/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 970
    .restart local v48       #proc:Lcom/android/lgesettings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v55

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v63, v0

    move-object/from16 v0, v50

    move-object/from16 v1, v63

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    :cond_10
    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/lgesettings/applications/RunningState$BaseItem;->mCurSeq:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/lgesettings/applications/RunningState;->mSequence:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_14

    .line 974
    move-object/from16 v0, v55

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v63, v0

    const-wide/16 v65, 0x0

    cmp-long v63, v63, v65

    if-nez v63, :cond_15

    move-object/from16 v0, v55

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v44, v0

    .line 975
    .local v44, pid:I
    :goto_a
    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v63, v0

    move/from16 v0, v44

    move/from16 v1, v63

    if-eq v0, v1, :cond_13

    .line 976
    const/16 v17, 0x1

    .line 977
    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v63, v0

    move/from16 v0, v63

    move/from16 v1, v44

    if-eq v0, v1, :cond_13

    .line 978
    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v63, v0

    if-eqz v63, :cond_11

    .line 979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->remove(I)V

    .line 981
    :cond_11
    if-eqz v44, :cond_12

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v44

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 984
    :cond_12
    move/from16 v0, v44

    move-object/from16 v1, v48

    iput v0, v1, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mPid:I

    .line 987
    :cond_13
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->clear()V

    .line 988
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/lgesettings/applications/RunningState;->mSequence:I

    move/from16 v63, v0

    move/from16 v0, v63

    move-object/from16 v1, v48

    iput v0, v1, Lcom/android/lgesettings/applications/RunningState$BaseItem;->mCurSeq:I

    .line 990
    .end local v44           #pid:I
    :cond_14
    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->updateService(Landroid/content/Context;Landroid/app/ActivityManager$RunningServiceInfo;)Z

    move-result v63

    or-int v17, v17, v63

    goto/16 :goto_9

    .line 974
    :cond_15
    const/16 v44, 0x0

    goto :goto_a

    .line 995
    .end local v48           #proc:Lcom/android/lgesettings/applications/RunningState$ProcessItem;
    .end local v50           #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/lgesettings/applications/RunningState$ProcessItem;>;"
    .end local v55           #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_16
    const/16 v26, 0x0

    :goto_b
    move/from16 v0, v26

    if-ge v0, v8, :cond_1b

    .line 996
    move-object/from16 v0, v49

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 997
    .restart local v43       #pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/lgesettings/applications/RunningState$ProcessItem;

    .line 998
    .restart local v48       #proc:Lcom/android/lgesettings/applications/RunningState$ProcessItem;
    if-nez v48, :cond_18

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v48

    .end local v48           #proc:Lcom/android/lgesettings/applications/RunningState$ProcessItem;
    check-cast v48, Lcom/android/lgesettings/applications/RunningState$ProcessItem;

    .line 1003
    .restart local v48       #proc:Lcom/android/lgesettings/applications/RunningState$ProcessItem;
    if-nez v48, :cond_17

    .line 1004
    const/16 v17, 0x1

    .line 1005
    new-instance v48, Lcom/android/lgesettings/applications/RunningState$ProcessItem;

    .end local v48           #proc:Lcom/android/lgesettings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v43

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    move/from16 v63, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v64, v0

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move/from16 v2, v63

    move-object/from16 v3, v64

    invoke-direct {v0, v1, v2, v3}, Lcom/android/lgesettings/applications/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 1006
    .restart local v48       #proc:Lcom/android/lgesettings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v43

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v63, v0

    move/from16 v0, v63

    move-object/from16 v1, v48

    iput v0, v1, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mPid:I

    .line 1007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v64, v0

    move-object/from16 v0, v63

    move/from16 v1, v64

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1009
    :cond_17
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->clear()V

    .line 1012
    :cond_18
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/lgesettings/applications/RunningState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v63

    if-eqz v63, :cond_1a

    .line 1013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v63

    if-nez v63, :cond_19

    .line 1014
    const/16 v17, 0x1

    .line 1015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1017
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/lgesettings/applications/RunningState;->mSequence:I

    move/from16 v63, v0

    move/from16 v0, v63

    move-object/from16 v1, v48

    iput v0, v1, Lcom/android/lgesettings/applications/RunningState$BaseItem;->mCurSeq:I

    .line 1018
    const/16 v63, 0x1

    move/from16 v0, v63

    move-object/from16 v1, v48

    iput-boolean v0, v1, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mInteresting:Z

    .line 1019
    move-object/from16 v0, v48

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 1024
    :goto_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/lgesettings/applications/RunningState;->mSequence:I

    move/from16 v63, v0

    move/from16 v0, v63

    move-object/from16 v1, v48

    iput v0, v1, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mRunningSeq:I

    .line 1025
    move-object/from16 v0, v43

    move-object/from16 v1, v48

    iput-object v0, v1, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 995
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_b

    .line 1021
    :cond_1a
    const/16 v63, 0x0

    move/from16 v0, v63

    move-object/from16 v1, v48

    iput-boolean v0, v1, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mInteresting:Z

    goto :goto_c

    .line 1030
    .end local v43           #pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v48           #proc:Lcom/android/lgesettings/applications/RunningState$ProcessItem;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 1031
    .local v9, NRP:I
    const/16 v26, 0x0

    :goto_d
    move/from16 v0, v26

    if-ge v0, v9, :cond_20

    .line 1032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/lgesettings/applications/RunningState$ProcessItem;

    .line 1033
    .restart local v48       #proc:Lcom/android/lgesettings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mRunningSeq:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/lgesettings/applications/RunningState;->mSequence:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_1f

    .line 1034
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v19, v0

    .line 1035
    .local v19, clientPid:I
    if-eqz v19, :cond_1e

    .line 1036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/lgesettings/applications/RunningState$ProcessItem;

    .line 1037
    .local v18, client:Lcom/android/lgesettings/applications/RunningState$ProcessItem;
    if-nez v18, :cond_1c

    .line 1038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    .end local v18           #client:Lcom/android/lgesettings/applications/RunningState$ProcessItem;
    check-cast v18, Lcom/android/lgesettings/applications/RunningState$ProcessItem;

    .line 1040
    .restart local v18       #client:Lcom/android/lgesettings/applications/RunningState$ProcessItem;
    :cond_1c
    if-eqz v18, :cond_1d

    .line 1041
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v64, v0

    move-object/from16 v0, v63

    move/from16 v1, v64

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1049
    .end local v18           #client:Lcom/android/lgesettings/applications/RunningState$ProcessItem;
    :cond_1d
    :goto_e
    add-int/lit8 v26, v26, 0x1

    .line 1050
    goto :goto_d

    .line 1047
    :cond_1e
    const/16 v63, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, v48

    iput-object v0, v1, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mClient:Lcom/android/lgesettings/applications/RunningState$ProcessItem;

    goto :goto_e

    .line 1051
    .end local v19           #clientPid:I
    :cond_1f
    const/16 v17, 0x1

    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v64

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->remove(I)V

    .line 1053
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_d

    .line 1058
    .end local v48           #proc:Lcom/android/lgesettings/applications/RunningState$ProcessItem;
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1059
    .local v7, NHP:I
    const/16 v26, 0x0

    :goto_f
    move/from16 v0, v26

    if-ge v0, v7, :cond_23

    .line 1060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/lgesettings/applications/RunningState$ProcessItem;

    .line 1061
    .restart local v48       #proc:Lcom/android/lgesettings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v48

    iget-boolean v0, v0, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mInteresting:Z

    move/from16 v63, v0

    if-eqz v63, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v63

    if-nez v63, :cond_22

    .line 1062
    :cond_21
    const/16 v17, 0x1

    .line 1063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1064
    add-int/lit8 v26, v26, -0x1

    .line 1065
    add-int/lit8 v7, v7, -0x1

    .line 1059
    :cond_22
    add-int/lit8 v26, v26, 0x1

    goto :goto_f

    .line 1072
    .end local v48           #proc:Lcom/android/lgesettings/applications/RunningState$ProcessItem;
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 1073
    .local v5, NAP:I
    const/16 v26, 0x0

    :goto_10
    move/from16 v0, v26

    if-ge v0, v5, :cond_25

    .line 1074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/lgesettings/applications/RunningState$ProcessItem;

    .line 1075
    .restart local v48       #proc:Lcom/android/lgesettings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/lgesettings/applications/RunningState$BaseItem;->mCurSeq:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/lgesettings/applications/RunningState;->mSequence:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_24

    .line 1076
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/lgesettings/applications/RunningState;->mSequence:I

    move/from16 v63, v0

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move-object/from16 v2, v47

    move/from16 v3, v63

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->buildDependencyChain(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z

    move-result v63

    or-int v17, v17, v63

    .line 1073
    :cond_24
    add-int/lit8 v26, v26, 0x1

    goto :goto_10

    .line 1081
    .end local v48           #proc:Lcom/android/lgesettings/applications/RunningState$ProcessItem;
    :cond_25
    const/16 v60, 0x0

    .line 1082
    .local v60, uidToDelete:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v26, 0x0

    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->size()I

    move-result v63

    move/from16 v0, v26

    move/from16 v1, v63

    if-ge v0, v1, :cond_2d

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/util/HashMap;

    .line 1084
    .restart local v50       #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/lgesettings/applications/RunningState$ProcessItem;>;"
    invoke-virtual/range {v50 .. v50}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v46

    .line 1085
    .local v46, pit:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/lgesettings/applications/RunningState$ProcessItem;>;"
    :cond_26
    :goto_12
    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_2c

    .line 1086
    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/lgesettings/applications/RunningState$ProcessItem;

    .line 1087
    .local v43, pi:Lcom/android/lgesettings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/lgesettings/applications/RunningState$BaseItem;->mCurSeq:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/lgesettings/applications/RunningState;->mSequence:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_29

    .line 1088
    move-object/from16 v0, v43

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 1089
    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v63, v0

    if-nez v63, :cond_27

    .line 1092
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->clear()V

    .line 1108
    :cond_27
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v56

    .line 1109
    .local v56, sit:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/lgesettings/applications/RunningState$ServiceItem;>;"
    :cond_28
    :goto_13
    invoke-interface/range {v56 .. v56}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_26

    .line 1110
    invoke-interface/range {v56 .. v56}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lcom/android/lgesettings/applications/RunningState$ServiceItem;

    .line 1111
    .local v55, si:Lcom/android/lgesettings/applications/RunningState$ServiceItem;
    move-object/from16 v0, v55

    iget v0, v0, Lcom/android/lgesettings/applications/RunningState$BaseItem;->mCurSeq:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/lgesettings/applications/RunningState;->mSequence:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_28

    .line 1112
    const/16 v17, 0x1

    .line 1113
    invoke-interface/range {v56 .. v56}, Ljava/util/Iterator;->remove()V

    goto :goto_13

    .line 1095
    .end local v55           #si:Lcom/android/lgesettings/applications/RunningState$ServiceItem;
    .end local v56           #sit:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/lgesettings/applications/RunningState$ServiceItem;>;"
    :cond_29
    const/16 v17, 0x1

    .line 1096
    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->remove()V

    .line 1097
    invoke-virtual/range {v50 .. v50}, Ljava/util/HashMap;->size()I

    move-result v63

    if-nez v63, :cond_2b

    .line 1098
    if-nez v60, :cond_2a

    .line 1099
    new-instance v60, Ljava/util/ArrayList;

    .end local v60           #uidToDelete:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct/range {v60 .. v60}, Ljava/util/ArrayList;-><init>()V

    .line 1101
    .restart local v60       #uidToDelete:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v63

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v63

    move-object/from16 v0, v60

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1103
    :cond_2b
    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v63, v0

    if-eqz v63, :cond_26

    .line 1104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->remove(I)V

    goto/16 :goto_12

    .line 1082
    .end local v43           #pi:Lcom/android/lgesettings/applications/RunningState$ProcessItem;
    :cond_2c
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_11

    .line 1119
    .end local v46           #pit:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/lgesettings/applications/RunningState$ProcessItem;>;"
    .end local v50           #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/lgesettings/applications/RunningState$ProcessItem;>;"
    :cond_2d
    if-eqz v60, :cond_2e

    .line 1120
    const/16 v26, 0x0

    :goto_14
    invoke-virtual/range {v60 .. v60}, Ljava/util/ArrayList;->size()I

    move-result v63

    move/from16 v0, v26

    move/from16 v1, v63

    if-ge v0, v1, :cond_2e

    .line 1121
    move-object/from16 v0, v60

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/lang/Integer;

    invoke-virtual/range {v63 .. v63}, Ljava/lang/Integer;->intValue()I

    move-result v59

    .line 1122
    .local v59, uid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 1120
    add-int/lit8 v26, v26, 0x1

    goto :goto_14

    .line 1126
    .end local v59           #uid:I
    :cond_2e
    if-eqz v17, :cond_43

    .line 1128
    new-instance v58, Ljava/util/ArrayList;

    invoke-direct/range {v58 .. v58}, Ljava/util/ArrayList;-><init>()V

    .line 1129
    .local v58, sortedProcesses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$ProcessItem;>;"
    const/16 v26, 0x0

    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->size()I

    move-result v63

    move/from16 v0, v26

    move/from16 v1, v63

    if-ge v0, v1, :cond_33

    .line 1130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/util/HashMap;

    invoke-virtual/range {v63 .. v63}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_16
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_32

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/lgesettings/applications/RunningState$ProcessItem;

    .line 1131
    .restart local v43       #pi:Lcom/android/lgesettings/applications/RunningState$ProcessItem;
    const/16 v63, 0x0

    move/from16 v0, v63

    move-object/from16 v1, v43

    iput-boolean v0, v1, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mIsSystem:Z

    .line 1132
    const/16 v63, 0x1

    move/from16 v0, v63

    move-object/from16 v1, v43

    iput-boolean v0, v1, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mIsStarted:Z

    .line 1133
    const-wide v63, 0x7fffffffffffffffL

    move-wide/from16 v0, v63

    move-object/from16 v2, v43

    iput-wide v0, v2, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mActiveSince:J

    .line 1134
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, i$:Ljava/util/Iterator;
    :cond_2f
    :goto_17
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_31

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lcom/android/lgesettings/applications/RunningState$ServiceItem;

    .line 1135
    .restart local v55       #si:Lcom/android/lgesettings/applications/RunningState$ServiceItem;
    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v63, v0

    if-eqz v63, :cond_30

    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v63, v0

    and-int/lit8 v63, v63, 0x1

    if-eqz v63, :cond_30

    .line 1138
    const/16 v63, 0x1

    move/from16 v0, v63

    move-object/from16 v1, v43

    iput-boolean v0, v1, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mIsSystem:Z

    .line 1140
    :cond_30
    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v63, v0

    if-eqz v63, :cond_2f

    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    move/from16 v63, v0

    if-eqz v63, :cond_2f

    .line 1142
    const/16 v63, 0x0

    move/from16 v0, v63

    move-object/from16 v1, v43

    iput-boolean v0, v1, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mIsStarted:Z

    .line 1143
    move-object/from16 v0, v43

    iget-wide v0, v0, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mActiveSince:J

    move-wide/from16 v63, v0

    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    move-wide/from16 v65, v0

    cmp-long v63, v63, v65

    if-lez v63, :cond_2f

    .line 1144
    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    move-wide/from16 v63, v0

    move-wide/from16 v0, v63

    move-object/from16 v2, v43

    iput-wide v0, v2, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mActiveSince:J

    goto :goto_17

    .line 1148
    .end local v55           #si:Lcom/android/lgesettings/applications/RunningState$ServiceItem;
    :cond_31
    move-object/from16 v0, v58

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16

    .line 1129
    .end local v28           #i$:Ljava/util/Iterator;
    .end local v43           #pi:Lcom/android/lgesettings/applications/RunningState$ProcessItem;
    :cond_32
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_15

    .line 1152
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mServiceProcessComparator:Lcom/android/lgesettings/applications/RunningState$ServiceProcessComparator;

    move-object/from16 v63, v0

    move-object/from16 v0, v58

    move-object/from16 v1, v63

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1154
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 1155
    .local v35, newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$BaseItem;>;"
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 1156
    .local v36, newMergedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    const/16 v42, 0x0

    .line 1157
    .local v42, otherUsers:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->clear()V

    .line 1158
    const/16 v26, 0x0

    :goto_18
    invoke-virtual/range {v58 .. v58}, Ljava/util/ArrayList;->size()I

    move-result v63

    move/from16 v0, v26

    move/from16 v1, v63

    if-ge v0, v1, :cond_3c

    .line 1159
    move-object/from16 v0, v58

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/lgesettings/applications/RunningState$ProcessItem;

    .line 1160
    .restart local v43       #pi:Lcom/android/lgesettings/applications/RunningState$ProcessItem;
    const/16 v63, 0x0

    move/from16 v0, v63

    move-object/from16 v1, v43

    iput-boolean v0, v1, Lcom/android/lgesettings/applications/RunningState$BaseItem;->mNeedDivider:Z

    .line 1162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 1164
    .local v22, firstProc:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v35

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->addDependentProcesses(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1166
    move-object/from16 v0, v35

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1167
    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v63, v0

    if-lez v63, :cond_34

    .line 1168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1172
    :cond_34
    const/16 v30, 0x0

    .line 1173
    .local v30, mergedItem:Lcom/android/lgesettings/applications/RunningState$MergedItem;
    const/16 v25, 0x0

    .line 1174
    .local v25, haveAllMerged:Z
    const/16 v32, 0x0

    .line 1175
    .local v32, needDivider:Z
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, i$:Ljava/util/Iterator;
    :goto_19
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_37

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lcom/android/lgesettings/applications/RunningState$ServiceItem;

    .line 1176
    .restart local v55       #si:Lcom/android/lgesettings/applications/RunningState$ServiceItem;
    move/from16 v0, v32

    move-object/from16 v1, v55

    iput-boolean v0, v1, Lcom/android/lgesettings/applications/RunningState$BaseItem;->mNeedDivider:Z

    .line 1177
    const/16 v32, 0x1

    .line 1178
    move-object/from16 v0, v35

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1179
    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/lgesettings/applications/RunningState$MergedItem;

    move-object/from16 v63, v0

    if-eqz v63, :cond_36

    .line 1180
    if-eqz v30, :cond_35

    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/lgesettings/applications/RunningState$MergedItem;

    move-object/from16 v63, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v63

    if-eq v0, v1, :cond_35

    .line 1181
    const/16 v25, 0x0

    .line 1183
    :cond_35
    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/lgesettings/applications/RunningState$MergedItem;

    move-object/from16 v30, v0

    goto :goto_19

    .line 1185
    :cond_36
    const/16 v25, 0x0

    goto :goto_19

    .line 1189
    .end local v55           #si:Lcom/android/lgesettings/applications/RunningState$ServiceItem;
    :cond_37
    if-eqz v25, :cond_38

    if-eqz v30, :cond_38

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I

    move-result v63

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Ljava/util/HashMap;->size()I

    move-result v64

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_3a

    .line 1192
    :cond_38
    new-instance v30, Lcom/android/lgesettings/applications/RunningState$MergedItem;

    .end local v30           #mergedItem:Lcom/android/lgesettings/applications/RunningState$MergedItem;
    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/lgesettings/applications/RunningState$BaseItem;->mUserId:I

    move/from16 v63, v0

    move-object/from16 v0, v30

    move/from16 v1, v63

    invoke-direct {v0, v1}, Lcom/android/lgesettings/applications/RunningState$MergedItem;-><init>(I)V

    .line 1193
    .restart local v30       #mergedItem:Lcom/android/lgesettings/applications/RunningState$MergedItem;
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_1a
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_39

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lcom/android/lgesettings/applications/RunningState$ServiceItem;

    .line 1194
    .restart local v55       #si:Lcom/android/lgesettings/applications/RunningState$ServiceItem;
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1195
    move-object/from16 v0, v30

    move-object/from16 v1, v55

    iput-object v0, v1, Lcom/android/lgesettings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/lgesettings/applications/RunningState$MergedItem;

    goto :goto_1a

    .line 1197
    .end local v55           #si:Lcom/android/lgesettings/applications/RunningState$ServiceItem;
    :cond_39
    move-object/from16 v0, v43

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/lgesettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/lgesettings/applications/RunningState$ProcessItem;

    .line 1198
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->clear()V

    .line 1199
    move/from16 v31, v22

    .local v31, mpi:I
    :goto_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I

    move-result v63

    add-int/lit8 v63, v63, -0x1

    move/from16 v0, v31

    move/from16 v1, v63

    if-ge v0, v1, :cond_3a

    .line 1200
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1199
    add-int/lit8 v31, v31, 0x1

    goto :goto_1b

    .line 1204
    .end local v31           #mpi:I
    :cond_3a
    const/16 v63, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1205
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/lgesettings/applications/RunningState$BaseItem;->mUserId:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/lgesettings/applications/RunningState;->mMyUserId:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_3b

    .line 1206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    move-object/from16 v3, v63

    move-object/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/lgesettings/applications/RunningState;->addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/lgesettings/applications/RunningState$MergedItem;)V

    .line 1158
    :goto_1c
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_18

    .line 1208
    :cond_3b
    move-object/from16 v0, v36

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 1214
    .end local v22           #firstProc:I
    .end local v25           #haveAllMerged:Z
    .end local v27           #i$:Ljava/util/Iterator;
    .end local v30           #mergedItem:Lcom/android/lgesettings/applications/RunningState$MergedItem;
    .end local v32           #needDivider:Z
    .end local v43           #pi:Lcom/android/lgesettings/applications/RunningState$ProcessItem;
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1215
    const/16 v26, 0x0

    :goto_1d
    move/from16 v0, v26

    if-ge v0, v7, :cond_40

    .line 1216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/lgesettings/applications/RunningState$ProcessItem;

    .line 1217
    .restart local v48       #proc:Lcom/android/lgesettings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mClient:Lcom/android/lgesettings/applications/RunningState$ProcessItem;

    move-object/from16 v63, v0

    if-nez v63, :cond_3e

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/HashMap;->size()I

    move-result v63

    if-gtz v63, :cond_3e

    .line 1218
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/lgesettings/applications/RunningState$MergedItem;

    move-object/from16 v63, v0

    if-nez v63, :cond_3d

    .line 1219
    new-instance v63, Lcom/android/lgesettings/applications/RunningState$MergedItem;

    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/lgesettings/applications/RunningState$BaseItem;->mUserId:I

    move/from16 v64, v0

    invoke-direct/range {v63 .. v64}, Lcom/android/lgesettings/applications/RunningState$MergedItem;-><init>(I)V

    move-object/from16 v0, v63

    move-object/from16 v1, v48

    iput-object v0, v1, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/lgesettings/applications/RunningState$MergedItem;

    .line 1220
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/lgesettings/applications/RunningState$MergedItem;

    move-object/from16 v63, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v63

    iput-object v0, v1, Lcom/android/lgesettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/lgesettings/applications/RunningState$ProcessItem;

    .line 1222
    :cond_3d
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/lgesettings/applications/RunningState$MergedItem;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1223
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/lgesettings/applications/RunningState$MergedItem;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Lcom/android/lgesettings/applications/RunningState$BaseItem;->mUserId:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/lgesettings/applications/RunningState;->mMyUserId:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_3f

    .line 1224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/lgesettings/applications/RunningState$MergedItem;

    move-object/from16 v64, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    move-object/from16 v3, v63

    move-object/from16 v4, v64

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/lgesettings/applications/RunningState;->addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/lgesettings/applications/RunningState$MergedItem;)V

    .line 1229
    :goto_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1215
    :cond_3e
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_1d

    .line 1227
    :cond_3f
    const/16 v63, 0x0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/lgesettings/applications/RunningState$MergedItem;

    move-object/from16 v64, v0

    move-object/from16 v0, v36

    move/from16 v1, v63

    move-object/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1e

    .line 1235
    .end local v48           #proc:Lcom/android/lgesettings/applications/RunningState$ProcessItem;
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->size()I

    move-result v11

    .line 1236
    .local v11, NU:I
    const/16 v26, 0x0

    :goto_1f
    move/from16 v0, v26

    if-ge v0, v11, :cond_42

    .line 1237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/android/lgesettings/applications/RunningState$MergedItem;

    .line 1238
    .local v61, user:Lcom/android/lgesettings/applications/RunningState$MergedItem;
    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/lgesettings/applications/RunningState$BaseItem;->mCurSeq:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/lgesettings/applications/RunningState;->mSequence:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_41

    .line 1239
    const/16 v63, 0x0

    move-object/from16 v0, v61

    move-object/from16 v1, p1

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1236
    :cond_41
    add-int/lit8 v26, v26, 0x1

    goto :goto_1f

    .line 1243
    .end local v61           #user:Lcom/android/lgesettings/applications/RunningState$MergedItem;
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v64, v0

    monitor-enter v64

    .line 1244
    :try_start_0
    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/applications/RunningState;->mItems:Ljava/util/ArrayList;

    .line 1245
    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    .line 1246
    monitor-exit v64
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1251
    .end local v11           #NU:I
    .end local v35           #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$BaseItem;>;"
    .end local v36           #newMergedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    .end local v42           #otherUsers:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    .end local v58           #sortedProcesses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$ProcessItem;>;"
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->clear()V

    .line 1252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1253
    const/16 v38, 0x0

    .line 1254
    .local v38, numBackgroundProcesses:I
    const/16 v39, 0x0

    .line 1255
    .local v39, numForegroundProcesses:I
    const/16 v41, 0x0

    .line 1256
    .local v41, numServiceProcesses:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 1257
    const/16 v26, 0x0

    :goto_20
    move/from16 v0, v26

    if-ge v0, v9, :cond_47

    .line 1258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/lgesettings/applications/RunningState$ProcessItem;

    .line 1259
    .restart local v48       #proc:Lcom/android/lgesettings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/lgesettings/applications/RunningState$BaseItem;->mCurSeq:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/lgesettings/applications/RunningState;->mSequence:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_46

    .line 1262
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v63, v0

    const/16 v64, 0x190

    move/from16 v0, v63

    move/from16 v1, v64

    if-lt v0, v1, :cond_44

    .line 1264
    add-int/lit8 v38, v38, 0x1

    .line 1265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1257
    :goto_21
    add-int/lit8 v26, v26, 0x1

    goto :goto_20

    .line 1246
    .end local v38           #numBackgroundProcesses:I
    .end local v39           #numForegroundProcesses:I
    .end local v41           #numServiceProcesses:I
    .end local v48           #proc:Lcom/android/lgesettings/applications/RunningState$ProcessItem;
    .restart local v11       #NU:I
    .restart local v35       #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$BaseItem;>;"
    .restart local v36       #newMergedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    .restart local v42       #otherUsers:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    .restart local v58       #sortedProcesses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$ProcessItem;>;"
    :catchall_0
    move-exception v63

    :try_start_1
    monitor-exit v64
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v63

    .line 1266
    .end local v11           #NU:I
    .end local v35           #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$BaseItem;>;"
    .end local v36           #newMergedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    .end local v42           #otherUsers:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    .end local v58           #sortedProcesses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$ProcessItem;>;"
    .restart local v38       #numBackgroundProcesses:I
    .restart local v39       #numForegroundProcesses:I
    .restart local v41       #numServiceProcesses:I
    .restart local v48       #proc:Lcom/android/lgesettings/applications/RunningState$ProcessItem;
    :cond_44
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v63, v0

    const/16 v64, 0xc8

    move/from16 v0, v63

    move/from16 v1, v64

    if-gt v0, v1, :cond_45

    .line 1268
    add-int/lit8 v39, v39, 0x1

    .line 1269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 1271
    :cond_45
    const-string v63, "RunningState"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "Unknown non-service process: "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    move-object/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string v65, " #"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 1275
    :cond_46
    add-int/lit8 v41, v41, 0x1

    goto :goto_21

    .line 1279
    .end local v48           #proc:Lcom/android/lgesettings/applications/RunningState$ProcessItem;
    :cond_47
    const-wide/16 v13, 0x0

    .line 1280
    .local v13, backgroundProcessMemory:J
    const-wide/16 v23, 0x0

    .line 1281
    .local v23, foregroundProcessMemory:J
    const-wide/16 v52, 0x0

    .line 1282
    .local v52, serviceProcessMemory:J
    const/16 v33, 0x0

    .line 1283
    .local v33, newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    const/16 v37, 0x0

    .line 1284
    .local v37, newUserBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    const/16 v21, 0x0

    .line 1286
    .local v21, diffUsers:Z
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I

    move-result v40

    .line 1287
    .local v40, numProc:I
    move/from16 v0, v40

    new-array v0, v0, [I

    move-object/from16 v45, v0

    .line 1288
    .local v45, pids:[I
    const/16 v26, 0x0

    :goto_22
    move/from16 v0, v26

    move/from16 v1, v40

    if-ge v0, v1, :cond_48

    .line 1289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Lcom/android/lgesettings/applications/RunningState$ProcessItem;

    move-object/from16 v0, v63

    iget v0, v0, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v63, v0

    aput v63, v45, v26

    .line 1288
    add-int/lit8 v26, v26, 0x1

    goto :goto_22

    .line 1291
    :cond_48
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getProcessPss([I)[J
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v51

    .line 1293
    .local v51, pss:[J
    const/4 v15, 0x0

    .line 1294
    .local v15, bgIndex:I
    const/16 v26, 0x0

    move-object/from16 v34, v33

    .end local v33           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    .local v34, newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    :goto_23
    :try_start_3
    move-object/from16 v0, v45

    array-length v0, v0

    move/from16 v63, v0

    move/from16 v0, v26

    move/from16 v1, v63

    if-ge v0, v1, :cond_52

    .line 1295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/lgesettings/applications/RunningState$ProcessItem;

    .line 1296
    .restart local v48       #proc:Lcom/android/lgesettings/applications/RunningState$ProcessItem;
    aget-wide v63, v51, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/lgesettings/applications/RunningState;->mSequence:I

    move/from16 v65, v0

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move-wide/from16 v2, v63

    move/from16 v4, v65

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->updateSize(Landroid/content/Context;JI)Z

    move-result v63

    or-int v17, v17, v63

    .line 1297
    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/lgesettings/applications/RunningState$BaseItem;->mCurSeq:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/lgesettings/applications/RunningState;->mSequence:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_49

    .line 1298
    move-object/from16 v0, v48

    iget-wide v0, v0, Lcom/android/lgesettings/applications/RunningState$BaseItem;->mSize:J

    move-wide/from16 v63, v0

    add-long v52, v52, v63

    move-object/from16 v33, v34

    .line 1294
    .end local v34           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    .restart local v33       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    :goto_24
    add-int/lit8 v26, v26, 0x1

    move-object/from16 v34, v33

    .end local v33           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    .restart local v34       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    goto :goto_23

    .line 1299
    :cond_49
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v63, v0

    const/16 v64, 0x190

    move/from16 v0, v63

    move/from16 v1, v64

    if-lt v0, v1, :cond_51

    .line 1301
    move-object/from16 v0, v48

    iget-wide v0, v0, Lcom/android/lgesettings/applications/RunningState$BaseItem;->mSize:J

    move-wide/from16 v63, v0

    add-long v13, v13, v63

    .line 1303
    if-eqz v34, :cond_4b

    .line 1304
    new-instance v30, Lcom/android/lgesettings/applications/RunningState$MergedItem;

    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/lgesettings/applications/RunningState$BaseItem;->mUserId:I

    move/from16 v63, v0

    move-object/from16 v0, v30

    move/from16 v1, v63

    invoke-direct {v0, v1}, Lcom/android/lgesettings/applications/RunningState$MergedItem;-><init>(I)V

    move-object/from16 v0, v30

    move-object/from16 v1, v48

    iput-object v0, v1, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/lgesettings/applications/RunningState$MergedItem;

    .line 1305
    .restart local v30       #mergedItem:Lcom/android/lgesettings/applications/RunningState$MergedItem;
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/lgesettings/applications/RunningState$MergedItem;

    move-object/from16 v63, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v63

    iput-object v0, v1, Lcom/android/lgesettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/lgesettings/applications/RunningState$ProcessItem;

    .line 1306
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/lgesettings/applications/RunningState$BaseItem;->mUserId:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/lgesettings/applications/RunningState;->mMyUserId:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_4a

    const/16 v63, 0x1

    :goto_25
    or-int v21, v21, v63

    .line 1307
    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    move-object/from16 v33, v34

    .line 1325
    .end local v34           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    .restart local v33       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    :goto_26
    const/16 v63, 0x1

    :try_start_4
    move-object/from16 v0, v30

    move-object/from16 v1, p1

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1326
    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1327
    add-int/lit8 v15, v15, 0x1

    .line 1328
    goto :goto_24

    .line 1306
    .end local v33           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    .restart local v34       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    :cond_4a
    const/16 v63, 0x0

    goto :goto_25

    .line 1309
    .end local v30           #mergedItem:Lcom/android/lgesettings/applications/RunningState$MergedItem;
    :cond_4b
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I

    move-result v63

    move/from16 v0, v63

    if-ge v15, v0, :cond_4c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Lcom/android/lgesettings/applications/RunningState$MergedItem;

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/lgesettings/applications/RunningState$ProcessItem;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v48

    if-eq v0, v1, :cond_50

    .line 1311
    :cond_4c
    new-instance v33, Ljava/util/ArrayList;

    move-object/from16 v0, v33

    move/from16 v1, v38

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1312
    .end local v34           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    .restart local v33       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    const/16 v16, 0x0

    .local v16, bgi:I
    :goto_27
    move/from16 v0, v16

    if-ge v0, v15, :cond_4e

    .line 1313
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/lgesettings/applications/RunningState$MergedItem;

    .line 1314
    .restart local v30       #mergedItem:Lcom/android/lgesettings/applications/RunningState$MergedItem;
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/lgesettings/applications/RunningState$BaseItem;->mUserId:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/lgesettings/applications/RunningState;->mMyUserId:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_4d

    const/16 v63, 0x1

    :goto_28
    or-int v21, v21, v63

    .line 1315
    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1312
    add-int/lit8 v16, v16, 0x1

    goto :goto_27

    .line 1314
    :cond_4d
    const/16 v63, 0x0

    goto :goto_28

    .line 1317
    .end local v30           #mergedItem:Lcom/android/lgesettings/applications/RunningState$MergedItem;
    :cond_4e
    new-instance v30, Lcom/android/lgesettings/applications/RunningState$MergedItem;

    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/lgesettings/applications/RunningState$BaseItem;->mUserId:I

    move/from16 v63, v0

    move-object/from16 v0, v30

    move/from16 v1, v63

    invoke-direct {v0, v1}, Lcom/android/lgesettings/applications/RunningState$MergedItem;-><init>(I)V

    move-object/from16 v0, v30

    move-object/from16 v1, v48

    iput-object v0, v1, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/lgesettings/applications/RunningState$MergedItem;

    .line 1318
    .restart local v30       #mergedItem:Lcom/android/lgesettings/applications/RunningState$MergedItem;
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/lgesettings/applications/RunningState$MergedItem;

    move-object/from16 v63, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v63

    iput-object v0, v1, Lcom/android/lgesettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/lgesettings/applications/RunningState$ProcessItem;

    .line 1319
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/lgesettings/applications/RunningState$BaseItem;->mUserId:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/lgesettings/applications/RunningState;->mMyUserId:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_4f

    const/16 v63, 0x1

    :goto_29
    or-int v21, v21, v63

    .line 1320
    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_26

    .line 1333
    .end local v15           #bgIndex:I
    .end local v16           #bgi:I
    .end local v30           #mergedItem:Lcom/android/lgesettings/applications/RunningState$MergedItem;
    .end local v40           #numProc:I
    .end local v45           #pids:[I
    .end local v48           #proc:Lcom/android/lgesettings/applications/RunningState$ProcessItem;
    .end local v51           #pss:[J
    :catch_0
    move-exception v63

    .line 1337
    :goto_2a
    if-nez v33, :cond_54

    .line 1339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I

    move-result v63

    move/from16 v0, v63

    move/from16 v1, v38

    if-le v0, v1, :cond_54

    .line 1340
    new-instance v33, Ljava/util/ArrayList;

    .end local v33           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    move-object/from16 v0, v33

    move/from16 v1, v38

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1341
    .restart local v33       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    const/16 v16, 0x0

    .restart local v16       #bgi:I
    :goto_2b
    move/from16 v0, v16

    move/from16 v1, v38

    if-ge v0, v1, :cond_54

    .line 1342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/lgesettings/applications/RunningState$MergedItem;

    .line 1343
    .restart local v30       #mergedItem:Lcom/android/lgesettings/applications/RunningState$MergedItem;
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/lgesettings/applications/RunningState$BaseItem;->mUserId:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/lgesettings/applications/RunningState;->mMyUserId:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_53

    const/16 v63, 0x1

    :goto_2c
    or-int v21, v21, v63

    .line 1344
    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1341
    add-int/lit8 v16, v16, 0x1

    goto :goto_2b

    .line 1319
    .restart local v15       #bgIndex:I
    .restart local v40       #numProc:I
    .restart local v45       #pids:[I
    .restart local v48       #proc:Lcom/android/lgesettings/applications/RunningState$ProcessItem;
    .restart local v51       #pss:[J
    :cond_4f
    const/16 v63, 0x0

    goto :goto_29

    .line 1322
    .end local v16           #bgi:I
    .end local v30           #mergedItem:Lcom/android/lgesettings/applications/RunningState$MergedItem;
    .end local v33           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    .restart local v34       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    :cond_50
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/lgesettings/applications/RunningState$MergedItem;

    .restart local v30       #mergedItem:Lcom/android/lgesettings/applications/RunningState$MergedItem;
    move-object/from16 v33, v34

    .end local v34           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    .restart local v33       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    goto/16 :goto_26

    .line 1328
    .end local v30           #mergedItem:Lcom/android/lgesettings/applications/RunningState$MergedItem;
    .end local v33           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    .restart local v34       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    :cond_51
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v63, v0

    const/16 v64, 0xc8

    move/from16 v0, v63

    move/from16 v1, v64

    if-gt v0, v1, :cond_5d

    .line 1330
    move-object/from16 v0, v48

    iget-wide v0, v0, Lcom/android/lgesettings/applications/RunningState$BaseItem;->mSize:J

    move-wide/from16 v63, v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_2

    add-long v23, v23, v63

    move-object/from16 v33, v34

    .end local v34           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    .restart local v33       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    goto/16 :goto_24

    .end local v33           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    .end local v48           #proc:Lcom/android/lgesettings/applications/RunningState$ProcessItem;
    .restart local v34       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    :cond_52
    move-object/from16 v33, v34

    .line 1335
    .end local v34           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    .restart local v33       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    goto/16 :goto_2a

    .line 1343
    .end local v15           #bgIndex:I
    .end local v40           #numProc:I
    .end local v45           #pids:[I
    .end local v51           #pss:[J
    .restart local v16       #bgi:I
    .restart local v30       #mergedItem:Lcom/android/lgesettings/applications/RunningState$MergedItem;
    :cond_53
    const/16 v63, 0x0

    goto :goto_2c

    .line 1349
    .end local v16           #bgi:I
    .end local v30           #mergedItem:Lcom/android/lgesettings/applications/RunningState$MergedItem;
    :cond_54
    if-eqz v33, :cond_55

    .line 1352
    if-nez v21, :cond_56

    .line 1354
    move-object/from16 v37, v33

    .line 1382
    :cond_55
    const/16 v26, 0x0

    :goto_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I

    move-result v63

    move/from16 v0, v26

    move/from16 v1, v63

    if-ge v0, v1, :cond_5a

    .line 1383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Lcom/android/lgesettings/applications/RunningState$MergedItem;

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z

    .line 1382
    add-int/lit8 v26, v26, 0x1

    goto :goto_2d

    .line 1358
    :cond_56
    new-instance v37, Ljava/util/ArrayList;

    .end local v37           #newUserBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    .line 1359
    .restart local v37       #newUserBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1360
    .local v6, NB:I
    const/16 v26, 0x0

    :goto_2e
    move/from16 v0, v26

    if-ge v0, v6, :cond_58

    .line 1361
    move-object/from16 v0, v33

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/lgesettings/applications/RunningState$MergedItem;

    .line 1362
    .restart local v30       #mergedItem:Lcom/android/lgesettings/applications/RunningState$MergedItem;
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/lgesettings/applications/RunningState$BaseItem;->mUserId:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/lgesettings/applications/RunningState;->mMyUserId:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_57

    .line 1363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v37

    move-object/from16 v3, v63

    move-object/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/lgesettings/applications/RunningState;->addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/lgesettings/applications/RunningState$MergedItem;)V

    .line 1360
    :goto_2f
    add-int/lit8 v26, v26, 0x1

    goto :goto_2e

    .line 1366
    :cond_57
    move-object/from16 v0, v37

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 1371
    .end local v30           #mergedItem:Lcom/android/lgesettings/applications/RunningState$MergedItem;
    :cond_58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->size()I

    move-result v11

    .line 1372
    .restart local v11       #NU:I
    const/16 v26, 0x0

    :goto_30
    move/from16 v0, v26

    if-ge v0, v11, :cond_55

    .line 1373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/android/lgesettings/applications/RunningState$MergedItem;

    .line 1374
    .restart local v61       #user:Lcom/android/lgesettings/applications/RunningState$MergedItem;
    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/lgesettings/applications/RunningState$BaseItem;->mCurSeq:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/lgesettings/applications/RunningState;->mSequence:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_59

    .line 1375
    const/16 v63, 0x1

    move-object/from16 v0, v61

    move-object/from16 v1, p1

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1376
    move-object/from16 v0, v61

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z

    .line 1372
    :cond_59
    add-int/lit8 v26, v26, 0x1

    goto :goto_30

    .line 1386
    .end local v6           #NB:I
    .end local v11           #NU:I
    .end local v61           #user:Lcom/android/lgesettings/applications/RunningState$MergedItem;
    :cond_5a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v64, v0

    monitor-enter v64

    .line 1387
    :try_start_8
    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/lgesettings/applications/RunningState;->mNumBackgroundProcesses:I

    .line 1388
    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/lgesettings/applications/RunningState;->mNumForegroundProcesses:I

    .line 1389
    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/lgesettings/applications/RunningState;->mNumServiceProcesses:I

    .line 1390
    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/lgesettings/applications/RunningState;->mBackgroundProcessMemory:J

    .line 1391
    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/lgesettings/applications/RunningState;->mForegroundProcessMemory:J

    .line 1392
    move-wide/from16 v0, v52

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/lgesettings/applications/RunningState;->mServiceProcessMemory:J

    .line 1393
    if-eqz v33, :cond_5b

    .line 1394
    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    .line 1395
    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;

    .line 1396
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/lgesettings/applications/RunningState;->mWatchingBackgroundItems:Z

    move/from16 v63, v0

    if-eqz v63, :cond_5b

    .line 1397
    const/16 v17, 0x1

    .line 1400
    :cond_5b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/lgesettings/applications/RunningState;->mHaveData:Z

    move/from16 v63, v0

    if-nez v63, :cond_5c

    .line 1401
    const/16 v63, 0x1

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/lgesettings/applications/RunningState;->mHaveData:Z

    .line 1402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/lang/Object;->notifyAll()V

    .line 1404
    :cond_5c
    monitor-exit v64

    .line 1406
    return v17

    .line 1404
    :catchall_1
    move-exception v63

    monitor-exit v64
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v63

    .line 1334
    :catch_1
    move-exception v63

    goto/16 :goto_2a

    .end local v33           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    .restart local v15       #bgIndex:I
    .restart local v34       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    .restart local v40       #numProc:I
    .restart local v45       #pids:[I
    .restart local v51       #pss:[J
    :catch_2
    move-exception v63

    move-object/from16 v33, v34

    .end local v34           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    .restart local v33       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    goto/16 :goto_2a

    .line 1333
    .end local v33           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    .restart local v34       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    :catch_3
    move-exception v63

    move-object/from16 v33, v34

    .end local v34           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    .restart local v33       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    goto/16 :goto_2a

    .end local v33           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    .restart local v34       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    .restart local v48       #proc:Lcom/android/lgesettings/applications/RunningState$ProcessItem;
    :cond_5d
    move-object/from16 v33, v34

    .end local v34           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    .restart local v33       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    goto/16 :goto_24
.end method


# virtual methods
.method getCurrentBackgroundItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/lgesettings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1428
    iget-object v1, p0, Lcom/android/lgesettings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1429
    :try_start_0
    iget-object v0, p0, Lcom/android/lgesettings/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 1430
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getCurrentMergedItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/lgesettings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1422
    iget-object v1, p0, Lcom/android/lgesettings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1423
    :try_start_0
    iget-object v0, p0, Lcom/android/lgesettings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 1424
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method hasData()Z
    .locals 2

    .prologue
    .line 763
    iget-object v1, p0, Lcom/android/lgesettings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 764
    :try_start_0
    iget-boolean v0, p0, Lcom/android/lgesettings/applications/RunningState;->mHaveData:Z

    monitor-exit v1

    return v0

    .line 765
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method pause()V
    .locals 3

    .prologue
    .line 780
    iget-object v1, p0, Lcom/android/lgesettings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 781
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/lgesettings/applications/RunningState;->mResumed:Z

    .line 782
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/applications/RunningState;->mRefreshUiListener:Lcom/android/lgesettings/applications/RunningState$OnRefreshUiListener;

    .line 783
    iget-object v0, p0, Lcom/android/lgesettings/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 784
    monitor-exit v1

    .line 785
    return-void

    .line 784
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method resume(Lcom/android/lgesettings/applications/RunningState$OnRefreshUiListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 739
    iget-object v1, p0, Lcom/android/lgesettings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 740
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/lgesettings/applications/RunningState;->mResumed:Z

    .line 741
    iput-object p1, p0, Lcom/android/lgesettings/applications/RunningState;->mRefreshUiListener:Lcom/android/lgesettings/applications/RunningState$OnRefreshUiListener;

    .line 742
    iget-object v0, p0, Lcom/android/lgesettings/applications/RunningState;->mInterestingConfigChanges:Lcom/android/lgesettings/applications/InterestingConfigChanges;

    iget-object v2, p0, Lcom/android/lgesettings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/applications/RunningState;->mHaveData:Z

    .line 744
    iget-object v0, p0, Lcom/android/lgesettings/applications/RunningState;->mBackgroundHandler:Lcom/android/lgesettings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 745
    iget-object v0, p0, Lcom/android/lgesettings/applications/RunningState;->mBackgroundHandler:Lcom/android/lgesettings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 746
    iget-object v0, p0, Lcom/android/lgesettings/applications/RunningState;->mBackgroundHandler:Lcom/android/lgesettings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 748
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/applications/RunningState;->mBackgroundHandler:Lcom/android/lgesettings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/applications/RunningState$BackgroundHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 749
    iget-object v0, p0, Lcom/android/lgesettings/applications/RunningState;->mBackgroundHandler:Lcom/android/lgesettings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 751
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 752
    monitor-exit v1

    .line 753
    return-void

    .line 752
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setWatchingBackgroundItems(Z)V
    .locals 2
    .parameter "watching"

    .prologue
    .line 1416
    iget-object v1, p0, Lcom/android/lgesettings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1417
    :try_start_0
    iput-boolean p1, p0, Lcom/android/lgesettings/applications/RunningState;->mWatchingBackgroundItems:Z

    .line 1418
    monitor-exit v1

    .line 1419
    return-void

    .line 1418
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateNow()V
    .locals 3

    .prologue
    .line 756
    iget-object v1, p0, Lcom/android/lgesettings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 757
    :try_start_0
    iget-object v0, p0, Lcom/android/lgesettings/applications/RunningState;->mBackgroundHandler:Lcom/android/lgesettings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 758
    iget-object v0, p0, Lcom/android/lgesettings/applications/RunningState;->mBackgroundHandler:Lcom/android/lgesettings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 759
    monitor-exit v1

    .line 760
    return-void

    .line 759
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method waitForData()V
    .locals 4

    .prologue
    .line 769
    iget-object v1, p0, Lcom/android/lgesettings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 770
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/lgesettings/applications/RunningState;->mHaveData:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 772
    :try_start_1
    iget-object v0, p0, Lcom/android/lgesettings/applications/RunningState;->mLock:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 773
    :catch_0
    move-exception v0

    goto :goto_0

    .line 776
    :cond_0
    :try_start_2
    monitor-exit v1

    .line 777
    return-void

    .line 776
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
