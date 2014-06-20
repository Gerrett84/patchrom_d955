.class Lcom/android/lgesettings/applications/InstalledAppDetails$DisableChanger;
.super Landroid/os/AsyncTask;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DisableChanger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/lgesettings/applications/InstalledAppDetails;",
            ">;"
        }
    .end annotation
.end field

.field final mInfo:Landroid/content/pm/ApplicationInfo;

.field final mPm:Landroid/content/pm/PackageManager;

.field final mState:I


# direct methods
.method constructor <init>(Lcom/android/lgesettings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V
    .locals 1
    .parameter "activity"
    .parameter "info"
    .parameter "state"

    .prologue
    .line 1500
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1501
    #getter for: Lcom/android/lgesettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/lgesettings/applications/InstalledAppDetails;->access$1500(Lcom/android/lgesettings/applications/InstalledAppDetails;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails$DisableChanger;->mPm:Landroid/content/pm/PackageManager;

    .line 1502
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails$DisableChanger;->mActivity:Ljava/lang/ref/WeakReference;

    .line 1503
    iput-object p2, p0, Lcom/android/lgesettings/applications/InstalledAppDetails$DisableChanger;->mInfo:Landroid/content/pm/ApplicationInfo;

    .line 1504
    iput p3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails$DisableChanger;->mState:I

    .line 1505
    return-void
.end method

.method private checkHotKeyCustomization(Ljava/lang/String;)V
    .locals 14
    .parameter "deletePackageName"

    .prologue
    .line 1554
    const-string v6, "hotkey_short_package"

    .line 1555
    .local v6, HOTKEY_SHORT_PACKAGE:Ljava/lang/String;
    const-string v5, "hotkey_short_class"

    .line 1556
    .local v5, HOTKEY_SHORT_CLASS:Ljava/lang/String;
    const-string v3, "hotkey_long_package"

    .line 1557
    .local v3, HOTKEY_LONG_PACKAGE:Ljava/lang/String;
    const-string v2, "hotkey_long_class"

    .line 1558
    .local v2, HOTKEY_LONG_CLASS:Ljava/lang/String;
    const-string v1, "com.lge.QuickClip"

    .line 1559
    .local v1, DEFAULT_PACKAGE:Ljava/lang/String;
    const-string v0, "com.lge.QuickClip.QuickClipActivity"

    .line 1560
    .local v0, DEFAULT_CLASS:Ljava/lang/String;
    const-string v4, "none"

    .line 1561
    .local v4, HOTKEY_NONE:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/lgesettings/applications/InstalledAppDetails$DisableChanger;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/lgesettings/applications/InstalledAppDetails;

    .line 1563
    .local v8, details:Lcom/android/lgesettings/applications/InstalledAppDetails;
    if-nez v8, :cond_1

    .line 1564
    const-string v11, "InstalledAppDetails"

    const-string v12, "checkHotKeyCustomization, details == null"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    :cond_0
    :goto_0
    return-void

    .line 1568
    :cond_1
    invoke-virtual {v8}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 1570
    .local v7, cr:Landroid/content/ContentResolver;
    if-nez v7, :cond_2

    .line 1571
    const-string v11, "InstalledAppDetails"

    const-string v12, "checkHotKeyCustomization, cr == null"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1575
    :cond_2
    invoke-virtual {v8}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/android/lgesettings/Utils;->supportHotkey(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1579
    const-string v11, "hotkey_short_package"

    invoke-static {v7, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1580
    .local v10, hotkey_short_package:Ljava/lang/String;
    const-string v11, "hotkey_long_package"

    invoke-static {v7, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1582
    .local v9, hotkey_long_package:Ljava/lang/String;
    if-eqz v10, :cond_0

    if-eqz v9, :cond_0

    .line 1586
    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1587
    const-string v11, "InstalledAppDetails"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Short key db change to default from "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    const-string v11, "hotkey_short_package"

    const-string v12, "com.lge.QuickClip"

    invoke-static {v7, v11, v12}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1589
    const-string v11, "hotkey_short_class"

    const-string v12, "com.lge.QuickClip.QuickClipActivity"

    invoke-static {v7, v11, v12}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1592
    :cond_3
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1593
    const-string v11, "InstalledAppDetails"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Long key db change to default from"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    const-string v11, "hotkey_long_package"

    const-string v12, "none"

    invoke-static {v7, v11, v12}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1595
    const-string v11, "hotkey_long_class"

    const-string v12, "none"

    invoke-static {v7, v11, v12}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "params"

    .prologue
    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 1509
    iget-object v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails$DisableChanger;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/applications/InstalledAppDetails;

    .line 1510
    .local v0, details:Lcom/android/lgesettings/applications/InstalledAppDetails;
    iget-object v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails$DisableChanger;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.lge.music"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1511
    iget v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails$DisableChanger;->mState:I

    if-ne v1, v3, :cond_0

    .line 1512
    const-string v1, "InstalledAppDetails"

    const-string v2, "disable SystemUI Music controller"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    if-eqz v0, :cond_0

    .line 1514
    invoke-virtual {v0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.lge.music.saveNoDisplay"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1517
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.lge.sizechangable.musicwidget.widget"

    invoke-static {v1, v2}, Lcom/android/lgesettings/Utils;->checkPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1518
    iget-object v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails$DisableChanger;->mPm:Landroid/content/pm/PackageManager;

    const-string v2, "com.lge.sizechangable.musicwidget.widget"

    iget v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails$DisableChanger;->mState:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 1528
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails$DisableChanger;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.lge.sizechangable.musicwidget.widget"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1529
    iget v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails$DisableChanger;->mState:I

    if-nez v1, :cond_2

    .line 1530
    iget-object v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails$DisableChanger;->mPm:Landroid/content/pm/PackageManager;

    const-string v2, "com.lge.music"

    iget v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails$DisableChanger;->mState:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 1534
    :cond_2
    iget-object v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails$DisableChanger;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.lge.lifestream"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1535
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.lge.cic.polaris.logmanager"

    invoke-static {v1, v2}, Lcom/android/lgesettings/Utils;->checkPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1536
    iget-object v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails$DisableChanger;->mPm:Landroid/content/pm/PackageManager;

    const-string v2, "com.lge.cic.polaris.logmanager"

    iget v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails$DisableChanger;->mState:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 1540
    :cond_3
    iget-object v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails$DisableChanger;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.lge.cic.polaris.logmanager"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1541
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.lge.lifestream"

    invoke-static {v1, v2}, Lcom/android/lgesettings/Utils;->checkPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1542
    iget-object v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails$DisableChanger;->mPm:Landroid/content/pm/PackageManager;

    const-string v2, "com.lge.lifestream"

    iget v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails$DisableChanger;->mState:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 1548
    :cond_4
    iget-object v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails$DisableChanger;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/lgesettings/applications/InstalledAppDetails$DisableChanger;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/lgesettings/applications/InstalledAppDetails$DisableChanger;->mState:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 1550
    iget-object v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails$DisableChanger;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/lgesettings/applications/InstalledAppDetails$DisableChanger;->checkHotKeyCustomization(Ljava/lang/String;)V

    .line 1551
    const/4 v1, 0x0

    return-object v1

    .line 1520
    :cond_5
    iget-object v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails$DisableChanger;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.lge.fmradio"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1521
    iget v1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails$DisableChanger;->mState:I

    if-ne v1, v3, :cond_1

    .line 1522
    if-eqz v0, :cond_1

    .line 1523
    invoke-virtual {v0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.lge.fmradio.saveNoDisplay"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
