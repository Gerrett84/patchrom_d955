.class public Lcom/android/lgesettings/applications/InstalledAppDetails;
.super Landroid/app/Fragment;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/lgesettings/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/applications/InstalledAppDetails$DisableChanger;,
        Lcom/android/lgesettings/applications/InstalledAppDetails$MyAlertDialogFragment;,
        Lcom/android/lgesettings/applications/InstalledAppDetails$PremiumSmsSelectionListener;,
        Lcom/android/lgesettings/applications/InstalledAppDetails$PackageMoveObserver;,
        Lcom/android/lgesettings/applications/InstalledAppDetails$ClearCacheObserver;,
        Lcom/android/lgesettings/applications/InstalledAppDetails$ClearUserDataObserver;
    }
.end annotation


# instance fields
.field private final TEXTVIEW_MAX_WIDTH:I

.field private disableForceStopButtonPackageList:[Ljava/lang/String;

.field private mActivitiesButton:Landroid/widget/Button;

.field private mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

.field private mAppSize:Landroid/widget/TextView;

.field private mAppVersion:Landroid/widget/TextView;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mAskCompatibilityCB:Landroid/widget/CheckBox;

.field private mCacheSize:Landroid/widget/TextView;

.field private mCanBeOnSdCardChecker:Lcom/android/lgesettings/applications/CanBeOnSdCardChecker;

.field private mCanClearData:Z

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private mClearCacheButton:Landroid/widget/Button;

.field private mClearCacheObserver:Lcom/android/lgesettings/applications/InstalledAppDetails$ClearCacheObserver;

.field private mClearDataButton:Landroid/widget/Button;

.field private mClearDataObserver:Lcom/android/lgesettings/applications/InstalledAppDetails$ClearUserDataObserver;

.field private mComputingStr:Ljava/lang/CharSequence;

.field private mDataSize:Landroid/widget/TextView;

.field private mDisableAfterUninstall:Z

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mEnableCompatibilityCB:Landroid/widget/CheckBox;

.field private mExternalCodeSize:Landroid/widget/TextView;

.field private mExternalCodeSizePrefix:Landroid/widget/TextView;

.field private mExternalDataSize:Landroid/widget/TextView;

.field private mForceStopButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mHaveSizes:Z

.field private mInitialized:Z

.field private mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mLastCacheSize:J

.field private mLastCodeSize:J

.field private mLastDataSize:J

.field private mLastExternalCodeSize:J

.field private mLastExternalDataSize:J

.field private mLastTotalSize:J

.field private mMoreControlButtons:Landroid/view/View;

.field private mMoveAppButton:Landroid/widget/Button;

.field private mMoveInProgress:Z

.field private mNotificationSwitch:Landroid/widget/CompoundButton;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPackageMoveObserver:Lcom/android/lgesettings/applications/InstalledAppDetails$PackageMoveObserver;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRootView:Landroid/view/View;

.field private mScreenCompatSection:Landroid/view/View;

.field private mSession:Lcom/android/lgesettings/applications/ApplicationsState$Session;

.field private mShowUninstalled:Z

.field private mSmsManager:Lcom/android/internal/telephony/ISms;

.field private mSpecialDisableButton:Landroid/widget/Button;

.field private mState:Lcom/android/lgesettings/applications/ApplicationsState;

.field private mTotalSize:Landroid/widget/TextView;

.field private mUninstallButton:Landroid/widget/Button;

.field private mUpdatedSysApp:Z

.field private mUsbManager:Landroid/hardware/usb/IUsbManager;

.field private mUserManager:Landroid/os/UserManager;

.field private notUserChange:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-wide/16 v1, -0x1

    .line 109
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 135
    iput-boolean v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 136
    iput-boolean v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    .line 141
    iput-boolean v4, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mCanClearData:Z

    .line 149
    const/16 v0, 0xd2

    iput v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->TEXTVIEW_MAX_WIDTH:I

    .line 165
    iput-boolean v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->notUserChange:Z

    .line 167
    iput-boolean v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mHaveSizes:Z

    .line 168
    iput-wide v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 169
    iput-wide v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mLastDataSize:J

    .line 170
    iput-wide v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    .line 171
    iput-wide v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mLastExternalDataSize:J

    .line 172
    iput-wide v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mLastCacheSize:J

    .line 173
    iput-wide v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mLastTotalSize:J

    .line 210
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.spritemobile.backup.lg"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->disableForceStopButtonPackageList:[Ljava/lang/String;

    .line 223
    new-instance v0, Lcom/android/lgesettings/applications/InstalledAppDetails$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/applications/InstalledAppDetails$1;-><init>(Lcom/android/lgesettings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;

    .line 1457
    new-instance v0, Lcom/android/lgesettings/applications/InstalledAppDetails$2;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/applications/InstalledAppDetails$2;-><init>(Lcom/android/lgesettings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    .line 1494
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/applications/InstalledAppDetails;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/lgesettings/applications/InstalledAppDetails;->processClearMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/applications/InstalledAppDetails;)Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/lgesettings/applications/InstalledAppDetails;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/lgesettings/applications/InstalledAppDetails;->forceStopPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/lgesettings/applications/InstalledAppDetails;I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getMoveErrMsg(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/lgesettings/applications/InstalledAppDetails;)Landroid/widget/CompoundButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/lgesettings/applications/InstalledAppDetails;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/lgesettings/applications/InstalledAppDetails;->setNotificationsEnabled(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/lgesettings/applications/InstalledAppDetails;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/lgesettings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/lgesettings/applications/InstalledAppDetails;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/applications/InstalledAppDetails;)Lcom/android/lgesettings/applications/ApplicationsState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mState:Lcom/android/lgesettings/applications/ApplicationsState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/applications/InstalledAppDetails;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/lgesettings/applications/InstalledAppDetails;->processMoveMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/lgesettings/applications/InstalledAppDetails;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/lgesettings/applications/InstalledAppDetails;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->notUserChange:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/lgesettings/applications/InstalledAppDetails;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->initiateClearUserData()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/lgesettings/applications/InstalledAppDetails;Ljava/lang/String;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3}, Lcom/android/lgesettings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/lgesettings/applications/InstalledAppDetails;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/lgesettings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/lgesettings/applications/InstalledAppDetails;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    return-object v0
.end method

.method private changeMaxWidth(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "config"

    .prologue
    .line 599
    const/4 v0, 0x0

    .line 600
    .local v0, maxpixels:I
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 601
    const/high16 v1, 0x43d2

    invoke-virtual {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 602
    iget-object v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mExternalCodeSizePrefix:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 607
    :goto_0
    const-string v1, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigurationChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " maxpixels: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    return-void

    .line 604
    :cond_0
    const/high16 v1, 0x4352

    invoke-virtual {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 605
    iget-object v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mExternalCodeSizePrefix:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_0
.end method

.method private checkForceStop()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 1470
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.lge.clock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.android.phone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.lge.ltecall"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.lge.fmradio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.android.lgesettingsaccessibility"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.lge.nfclock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v1, "jp.netstar.familysmile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1475
    :cond_0
    invoke-direct {p0, v5}, Lcom/android/lgesettings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    .line 1492
    :cond_1
    :goto_0
    return-void

    .line 1476
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x20

    and-int/2addr v0, v1

    if-nez v0, :cond_3

    .line 1479
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->chkDisableForceStopButton(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1481
    invoke-direct {p0, v6}, Lcom/android/lgesettings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    goto :goto_0

    .line 1484
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v3, "package"

    iget-object v4, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1486
    const-string v0, "android.intent.extra.PACKAGES"

    new-array v3, v6, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1487
    const-string v0, "android.intent.extra.UID"

    iget-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1488
    const-string v0, "android.intent.extra.user_handle"

    iget-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1489
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private checkPackageNameForDisable(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .line 498
    if-nez p1, :cond_1

    .line 509
    :cond_0
    :goto_0
    return v1

    .line 502
    :cond_1
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MPCS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "com.android.browser"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 503
    const/4 v1, 0x1

    goto :goto_0

    .line 505
    :cond_2
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/lgesettings/Utils;->getDisableBlockedApps(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v0

    .line 506
    .local v0, disable_blocked_apps:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 509
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private checkPackageNameForNotification(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .line 513
    if-nez p1, :cond_1

    .line 520
    :cond_0
    :goto_0
    return v1

    .line 516
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/lgesettings/Utils;->getNotificationBlockedApps(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v0

    .line 517
    .local v0, notification_blocked_apps:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 520
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private checkPackageNameForVapp(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .line 524
    if-nez p1, :cond_1

    .line 531
    :cond_0
    :goto_0
    return v1

    .line 527
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/lgesettings/Utils;->getVApps(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v0

    .line 528
    .local v0, vapps:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 531
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private chkDisableForceStopButton(Ljava/lang/String;)Z
    .locals 2
    .parameter "packageName"

    .prologue
    .line 1744
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->disableForceStopButtonPackageList:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1745
    iget-object v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->disableForceStopButtonPackageList:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->disableForceStopButtonPackageList:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1747
    const/4 v1, 0x1

    .line 1750
    :goto_1
    return v1

    .line 1744
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1750
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private forceStopPackage(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1440
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1442
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 1443
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mState:Lcom/android/lgesettings/applications/ApplicationsState;

    invoke-virtual {v0, p1}, Lcom/android/lgesettings/applications/ApplicationsState;->invalidatePackage(Ljava/lang/String;)V

    .line 1444
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mState:Lcom/android/lgesettings/applications/ApplicationsState;

    invoke-virtual {v0, p1}, Lcom/android/lgesettings/applications/ApplicationsState;->getEntry(Ljava/lang/String;)Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 1445
    if-eqz v0, :cond_0

    .line 1446
    iput-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    .line 1449
    :cond_0
    const-string v0, "com.lge.music"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1450
    const-string v0, "InstalledAppDetails"

    const-string v1, "stop SystemUI Music controller"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.music.saveNoDisplay"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1454
    :cond_1
    invoke-direct {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->checkForceStop()V

    .line 1455
    return-void
.end method

.method private getMoveErrMsg(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter "errCode"

    .prologue
    .line 297
    packed-switch p1, :pswitch_data_0

    .line 311
    const-string v0, ""

    :goto_0
    return-object v0

    .line 299
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0805b6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 301
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0805b7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 303
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0805b8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 305
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0805b9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 307
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0805ba

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 309
    :pswitch_5
    const-string v0, ""

    goto :goto_0

    .line 297
    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getPremiumSmsPermission(Ljava/lang/String;)I
    .locals 1
    .parameter "packageName"

    .prologue
    .line 1624
    :try_start_0
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    if-eqz v0, :cond_0

    .line 1625
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->getPremiumSmsPermission(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1630
    :goto_0
    return v0

    .line 1627
    :catch_0
    move-exception v0

    .line 1630
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .locals 2
    .parameter "size"

    .prologue
    .line 271
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mInvalidSizeStr:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 274
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleDisableable(Landroid/widget/Button;)Z
    .locals 9
    .parameter "button"

    .prologue
    const/4 v5, 0x0

    .line 378
    const/4 v0, 0x0

    .line 383
    .local v0, disableable:Z
    :try_start_0
    iget-object v6, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    const-string v7, "android"

    const/16 v8, 0x40

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 385
    .local v4, sys:Landroid/content/pm/PackageInfo;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 386
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    iget-object v6, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    iget-object v6, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 389
    .local v2, homes:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->isThisASystemPackage()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 391
    :cond_1
    const v5, 0x7f08057a

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setText(I)V

    .line 403
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/lgesettings/applications/InstalledAppDetails;->checkPackageNameForDisable(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 404
    const/4 v0, 0x0

    .line 409
    .end local v2           #homes:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #sys:Landroid/content/pm/PackageInfo;
    :cond_3
    :goto_1
    return v0

    .line 392
    .restart local v2       #homes:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v4       #sys:Landroid/content/pm/PackageInfo;
    :cond_4
    iget-object v6, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v6, v6, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v6, :cond_6

    .line 393
    const v6, 0x7f08057a

    invoke-virtual {p1, v6}, Landroid/widget/Button;->setText(I)V

    .line 394
    const/4 v0, 0x1

    .line 396
    sget-boolean v6, Lcom/android/lgesettings/lgesetting/Config/Config;->THREELM_MDM:Z

    if-eqz v6, :cond_2

    .line 397
    iget-object v6, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.threelm.dm"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    const/4 v0, 0x1

    :goto_2
    goto :goto_0

    :cond_5
    move v0, v5

    goto :goto_2

    .line 400
    :cond_6
    const v5, 0x7f08057b

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setText(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    const/4 v0, 0x1

    goto :goto_0

    .line 406
    .end local v2           #homes:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #sys:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 407
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "InstalledAppDetails"

    const-string v6, "Unable to get package info"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private initDataButtons()V
    .locals 4

    .prologue
    const v3, 0x7f08057c

    const/4 v2, 0x0

    .line 278
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x41

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.android.lgesettings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 284
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 285
    iput-boolean v2, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mCanClearData:Z

    .line 294
    :goto_0
    return-void

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 288
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v1, 0x7f08058e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 292
    :goto_1
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 290
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method

.method private initMoveButton()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 316
    const/4 v1, 0x0

    .line 318
    .local v1, fUseSDCardText:Z
    const-string v7, "ro.lge.capp_move_sdcard"

    invoke-static {v7, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 319
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "storage"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    .line 320
    .local v4, storageManager:Landroid/os/storage/StorageManager;
    const-string v7, "EXTERNAL_ADD_STORAGE"

    invoke-static {v7}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 322
    .local v3, state:Ljava/lang/String;
    const-string v7, "mounted"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 323
    iget-object v5, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 365
    .end local v3           #state:Ljava/lang/String;
    .end local v4           #storageManager:Landroid/os/storage/StorageManager;
    :goto_0
    return-void

    .line 327
    .restart local v3       #state:Ljava/lang/String;
    .restart local v4       #storageManager:Landroid/os/storage/StorageManager;
    :cond_0
    const/4 v1, 0x1

    .line 338
    .end local v3           #state:Ljava/lang/String;
    .end local v4           #storageManager:Landroid/os/storage/StorageManager;
    :cond_1
    const/4 v0, 0x0

    .line 339
    .local v0, dataOnly:Z
    iget-object v7, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    if-eqz v7, :cond_3

    move v0, v5

    .line 340
    :goto_1
    const/4 v2, 0x1

    .line 341
    .local v2, moveDisable:Z
    if-eqz v0, :cond_4

    .line 342
    iget-object v7, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v8, 0x7f0805b2

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(I)V

    .line 359
    :goto_2
    if-eqz v2, :cond_8

    .line 360
    iget-object v5, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 331
    .end local v0           #dataOnly:Z
    .end local v2           #moveDisable:Z
    :cond_2
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 332
    iget-object v5, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .restart local v0       #dataOnly:Z
    :cond_3
    move v0, v6

    .line 339
    goto :goto_1

    .line 343
    .restart local v2       #moveDisable:Z
    :cond_4
    iget-object v7, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v8, 0x4

    and-int/2addr v7, v8

    if-eqz v7, :cond_5

    .line 344
    iget-object v7, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v8, 0x7f0805b3

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(I)V

    .line 346
    const/4 v2, 0x0

    goto :goto_2

    .line 348
    :cond_5
    iget-object v7, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v8, 0x7f0805b4

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(I)V

    .line 351
    invoke-static {}, Lcom/android/lgesettings/Utils;->supportInternalMemory()Z

    move-result v7

    if-eqz v7, :cond_6

    if-nez v1, :cond_6

    .line 352
    iget-object v7, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v8, 0x7f080bf3

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(I)V

    .line 356
    :cond_6
    iget-object v7, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/lgesettings/applications/CanBeOnSdCardChecker;

    invoke-virtual {v7}, Lcom/android/lgesettings/applications/CanBeOnSdCardChecker;->init()V

    .line 357
    iget-object v7, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/lgesettings/applications/CanBeOnSdCardChecker;

    iget-object v8, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-object v8, v8, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v8}, Lcom/android/lgesettings/applications/CanBeOnSdCardChecker;->check(Landroid/content/pm/ApplicationInfo;)Z

    move-result v7

    if-nez v7, :cond_7

    move v2, v5

    :goto_3
    goto :goto_2

    :cond_7
    move v2, v6

    goto :goto_3

    .line 362
    :cond_8
    iget-object v6, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    iget-object v6, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private initNotificationButton()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 535
    const-string v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 537
    .local v1, nm:Landroid/app/INotificationManager;
    const/4 v0, 0x1

    .line 539
    .local v0, enabled:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 543
    :goto_0
    iget-object v2, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 544
    invoke-direct {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->isThisASystemPackage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 545
    iget-object v2, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 548
    iget-object v2, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.lge.smartshare"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 549
    iget-object v2, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 564
    :cond_0
    :goto_1
    return-void

    .line 551
    :cond_1
    iget-object v2, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/lgesettings/applications/InstalledAppDetails;->checkPackageNameForNotification(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 552
    iget-object v2, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    goto :goto_1

    .line 555
    :cond_2
    sget-boolean v2, Lcom/android/lgesettings/lgesetting/Config/Config;->THREELM_MDM:Z

    if-eqz v2, :cond_3

    .line 556
    iget-object v2, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.threelm.dm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 557
    iget-object v2, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    goto :goto_1

    .line 561
    :cond_3
    iget-object v2, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 562
    iget-object v2, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v2, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_1

    .line 540
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private initUninstallButtons()V
    .locals 8

    .prologue
    const v7, 0x7f08057b

    const v6, 0x7f080577

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 413
    iget-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    .line 414
    const/4 v0, 0x1

    .line 415
    .local v0, enabled:Z
    iget-boolean v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v3, :cond_9

    .line 416
    iget-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const v6, 0x7f08057d

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setText(I)V

    .line 417
    const/4 v2, 0x0

    .line 418
    .local v2, specialDisable:Z
    iget-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 419
    iget-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    invoke-direct {p0, v3}, Lcom/android/lgesettings/applications/InstalledAppDetails;->handleDisableable(Landroid/widget/Button;)Z

    move-result v2

    .line 420
    iget-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 422
    :cond_0
    iget-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    if-eqz v2, :cond_8

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 440
    .end local v2           #specialDisable:Z
    :goto_2
    iget-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 441
    const/4 v0, 0x0

    .line 443
    :cond_1
    sget-boolean v3, Lcom/android/lgesettings/lgesetting/Config/Config;->THREELM_MDM:Z

    if-eqz v3, :cond_4

    .line 448
    iget-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v7}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 451
    .local v1, ignore3lmUninstallPolicy:Z
    if-nez v1, :cond_2

    :try_start_0
    iget-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/lgesettings/lge/OverlayUtils;->checkAppUninstallPolicies(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/lgesettings/lge/OverlayUtils;->isPackageDisabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_4

    .line 453
    :cond_3
    const/4 v0, 0x0

    .line 461
    .end local v1           #ignore3lmUninstallPolicy:Z
    :cond_4
    :goto_3
    iget-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.lge.smartshare"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 462
    const-string v3, "com.lge.smartshare"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/applications/InstalledAppDetails;->isPackageEnable(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 463
    iget-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const v4, 0x7f08057a

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 467
    :goto_4
    const-string v3, "InstalledAppDetails"

    const-string v4, "Tablet smartshare \'butoon\' ENABLE"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const/4 v0, 0x1

    .line 471
    :cond_5
    iget-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 472
    if-eqz v0, :cond_6

    .line 474
    iget-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    :cond_6
    return-void

    .end local v0           #enabled:Z
    :cond_7
    move v3, v4

    .line 413
    goto/16 :goto_0

    .restart local v0       #enabled:Z
    .restart local v2       #specialDisable:Z
    :cond_8
    move v4, v5

    .line 422
    goto :goto_1

    .line 424
    .end local v2           #specialDisable:Z
    :cond_9
    iget-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 425
    iget-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_a

    .line 426
    iget-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-direct {p0, v3}, Lcom/android/lgesettings/applications/InstalledAppDetails;->handleDisableable(Landroid/widget/Button;)Z

    move-result v0

    goto/16 :goto_2

    .line 427
    :cond_a
    iget-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x80

    and-int/2addr v3, v4

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_b

    .line 432
    iget-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setText(I)V

    .line 433
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 435
    :cond_b
    iget-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_2

    .line 465
    :cond_c
    iget-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setText(I)V

    goto :goto_4

    .line 455
    .restart local v1       #ignore3lmUninstallPolicy:Z
    :catch_0
    move-exception v3

    goto :goto_3
.end method

.method private initiateClearUserData()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1209
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1211
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 1212
    const-string v0, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clearing user data for package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/lgesettings/applications/InstalledAppDetails$ClearUserDataObserver;

    if-nez v0, :cond_0

    .line 1214
    new-instance v0, Lcom/android/lgesettings/applications/InstalledAppDetails$ClearUserDataObserver;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/applications/InstalledAppDetails$ClearUserDataObserver;-><init>(Lcom/android/lgesettings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/lgesettings/applications/InstalledAppDetails$ClearUserDataObserver;

    .line 1216
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1218
    iget-object v2, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/lgesettings/applications/InstalledAppDetails$ClearUserDataObserver;

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v0

    .line 1219
    if-nez v0, :cond_1

    .line 1221
    const-string v0, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldnt clear application user data for package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    const/4 v0, 0x4

    invoke-direct {p0, v0, v4}, Lcom/android/lgesettings/applications/InstalledAppDetails;->showDialogInner(II)V

    .line 1226
    :goto_0
    return-void

    .line 1224
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v1, 0x7f08059a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private isThisASystemPackage()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 369
    :try_start_0
    iget-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    const-string v4, "android"

    const/16 v5, 0x40

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 370
    .local v1, sys:Landroid/content/pm/PackageInfo;
    iget-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 373
    .end local v1           #sys:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v2

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private processClearMsg(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 1157
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1158
    iget-object v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 1159
    iget-object v2, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v3, 0x7f08057c

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 1160
    if-ne v0, v4, :cond_1

    .line 1161
    const-string v0, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cleared user data for package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mState:Lcom/android/lgesettings/applications/ApplicationsState;

    iget-object v2, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 1166
    :goto_0
    invoke-direct {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->checkForceStop()V

    .line 1168
    if-eqz v1, :cond_0

    .line 1169
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.lgesettings.CLEAR_DATA"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1170
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1171
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1173
    :cond_0
    return-void

    .line 1164
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private processMoveMsg(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 1190
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1191
    iget-object v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 1193
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 1194
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1195
    const-string v0, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Moved resources for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mState:Lcom/android/lgesettings/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 1201
    :goto_0
    invoke-direct {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->refreshUi()Z

    .line 1202
    return-void

    .line 1199
    :cond_0
    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0
.end method

.method private refreshButtons()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1176
    iget-boolean v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mMoveInProgress:Z

    if-nez v0, :cond_0

    .line 1177
    invoke-direct {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->initUninstallButtons()V

    .line 1178
    invoke-direct {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->initDataButtons()V

    .line 1179
    invoke-direct {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->initMoveButton()V

    .line 1180
    invoke-direct {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->initNotificationButton()V

    .line 1187
    :goto_0
    return-void

    .line 1182
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v1, 0x7f0805b5

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1183
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1184
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1185
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private refreshSizeInfo()V
    .locals 10

    .prologue
    .line 1090
    iget-object v6, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v8, -0x2

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 1092
    :cond_0
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mLastTotalSize:J

    iput-wide v6, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mLastCacheSize:J

    iput-wide v6, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mLastDataSize:J

    iput-wide v6, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 1093
    iget-boolean v6, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mHaveSizes:Z

    if-nez v6, :cond_1

    .line 1094
    iget-object v6, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1095
    iget-object v6, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1096
    iget-object v6, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1097
    iget-object v6, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1150
    :cond_1
    :goto_0
    return-void

    .line 1103
    :cond_2
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mHaveSizes:Z

    .line 1104
    iget-object v6, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-wide v2, v6, Lcom/android/lgesettings/applications/ApplicationsState$SizeInfo;->codeSize:J

    .line 1105
    .local v2, codeSize:J
    iget-object v6, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v6, Lcom/android/lgesettings/applications/ApplicationsState$SizeInfo;->dataSize:J

    .line 1106
    .local v4, dataSize:J
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1107
    iget-object v6, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/lgesettings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    add-long/2addr v2, v6

    .line 1108
    iget-object v6, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/lgesettings/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    add-long/2addr v4, v6

    .line 1119
    :cond_3
    :goto_1
    iget-wide v6, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mLastCodeSize:J

    cmp-long v6, v6, v2

    if-eqz v6, :cond_4

    .line 1120
    iput-wide v2, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 1121
    iget-object v6, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    invoke-direct {p0, v2, v3}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1123
    :cond_4
    iget-wide v6, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mLastDataSize:J

    cmp-long v6, v6, v4

    if-eqz v6, :cond_5

    .line 1124
    iput-wide v4, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mLastDataSize:J

    .line 1125
    iget-object v6, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    invoke-direct {p0, v4, v5}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1127
    :cond_5
    iget-object v6, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/lgesettings/applications/ApplicationsState$SizeInfo;->cacheSize:J

    iget-object v8, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/lgesettings/applications/ApplicationsState$SizeInfo;->externalCacheSize:J

    add-long v0, v6, v8

    .line 1128
    .local v0, cacheSize:J
    iget-wide v6, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mLastCacheSize:J

    cmp-long v6, v6, v0

    if-eqz v6, :cond_6

    .line 1129
    iput-wide v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mLastCacheSize:J

    .line 1130
    iget-object v6, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1132
    :cond_6
    iget-wide v6, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mLastTotalSize:J

    iget-object v8, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_7

    .line 1133
    iget-object v6, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->size:J

    iput-wide v6, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mLastTotalSize:J

    .line 1134
    iget-object v6, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-wide v7, v7, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->size:J

    invoke-direct {p0, v7, v8}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1137
    :cond_7
    iget-object v6, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/lgesettings/applications/ApplicationsState$SizeInfo;->dataSize:J

    iget-object v8, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/lgesettings/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    add-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_8

    iget-boolean v6, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mCanClearData:Z

    if-nez v6, :cond_b

    .line 1138
    :cond_8
    iget-object v6, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1143
    :goto_2
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gtz v6, :cond_c

    .line 1144
    iget-object v6, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1110
    .end local v0           #cacheSize:J
    :cond_9
    iget-wide v6, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    iget-object v8, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/lgesettings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_a

    .line 1111
    iget-object v6, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/lgesettings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    iput-wide v6, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    .line 1112
    iget-object v6, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mExternalCodeSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-wide v7, v7, Lcom/android/lgesettings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    invoke-direct {p0, v7, v8}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1114
    :cond_a
    iget-wide v6, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mLastExternalDataSize:J

    iget-object v8, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/lgesettings/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    .line 1115
    iget-object v6, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/lgesettings/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    iput-wide v6, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mLastExternalDataSize:J

    .line 1116
    iget-object v6, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mExternalDataSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-wide v7, v7, Lcom/android/lgesettings/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    invoke-direct {p0, v7, v8}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1140
    .restart local v0       #cacheSize:J
    :cond_b
    iget-object v6, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1141
    iget-object v6, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 1146
    :cond_c
    iget-object v6, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1147
    iget-object v6, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private refreshUi()Z
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/16 v12, 0x8

    const/4 v11, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 826
    iget-boolean v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mMoveInProgress:Z

    if-eqz v0, :cond_1

    .line 1035
    :cond_0
    :goto_0
    return v4

    .line 829
    :cond_1
    invoke-direct {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->retrieveAppEntry()Ljava/lang/String;

    move-result-object v6

    .line 831
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    if-nez v0, :cond_2

    move v4, v3

    .line 832
    goto :goto_0

    .line 835
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_3

    move v4, v3

    .line 836
    goto :goto_0

    .line 840
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 843
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 844
    iget-object v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0, v5, v6}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 849
    :try_start_0
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v6, v1}, Landroid/hardware/usb/IUsbManager;->hasDefaults(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v2, v0

    .line 853
    :goto_1
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v7

    .line 856
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0163

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 857
    iget-object v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v8, 0x7f0a0164

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 858
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_4

    if-eqz v2, :cond_6

    :cond_4
    move v5, v4

    .line 859
    :goto_2
    if-nez v5, :cond_7

    if-nez v7, :cond_7

    .line 860
    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/applications/InstalledAppDetails;->resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 903
    :goto_3
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 905
    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getPackageScreenCompatMode(Ljava/lang/String;)I

    .line 916
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mScreenCompatSection:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 920
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0169

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 921
    new-instance v5, Landroid/widget/AppSecurityPermissions;

    invoke-virtual {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v5, v1, v6}, Landroid/widget/AppSecurityPermissions;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 922
    invoke-direct {p0, v6}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v7

    .line 926
    invoke-virtual {v5}, Landroid/widget/AppSecurityPermissions;->getPermissionCount()I

    move-result v1

    if-gtz v1, :cond_5

    if-eqz v7, :cond_11

    .line 928
    :cond_5
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 933
    :goto_4
    const v1, 0x7f0a016a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 935
    const v2, 0x7f0a016b

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 937
    if-eqz v7, :cond_12

    .line 939
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 940
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 941
    const v1, 0x7f0a016c

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 943
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v8, 0x7f090072

    const v9, 0x1090008

    invoke-static {v2, v8, v9}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v2

    .line 946
    const v8, 0x1090009

    invoke-virtual {v2, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 947
    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 949
    add-int/lit8 v2, v7, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 950
    new-instance v2, Lcom/android/lgesettings/applications/InstalledAppDetails$PremiumSmsSelectionListener;

    iget-object v7, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    invoke-direct {v2, v6, v7}, Lcom/android/lgesettings/applications/InstalledAppDetails$PremiumSmsSelectionListener;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/ISms;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 958
    :goto_5
    invoke-virtual {v5}, Landroid/widget/AppSecurityPermissions;->getPermissionCount()I

    move-result v1

    if-lez v1, :cond_1b

    .line 960
    const v1, 0x7f0a016e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 962
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 963
    invoke-virtual {v5}, Landroid/widget/AppSecurityPermissions;->getPermissionsView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 966
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 967
    if-eqz v1, :cond_15

    array-length v0, v1

    if-le v0, v4, :cond_15

    .line 968
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v3

    .line 969
    :goto_6
    array-length v2, v1

    if-ge v0, v2, :cond_14

    .line 970
    aget-object v2, v1, v0

    .line 971
    iget-object v6, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 969
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 850
    :catch_0
    move-exception v0

    .line 851
    const-string v1, "InstalledAppDetails"

    const-string v2, "mUsbManager.hasDefaults"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v3

    goto/16 :goto_1

    :cond_6
    move v5, v3

    .line 858
    goto/16 :goto_2

    .line 862
    :cond_7
    if-eqz v7, :cond_c

    if-eqz v5, :cond_c

    move v2, v4

    .line 864
    :goto_8
    if-eqz v7, :cond_d

    .line 865
    const v8, 0x7f08056a

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    .line 870
    :goto_9
    const/4 v0, 0x0

    .line 871
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e000e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 873
    if-eqz v5, :cond_9

    .line 874
    const v5, 0x7f08057e

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 875
    new-instance v9, Landroid/text/SpannableString;

    invoke-direct {v9, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 876
    if-eqz v2, :cond_8

    .line 877
    new-instance v10, Landroid/text/style/BulletSpan;

    invoke-direct {v10, v8}, Landroid/text/style/BulletSpan;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v9, v10, v3, v5, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 879
    :cond_8
    if-nez v0, :cond_e

    new-array v0, v11, [Ljava/lang/CharSequence;

    aput-object v9, v0, v3

    const-string v5, "\n"

    aput-object v5, v0, v4

    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 882
    :cond_9
    :goto_a
    if-eqz v7, :cond_b

    .line 883
    const v5, 0x7f08057f

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 885
    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 886
    if-eqz v2, :cond_a

    .line 887
    new-instance v2, Landroid/text/style/BulletSpan;

    invoke-direct {v2, v8}, Landroid/text/style/BulletSpan;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v7, v2, v3, v5, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 890
    :cond_a
    if-nez v0, :cond_f

    new-array v0, v11, [Ljava/lang/CharSequence;

    aput-object v7, v0, v3

    const-string v2, "\n"

    aput-object v2, v0, v4

    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 893
    :cond_b
    :goto_b
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 894
    const-string v0, "com.android.lgesettings"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 895
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_3

    :cond_c
    move v2, v3

    .line 862
    goto :goto_8

    .line 867
    :cond_d
    const v8, 0x7f080569

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_9

    .line 879
    :cond_e
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/CharSequence;

    aput-object v0, v5, v3

    const-string v0, "\n"

    aput-object v0, v5, v4

    aput-object v9, v5, v11

    const-string v0, "\n"

    aput-object v0, v5, v13

    invoke-static {v5}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_a

    .line 890
    :cond_f
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/CharSequence;

    aput-object v0, v2, v3

    const-string v0, "\n"

    aput-object v0, v2, v4

    aput-object v7, v2, v11

    const-string v0, "\n"

    aput-object v0, v2, v13

    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_b

    .line 897
    :cond_10
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 898
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 930
    :cond_11
    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_4

    .line 954
    :cond_12
    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 955
    invoke-virtual {v2, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_5

    .line 975
    :cond_13
    :try_start_1
    iget-object v6, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 976
    iget-object v6, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_7

    .line 977
    :catch_1
    move-exception v2

    goto/16 :goto_7

    .line 980
    :cond_14
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 981
    if-lez v6, :cond_15

    .line 982
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 984
    if-ne v6, v4, :cond_17

    .line 985
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 998
    :goto_c
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v2, 0x7f0a016d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1000
    const v2, 0x7f0805a7

    new-array v5, v11, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v3

    aput-object v1, v5, v4

    invoke-virtual {v7, v2, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1008
    :cond_15
    :goto_d
    invoke-direct {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->checkForceStop()V

    .line 1009
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V

    .line 1010
    invoke-direct {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->refreshButtons()V

    .line 1011
    invoke-direct {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->refreshSizeInfo()V

    .line 1013
    iget-boolean v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mInitialized:Z

    if-nez v0, :cond_1c

    .line 1015
    iput-boolean v4, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mInitialized:Z

    .line 1016
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x80

    and-int/2addr v0, v1

    if-nez v0, :cond_16

    move v3, v4

    :cond_16
    iput-boolean v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mShowUninstalled:Z

    goto/16 :goto_0

    .line 986
    :cond_17
    if-ne v6, v11, :cond_18

    .line 987
    const v0, 0x7f0805a8

    new-array v1, v11, [Ljava/lang/Object;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_c

    .line 990
    :cond_18
    add-int/lit8 v0, v6, -0x2

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 991
    add-int/lit8 v0, v6, -0x3

    move-object v2, v1

    move v1, v0

    :goto_e
    if-ltz v1, :cond_1a

    .line 992
    if-nez v1, :cond_19

    const v0, 0x7f0805aa

    :goto_f
    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v8, v3

    aput-object v2, v8, v4

    invoke-virtual {v7, v0, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 991
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_e

    .line 992
    :cond_19
    const v0, 0x7f0805ab

    goto :goto_f

    .line 995
    :cond_1a
    const v0, 0x7f0805a9

    new-array v1, v11, [Ljava/lang/Object;

    aput-object v2, v1, v3

    add-int/lit8 v2, v6, -0x1

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_c

    .line 1005
    :cond_1b
    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_d

    .line 1021
    :cond_1c
    :try_start_2
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/16 v2, 0x2200

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1024
    iget-boolean v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mShowUninstalled:Z

    if-nez v1, :cond_0

    .line 1028
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    const/high16 v1, 0x80

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    move v4, v3

    goto/16 :goto_0

    .line 1030
    :catch_2
    move-exception v0

    move v4, v3

    .line 1031
    goto/16 :goto_0
.end method

.method private resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1075
    const v0, 0x7f080569

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1076
    const v0, 0x7f080580

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1078
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1079
    return-void
.end method

.method private retrieveAppEntry()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 797
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 798
    if-eqz v0, :cond_0

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 799
    :goto_0
    if-nez v1, :cond_3

    .line 800
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 802
    :goto_1
    if-eqz v0, :cond_3

    .line 803
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 806
    :goto_2
    iget-object v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mState:Lcom/android/lgesettings/applications/ApplicationsState;

    invoke-virtual {v1, v0}, Lcom/android/lgesettings/applications/ApplicationsState;->getEntry(Ljava/lang/String;)Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    .line 807
    iget-object v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    if-eqz v1, :cond_2

    .line 810
    :try_start_0
    iget-object v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x2240

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 822
    :goto_3
    return-object v0

    :cond_0
    move-object v1, v2

    .line 798
    goto :goto_0

    .line 800
    :cond_1
    const-string v3, "intent"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    goto :goto_1

    .line 814
    :catch_0
    move-exception v1

    .line 815
    const-string v2, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception when retrieving package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 818
    :cond_2
    const-string v1, "InstalledAppDetails"

    const-string v3, "Missing AppEntry; maybe reinstalling?"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    iput-object v2, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    goto :goto_3

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method private setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 728
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v1, 0x7f0a014d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 729
    const v0, 0x7f0a00b1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 730
    iget-object v2, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mState:Lcom/android/lgesettings/applications/ApplicationsState;

    iget-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/applications/ApplicationsState;->ensureIcon(Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;)V

    .line 731
    iget-object v2, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 733
    const v0, 0x7f0a01a2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 734
    iget-object v2, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 736
    const v0, 0x7f0a01a3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    .line 738
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 740
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0805b1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 745
    :goto_0
    return-void

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setIntentAndFinish(ZZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1083
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1084
    const-string v0, "chg"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1085
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 1086
    const/4 v2, -0x1

    invoke-virtual {v0, p0, v2, v1}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 1087
    return-void
.end method

.method private setNotificationsEnabled(Z)V
    .locals 6
    .parameter "enabled"

    .prologue
    const/4 v3, 0x1

    .line 1601
    iget-object v4, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 1603
    .local v2, packageName:Ljava/lang/String;
    sget-boolean v4, Lcom/android/lgesettings/lgesetting/Config/Config;->THREELM_MDM:Z

    if-eqz v4, :cond_0

    .line 1604
    iget-object v4, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.threelm.dm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1605
    iget-object v4, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v4, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1620
    :goto_0
    return-void

    .line 1609
    :cond_0
    const-string v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 1613
    .local v1, nm:Landroid/app/INotificationManager;
    :try_start_0
    iget-object v4, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v4, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1616
    invoke-interface {v1, v2, p1}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1617
    :catch_0
    move-exception v0

    .line 1618
    .local v0, ex:Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    if-nez p1, :cond_1

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private showDialogInner(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1229
    invoke-static {p1, p2}, Lcom/android/lgesettings/applications/InstalledAppDetails$MyAlertDialogFragment;->newInstance(II)Lcom/android/lgesettings/applications/InstalledAppDetails$MyAlertDialogFragment;

    move-result-object v0

    .line 1230
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1231
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1232
    return-void
.end method

.method private uninstallPkg(Ljava/lang/String;ZZ)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1433
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1434
    const-string v0, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1435
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1436
    iput-boolean p3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    .line 1437
    return-void
.end method

.method private updateForceStopButton(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1465
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1466
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1467
    return-void
.end method


# virtual methods
.method public isPackageEnable(Ljava/lang/String;)Z
    .locals 7
    .parameter "packageName"

    .prologue
    const/4 v3, 0x0

    .line 480
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 481
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 484
    .local v2, pmApplicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 485
    const-string v4, "InstalledAppDetails"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EnableApplication ->   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    const/4 v3, 0x1

    .line 493
    :goto_0
    return v3

    .line 488
    :catch_0
    move-exception v0

    .line 489
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "InstalledAppDetails"

    const-string v5, "Exception isPackageEnable Disable"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 492
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v4, "InstalledAppDetails"

    const-string v5, "isPackageEnable Disable"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 704
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 705
    if-ne p1, v5, :cond_1

    .line 706
    iget-boolean v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    if-eqz v1, :cond_0

    .line 707
    iput-boolean v2, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    .line 709
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x2200

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 712
    .local v0, ainfo:Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_0

    .line 713
    new-instance v2, Lcom/android/lgesettings/applications/InstalledAppDetails$DisableChanger;

    iget-object v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v1, v3}, Lcom/android/lgesettings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/lgesettings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 720
    .end local v0           #ainfo:Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->refreshUi()Z

    move-result v1

    if-nez v1, :cond_1

    .line 721
    invoke-direct {p0, v5, v5}, Lcom/android/lgesettings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    .line 724
    :cond_1
    return-void

    .line 717
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onAllSizesComputed()V
    .locals 0

    .prologue
    .line 765
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1714
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 1715
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v4, "activity"

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1719
    iget-boolean v4, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->notUserChange:Z

    if-eq v4, v1, :cond_0

    .line 1720
    iget-object v4, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v4, v2}, Landroid/widget/CompoundButton;->playSoundEffect(I)V

    .line 1723
    :cond_0
    iget-object v4, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAskCompatibilityCB:Landroid/widget/CheckBox;

    if-ne p1, v4, :cond_2

    .line 1724
    invoke-virtual {v0, v3, p2}, Landroid/app/ActivityManager;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    .line 1741
    :cond_1
    :goto_0
    return-void

    .line 1725
    :cond_2
    iget-object v4, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mEnableCompatibilityCB:Landroid/widget/CheckBox;

    if-ne p1, v4, :cond_4

    .line 1726
    if-eqz p2, :cond_3

    :goto_1
    invoke-virtual {v0, v3, v1}, Landroid/app/ActivityManager;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    .line 1728
    :cond_4
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    if-ne p1, v0, :cond_1

    .line 1729
    if-nez p2, :cond_5

    .line 1731
    iget-boolean v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->notUserChange:Z

    if-nez v0, :cond_1

    .line 1732
    const/16 v0, 0x8

    invoke-direct {p0, v0, v2}, Lcom/android/lgesettings/applications/InstalledAppDetails;->showDialogInner(II)V

    .line 1733
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1734
    iput-boolean v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->notUserChange:Z

    goto :goto_0

    .line 1738
    :cond_5
    invoke-direct {p0, v1}, Lcom/android/lgesettings/applications/InstalledAppDetails;->setNotificationsEnabled(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1638
    iget-object v2, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 1639
    iget-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_7

    .line 1640
    iget-boolean v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v3, :cond_2

    .line 1641
    const-string v1, "ro.build.target_operator"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "ATT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v2}, Lcom/android/lgesettings/applications/InstalledAppDetails;->checkPackageNameForVapp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1642
    const/16 v0, 0xa

    invoke-direct {p0, v0, v4}, Lcom/android/lgesettings/applications/InstalledAppDetails;->showDialogInner(II)V

    .line 1710
    :cond_0
    :goto_0
    return-void

    .line 1644
    :cond_1
    invoke-direct {p0, v0, v4}, Lcom/android/lgesettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 1648
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    .line 1649
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_4

    .line 1650
    const-string v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ATT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v2}, Lcom/android/lgesettings/applications/InstalledAppDetails;->checkPackageNameForVapp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1651
    const/16 v0, 0xb

    invoke-direct {p0, v0, v4}, Lcom/android/lgesettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 1653
    :cond_3
    const/4 v0, 0x7

    invoke-direct {p0, v0, v4}, Lcom/android/lgesettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 1656
    :cond_4
    new-instance v2, Lcom/android/lgesettings/applications/InstalledAppDetails$DisableChanger;

    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v2, p0, v0, v4}, Lcom/android/lgesettings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/lgesettings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-virtual {v2, v1}, Lcom/android/lgesettings/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1660
    :cond_5
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x80

    and-int/2addr v0, v3

    if-nez v0, :cond_6

    .line 1661
    invoke-direct {p0, v2, v1, v4}, Lcom/android/lgesettings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 1663
    :cond_6
    invoke-direct {p0, v2, v4, v4}, Lcom/android/lgesettings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 1666
    :cond_7
    iget-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_8

    .line 1667
    const/16 v0, 0x9

    invoke-direct {p0, v0, v4}, Lcom/android/lgesettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 1668
    :cond_8
    iget-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_9

    .line 1669
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 1671
    :try_start_0
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v2, v1}, Landroid/hardware/usb/IUsbManager;->clearDefaults(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1675
    :goto_1
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, v2, v4}, Landroid/appwidget/AppWidgetManager;->setBindAppWidgetPermission(Ljava/lang/String;Z)V

    .line 1676
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0163

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1678
    iget-object v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v2, 0x7f0a0164

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1679
    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/applications/InstalledAppDetails;->resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto/16 :goto_0

    .line 1672
    :catch_0
    move-exception v0

    .line 1673
    const-string v1, "InstalledAppDetails"

    const-string v3, "mUsbManager.clearDefaults"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1680
    :cond_9
    iget-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_b

    .line 1681
    iget-object v2, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 1682
    invoke-static {}, Lcom/android/lgesettings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1683
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1684
    iget-object v2, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1686
    invoke-virtual {p0, v1, v0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1689
    :cond_a
    invoke-direct {p0, v1, v4}, Lcom/android/lgesettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto/16 :goto_0

    .line 1691
    :cond_b
    iget-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_d

    .line 1693
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/lgesettings/applications/InstalledAppDetails$ClearCacheObserver;

    if-nez v0, :cond_c

    .line 1694
    new-instance v0, Lcom/android/lgesettings/applications/InstalledAppDetails$ClearCacheObserver;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/applications/InstalledAppDetails$ClearCacheObserver;-><init>(Lcom/android/lgesettings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/lgesettings/applications/InstalledAppDetails$ClearCacheObserver;

    .line 1696
    :cond_c
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/lgesettings/applications/InstalledAppDetails$ClearCacheObserver;

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    goto/16 :goto_0

    .line 1697
    :cond_d
    iget-object v2, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    if-ne p1, v2, :cond_e

    .line 1698
    const/4 v0, 0x5

    invoke-direct {p0, v0, v4}, Lcom/android/lgesettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto/16 :goto_0

    .line 1700
    :cond_e
    iget-object v2, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    if-ne p1, v2, :cond_0

    .line 1701
    iget-object v2, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/lgesettings/applications/InstalledAppDetails$PackageMoveObserver;

    if-nez v2, :cond_f

    .line 1702
    new-instance v2, Lcom/android/lgesettings/applications/InstalledAppDetails$PackageMoveObserver;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/applications/InstalledAppDetails$PackageMoveObserver;-><init>(Lcom/android/lgesettings/applications/InstalledAppDetails;)V

    iput-object v2, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/lgesettings/applications/InstalledAppDetails$PackageMoveObserver;

    .line 1704
    :cond_f
    iget-object v2, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x4

    and-int/2addr v2, v3

    if-eqz v2, :cond_10

    move v0, v1

    .line 1706
    :cond_10
    iput-boolean v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 1707
    invoke-direct {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->refreshButtons()V

    .line 1708
    iget-object v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/lgesettings/applications/InstalledAppDetails$PackageMoveObserver;

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/pm/PackageManager;->movePackage(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;I)V

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 593
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 594
    invoke-direct {p0, p1}, Lcom/android/lgesettings/applications/InstalledAppDetails;->changeMaxWidth(Landroid/content/res/Configuration;)V

    .line 595
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 569
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 571
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/lgesettings/applications/ApplicationsState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mState:Lcom/android/lgesettings/applications/ApplicationsState;

    .line 572
    iget-object v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mState:Lcom/android/lgesettings/applications/ApplicationsState;

    invoke-virtual {v1, p0}, Lcom/android/lgesettings/applications/ApplicationsState;->newSession(Lcom/android/lgesettings/applications/ApplicationsState$Callbacks;)Lcom/android/lgesettings/applications/ApplicationsState$Session;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mSession:Lcom/android/lgesettings/applications/ApplicationsState$Session;

    .line 573
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    .line 574
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    .line 575
    const-string v1, "usb"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 576
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    .line 577
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 578
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 579
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    .line 581
    new-instance v1, Lcom/android/lgesettings/applications/CanBeOnSdCardChecker;

    invoke-direct {v1}, Lcom/android/lgesettings/applications/CanBeOnSdCardChecker;-><init>()V

    iput-object v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/lgesettings/applications/CanBeOnSdCardChecker;

    .line 584
    iget-object v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mSession:Lcom/android/lgesettings/applications/ApplicationsState$Session;

    invoke-virtual {v1}, Lcom/android/lgesettings/applications/ApplicationsState$Session;->resume()V

    .line 586
    invoke-direct {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->retrieveAppEntry()Ljava/lang/String;

    .line 588
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/applications/InstalledAppDetails;->setHasOptionsMenu(Z)V

    .line 589
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 669
    const v0, 0x7f080578

    invoke-interface {p1, v1, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 671
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f0a0343

    const v6, 0x7f0a0342

    const/16 v5, 0x8

    .line 612
    const v3, 0x7f0400aa

    invoke-virtual {p1, v3, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    .line 614
    .local v2, view:Landroid/view/View;
    instance-of v3, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v3, :cond_0

    .line 615
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 618
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0805ae

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    .line 621
    const v3, 0x7f0a0153

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    .line 622
    const v3, 0x7f0a0155

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    .line 623
    const v3, 0x7f0a015a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    .line 624
    const v3, 0x7f0a0157

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mExternalCodeSize:Landroid/widget/TextView;

    .line 625
    const v3, 0x7f0a015c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mExternalDataSize:Landroid/widget/TextView;

    .line 626
    const v3, 0x7f0a0156

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mExternalCodeSizePrefix:Landroid/widget/TextView;

    .line 627
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 628
    iget-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mExternalCodeSize:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 629
    iget-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mExternalDataSize:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 633
    :cond_1
    const v3, 0x7f0a014e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 634
    .local v0, btnPanel:Landroid/view/View;
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    .line 635
    iget-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const v4, 0x7f080571

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 636
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    .line 637
    iget-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 640
    const v3, 0x7f0a014f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    .line 641
    iget-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 642
    iget-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    .line 643
    iget-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 646
    const v3, 0x7f0a015d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 647
    .local v1, data_buttons_panel:Landroid/view/View;
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    .line 648
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    .line 651
    const v3, 0x7f0a0161

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    .line 652
    const v3, 0x7f0a0162

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    .line 654
    const v3, 0x7f0a0165

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    .line 657
    const v3, 0x7f0a0166

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mScreenCompatSection:Landroid/view/View;

    .line 658
    const v3, 0x7f0a0167

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAskCompatibilityCB:Landroid/widget/CheckBox;

    .line 659
    const v3, 0x7f0a0168

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mEnableCompatibilityCB:Landroid/widget/CheckBox;

    .line 661
    const v3, 0x7f0a0150

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CompoundButton;

    iput-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    .line 663
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/lgesettings/applications/InstalledAppDetails;->changeMaxWidth(Landroid/content/res/Configuration;)V

    .line 664
    return-object v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 694
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 695
    .local v0, menuId:I
    if-ne v0, v1, :cond_0

    .line 696
    iget-object v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3, v1, v2}, Lcom/android/lgesettings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    .line 699
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 769
    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    .prologue
    .line 773
    invoke-direct {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->refreshUi()Z

    .line 774
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 783
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 790
    :cond_0
    :goto_0
    return-void

    .line 787
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    invoke-direct {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->refreshSizeInfo()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 759
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 760
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mSession:Lcom/android/lgesettings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/lgesettings/applications/ApplicationsState$Session;->pause()V

    .line 761
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .parameter "menu"

    .prologue
    .line 675
    const/4 v0, 0x1

    .line 676
    .local v0, showIt:Z
    iget-boolean v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v1, :cond_1

    .line 677
    const/4 v0, 0x0

    .line 689
    :cond_0
    :goto_0
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 690
    return-void

    .line 678
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    if-nez v1, :cond_2

    .line 679
    const/4 v0, 0x0

    goto :goto_0

    .line 680
    :cond_2
    iget-object v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 681
    const/4 v0, 0x0

    goto :goto_0

    .line 682
    :cond_3
    iget-object v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 683
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 684
    :cond_5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_6

    .line 685
    const/4 v0, 0x0

    goto :goto_0

    .line 686
    :cond_6
    iget-object v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 687
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 778
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;>;"
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 749
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 751
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails;->mSession:Lcom/android/lgesettings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/lgesettings/applications/ApplicationsState$Session;->resume()V

    .line 752
    invoke-direct {p0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 753
    invoke-direct {p0, v1, v1}, Lcom/android/lgesettings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    .line 755
    :cond_0
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0
    .parameter "running"

    .prologue
    .line 794
    return-void
.end method
