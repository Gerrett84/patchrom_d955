.class public Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;
.super Landroid/app/Fragment;
.source "ChooseLockPatternKidsMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockPatternKidsModeFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$CloseSystemDialogsIntentReceiver;,
        Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;,
        Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$RightButtonMode;,
        Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;
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

.field private final mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

.field private mDialog:Landroid/app/AlertDialog;

.field private mFooterLeftButton:Landroid/widget/TextView;

.field private mFooterRightButton:Landroid/widget/TextView;

.field protected mFooterText:Landroid/widget/TextView;

.field protected mHeaderText:Landroid/widget/TextView;

.field private mIWindowManager:Landroid/view/IWindowManager;

.field private mIsKidsModeOnCheck:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mPreviousLockScreen:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 117
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 138
    iput-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mChosenPattern:Ljava/util/List;

    .line 139
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mPreviousLockScreen:I

    .line 144
    iput-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mIWindowManager:Landroid/view/IWindowManager;

    .line 146
    iput-boolean v2, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mIsKidsModeOnCheck:Z

    .line 147
    iput-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mDialog:Landroid/app/AlertDialog;

    .line 149
    new-instance v0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$CloseSystemDialogsIntentReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$CloseSystemDialogsIntentReceiver;-><init>(Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$1;)V

    iput-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    .line 155
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

    iput-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mAnimatePattern:Ljava/util/List;

    .line 189
    new-instance v0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$1;-><init>(Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;)V

    iput-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    .line 346
    sget-object v0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;->Introduction:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;

    iput-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;

    .line 348
    new-instance v0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$2;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$2;-><init>(Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;)V

    iput-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    .line 699
    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;)Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mFooterLeftButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mFooterRightButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->hideDialog()V

    return-void
.end method

.method private hideDialog()V
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 697
    :cond_0
    return-void
.end method

.method private postClearPatternRunnable()V
    .locals 4

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 624
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 625
    return-void
.end method

.method private saveChosenPatternAndFinish()V
    .locals 6

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mChooseLockSettingsHelper:Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 629
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 636
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "saveLockPatternKidsMode"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/util/List;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 637
    if-eqz v1, :cond_1

    .line 638
    const-string v2, "ChooseLockPatternKidsMode"

    const-string v3, "SaveLockPatternKidsMode is not null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mChosenPattern:Ljava/util/List;

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 664
    :goto_0
    iget-boolean v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mIsKidsModeOnCheck:Z

    if-eqz v0, :cond_2

    .line 665
    const v0, 0x7f081011

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 666
    const v1, 0x7f081012

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 667
    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    :goto_1
    return-void

    .line 641
    :cond_1
    :try_start_1
    const-string v0, "ChooseLockPatternKidsMode"

    const-string v1, "SaveLockPatternKidsMode is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 643
    :catch_0
    move-exception v0

    .line 644
    const-string v1, "ChooseLockPatternKidsMode"

    const-string v2, "SaveLockPatternKidsMode exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 669
    :cond_2
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 670
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "title"
    .parameter "message"

    .prologue
    .line 680
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08059d

    new-instance v2, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$3;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$3;-><init>(Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mDialog:Landroid/app/AlertDialog;

    .line 690
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 691
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 173
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 174
    packed-switch p1, :pswitch_data_0

    .line 183
    :goto_0
    return-void

    .line 176
    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 178
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 180
    :cond_0
    sget-object v0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;->Introduction:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->updateStage(Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;)V

    goto :goto_0

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mFooterLeftButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_3

    .line 447
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;

    iget-object v0, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;->leftMode:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;

    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;->Retry:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;

    if-ne v0, v1, :cond_1

    .line 448
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mChosenPattern:Ljava/util/List;

    .line 449
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 450
    sget-object v0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;->Introduction:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->updateStage(Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;)V

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;

    iget-object v0, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;->leftMode:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;

    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;->Cancel:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;

    if-ne v0, v1, :cond_2

    .line 453
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 454
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 456
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "left footer button pressed, but stage of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t make sense"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mFooterRightButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;

    iget-object v0, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;->rightMode:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$RightButtonMode;

    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$RightButtonMode;->Continue:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$RightButtonMode;

    if-ne v0, v1, :cond_5

    .line 462
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;

    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;->FirstChoiceValid:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;

    if-eq v0, v1, :cond_4

    .line 463
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected ui stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;->FirstChoiceValid:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when button is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$RightButtonMode;->Continue:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$RightButtonMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 466
    :cond_4
    sget-object v0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;->NeedToConfirm:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->updateStage(Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;)V

    goto :goto_0

    .line 467
    :cond_5
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;

    iget-object v0, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;->rightMode:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$RightButtonMode;

    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$RightButtonMode;->Confirm:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$RightButtonMode;

    if-ne v0, v1, :cond_7

    .line 468
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;

    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;->ChoiceConfirmed:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;

    if-eq v0, v1, :cond_6

    .line 469
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected ui stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;->ChoiceConfirmed:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when button is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$RightButtonMode;->Confirm:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$RightButtonMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 472
    :cond_6
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->saveChosenPatternAndFinish()V

    goto/16 :goto_0

    .line 473
    :cond_7
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;

    iget-object v0, v0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;->rightMode:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$RightButtonMode;

    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$RightButtonMode;->Ok:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$RightButtonMode;

    if-ne v0, v1, :cond_0

    .line 474
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;

    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;->HelpScreen:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;

    if-eq v0, v1, :cond_8

    .line 475
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Help screen is only mode with ok button, but stage is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_8
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 479
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 480
    sget-object v0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;->Introduction:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->updateStage(Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 361
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 362
    new-instance v2, Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mChooseLockSettingsHelper:Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;

    .line 363
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/lgesettings/lockscreen/LockUtil;->getActivatedLockScreen(Landroid/app/Activity;)I

    move-result v2

    iput v2, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mPreviousLockScreen:I

    .line 364
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 366
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 369
    .local v1, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mIsKidsModeOnCheck:Z

    .line 370
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 371
    .local v0, filter:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 372
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    .line 379
    const v6, 0x7f040036

    invoke-virtual {p1, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 381
    .local v5, view:Landroid/view/View;
    const v6, 0x7f0a0071

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mHeaderText:Landroid/widget/TextView;

    .line 382
    const v6, 0x7f0a0074

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/LockPatternView;

    iput-object v6, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 383
    iget-object v6, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v7, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 384
    iget-object v6, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v7, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mChooseLockSettingsHelper:Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;

    invoke-virtual {v7}, Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 387
    const v6, 0x7f0a0075

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mFooterText:Landroid/widget/TextView;

    .line 389
    const v6, 0x7f0a0076

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mFooterLeftButton:Landroid/widget/TextView;

    .line 390
    const v6, 0x7f0a0077

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mFooterRightButton:Landroid/widget/TextView;

    .line 392
    iget-object v6, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mFooterLeftButton:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    iget-object v6, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mFooterRightButton:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    const v6, 0x7f0a0070

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    .line 400
    .local v4, topLayout:Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;
    iget-object v6, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    .line 401
    const v6, 0x7f02026e

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setBackgroundResource(I)V

    .line 402
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "confirm_credentials"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 405
    .local v0, confirmCredentials:Z
    if-nez p3, :cond_4

    .line 406
    if-eqz v0, :cond_3

    .line 409
    sget-object v6, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;->NeedToConfirm:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->updateStage(Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;)V

    .line 410
    iget-object v6, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mChooseLockSettingsHelper:Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;

    const/16 v7, 0x37

    invoke-virtual {v6, v7, v9, v9}, Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 413
    .local v2, launchedConfirmationActivity:Z
    if-nez v2, :cond_0

    .line 414
    sget-object v6, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;->Introduction:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->updateStage(Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;)V

    .line 428
    .end local v2           #launchedConfirmationActivity:Z
    :cond_0
    :goto_0
    sget-boolean v6, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v6, :cond_2

    .line 429
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/mdm/LGMDMManager;->getEnforcePasswordChange()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 430
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "statusbar"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/StatusBarManager;

    iput-object v6, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 433
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 434
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "PASSWORD_EXPIRE"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 435
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 437
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/high16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 442
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    return-object v5

    .line 417
    :cond_3
    sget-object v6, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;->Introduction:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->updateStage(Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;)V

    goto :goto_0

    .line 421
    :cond_4
    const-string v6, "chosenPattern"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 422
    .local v3, patternString:Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 423
    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mChosenPattern:Ljava/util/List;

    .line 425
    :cond_5
    invoke-static {}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;->values()[Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;

    move-result-object v6

    const-string v7, "uiStage"

    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->updateStage(Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 511
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 513
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 514
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 531
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 532
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_0

    .line 533
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/mdm/LGMDMManager;->getEnforcePasswordChange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 539
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 519
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 520
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_0

    .line 521
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/mdm/LGMDMManager;->getEnforcePasswordChange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 527
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 500
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 502
    const-string v0, "uiStage"

    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;

    invoke-virtual {v1}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 503
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mChosenPattern:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 504
    const-string v0, "chosenPattern"

    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mChosenPattern:Ljava/util/List;

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    :cond_0
    return-void
.end method

.method protected updateStage(Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;)V
    .locals 6
    .parameter "stage"

    .prologue
    const/4 v5, 0x0

    .line 550
    iput-object p1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;

    .line 554
    sget-object v0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;->ChoiceTooShort:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;

    if-ne p1, v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;->headerMessage:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 562
    :goto_0
    iget v0, p1, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;->footerMessage:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 563
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mFooterText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    :goto_1
    iget-object v0, p1, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;->leftMode:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;

    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;->Gone:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;

    if-ne v0, v1, :cond_2

    .line 569
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mFooterLeftButton:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 576
    :goto_2
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mFooterRightButton:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;->rightMode:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$RightButtonMode;

    iget v1, v1, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$RightButtonMode;->text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 577
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mFooterRightButton:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;->rightMode:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$RightButtonMode;

    iget-boolean v1, v1, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$RightButtonMode;->enabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 580
    iget-boolean v0, p1, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;->patternEnabled:Z

    if-eqz v0, :cond_3

    .line 581
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 588
    :goto_3
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 590
    sget-object v0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$1;->$SwitchMap$com$android$settings$lockscreen$ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage:[I

    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mUiStage:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;

    invoke-virtual {v1}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 617
    :goto_4
    :pswitch_0
    return-void

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mHeaderText:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;->headerMessage:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 565
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mFooterText:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;->footerMessage:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 571
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mFooterLeftButton:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 572
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mFooterLeftButton:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;->leftMode:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;

    iget v1, v1, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;->text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 573
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mFooterLeftButton:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$Stage;->leftMode:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;

    iget-boolean v1, v1, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$LeftButtonMode;->enabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    .line 583
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->disableInput()V

    goto :goto_3

    .line 592
    :pswitch_1
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    goto :goto_4

    .line 595
    :pswitch_2
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mAnimatePattern:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternView;->setPattern(Lcom/android/internal/widget/LockPatternView$DisplayMode;Ljava/util/List;)V

    goto :goto_4

    .line 598
    :pswitch_3
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 599
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->postClearPatternRunnable()V

    goto :goto_4

    .line 602
    :pswitch_4
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 603
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->postClearPatternRunnable()V

    goto :goto_4

    .line 608
    :pswitch_5
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    goto :goto_4

    .line 611
    :pswitch_6
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 612
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->postClearPatternRunnable()V

    goto :goto_4

    .line 590
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
