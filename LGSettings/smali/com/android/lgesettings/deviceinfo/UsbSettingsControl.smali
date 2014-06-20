.class public Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;
.super Ljava/lang/Object;
.source "UsbSettingsControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/deviceinfo/UsbSettingsControl$autorunTimerTask;
    }
.end annotation


# static fields
.field public static mActiveCurrentFunction:Ljava/lang/String;

.field public static mActivityFinish:Z

.field public static mActivityUsbModeChange:Z

.field public static mAlreadyObserving:Z

.field private static mAutorunChanging:Z

.field private static mAutorunTimer:Ljava/util/Timer;

.field public static mDirectAutorun:Z

.field public static mMountInternalMemory:Z

.field public static mMountSDCard:Z

.field public static mOldversion:Z

.field public static mStateInternalMemory:Ljava/lang/String;

.field public static mStateSDCard:Ljava/lang/String;

.field public static mStorageVolumeNum:I

.field public static mTetherChanged:Z

.field private static mTimerContext:Landroid/content/Context;

.field public static mUsbConnected:Z

.field public static mUsbSettingsRun:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 75
    sput-object v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mAutorunTimer:Ljava/util/Timer;

    .line 76
    sput-boolean v1, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mAutorunChanging:Z

    .line 78
    sput-object v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mTimerContext:Landroid/content/Context;

    .line 80
    sput-boolean v1, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mUsbConnected:Z

    .line 81
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mDirectAutorun:Z

    .line 82
    sput-boolean v1, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mUsbSettingsRun:Z

    .line 83
    sput-boolean v1, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    .line 84
    sput-boolean v1, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityFinish:Z

    .line 86
    sput-boolean v1, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mOldversion:Z

    .line 87
    sput-boolean v1, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mAlreadyObserving:Z

    .line 88
    const-string v0, ""

    sput-object v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActiveCurrentFunction:Ljava/lang/String;

    .line 90
    sput-boolean v1, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mMountSDCard:Z

    .line 91
    const-string v0, ""

    sput-object v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mStateSDCard:Ljava/lang/String;

    .line 92
    sput-boolean v1, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mMountInternalMemory:Z

    .line 93
    const-string v0, ""

    sput-object v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mStateInternalMemory:Ljava/lang/String;

    .line 94
    sput v1, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mStorageVolumeNum:I

    .line 96
    sput-boolean v1, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mTetherChanged:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 173
    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mTimerContext:Landroid/content/Context;

    return-object v0
.end method

.method public static callTetherPopup(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 489
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    if-eqz p0, :cond_0

    .line 492
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 493
    const-string v1, "android.intent.action.PICK_ACTIVITY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 495
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static cancelAutorunTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 186
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    :goto_0
    return-void

    .line 188
    :cond_0
    sget-object v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mAutorunTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 189
    sget-object v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mAutorunTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 190
    sput-object v2, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mAutorunTimer:Ljava/util/Timer;

    .line 192
    const-string v0, "UsbSettingsControl"

    const-string v1, "[AUTORUN] cancelAutorunTimer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mAutorunChanging:Z

    .line 196
    sput-object v2, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mTimerContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public static changeAutorunMode(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 5
    .parameter "context"
    .parameter "autorunMode"
    .parameter "timer"

    .prologue
    const/4 v2, 0x0

    .line 328
    invoke-static {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->supportAutorunMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 348
    :cond_0
    :goto_0
    return v2

    .line 332
    :cond_1
    const-string v3, "usb"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager;

    .line 333
    .local v1, usbManager:Landroid/hardware/usb/UsbManager;
    if-eqz v1, :cond_0

    .line 336
    const-string v3, "/sys/class/android_usb/android0/f_cdrom_storage/lun/cdrom_usbmode"

    invoke-static {v3, p1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->writeToFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 340
    const-wide/16 v3, 0x14

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :goto_1
    const-string v3, "cdrom_storage"

    invoke-virtual {v1, v3, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 345
    if-eqz p2, :cond_2

    .line 346
    invoke-static {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->startAutorunTimer(Landroid/content/Context;)V

    .line 348
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "UsbSettingsControl"

    const-string v4, "[AUTORUN] waiting exception"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static checkStorageVolume(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 221
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "storage"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    .line 222
    .local v3, storageManager:Landroid/os/storage/StorageManager;
    if-nez v3, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    const-string v2, ""

    .line 225
    .local v2, state:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 226
    .local v5, storageVolumes:[Landroid/os/storage/StorageVolume;
    if-eqz v5, :cond_0

    .line 228
    array-length v1, v5

    .line 229
    .local v1, length:I
    sput v1, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mStorageVolumeNum:I

    .line 230
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 231
    aget-object v4, v5, v0

    .line 234
    .local v4, storageVolume:Landroid/os/storage/StorageVolume;
    sget-object v6, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v7, "batman_lgu_kr"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    sget-object v6, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v7, "batman_skt_kr"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 235
    :cond_2
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 236
    sput-object v2, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mStateSDCard:Ljava/lang/String;

    .line 238
    sput-boolean v9, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mMountSDCard:Z

    .line 239
    const-string v6, "mounted"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 240
    sput-boolean v8, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mMountSDCard:Z

    .line 269
    .end local v4           #storageVolume:Landroid/os/storage/StorageVolume;
    :cond_3
    const-string v6, "UsbSettingsControl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[AUTORUN] checkStorageVolume() : mMountSDCard="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mMountSDCard:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const-string v6, "UsbSettingsControl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[AUTORUN] checkStorageVolume() : mStateSDCard="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mStateSDCard:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const-string v6, "UsbSettingsControl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[AUTORUN] checkStorageVolume() : mMountInternalMemory="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mMountInternalMemory:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const-string v6, "UsbSettingsControl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[AUTORUN] checkStorageVolume() : mStateInternalMemory="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mStateInternalMemory:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 245
    .restart local v4       #storageVolume:Landroid/os/storage/StorageVolume;
    :cond_4
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v6

    if-ne v6, v8, :cond_6

    .line 246
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 247
    sput-object v2, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mStateSDCard:Ljava/lang/String;

    .line 249
    sput-boolean v9, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mMountSDCard:Z

    .line 250
    const-string v6, "mounted"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 251
    sput-boolean v9, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mMountSDCard:Z

    .line 230
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 253
    :cond_5
    sput-boolean v8, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mMountSDCard:Z

    goto :goto_2

    .line 255
    :cond_6
    sput-boolean v8, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mMountInternalMemory:Z

    .line 256
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mStateInternalMemory:Ljava/lang/String;

    goto :goto_2
.end method

.method public static connectUsbTether(Landroid/content/Context;Z)I
    .locals 5
    .parameter "context"
    .parameter "connection"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 444
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 445
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 464
    :goto_0
    return v1

    .line 448
    :cond_0
    if-ne p1, v2, :cond_2

    .line 449
    invoke-static {p0, v1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->setTetherStatus(Landroid/content/Context;Z)V

    .line 451
    const-wide/16 v3, 0x1f4

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    :goto_1
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v1

    if-eqz v1, :cond_1

    .line 455
    const-string v1, "UsbSettingsControl"

    const-string v2, "[AUTORUN] ============ Tethering ERROR !! ============"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const/4 v1, -0x1

    goto :goto_0

    .line 458
    :cond_1
    const-string v1, "UsbSettingsControl"

    const-string v3, "[AUTORUN] ============ Tethering OK !!\t=============="

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 459
    goto :goto_0

    .line 462
    :cond_2
    invoke-static {p0, v1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->setTetherStatus(Landroid/content/Context;Z)V

    .line 463
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    goto :goto_0

    .line 452
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static getAskOnConnection(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 373
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "usb_ask_on_connection"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 376
    .local v0, usbAskOnConnection:I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static getAutorunDialogDoNotShow(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 561
    if-nez p0, :cond_0

    .line 567
    :goto_0
    return v1

    .line 564
    :cond_0
    const-string v2, "UsbSettingsControl"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 565
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v2, "shared_dialog_do_not_show"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 566
    .local v1, ret:Z
    const-string v2, "UsbSettingsControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[AUTORUN] setAutorunDialogDoNotShow() : status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getTetherStatus(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 109
    if-nez p0, :cond_0

    .line 115
    :goto_0
    return v1

    .line 112
    :cond_0
    const-string v2, "UsbSettingsControl"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 113
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v2, "shared_tether_status"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 114
    .local v1, ret:Z
    const-string v2, "UsbSettingsControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[AUTORUN] getTetherStatus() : status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getUsbConnected(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 479
    if-nez p0, :cond_0

    .line 485
    :goto_0
    return v1

    .line 482
    :cond_0
    const-string v2, "UsbSettingsControl"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 483
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v2, "shared_usb_connected"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 484
    .local v1, ret:Z
    const-string v2, "UsbSettingsControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[AUTORUN] getUsbConnected() : connected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isAutorunTimer()Z
    .locals 3

    .prologue
    .line 216
    const-string v0, "UsbSettingsControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AUTORUN] isAutorunTimer() : mAutorunChanging="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mAutorunChanging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    sget-boolean v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mAutorunChanging:Z

    return v0
.end method

.method public static isDirectAutorunModel()Z
    .locals 1

    .prologue
    .line 430
    const/4 v0, 0x0

    .line 440
    .local v0, directAutorun:Z
    return v0
.end method

.method public static isDisconnectBugModel()Z
    .locals 3

    .prologue
    .line 413
    const/4 v0, 0x0

    .line 414
    .local v0, disconnectBug:Z
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "x3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "vu10"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 415
    :cond_0
    const/4 v0, 0x1

    .line 418
    :cond_1
    return v0
.end method

.method public static isMassSeperatedModel()Z
    .locals 3

    .prologue
    .line 422
    const/4 v0, 0x0

    .line 423
    .local v0, massSeperated:Z
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "black"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "justin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 424
    :cond_0
    const/4 v0, 0x1

    .line 426
    :cond_1
    return v0
.end method

.method public static isMassStorageEnable()Z
    .locals 4

    .prologue
    .line 276
    const/4 v0, 0x0

    .line 277
    .local v0, isMassStorageEnable:Z
    sget v1, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mStorageVolumeNum:I

    if-gtz v1, :cond_0

    .line 305
    :goto_0
    return v0

    .line 280
    :cond_0
    sget v1, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mStorageVolumeNum:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 281
    const-string v1, "mounted"

    sget-object v2, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mStateSDCard:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "shared"

    sget-object v2, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mStateSDCard:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mounted_ro"

    sget-object v2, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mStateSDCard:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 282
    :cond_1
    const/4 v0, 0x1

    .line 304
    :goto_1
    const-string v1, "UsbSettingsControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AUTORUN] isMassStorageEnable() : isMassStorageEnable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 284
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 285
    :cond_3
    sget v1, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mStorageVolumeNum:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    .line 286
    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isMassSeperatedModel()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 287
    const/4 v0, 0x1

    goto :goto_1

    .line 290
    :cond_4
    const-string v1, "mounted"

    sget-object v2, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mStateSDCard:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "shared"

    sget-object v2, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mStateSDCard:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "mounted_ro"

    sget-object v2, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mStateSDCard:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 291
    :cond_5
    const/4 v0, 0x1

    goto :goto_1

    .line 293
    :cond_6
    const-string v1, "mounted"

    sget-object v2, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mStateInternalMemory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "shared"

    sget-object v2, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mStateInternalMemory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "mounted_ro"

    sget-object v2, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mStateInternalMemory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 294
    :cond_7
    const/4 v0, 0x1

    goto :goto_1

    .line 297
    :cond_8
    const/4 v0, 0x0

    goto :goto_1

    .line 301
    :cond_9
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static isMassStorageSupport(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 525
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "storage"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    .line 526
    .local v3, storageManager:Landroid/os/storage/StorageManager;
    if-nez v3, :cond_1

    move v1, v6

    .line 547
    :cond_0
    :goto_0
    return v1

    .line 530
    :cond_1
    const/4 v1, 0x0

    .line 531
    .local v1, isMassStorage:Z
    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 532
    .local v5, storageVolumes:[Landroid/os/storage/StorageVolume;
    if-nez v5, :cond_2

    move v1, v6

    .line 533
    goto :goto_0

    .line 536
    :cond_2
    array-length v2, v5

    .line 537
    .local v2, length:I
    sput v2, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mStorageVolumeNum:I

    .line 539
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_0

    .line 540
    aget-object v4, v5, v0

    .line 541
    .local v4, storageVolume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 542
    const/4 v1, 0x1

    .line 543
    goto :goto_0

    .line 539
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isMtpAutorunModel()Z
    .locals 3

    .prologue
    .line 380
    const/4 v0, 0x1

    .line 382
    .local v0, isMtpAutorun:Z
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "u0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 383
    const/4 v0, 0x0

    .line 386
    :cond_0
    return v0
.end method

.method public static isMtpSupport(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 499
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "storage"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    .line 500
    .local v3, storageManager:Landroid/os/storage/StorageManager;
    if-nez v3, :cond_1

    move v1, v6

    .line 521
    :cond_0
    :goto_0
    return v1

    .line 504
    :cond_1
    const/4 v1, 0x0

    .line 505
    .local v1, isMtp:Z
    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 506
    .local v5, storageVolumes:[Landroid/os/storage/StorageVolume;
    if-nez v5, :cond_2

    move v1, v6

    .line 507
    goto :goto_0

    .line 510
    :cond_2
    array-length v2, v5

    .line 511
    .local v2, length:I
    sput v2, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mStorageVolumeNum:I

    .line 513
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_0

    .line 514
    aget-object v4, v5, v0

    .line 515
    .local v4, storageVolume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getMtpReserveSpace()I

    move-result v6

    if-lez v6, :cond_3

    .line 516
    const/4 v1, 0x1

    .line 517
    goto :goto_0

    .line 513
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isMultiUser()Z
    .locals 3

    .prologue
    .line 571
    const-string v0, "UsbSettingsControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AUTORUN] isMultiUser() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOldVersionModel()Z
    .locals 3

    .prologue
    .line 390
    const/4 v0, 0x0

    .line 391
    .local v0, oldVersion:Z
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "x3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "m4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "m4ds"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "p2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "star"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "bssq"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "vu10"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "cx2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 395
    :cond_0
    const/4 v0, 0x1

    .line 398
    :cond_1
    return v0
.end method

.method public static isPCsoftwareTRFModel()Z
    .locals 3

    .prologue
    .line 402
    const/4 v0, 0x0

    .line 403
    .local v0, pcsoftwareuse:Z
    const-string v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 405
    .local v1, productname:Ljava/lang/String;
    const-string v2, "fx3_wcdma_trf_us"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "fx3_cdma_trf_us"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 406
    :cond_0
    const/4 v0, 0x1

    .line 409
    :cond_1
    return v0
.end method

.method public static readToFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "path"

    .prologue
    .line 148
    const-string v3, ""

    .line 150
    .local v3, value:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, file:Ljava/io/File;
    const/4 v1, 0x0

    .line 153
    .local v1, in:Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 155
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v5, 0x80

    invoke-direct {v2, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 156
    .end local v1           #in:Ljava/io/BufferedReader;
    .local v2, in:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v3

    .line 159
    const-string v4, "UsbSettingsControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[AUTORUN] readToFile() : Success read path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    if-eqz v2, :cond_0

    .line 162
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v1, v2

    .line 170
    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    return-object v3

    .line 163
    .end local v1           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    :catch_0
    move-exception v4

    move-object v1, v2

    .line 165
    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    goto :goto_0

    .line 157
    :catch_1
    move-exception v4

    .line 159
    :goto_1
    const-string v4, "UsbSettingsControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[AUTORUN] readToFile() : Success read path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    if-eqz v1, :cond_1

    .line 162
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 163
    :catch_2
    move-exception v4

    goto :goto_0

    .line 159
    :catchall_0
    move-exception v4

    :goto_2
    const-string v5, "UsbSettingsControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[AUTORUN] readToFile() : Success read path = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    if-eqz v1, :cond_2

    .line 162
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 164
    :cond_2
    :goto_3
    throw v4

    .line 167
    :cond_3
    const-string v4, "UsbSettingsControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[AUTORUN] readToFile() : Fail read path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", value ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 163
    :catch_3
    move-exception v5

    goto :goto_3

    .line 159
    .end local v1           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    goto :goto_2

    .line 157
    .end local v1           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    :catch_4
    move-exception v4

    move-object v1, v2

    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method public static setAutorunDialogDoNotShow(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "status"

    .prologue
    .line 551
    if-nez p0, :cond_0

    .line 558
    :goto_0
    return-void

    .line 554
    :cond_0
    const-string v1, "UsbSettingsControl"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 555
    .local v0, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "shared_dialog_do_not_show"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 557
    const-string v1, "UsbSettingsControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AUTORUN] setAutorunDialogDoNotShow() : status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setMassStorage(Landroid/content/Context;Z)Z
    .locals 3
    .parameter "context"
    .parameter "set"

    .prologue
    .line 309
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "storage"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 310
    .local v0, storageManager:Landroid/os/storage/StorageManager;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 324
    :goto_0
    return v1

    .line 312
    :cond_0
    if-eqz p1, :cond_2

    .line 313
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 314
    const-string v1, "UsbSettingsControl"

    const-string v2, "[AUTORUN] enableUsbMassStorage"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->enableUsbMassStorage()V

    .line 324
    :cond_1
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 318
    :cond_2
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 319
    const-string v1, "UsbSettingsControl"

    const-string v2, "[AUTORUN] disableUsbMassStorage"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->disableUsbMassStorage()V

    goto :goto_1
.end method

.method public static setTetherStatus(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "status"

    .prologue
    .line 99
    if-nez p0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 102
    :cond_0
    const-string v1, "UsbSettingsControl"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 103
    .local v0, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "shared_tether_status"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 105
    const-string v1, "UsbSettingsControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AUTORUN] setTetherStatus() : status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setUsbConnected(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "connected"

    .prologue
    .line 469
    if-nez p0, :cond_0

    .line 476
    :goto_0
    return-void

    .line 472
    :cond_0
    const-string v1, "UsbSettingsControl"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 473
    .local v0, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "shared_usb_connected"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 475
    const-string v1, "UsbSettingsControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AUTORUN] setUsbConnected() : connected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static startAutorunTimer(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 200
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    :goto_0
    return-void

    .line 202
    :cond_0
    sget-object v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mAutorunTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 203
    sget-object v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mAutorunTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 204
    const/4 v0, 0x0

    sput-object v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mAutorunTimer:Ljava/util/Timer;

    .line 207
    :cond_1
    sput-object p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mTimerContext:Landroid/content/Context;

    .line 209
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mAutorunTimer:Ljava/util/Timer;

    .line 210
    sget-object v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mAutorunTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl$autorunTimerTask;

    invoke-direct {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl$autorunTimerTask;-><init>()V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 211
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mAutorunChanging:Z

    .line 212
    const-string v0, "UsbSettingsControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AUTORUN] startAutorunTimer() : mAutorunChanging="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mAutorunChanging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static supportAutorunMode(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 352
    if-nez p0, :cond_1

    .line 368
    :cond_0
    :goto_0
    return v2

    .line 356
    :cond_1
    const-string v4, "use_open_autorun"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 357
    .local v1, use:Ljava/lang/String;
    const-string v4, "false"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 360
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "autorun_switch"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_2

    move v0, v3

    .line 362
    .local v0, autorunEnable:Z
    :goto_1
    if-eqz v0, :cond_0

    .line 365
    new-instance v4, Ljava/io/File;

    const-string v5, "/system/usbautorun.iso"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 366
    goto :goto_0

    .end local v0           #autorunEnable:Z
    :cond_2
    move v0, v2

    .line 360
    goto :goto_1
.end method

.method public static writeToFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "path"
    .parameter "value"

    .prologue
    .line 119
    const/4 v4, 0x0

    .line 121
    .local v4, writeSuccess:Z
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v1, file:Ljava/io/File;
    const/4 v2, 0x0

    .line 124
    .local v2, out:Ljava/io/BufferedWriter;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 126
    :try_start_0
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/16 v6, 0x80

    invoke-direct {v3, v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 127
    .end local v2           #out:Ljava/io/BufferedWriter;
    .local v3, out:Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 128
    const/4 v4, 0x1

    .line 132
    const-string v5, "UsbSettingsControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[AUTORUN] writeToFile() : Success write path = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    if-eqz v3, :cond_0

    .line 135
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v2, v3

    .line 144
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :cond_1
    :goto_0
    return v4

    .line 136
    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :catch_0
    move-exception v0

    .line 137
    .local v0, e:Ljava/io/IOException;
    const/4 v4, 0x0

    move-object v2, v3

    .line 139
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    goto :goto_0

    .line 129
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 130
    .restart local v0       #e:Ljava/io/IOException;
    :goto_1
    const/4 v4, 0x0

    .line 132
    const-string v5, "UsbSettingsControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[AUTORUN] writeToFile() : Success write path = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    if-eqz v2, :cond_1

    .line 135
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 136
    :catch_2
    move-exception v0

    .line 137
    const/4 v4, 0x0

    .line 139
    goto :goto_0

    .line 132
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_2
    const-string v6, "UsbSettingsControl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[AUTORUN] writeToFile() : Success write path = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    if-eqz v2, :cond_2

    .line 135
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 138
    :cond_2
    :goto_3
    throw v5

    .line 136
    :catch_3
    move-exception v0

    .line 137
    .restart local v0       #e:Ljava/io/IOException;
    const/4 v4, 0x0

    goto :goto_3

    .line 141
    .end local v0           #e:Ljava/io/IOException;
    :cond_3
    const-string v5, "UsbSettingsControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[AUTORUN] writeToFile() : Fail write path = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 132
    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    goto :goto_2

    .line 129
    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    goto :goto_1
.end method
