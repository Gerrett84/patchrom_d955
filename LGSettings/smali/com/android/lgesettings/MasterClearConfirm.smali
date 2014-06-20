.class public Lcom/android/lgesettings/MasterClearConfirm;
.super Landroid/app/Fragment;
.source "MasterClearConfirm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/MasterClearConfirm$MasterCDMAFactoryResetReceiver;
    }
.end annotation


# instance fields
.field private mBatteryLevel:I

.field private mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field mConfirmDlg:Landroid/app/AlertDialog;

.field private mContentView:Landroid/view/View;

.field private mEraseExternal:Z

.field private mErasingSdCard:Z

.field private mExternalVolume:Landroid/os/storage/StorageVolume;

.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mIsEnableReset:Z

.field private mIsSelectOK:Z

.field private mIsShowDlg:Z

.field private final mLGMDMReceiver:Landroid/content/BroadcastReceiver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mWarnBatteryView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 80
    iput-object v1, p0, Lcom/android/lgesettings/MasterClearConfirm;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 81
    iput-object v1, p0, Lcom/android/lgesettings/MasterClearConfirm;->mExternalVolume:Landroid/os/storage/StorageVolume;

    .line 83
    iput-boolean v2, p0, Lcom/android/lgesettings/MasterClearConfirm;->mErasingSdCard:Z

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lgesettings/MasterClearConfirm;->mIsEnableReset:Z

    .line 89
    iput-object v1, p0, Lcom/android/lgesettings/MasterClearConfirm;->mConfirmDlg:Landroid/app/AlertDialog;

    .line 90
    iput-boolean v2, p0, Lcom/android/lgesettings/MasterClearConfirm;->mIsShowDlg:Z

    .line 91
    iput-boolean v2, p0, Lcom/android/lgesettings/MasterClearConfirm;->mIsSelectOK:Z

    .line 99
    new-instance v0, Lcom/android/lgesettings/MasterClearConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/MasterClearConfirm$1;-><init>(Lcom/android/lgesettings/MasterClearConfirm;)V

    iput-object v0, p0, Lcom/android/lgesettings/MasterClearConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 479
    new-instance v0, Lcom/android/lgesettings/MasterClearConfirm$MasterCDMAFactoryResetReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/lgesettings/MasterClearConfirm$MasterCDMAFactoryResetReceiver;-><init>(Lcom/android/lgesettings/MasterClearConfirm;Lcom/android/lgesettings/MasterClearConfirm$1;)V

    iput-object v0, p0, Lcom/android/lgesettings/MasterClearConfirm;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 508
    new-instance v0, Lcom/android/lgesettings/MasterClearConfirm$2;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/MasterClearConfirm$2;-><init>(Lcom/android/lgesettings/MasterClearConfirm;)V

    iput-object v0, p0, Lcom/android/lgesettings/MasterClearConfirm;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 517
    new-instance v0, Lcom/android/lgesettings/MasterClearConfirm$3;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/MasterClearConfirm$3;-><init>(Lcom/android/lgesettings/MasterClearConfirm;)V

    iput-object v0, p0, Lcom/android/lgesettings/MasterClearConfirm;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 572
    new-instance v0, Lcom/android/lgesettings/MasterClearConfirm$4;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/MasterClearConfirm$4;-><init>(Lcom/android/lgesettings/MasterClearConfirm;)V

    iput-object v0, p0, Lcom/android/lgesettings/MasterClearConfirm;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private MasterCDMAFactoryResetCompleted(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 456
    const-string v1, "MasterClearConfirm"

    const-string v2, "MasterCDMAFactoryResetCompleted() is called."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const-string v1, "phoneCdmaRequestFactoryResetCompleted"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 459
    .local v0, cdma_factory_reset_completed:I
    iget-boolean v1, p0, Lcom/android/lgesettings/MasterClearConfirm;->mEraseExternal:Z

    if-eqz v1, :cond_1

    .line 460
    invoke-direct {p0}, Lcom/android/lgesettings/MasterClearConfirm;->nativeCodeFormatSdCard()V

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    if-eqz v0, :cond_0

    .line 462
    invoke-virtual {p0}, Lcom/android/lgesettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 466
    const-string v1, "MasterClearConfirm"

    const-string v2, "send MASTER_CLEAR intent."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/lgesettings/MasterClearConfirm;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/lgesettings/MasterClearConfirm;->mIsShowDlg:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/lgesettings/MasterClearConfirm;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/lgesettings/MasterClearConfirm;->mIsShowDlg:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/lgesettings/MasterClearConfirm;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/lgesettings/MasterClearConfirm;->mIsSelectOK:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/lgesettings/MasterClearConfirm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/lgesettings/MasterClearConfirm;->checkBatteryLevel()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/lgesettings/MasterClearConfirm;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/lgesettings/MasterClearConfirm;->mIsSelectOK:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/lgesettings/MasterClearConfirm;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/lgesettings/MasterClearConfirm;->checkIntegralBattery()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/MasterClearConfirm;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/lgesettings/MasterClearConfirm;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/lgesettings/MasterClearConfirm;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/lgesettings/MasterClearConfirm;->mEraseExternal:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/lgesettings/MasterClearConfirm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/lgesettings/MasterClearConfirm;->nativeCodeFormatSdCard()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/lgesettings/MasterClearConfirm;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/lgesettings/MasterClearConfirm;->mErasingSdCard:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/lgesettings/MasterClearConfirm;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/lgesettings/MasterClearConfirm;->mErasingSdCard:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/lgesettings/MasterClearConfirm;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/lgesettings/MasterClearConfirm;->MasterCDMAFactoryResetCompleted(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/lgesettings/MasterClearConfirm;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/android/lgesettings/MasterClearConfirm;->mBatteryLevel:I

    return p1
.end method

.method private checkBatteryLevel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 536
    iget-boolean v0, p0, Lcom/android/lgesettings/MasterClearConfirm;->mIsEnableReset:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/lgesettings/MasterClearConfirm;->mBatteryLevel:I

    if-ge v0, v3, :cond_2

    .line 537
    iget-object v0, p0, Lcom/android/lgesettings/MasterClearConfirm;->mConfirmDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/android/lgesettings/MasterClearConfirm;->mConfirmDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 539
    iput-object v4, p0, Lcom/android/lgesettings/MasterClearConfirm;->mConfirmDlg:Landroid/app/AlertDialog;

    .line 541
    :cond_0
    iput-boolean v1, p0, Lcom/android/lgesettings/MasterClearConfirm;->mIsEnableReset:Z

    .line 542
    iget-object v0, p0, Lcom/android/lgesettings/MasterClearConfirm;->mWarnBatteryView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 543
    iget-object v0, p0, Lcom/android/lgesettings/MasterClearConfirm;->mFinalButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 556
    :cond_1
    :goto_0
    return-void

    .line 544
    :cond_2
    iget-boolean v0, p0, Lcom/android/lgesettings/MasterClearConfirm;->mIsEnableReset:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/lgesettings/MasterClearConfirm;->mBatteryLevel:I

    if-lt v0, v3, :cond_1

    .line 545
    iput-boolean v2, p0, Lcom/android/lgesettings/MasterClearConfirm;->mIsEnableReset:Z

    .line 546
    iget-object v0, p0, Lcom/android/lgesettings/MasterClearConfirm;->mWarnBatteryView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 547
    iget-object v0, p0, Lcom/android/lgesettings/MasterClearConfirm;->mFinalButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 550
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_1

    .line 551
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/MasterClearConfirm;->mFinalButton:Landroid/widget/Button;

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/lgesettings/MDMSettingsAdapter;->setFactoryResetConfirmButton(Landroid/content/ComponentName;Landroid/content/Context;Landroid/widget/Button;)V

    goto :goto_0
.end method

.method private checkIntegralBattery()Z
    .locals 2

    .prologue
    .line 559
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "batman_skt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "batman_lgu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "batman_vzw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "batman_dcm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "vu10"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "geeb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "geeb3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "geefhd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "geehrc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "geehrc4g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "geevl04e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "gvfhd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/lgesettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->isEmbededBattery(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 565
    :cond_0
    const/4 v0, 0x1

    .line 568
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private establishFinalConfirmationState()V
    .locals 5

    .prologue
    .line 292
    iget-object v2, p0, Lcom/android/lgesettings/MasterClearConfirm;->mContentView:Landroid/view/View;

    const v3, 0x7f0a01b0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/lgesettings/MasterClearConfirm;->mFinalButton:Landroid/widget/Button;

    .line 293
    iget-object v2, p0, Lcom/android/lgesettings/MasterClearConfirm;->mFinalButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/lgesettings/MasterClearConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    iget-object v2, p0, Lcom/android/lgesettings/MasterClearConfirm;->mContentView:Landroid/view/View;

    const v3, 0x7f0a01ae

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/lgesettings/MasterClearConfirm;->mWarnBatteryView:Landroid/widget/TextView;

    .line 295
    const-string v1, "5%"

    .line 296
    .local v1, batteryLevel:Ljava/lang/String;
    const v2, 0x7f080d26

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/lgesettings/MasterClearConfirm;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, battery:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/lgesettings/MasterClearConfirm;->mWarnBatteryView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    return-void
.end method

.method private getExternalVolume()Landroid/os/storage/StorageVolume;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 361
    iget-object v7, p0, Lcom/android/lgesettings/MasterClearConfirm;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v7}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 362
    .local v5, storageVolumes:[Landroid/os/storage/StorageVolume;
    if-nez v5, :cond_1

    move-object v0, v6

    .line 398
    :cond_0
    :goto_0
    return-object v0

    .line 366
    :cond_1
    const/4 v0, 0x0

    .line 367
    .local v0, PrimaryVolume:Landroid/os/storage/StorageVolume;
    const/4 v1, 0x0

    .line 369
    .local v1, SecondaryVolume:Landroid/os/storage/StorageVolume;
    array-length v3, v5

    .line 370
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 371
    aget-object v4, v5, v2

    .line 372
    .local v4, storageVolume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getStorageId()I

    move-result v7

    const v8, 0x10001

    if-ne v7, v8, :cond_2

    .line 373
    move-object v0, v4

    .line 370
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 375
    :cond_2
    move-object v1, v4

    .line 379
    .end local v4           #storageVolume:Landroid/os/storage/StorageVolume;
    :cond_3
    sget-object v7, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v8, "cayman"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 380
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 384
    :cond_4
    if-nez v1, :cond_5

    move-object v0, v6

    .line 385
    goto :goto_0

    :cond_5
    move-object v0, v1

    .line 387
    goto :goto_0

    .line 391
    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v7

    if-nez v7, :cond_0

    .line 395
    :cond_7
    if-nez v1, :cond_8

    move-object v0, v6

    .line 396
    goto :goto_0

    :cond_8
    move-object v0, v1

    .line 398
    goto :goto_0
.end method

.method private nativeCodeFormatSdCard()V
    .locals 3

    .prologue
    .line 406
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 407
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 408
    const-string v1, "storage_volume"

    iget-object v2, p0, Lcom/android/lgesettings/MasterClearConfirm;->mExternalVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 410
    invoke-virtual {p0}, Lcom/android/lgesettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 411
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 318
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 320
    invoke-virtual {p0}, Lcom/android/lgesettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "storage"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    iput-object v4, p0, Lcom/android/lgesettings/MasterClearConfirm;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 321
    iget-object v4, p0, Lcom/android/lgesettings/MasterClearConfirm;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v5, p0, Lcom/android/lgesettings/MasterClearConfirm;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v4, v5}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 323
    invoke-virtual {p0}, Lcom/android/lgesettings/MasterClearConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 324
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_4

    const-string v4, "erase_sd"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    :goto_0
    iput-boolean v4, p0, Lcom/android/lgesettings/MasterClearConfirm;->mEraseExternal:Z

    .line 325
    iget-boolean v4, p0, Lcom/android/lgesettings/MasterClearConfirm;->mEraseExternal:Z

    if-eqz v4, :cond_0

    .line 326
    invoke-direct {p0}, Lcom/android/lgesettings/MasterClearConfirm;->getExternalVolume()Landroid/os/storage/StorageVolume;

    move-result-object v4

    iput-object v4, p0, Lcom/android/lgesettings/MasterClearConfirm;->mExternalVolume:Landroid/os/storage/StorageVolume;

    .line 329
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 330
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0}, Lcom/android/lgesettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/MasterClearConfirm;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 335
    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v5, "i_vzw"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v5, "batman_vzw"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v5, "cayman"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 337
    :cond_1
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.ACTION_CDMA_REQUEST_FACTORY_RESET_COMPLETED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 338
    .local v3, intentFilter:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/lgesettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/MasterClearConfirm;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 342
    .end local v3           #intentFilter:Landroid/content/IntentFilter;
    :cond_2
    sget-boolean v4, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v4, :cond_3

    .line 343
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 344
    .local v2, filterLGMDM:Landroid/content/IntentFilter;
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/lgesettings/MDMSettingsAdapter;->addWipeDatePolicyChangeIntentFilter(Landroid/content/IntentFilter;)V

    .line 345
    invoke-virtual {p0}, Lcom/android/lgesettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/MasterClearConfirm;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 348
    .end local v2           #filterLGMDM:Landroid/content/IntentFilter;
    :cond_3
    return-void

    .line 324
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_4
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x0

    .line 304
    invoke-virtual {p0}, Lcom/android/lgesettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->supportSplitView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    const v0, 0x7f0400c6

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/MasterClearConfirm;->mContentView:Landroid/view/View;

    .line 309
    :goto_0
    invoke-virtual {p0}, Lcom/android/lgesettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {p0}, Lcom/android/lgesettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0804b6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 312
    :cond_0
    invoke-direct {p0}, Lcom/android/lgesettings/MasterClearConfirm;->establishFinalConfirmationState()V

    .line 313
    iget-object v0, p0, Lcom/android/lgesettings/MasterClearConfirm;->mContentView:Landroid/view/View;

    return-object v0

    .line 307
    :cond_1
    const v0, 0x7f0400c5

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/MasterClearConfirm;->mContentView:Landroid/view/View;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 485
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "i_vzw"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "batman_vzw"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "cayman"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 487
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/MasterClearConfirm;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 489
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/MasterClearConfirm;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/lgesettings/MasterClearConfirm;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v1, :cond_2

    .line 490
    iget-object v1, p0, Lcom/android/lgesettings/MasterClearConfirm;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/lgesettings/MasterClearConfirm;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 493
    :cond_2
    invoke-virtual {p0}, Lcom/android/lgesettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/MasterClearConfirm;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 495
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v1, :cond_3

    .line 497
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/MasterClearConfirm;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :cond_3
    :goto_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 504
    return-void

    .line 498
    :catch_0
    move-exception v0

    .line 499
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MDM"

    const-string v2, "mLGMDMReceiver unregisterReceiver "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 585
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 587
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 353
    iget-boolean v0, p0, Lcom/android/lgesettings/MasterClearConfirm;->mIsEnableReset:Z

    if-eqz v0, :cond_0

    .line 356
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 357
    return-void
.end method

.method sendCDMAFactoryRequest()V
    .locals 3

    .prologue
    .line 440
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_CDMA_REQUEST_FACTORY_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 441
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "MasterClearConfirm"

    const-string v2, "sendCDMAFactoryRequest() is called."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 443
    return-void
.end method
