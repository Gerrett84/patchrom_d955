.class public final Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;
.super Landroid/app/Activity;
.source "UsbSettingsPopup.java"


# instance fields
.field private mChargeModeChanged:Z

.field private mCheckingEntitlement:Z

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDefaultFunction:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherModeKeep:Z

.field private mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 79
    new-instance v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$1;-><init>(Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;)V

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 239
    new-instance v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2;-><init>(Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;)V

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;)Landroid/hardware/usb/UsbManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mTetherModeKeep:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->callPopup(I)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mChargeModeChanged:Z

    return p1
.end method

.method private callPopup(I)V
    .locals 4
    .parameter "dialogId"

    .prologue
    .line 232
    const-string v1, "UsbSettingsPopup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AUTORUN] callPopup() : popup id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 236
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 237
    return-void
.end method

.method private checkEntitlement()V
    .locals 3

    .prologue
    .line 514
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 515
    .local v0, send:Landroid/content/Intent;
    const-string v1, "Tether_Type"

    const-string v2, "USB"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 516
    const-string v1, "com.android.lgesettings"

    const-string v2, "com.android.lgesettings.EntitlementDialogActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 517
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->startActivityForResult(Landroid/content/Intent;I)V

    .line 518
    return-void
.end method

.method private setTetherExceptPopup(Landroid/content/Context;)V
    .locals 4
    .parameter "mContext"

    .prologue
    const/4 v3, 0x1

    .line 624
    invoke-static {p1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->getUsbConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 625
    iput-boolean v3, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mTetherModeKeep:Z

    .line 626
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->finish()V

    .line 642
    :goto_0
    return-void

    .line 630
    :cond_0
    invoke-static {p1, v3}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->connectUsbTether(Landroid/content/Context;Z)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 631
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->callPopup(I)V

    goto :goto_0

    .line 635
    :cond_1
    sput-boolean v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    .line 636
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "ecm"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 637
    invoke-static {p1, v3}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->connectUsbTether(Landroid/content/Context;Z)I

    .line 638
    iput-boolean v3, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mTetherModeKeep:Z

    .line 639
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.intent.action.activity_finish"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 640
    .local v0, i_finish:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 641
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->finish()V

    goto :goto_0
.end method

.method private startTetherKDDIPopup()V
    .locals 5

    .prologue
    .line 612
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "TETHER_POPUP_KDDI"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 613
    .local v0, checkShow:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 614
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->setTetherExceptPopup(Landroid/content/Context;)V

    .line 621
    :goto_0
    return-void

    .line 618
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 619
    .local v1, send:Landroid/content/Intent;
    const-string v2, "com.android.lgesettings"

    const-string v3, "com.android.lgesettings.deviceinfo.TetherPopupKDDIActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 620
    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private startUsbTetherIntroPopup()V
    .locals 3

    .prologue
    .line 606
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 607
    .local v0, send:Landroid/content/Intent;
    const-string v1, "com.android.lgesettings"

    const-string v2, "com.android.lgesettings.deviceinfo.UsbTetherIntroUSCActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 608
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->startActivityForResult(Landroid/content/Intent;I)V

    .line 609
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 521
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 523
    const-string v1, "UsbSettingsPopup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AUTORUN] onActivityResult() : requestCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const-string v1, "UsbSettingsPopup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AUTORUN] onActivityResult() : resultCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const-string v1, "UsbSettingsPopup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AUTORUN] onActivityResult() : intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    if-nez p1, :cond_3

    .line 528
    if-eqz p3, :cond_0

    .line 529
    if-ne p2, v5, :cond_1

    .line 530
    const-string v1, "USB"

    const-string v2, "Tether_Type"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 531
    invoke-direct {p0, v4}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->callPopup(I)V

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 534
    :cond_1
    if-nez p2, :cond_0

    .line 535
    const-string v1, "USB"

    const-string v2, "Tether_Type"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 536
    const-string v1, "usb_disConnected"

    invoke-virtual {p3, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 538
    .local v0, usb_disConnected:Z
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mContext:Landroid/content/Context;

    invoke-static {v1, v6}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->connectUsbTether(Landroid/content/Context;Z)I

    .line 539
    if-eqz v0, :cond_2

    .line 541
    iput-boolean v4, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mTetherModeKeep:Z

    .line 548
    :goto_1
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->finish()V

    goto :goto_0

    .line 544
    :cond_2
    sput-boolean v4, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    .line 545
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "charge_only"

    invoke-virtual {v1, v2, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 546
    iput-boolean v4, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mChargeModeChanged:Z

    goto :goto_1

    .line 553
    .end local v0           #usb_disConnected:Z
    :cond_3
    if-ne p1, v4, :cond_6

    .line 554
    if-ne p2, v5, :cond_5

    .line 555
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->getUsbConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 556
    iput-boolean v4, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mTetherModeKeep:Z

    .line 557
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->finish()V

    goto :goto_0

    .line 560
    :cond_4
    sput-boolean v4, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    .line 561
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "ecm"

    invoke-virtual {v1, v2, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 562
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->connectUsbTether(Landroid/content/Context;Z)I

    .line 563
    iput-boolean v4, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mTetherModeKeep:Z

    .line 564
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->finish()V

    goto :goto_0

    .line 566
    :cond_5
    if-nez p2, :cond_0

    .line 567
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mContext:Landroid/content/Context;

    invoke-static {v1, v6}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->connectUsbTether(Landroid/content/Context;Z)I

    .line 569
    sput-boolean v4, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    .line 570
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "charge_only"

    invoke-virtual {v1, v2, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 571
    iput-boolean v4, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mChargeModeChanged:Z

    .line 573
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->finish()V

    goto :goto_0

    .line 576
    :cond_6
    if-ne p1, v7, :cond_0

    .line 577
    if-ne p2, v5, :cond_9

    .line 578
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->getUsbConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 579
    iput-boolean v4, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mTetherModeKeep:Z

    .line 580
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->finish()V

    goto :goto_0

    .line 584
    :cond_7
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->connectUsbTether(Landroid/content/Context;Z)I

    move-result v1

    if-ne v1, v5, :cond_8

    .line 585
    invoke-direct {p0, v7}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->callPopup(I)V

    goto/16 :goto_0

    .line 588
    :cond_8
    sput-boolean v4, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    .line 589
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "ecm"

    invoke-virtual {v1, v2, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 590
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->connectUsbTether(Landroid/content/Context;Z)I

    .line 591
    iput-boolean v4, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mTetherModeKeep:Z

    .line 592
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->finish()V

    goto/16 :goto_0

    .line 594
    :cond_9
    if-nez p2, :cond_0

    .line 595
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mContext:Landroid/content/Context;

    invoke-static {v1, v6}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->connectUsbTether(Landroid/content/Context;Z)I

    .line 597
    sput-boolean v4, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    .line 598
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "charge_only"

    invoke-virtual {v1, v2, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 599
    iput-boolean v4, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mChargeModeChanged:Z

    .line 600
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->finish()V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 119
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 120
    iput-object p0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mContext:Landroid/content/Context;

    .line 121
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 122
    const-string v0, "usb"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 124
    iput-boolean v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mTetherModeKeep:Z

    .line 125
    iput-boolean v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mChargeModeChanged:Z

    .line 126
    iput-boolean v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mCheckingEntitlement:Z

    .line 128
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mDefaultFunction:Ljava/lang/String;

    .line 129
    const-string v0, "UsbSettingsPopup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AUTORUN] onCreate() : mDefaultFunction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mDefaultFunction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DCM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->callPopup(I)V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ATT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tether_entitlement_check_state"

    invoke-static {v0, v1, v3}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_2

    .line 137
    iget-boolean v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mCheckingEntitlement:Z

    if-nez v0, :cond_0

    .line 138
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->checkEntitlement()V

    .line 139
    iput-boolean v3, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mCheckingEntitlement:Z

    goto :goto_0

    .line 142
    :cond_2
    const-string v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "USC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 143
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->startUsbTetherIntroPopup()V

    goto :goto_0

    .line 145
    :cond_3
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KDDI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 146
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->startTetherKDDIPopup()V

    goto :goto_0

    .line 149
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->callPopup(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 218
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 219
    const-string v0, "UsbSettingsPopup"

    const-string v1, "[AUTORUN] onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 168
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 169
    const-string v0, "UsbSettingsPopup"

    const-string v1, "[AUTORUN] onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 171
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 158
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 159
    const-string v1, "UsbSettingsPopup"

    const-string v2, "[AUTORUN] onResume()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 161
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 164
    return-void
.end method

.method public onStop()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 175
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 176
    const-string v5, "UsbSettingsPopup"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[AUTORUN] onStop() : mChargeModeChanged="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mChargeModeChanged:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const-string v5, "UsbSettingsPopup"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[AUTORUN] onStop() : mTetherModeKeep="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mTetherModeKeep:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const-string v5, "power"

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 180
    .local v4, pm:Landroid/os/PowerManager;
    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    .line 181
    .local v3, isScreenOn:Z
    if-nez v3, :cond_0

    .line 214
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-boolean v5, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mChargeModeChanged:Z

    if-eqz v5, :cond_2

    .line 186
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.lge.intent.action.tether_state_change"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    .local v0, i:Landroid/content/Intent;
    const-string v5, "extra_usb_default_mode"

    const-string v6, "charge_only"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    iget-object v5, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 208
    .end local v0           #i:Landroid/content/Intent;
    :cond_1
    sget-boolean v5, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityFinish:Z

    if-eqz v5, :cond_3

    .line 209
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.lge.intent.action.activity_finish"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 210
    .restart local v0       #i:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 190
    .end local v0           #i:Landroid/content/Intent;
    :cond_2
    iget-boolean v5, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mTetherModeKeep:Z

    if-nez v5, :cond_1

    .line 191
    iget-object v5, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->connectUsbTether(Landroid/content/Context;Z)I

    .line 193
    sput-boolean v8, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    .line 194
    iget-object v5, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v6, "charge_only"

    invoke-virtual {v5, v6, v8}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 196
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.lge.intent.action.tether_state_change"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .local v1, i1:Landroid/content/Intent;
    const-string v5, "extra_usb_default_mode"

    const-string v6, "charge_only"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    iget-object v5, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 200
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.lge.intent.action.activity_finish"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 201
    .local v2, i2:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 203
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->finish()V

    goto :goto_0

    .line 212
    .end local v1           #i1:Landroid/content/Intent;
    .end local v2           #i2:Landroid/content/Intent;
    :cond_3
    sput-boolean v8, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityFinish:Z

    goto :goto_0
.end method
