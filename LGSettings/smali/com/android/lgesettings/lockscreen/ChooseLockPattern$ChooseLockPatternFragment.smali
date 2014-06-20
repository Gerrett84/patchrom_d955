.class public Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;
.super Landroid/app/Fragment;
.source "ChooseLockPattern.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/lockscreen/ChooseLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockPatternFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;,
        Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;,
        Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;
    }
.end annotation


# instance fields
.field private final mAnimatePattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mChooseLockSettingsHelper:Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;

.field protected mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field protected mChosenPattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mClearPatternRunnable:Ljava/lang/Runnable;

.field private mFooterLeftButton:Landroid/widget/TextView;

.field private mFooterRightButton:Landroid/widget/TextView;

.field protected mFooterText:Landroid/widget/TextView;

.field protected mHeaderText:Landroid/widget/TextView;

.field private mIsbackUpDialogVisible:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mPreviousLockScreen:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 110
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    .line 135
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mPreviousLockScreen:I

    .line 139
    iput-boolean v2, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mIsbackUpDialogVisible:Z

    .line 144
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-static {v2, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v2, v3}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v3, v3}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x3

    invoke-static {v4, v3}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mAnimatePattern:Ljava/util/List;

    .line 209
    new-instance v0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$1;-><init>(Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    .line 401
    sget-object v0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iput-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 403
    new-instance v0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$2;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$2;-><init>(Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->saveChosenPatternAndFinish()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mIsbackUpDialogVisible:Z

    return p1
.end method

.method private launchFacelockAppSetting()V
    .locals 3

    .prologue
    .line 152
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v2, "package:com.android.facelock"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 155
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->startActivity(Landroid/content/Intent;)V

    .line 156
    return-void
.end method

.method private postClearPatternRunnable()V
    .locals 4

    .prologue
    .line 772
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 773
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 774
    return-void
.end method

.method private saveChosenPatternAndFinish()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 777
    iget-object v5, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;

    invoke-virtual {v5}, Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    .line 778
    .local v2, utils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen()Z

    move-result v5

    if-nez v5, :cond_3

    move v1, v3

    .line 780
    .local v1, lockVirgin:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 782
    .local v0, isFallback:Z
    iget-object v5, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    invoke-virtual {v2, v5, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Z)V

    .line 783
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    .line 784
    iget v5, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mPreviousLockScreen:I

    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/lgesettings/lockscreen/LockUtil;->getActivatedLockScreen(Landroid/app/Activity;)I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 785
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f080cfc

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 790
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "config_feature_fcc_notification"

    invoke-static {v4, v5}, Lcom/android/lgesettings/lockscreen/LockSettingsFeatureConfig;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 792
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/lgesettings/lockscreen/LockUtil;->clearFccNotification(Landroid/content/Context;)V

    .line 795
    :cond_1
    if-eqz v1, :cond_2

    .line 796
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    .line 801
    :cond_2
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setResult(I)V

    .line 804
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 805
    return-void

    .end local v0           #isFallback:Z
    .end local v1           #lockVirgin:Z
    :cond_3
    move v1, v4

    .line 778
    goto :goto_0
.end method

.method private showPinchangeDialog()V
    .locals 12

    .prologue
    const/4 v3, 0x1

    .line 582
    new-instance v9, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$3;

    invoke-direct {v9, p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$3;-><init>(Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;)V

    .line 604
    .local v9, pinChangeCallback:Landroid/content/DialogInterface$OnClickListener;
    new-instance v8, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$4;

    invoke-direct {v8, p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$4;-><init>(Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;)V

    .line 611
    .local v8, useCurPinCallback:Landroid/content/DialogInterface$OnClickListener;
    new-instance v10, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$5;

    invoke-direct {v10, p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$5;-><init>(Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;)V

    .line 618
    .local v10, dismissListener:Landroid/content/DialogInterface$OnDismissListener;
    new-instance v11, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$6;

    invoke-direct {v11, p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$6;-><init>(Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;)V

    .line 624
    .local v11, cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    new-instance v0, Lcom/android/lgesettings/lockscreen/DialogPopup;

    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1010355

    const v4, 0x7f080f6b

    const v5, 0x7f080f6c

    const v6, 0x7f080016

    const v7, 0x7f080015

    invoke-direct/range {v0 .. v11}, Lcom/android/lgesettings/lockscreen/DialogPopup;-><init>(Landroid/app/Activity;IZIIIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 628
    .local v0, dp:Lcom/android/lgesettings/lockscreen/DialogPopup;
    invoke-virtual {v0}, Lcom/android/lgesettings/lockscreen/DialogPopup;->show()V

    .line 629
    iput-boolean v3, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mIsbackUpDialogVisible:Z

    .line 630
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, -0x1

    .line 161
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 162
    sparse-switch p1, :sswitch_data_0

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 164
    :sswitch_0
    if-eq p2, v4, :cond_1

    .line 165
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/Activity;->setResult(I)V

    .line 166
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 168
    :cond_1
    sget-object v4, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 172
    :sswitch_1
    if-ne p2, v4, :cond_3

    .line 175
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "lockscreen.biometric_weak_fallback"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 177
    .local v2, onlyShowFallback:Z
    if-eqz v2, :cond_2

    .line 179
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 180
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 181
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    const-string v4, "com.android.facelock"

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 183
    if-eqz v1, :cond_2

    iget-boolean v4, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v4, :cond_2

    .line 184
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->launchFacelockAppSetting()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 187
    .end local v1           #info:Landroid/content/pm/ApplicationInfo;
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 188
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->launchFacelockAppSetting()V

    goto :goto_0

    .line 192
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->saveChosenPatternAndFinish()V

    goto :goto_0

    .line 196
    .end local v2           #onlyShowFallback:Z
    :cond_3
    if-nez p2, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 162
    :sswitch_data_0
    .sparse-switch
        0x37 -> :sswitch_0
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 500
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_3

    .line 501
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    if-ne v0, v1, :cond_1

    .line 502
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    .line 503
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 504
    sget-object v0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 579
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    if-ne v0, v1, :cond_2

    .line 507
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/Activity;->setResult(I)V

    .line 508
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 510
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "left footer button pressed, but stage of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t make sense"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 513
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Continue:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    if-ne v0, v1, :cond_5

    .line 516
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v0, v1, :cond_4

    .line 517
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected ui stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when button is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Continue:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 520
    :cond_4
    sget-object v0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 521
    :cond_5
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Confirm:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    if-ne v0, v1, :cond_b

    .line 522
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v0, v1, :cond_6

    .line 523
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected ui stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when button is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Confirm:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 527
    :cond_6
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "config_feature_pattern_allow_backuppin_screen"

    invoke-static {v0, v1}, Lcom/android/lgesettings/lockscreen/LockSettingsFeatureConfig;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 528
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->saveChosenPatternAndFinish()V

    goto/16 :goto_0

    .line 534
    :cond_7
    new-instance v0, Lcom/android/lgesettings/lockscreen/PinSettingsUtils;

    invoke-direct {v0}, Lcom/android/lgesettings/lockscreen/PinSettingsUtils;-><init>()V

    .line 535
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 537
    const-string v2, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 540
    invoke-virtual {v0}, Lcom/android/lgesettings/lockscreen/PinSettingsUtils;->exsistFile()Z

    move-result v0

    .line 542
    if-eqz v0, :cond_8

    .line 543
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->showPinchangeDialog()V

    goto/16 :goto_0

    .line 546
    :cond_8
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v2, Lcom/android/lgesettings/lockscreen/ChooseBackuppinTutorial;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 558
    :goto_1
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_9

    .line 559
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "PASSWORD_EXPIRE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 561
    const-string v0, "PASSWORD_EXPIRE"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 565
    :cond_9
    const/16 v0, 0x42

    invoke-virtual {p0, v1, v0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 552
    :cond_a
    invoke-virtual {v0}, Lcom/android/lgesettings/lockscreen/PinSettingsUtils;->fileInit()V

    .line 553
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v2, Lcom/android/lgesettings/lockscreen/ChooseBackupPin;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1

    .line 569
    :cond_b
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Ok:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    if-ne v0, v1, :cond_0

    .line 570
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v0, v1, :cond_c

    .line 571
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Help screen is only mode with ok button, but stage is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 574
    :cond_c
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 575
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 576
    sget-object v0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 416
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 417
    new-instance v0, Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;

    .line 418
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/lockscreen/LockUtil;->getActivatedLockScreen(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mPreviousLockScreen:I

    .line 419
    if-eqz p1, :cond_0

    .line 420
    const-string v0, "backuppindialogvisibility"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mIsbackUpDialogVisible:Z

    .line 421
    iget-boolean v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mIsbackUpDialogVisible:Z

    if-eqz v0, :cond_0

    .line 422
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->showPinchangeDialog()V

    .line 426
    :cond_0
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 428
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    .line 435
    const v6, 0x7f040035

    invoke-virtual {p1, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 436
    .local v5, view:Landroid/view/View;
    const v6, 0x7f0a0071

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    .line 437
    const v6, 0x7f0a0074

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/LockPatternView;

    iput-object v6, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 438
    iget-object v6, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v7, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 439
    iget-object v6, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v7, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;

    invoke-virtual {v7}, Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 441
    const v6, 0x7f0a0075

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    .line 443
    const v6, 0x7f0a0076

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    .line 444
    const v6, 0x7f0a0077

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    .line 446
    iget-object v6, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 447
    iget-object v6, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    const v6, 0x7f0a0070

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    .line 454
    .local v4, topLayout:Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;
    iget-object v6, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    .line 456
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "confirm_credentials"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 459
    .local v0, confirmCredentials:Z
    if-nez p3, :cond_4

    .line 460
    if-eqz v0, :cond_3

    .line 463
    sget-object v6, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 464
    iget-object v6, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;

    const/16 v7, 0x37

    invoke-virtual {v6, v7, v9, v9}, Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 467
    .local v2, launchedConfirmationActivity:Z
    if-nez v2, :cond_0

    .line 468
    sget-object v6, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 482
    .end local v2           #launchedConfirmationActivity:Z
    :cond_0
    :goto_0
    sget-boolean v6, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v6, :cond_2

    .line 483
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/mdm/LGMDMManager;->getEnforcePasswordChange()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 484
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "statusbar"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/StatusBarManager;

    iput-object v6, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 487
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 488
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "PASSWORD_EXPIRE"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 489
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 491
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/high16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 496
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    return-object v5

    .line 471
    :cond_3
    sget-object v6, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 475
    :cond_4
    const-string v6, "chosenPattern"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 476
    .local v3, patternString:Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 477
    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    .line 479
    :cond_5
    invoke-static {}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->values()[Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v6

    const-string v7, "uiStage"

    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 671
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 672
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_0

    .line 673
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/mdm/LGMDMManager;->getEnforcePasswordChange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 679
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 659
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 660
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_0

    .line 661
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/mdm/LGMDMManager;->getEnforcePasswordChange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 667
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 647
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 649
    const-string v0, "uiStage"

    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 650
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 651
    const-string v0, "chosenPattern"

    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    :cond_0
    const-string v0, "backuppindialogvisibility"

    iget-boolean v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mIsbackUpDialogVisible:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 655
    return-void
.end method

.method protected updateStage(Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V
    .locals 7
    .parameter "stage"

    .prologue
    const/4 v6, 0x0

    .line 689
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 691
    .local v0, previousStage:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    iput-object p1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 695
    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne p1, v1, :cond_1

    .line 696
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p1, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 703
    :goto_0
    iget v1, p1, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->footerMessage:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 704
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 709
    :goto_1
    iget-object v1, p1, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v2, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Gone:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    if-ne v1, v2, :cond_3

    .line 710
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 717
    :goto_2
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    iget v2, v2, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->text:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 718
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    iget-boolean v2, v2, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->enabled:Z

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 721
    iget-boolean v1, p1, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->patternEnabled:Z

    if-eqz v1, :cond_4

    .line 722
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 729
    :goto_3
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 731
    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$1;->$SwitchMap$com$android$settings$lockscreen$ChooseLockPattern$ChooseLockPatternFragment$Stage:[I

    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v2}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 763
    :goto_4
    :pswitch_0
    if-eq v0, p1, :cond_0

    .line 764
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 766
    :cond_0
    return-void

    .line 701
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    iget v2, p1, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 706
    :cond_2
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    iget v2, p1, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->footerMessage:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 712
    :cond_3
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 713
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    iget v2, v2, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->text:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 714
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    iget-boolean v2, v2, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->enabled:Z

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    .line 724
    :cond_4
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->disableInput()V

    goto :goto_3

    .line 733
    :pswitch_1
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    goto :goto_4

    .line 736
    :pswitch_2
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mAnimatePattern:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/widget/LockPatternView;->setPattern(Lcom/android/internal/widget/LockPatternView$DisplayMode;Ljava/util/List;)V

    goto :goto_4

    .line 739
    :pswitch_3
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 740
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->postClearPatternRunnable()V

    goto :goto_4

    .line 744
    :pswitch_4
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 745
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->postClearPatternRunnable()V

    goto :goto_4

    .line 751
    :pswitch_5
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    goto :goto_4

    .line 754
    :pswitch_6
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 755
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->postClearPatternRunnable()V

    goto :goto_4

    .line 731
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
