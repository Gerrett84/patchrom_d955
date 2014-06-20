.class public Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsbSettingsReceiver.java"


# static fields
.field private static mConnectivityManager:Landroid/net/ConnectivityManager;

.field private static mContext:Landroid/content/Context;

.field private static mDefaultFunction:Ljava/lang/String;

.field private static mIntent:Landroid/content/Intent;

.field private static mRejectClassList:[Ljava/lang/String;

.field private static mRejectPackageList:[Ljava/lang/String;

.field private static mUsbManager:Landroid/hardware/usb/UsbManager;

.field private static sprintusbtethering:Z


# instance fields
.field private final mUEventObserver:Landroid/os/UEventObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 34
    sput-object v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    .line 37
    sput-boolean v2, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->sprintusbtethering:Z

    .line 39
    sput-object v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 40
    sput-object v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 41
    const-string v0, ""

    sput-object v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mDefaultFunction:Ljava/lang/String;

    .line 43
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.google.android.setupwizard"

    aput-object v1, v0, v2

    const-string v1, "com.android.LGSetupWizard"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mRejectPackageList:[Ljava/lang/String;

    .line 46
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.google.android.gsf.login.LoginActivityTask"

    aput-object v1, v0, v2

    const-string v1, "com.android.phone.InCallScreen"

    aput-object v1, v0, v3

    const-string v1, "com.lge.vt.ui.VgaVideoCallActivity"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "com.lge.vt.ui.QcifVideoCallActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.lge.shutdownmonitor.ShutdownMonitorActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.android.phone.InVideoCallScreen"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.lge.vt.ui.GroupVideoCallActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.lge.vt.ui.IncomingCallActivity"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.lge.vt.ui.OutgoingCallActivity"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.android.phone.DualSimSetupWizard"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.android.phone.EmergencyCallbackModeActivity"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.lge.ota.SKTUsimDownloadActivity"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.lge.ota.LGTNoUSIMActivity"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.lge.ota.LGTNoUSIMActivityForLockScreen"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.lge.ota.LGTUsimDownloadActivity"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.lge.ota.KTRegiActivity"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "com.lge.ota.KTNoUSIMActivityForLockScreen"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.lge.ota.KTResultActivity"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mRejectClassList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 470
    new-instance v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver$1;-><init>(Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;)V

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mUEventObserver:Landroid/os/UEventObserver;

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getCurrentFunction()Ljava/lang/String;
    .locals 4

    .prologue
    .line 435
    const-string v2, "sys.usb.config"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 436
    .local v1, functions:Ljava/lang/String;
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 437
    .local v0, commaIndex:I
    if-lez v0, :cond_0

    .line 438
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 440
    .end local v1           #functions:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private isLaunchEnable()Z
    .locals 34

    .prologue
    .line 497
    const/16 v22, 0x1

    .line 504
    .local v22, launch:Z
    const-string v8, "ro.factorytest"

    .line 505
    .local v8, G1_FACTORY_PROPERTY:Ljava/lang/String;
    const-string v7, "ro.bootmode"

    .line 506
    .local v7, G1_BOOTMODE_PROPERTY:Ljava/lang/String;
    const-string v3, "sys.allautotest.run"

    .line 508
    .local v3, AAT_PROPERTY:Ljava/lang/String;
    const-string v4, "/sys/class/android_usb/android0/idProduct"

    .line 509
    .local v4, FACTORY_PATH:Ljava/lang/String;
    const-string v5, "/sys/class/android_usb/android0/factory_cable"

    .line 510
    .local v5, FACTORY_PATH2:Ljava/lang/String;
    const-string v6, "/sys/module/lge_emmc_direct_access/parameters/is_factory"

    .line 512
    .local v6, FACTORY_PATH3:Ljava/lang/String;
    const-string v10, "gsm.lge.ota_ignoreKey"

    .line 514
    .local v10, OTA_PROPERTY:Ljava/lang/String;
    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isDisconnectBugModel()Z

    move-result v31

    if-eqz v31, :cond_0

    .line 515
    sget-boolean v31, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_0

    .line 516
    const/16 v31, 0x0

    sput-boolean v31, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    .line 517
    const/16 v22, 0x0

    .line 521
    :cond_0
    const-string v31, "ro.factorytest"

    invoke-static/range {v31 .. v31}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 522
    .local v18, factoryTestStr:Ljava/lang/String;
    const-string v31, "ro.bootmode"

    invoke-static/range {v31 .. v31}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 523
    .local v15, bootmodeTestStr:Ljava/lang/String;
    if-eqz v18, :cond_1

    const-string v31, "2"

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_2

    :cond_1
    if-eqz v15, :cond_3

    const-string v31, "pifboot"

    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_3

    .line 525
    :cond_2
    const/16 v22, 0x0

    .line 528
    :cond_3
    const-string v31, "sys.allautotest.run"

    invoke-static/range {v31 .. v31}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 529
    .local v13, aatTestStr:Ljava/lang/String;
    if-eqz v13, :cond_4

    const-string v31, "true"

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_4

    .line 530
    const/16 v22, 0x0

    .line 533
    :cond_4
    const-string v31, "gsm.lge.ota_ignoreKey"

    invoke-static/range {v31 .. v31}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 534
    .local v23, otaRunning:Ljava/lang/String;
    if-eqz v23, :cond_5

    const-string v31, "true"

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_5

    .line 535
    const/16 v22, 0x0

    .line 538
    :cond_5
    const/16 v19, 0x0

    .line 539
    .local v19, in:Ljava/io/BufferedReader;
    const/16 v21, 0x0

    .line 541
    .local v21, is_factory:I
    new-instance v31, Ljava/io/File;

    const-string v32, "/sys/class/android_usb/android0/idProduct"

    invoke-direct/range {v31 .. v32}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->exists()Z

    move-result v31

    if-eqz v31, :cond_9

    .line 543
    :try_start_0
    new-instance v20, Ljava/io/BufferedReader;

    new-instance v31, Ljava/io/FileReader;

    const-string v32, "/sys/class/android_usb/android0/idProduct"

    invoke-direct/range {v31 .. v32}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 544
    .end local v19           #in:Ljava/io/BufferedReader;
    .local v20, in:Ljava/io/BufferedReader;
    if-eqz v20, :cond_20

    :try_start_1
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .line 545
    .local v12, _is_factory_pid:Ljava/lang/String;
    :goto_0
    if-eqz v20, :cond_6

    .line 546
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->close()V

    .line 549
    :cond_6
    if-eqz v12, :cond_7

    const-string v31, "6000"

    move-object/from16 v0, v31

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_7

    .line 550
    const-string v31, "UsbSettingsReceiver"

    const-string v32, "is_factory_pid : 6000"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_11

    .line 551
    const/16 v21, 0x1

    .line 559
    :cond_7
    if-eqz v20, :cond_8

    .line 560
    :try_start_2
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_8
    move-object/from16 v19, v20

    .line 565
    .end local v12           #_is_factory_pid:Ljava/lang/String;
    .end local v20           #in:Ljava/io/BufferedReader;
    .restart local v19       #in:Ljava/io/BufferedReader;
    :cond_9
    :goto_1
    new-instance v31, Ljava/io/File;

    const-string v32, "/sys/class/android_usb/android0/factory_cable"

    invoke-direct/range {v31 .. v32}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->exists()Z

    move-result v31

    if-eqz v31, :cond_d

    .line 567
    :try_start_3
    new-instance v20, Ljava/io/BufferedReader;

    new-instance v31, Ljava/io/FileReader;

    const-string v32, "/sys/class/android_usb/android0/factory_cable"

    invoke-direct/range {v31 .. v32}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 568
    .end local v19           #in:Ljava/io/BufferedReader;
    .restart local v20       #in:Ljava/io/BufferedReader;
    if-eqz v20, :cond_22

    :try_start_4
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .line 569
    .restart local v12       #_is_factory_pid:Ljava/lang/String;
    :goto_2
    if-eqz v20, :cond_a

    .line 570
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->close()V

    .line 573
    :cond_a
    if-eqz v12, :cond_b

    const-string v31, "6000"

    move-object/from16 v0, v31

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_b

    .line 574
    const-string v31, "UsbSettingsReceiver"

    const-string v32, "is_factory_pid : 6000"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_10

    .line 575
    const/16 v21, 0x1

    .line 583
    :cond_b
    if-eqz v20, :cond_c

    .line 584
    :try_start_5
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_c
    move-object/from16 v19, v20

    .line 589
    .end local v12           #_is_factory_pid:Ljava/lang/String;
    .end local v20           #in:Ljava/io/BufferedReader;
    .restart local v19       #in:Ljava/io/BufferedReader;
    :cond_d
    :goto_3
    new-instance v31, Ljava/io/File;

    const-string v32, "/sys/module/lge_emmc_direct_access/parameters/is_factory"

    invoke-direct/range {v31 .. v32}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->exists()Z

    move-result v31

    if-eqz v31, :cond_11

    .line 591
    :try_start_6
    new-instance v20, Ljava/io/BufferedReader;

    new-instance v31, Ljava/io/FileReader;

    const-string v32, "/sys/module/lge_emmc_direct_access/parameters/is_factory"

    invoke-direct/range {v31 .. v32}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 592
    .end local v19           #in:Ljava/io/BufferedReader;
    .restart local v20       #in:Ljava/io/BufferedReader;
    if-eqz v20, :cond_24

    :try_start_7
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    .line 593
    .local v11, _is_factory:Ljava/lang/String;
    :goto_4
    if-eqz v20, :cond_e

    .line 594
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->close()V

    .line 597
    :cond_e
    if-eqz v11, :cond_f

    const-string v31, "yes"

    move-object/from16 v0, v31

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_f

    .line 598
    const-string v31, "UsbSettingsReceiver"

    const-string v32, "is_factory : yes"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_f

    .line 599
    const/16 v21, 0x1

    .line 607
    :cond_f
    if-eqz v20, :cond_10

    .line 608
    :try_start_8
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    :cond_10
    move-object/from16 v19, v20

    .line 614
    .end local v11           #_is_factory:Ljava/lang/String;
    .end local v20           #in:Ljava/io/BufferedReader;
    .restart local v19       #in:Ljava/io/BufferedReader;
    :cond_11
    :goto_5
    const/16 v31, 0x1

    move/from16 v0, v21

    move/from16 v1, v31

    if-ne v0, v1, :cond_12

    .line 615
    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->cancelAutorunTimer()V

    .line 616
    const/16 v22, 0x0

    .line 619
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->getCurrentFunction()Ljava/lang/String;

    move-result-object v31

    const-string v32, "accessory"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_13

    .line 620
    const/16 v22, 0x0

    .line 623
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->getCurrentFunction()Ljava/lang/String;

    move-result-object v31

    const-string v32, "audio_source"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_14

    .line 624
    const/16 v22, 0x0

    .line 629
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->getCurrentFunction()Ljava/lang/String;

    move-result-object v31

    const-string v32, "ncm,adb"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_15

    invoke-direct/range {p0 .. p0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->getCurrentFunction()Ljava/lang/String;

    move-result-object v31

    const-string v32, "ncm"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_16

    .line 630
    :cond_15
    const/16 v22, 0x0

    .line 634
    :cond_16
    sget-object v31, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    const-string v32, "activity"

    invoke-virtual/range {v31 .. v32}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/ActivityManager;

    .line 635
    .local v14, am:Landroid/app/ActivityManager;
    const/16 v31, 0x1

    move/from16 v0, v31

    invoke-virtual {v14, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v9

    .line 636
    .local v9, Info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v9, :cond_26

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v31

    if-lez v31, :cond_26

    .line 637
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v26, v0

    .line 638
    .local v26, topActivity:Landroid/content/ComponentName;
    invoke-virtual/range {v26 .. v26}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v28

    .line 639
    .local v28, topPackageName:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v27

    .line 640
    .local v27, topClassName:Ljava/lang/String;
    const-string v31, "UsbSettingsReceiver"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "[AUTORUN] : topPackageName="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    const-string v31, "UsbSettingsReceiver"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "[AUTORUN] : topClassName="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->isRejectPopup(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_17

    .line 644
    const/16 v22, 0x0

    .line 650
    .end local v26           #topActivity:Landroid/content/ComponentName;
    .end local v27           #topClassName:Ljava/lang/String;
    .end local v28           #topPackageName:Ljava/lang/String;
    :cond_17
    :goto_6
    const-string v31, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_27

    .line 651
    sget-object v31, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    .line 652
    .local v24, pm:Landroid/content/pm/PackageManager;
    const-string v25, "com.android.LGSetupWizard"

    .line 654
    .local v25, setupWizard:Ljava/lang/String;
    :try_start_9
    invoke-virtual/range {v24 .. v25}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v31

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_18

    .line 655
    const/16 v22, 0x0

    .line 656
    const-string v31, "UsbSettingsReceiver"

    const-string v32, "[AUTORUN] VZW LGSetupWizard running"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 690
    :cond_18
    :goto_7
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v31

    const-string v32, "DCM"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_19

    sget-object v31, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v32, "dtf"

    invoke-virtual/range {v31 .. v32}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_19

    .line 691
    const/16 v22, 0x0

    .line 694
    :cond_19
    sget-object v31, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v31

    const-string v32, "qmicm"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1a

    .line 695
    const/16 v22, 0x0

    .line 698
    :cond_1a
    const-string v31, "sys.usb.config"

    const-string v32, ""

    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 699
    .local v16, checkQmicm:Ljava/lang/String;
    const-string v31, "qmicm"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_1b

    .line 700
    const/16 v22, 0x0

    .line 703
    :cond_1b
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v31

    const-string v32, "SPR"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_1d

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v31

    const-string v32, "BM"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_1d

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v31

    const-string v32, "US"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1c

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v31

    const-string v32, "TMO"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_1d

    :cond_1c
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v31

    const-string v32, "DCM"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1e

    .line 707
    :cond_1d
    sget-boolean v31, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mTetherChanged:Z

    if-eqz v31, :cond_1e

    .line 708
    const/16 v22, 0x0

    .line 714
    :cond_1e
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v31

    const-string v32, "SPR"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1f

    .line 715
    const-string v31, "persist.service.usb_ther"

    const-string v32, ""

    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 716
    .local v30, userdebugmode:Ljava/lang/String;
    const-string v31, "true"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_1f

    .line 717
    const-string v31, "persist.sys.usb.state"

    const-string v32, ""

    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 718
    .local v29, usbtetheron:Ljava/lang/String;
    const-string v31, "on"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_1f

    .line 719
    const/16 v22, 0x0

    .line 724
    .end local v29           #usbtetheron:Ljava/lang/String;
    .end local v30           #userdebugmode:Ljava/lang/String;
    :cond_1f
    return v22

    .line 544
    .end local v9           #Info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v14           #am:Landroid/app/ActivityManager;
    .end local v16           #checkQmicm:Ljava/lang/String;
    .end local v19           #in:Ljava/io/BufferedReader;
    .end local v24           #pm:Landroid/content/pm/PackageManager;
    .end local v25           #setupWizard:Ljava/lang/String;
    .restart local v20       #in:Ljava/io/BufferedReader;
    :cond_20
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 562
    .restart local v12       #_is_factory_pid:Ljava/lang/String;
    :catch_0
    move-exception v31

    move-object/from16 v19, v20

    .line 563
    .end local v20           #in:Ljava/io/BufferedReader;
    .restart local v19       #in:Ljava/io/BufferedReader;
    goto/16 :goto_1

    .line 554
    .end local v12           #_is_factory_pid:Ljava/lang/String;
    :catch_1
    move-exception v17

    .line 555
    .local v17, e:Ljava/io/IOException;
    :goto_8
    :try_start_a
    const-string v31, "UsbSettingsReceiver"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "unable to FACTORY_PATH : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 559
    if-eqz v19, :cond_9

    .line 560
    :try_start_b
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_1

    .line 562
    :catch_2
    move-exception v31

    goto/16 :goto_1

    .line 558
    .end local v17           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v31

    .line 559
    :goto_9
    if-eqz v19, :cond_21

    .line 560
    :try_start_c
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    .line 562
    :cond_21
    :goto_a
    throw v31

    .line 568
    .end local v19           #in:Ljava/io/BufferedReader;
    .restart local v20       #in:Ljava/io/BufferedReader;
    :cond_22
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 586
    .restart local v12       #_is_factory_pid:Ljava/lang/String;
    :catch_3
    move-exception v31

    move-object/from16 v19, v20

    .line 587
    .end local v20           #in:Ljava/io/BufferedReader;
    .restart local v19       #in:Ljava/io/BufferedReader;
    goto/16 :goto_3

    .line 578
    .end local v12           #_is_factory_pid:Ljava/lang/String;
    :catch_4
    move-exception v17

    .line 579
    .restart local v17       #e:Ljava/io/IOException;
    :goto_b
    :try_start_d
    const-string v31, "UsbSettingsReceiver"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "unable to FACTORY_PATH : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 583
    if-eqz v19, :cond_d

    .line 584
    :try_start_e
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    goto/16 :goto_3

    .line 586
    :catch_5
    move-exception v31

    goto/16 :goto_3

    .line 582
    .end local v17           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v31

    .line 583
    :goto_c
    if-eqz v19, :cond_23

    .line 584
    :try_start_f
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_d

    .line 586
    :cond_23
    :goto_d
    throw v31

    .line 592
    .end local v19           #in:Ljava/io/BufferedReader;
    .restart local v20       #in:Ljava/io/BufferedReader;
    :cond_24
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 610
    .restart local v11       #_is_factory:Ljava/lang/String;
    :catch_6
    move-exception v31

    move-object/from16 v19, v20

    .line 611
    .end local v20           #in:Ljava/io/BufferedReader;
    .restart local v19       #in:Ljava/io/BufferedReader;
    goto/16 :goto_5

    .line 602
    .end local v11           #_is_factory:Ljava/lang/String;
    :catch_7
    move-exception v17

    .line 603
    .restart local v17       #e:Ljava/io/IOException;
    :goto_e
    :try_start_10
    const-string v31, "UsbSettingsReceiver"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "unable to FACTORY_PATH : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 607
    if-eqz v19, :cond_11

    .line 608
    :try_start_11
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    goto/16 :goto_5

    .line 610
    :catch_8
    move-exception v31

    goto/16 :goto_5

    .line 606
    .end local v17           #e:Ljava/io/IOException;
    :catchall_2
    move-exception v31

    .line 607
    :goto_f
    if-eqz v19, :cond_25

    .line 608
    :try_start_12
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_e

    .line 610
    :cond_25
    :goto_10
    throw v31

    .line 647
    .restart local v9       #Info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v14       #am:Landroid/app/ActivityManager;
    :cond_26
    const-string v31, "UsbSettingsReceiver"

    const-string v32, "[AUTORUN] : do not check a top activity because do not exist activity list"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 658
    .restart local v24       #pm:Landroid/content/pm/PackageManager;
    .restart local v25       #setupWizard:Ljava/lang/String;
    :catch_9
    move-exception v17

    .line 659
    .local v17, e:Ljava/lang/Exception;
    const-string v31, "UsbSettingsReceiver"

    const-string v32, "[AUTORUN] Not exist com.android.LGSetupWizard"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 661
    .end local v17           #e:Ljava/lang/Exception;
    .end local v24           #pm:Landroid/content/pm/PackageManager;
    .end local v25           #setupWizard:Ljava/lang/String;
    :cond_27
    const-string v31, "SPR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_28

    .line 662
    sget-object v31, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    .line 663
    .restart local v24       #pm:Landroid/content/pm/PackageManager;
    const-string v25, "com.android.LGSetupWizard.flow.spr.SetupAccessibilitySprint"

    .line 665
    .restart local v25       #setupWizard:Ljava/lang/String;
    :try_start_13
    invoke-virtual/range {v24 .. v25}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v31

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_18

    .line 666
    const/16 v22, 0x0

    .line 667
    const-string v31, "UsbSettingsReceiver"

    const-string v32, "[AUTORUN] SPR LGSetupWizard running"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_a

    goto/16 :goto_7

    .line 669
    :catch_a
    move-exception v17

    .line 670
    .restart local v17       #e:Ljava/lang/Exception;
    const-string v31, "UsbSettingsReceiver"

    const-string v32, "[AUTORUN] Not exist com.android.LGSetupWizard"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 673
    .end local v17           #e:Ljava/lang/Exception;
    .end local v24           #pm:Landroid/content/pm/PackageManager;
    .end local v25           #setupWizard:Ljava/lang/String;
    :cond_28
    sget-object v31, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    .line 674
    .restart local v24       #pm:Landroid/content/pm/PackageManager;
    const-string v25, "com.android.LGSetupWizard.SetupFlowController"

    .line 676
    .restart local v25       #setupWizard:Ljava/lang/String;
    :try_start_14
    invoke-virtual/range {v24 .. v25}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v31

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_18

    .line 677
    const/16 v22, 0x0

    .line 678
    const-string v31, "UsbSettingsReceiver"

    const-string v32, "[AUTORUN] LGSetupWizard running"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_b

    goto/16 :goto_7

    .line 680
    :catch_b
    move-exception v17

    .line 681
    .restart local v17       #e:Ljava/lang/Exception;
    const-string v31, "UsbSettingsReceiver"

    const-string v32, "[AUTORUN] Not exist com.android.LGSetupWizard"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 562
    .end local v9           #Info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v14           #am:Landroid/app/ActivityManager;
    .end local v17           #e:Ljava/lang/Exception;
    .end local v24           #pm:Landroid/content/pm/PackageManager;
    .end local v25           #setupWizard:Ljava/lang/String;
    :catch_c
    move-exception v32

    goto/16 :goto_a

    .line 586
    :catch_d
    move-exception v32

    goto/16 :goto_d

    .line 610
    :catch_e
    move-exception v32

    goto :goto_10

    .line 606
    .end local v19           #in:Ljava/io/BufferedReader;
    .restart local v20       #in:Ljava/io/BufferedReader;
    :catchall_3
    move-exception v31

    move-object/from16 v19, v20

    .end local v20           #in:Ljava/io/BufferedReader;
    .restart local v19       #in:Ljava/io/BufferedReader;
    goto/16 :goto_f

    .line 602
    .end local v19           #in:Ljava/io/BufferedReader;
    .restart local v20       #in:Ljava/io/BufferedReader;
    :catch_f
    move-exception v17

    move-object/from16 v19, v20

    .end local v20           #in:Ljava/io/BufferedReader;
    .restart local v19       #in:Ljava/io/BufferedReader;
    goto/16 :goto_e

    .line 582
    .end local v19           #in:Ljava/io/BufferedReader;
    .restart local v20       #in:Ljava/io/BufferedReader;
    :catchall_4
    move-exception v31

    move-object/from16 v19, v20

    .end local v20           #in:Ljava/io/BufferedReader;
    .restart local v19       #in:Ljava/io/BufferedReader;
    goto/16 :goto_c

    .line 578
    .end local v19           #in:Ljava/io/BufferedReader;
    .restart local v20       #in:Ljava/io/BufferedReader;
    :catch_10
    move-exception v17

    move-object/from16 v19, v20

    .end local v20           #in:Ljava/io/BufferedReader;
    .restart local v19       #in:Ljava/io/BufferedReader;
    goto/16 :goto_b

    .line 558
    .end local v19           #in:Ljava/io/BufferedReader;
    .restart local v20       #in:Ljava/io/BufferedReader;
    :catchall_5
    move-exception v31

    move-object/from16 v19, v20

    .end local v20           #in:Ljava/io/BufferedReader;
    .restart local v19       #in:Ljava/io/BufferedReader;
    goto/16 :goto_9

    .line 554
    .end local v19           #in:Ljava/io/BufferedReader;
    .restart local v20       #in:Ljava/io/BufferedReader;
    :catch_11
    move-exception v17

    move-object/from16 v19, v20

    .end local v20           #in:Ljava/io/BufferedReader;
    .restart local v19       #in:Ljava/io/BufferedReader;
    goto/16 :goto_8
.end method

.method private isRejectPopup(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 444
    const/4 v2, 0x0

    .line 445
    .local v2, isPackageName:Z
    const/4 v1, 0x0

    .line 447
    .local v1, isClassName:Z
    sget-object v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mRejectPackageList:[Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 448
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mRejectPackageList:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 449
    sget-object v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mRejectPackageList:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 450
    const/4 v2, 0x1

    .line 455
    .end local v0           #i:I
    :cond_0
    sget-object v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mRejectClassList:[Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 456
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    sget-object v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mRejectClassList:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 457
    sget-object v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mRejectClassList:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 458
    const/4 v1, 0x1

    .line 464
    .end local v0           #i:I
    :cond_1
    if-nez v2, :cond_2

    if-eqz v1, :cond_5

    .line 465
    :cond_2
    const/4 v3, 0x1

    .line 467
    :goto_2
    return v3

    .line 448
    .restart local v0       #i:I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 456
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 467
    .end local v0           #i:I
    :cond_5
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private setUsbConnect()V
    .locals 3

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->isLaunchEnable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    const-string v0, "UsbSettingsReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AUTORUN] setUsbConnect() : mUsbSettingsRun = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mUsbSettingsRun:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    sget-boolean v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mUsbSettingsRun:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v1, "dtf"

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->startUsbSettings()V

    goto :goto_0
.end method

.method private setUsbDisconnect()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 335
    sget-object v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "device_provisioned"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 337
    .local v0, deviceProvisioned:I
    const-string v3, "UsbSettingsReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[AUTORUN] setUsbDisconnect() : deviceProvisioned="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    if-nez v0, :cond_1

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    const-string v3, "dev.bootcomplete"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    .line 347
    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isDisconnectBugModel()Z

    move-result v3

    if-nez v3, :cond_3

    .line 348
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VZW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isDirectAutorunModel()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 350
    :cond_2
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mDirectAutorun:Z

    .line 354
    :goto_1
    sput-boolean v6, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    .line 355
    sput-boolean v6, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityFinish:Z

    .line 358
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.lge.intent.action.tether_state_change"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 359
    .local v1, i1:Landroid/content/Intent;
    sget-object v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 360
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.lge.intent.action.activity_finish"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 361
    .local v2, i2:Landroid/content/Intent;
    sget-object v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 363
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v4, "US"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TMO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DCM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 365
    :cond_5
    sget-object v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->getTetherStatus(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isDisconnectBugModel()Z

    move-result v3

    if-nez v3, :cond_6

    .line 367
    sget-object v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3, v6}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->connectUsbTether(Landroid/content/Context;Z)I

    .line 371
    :cond_6
    sget-object v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mDefaultFunction:Ljava/lang/String;

    const-string v4, "mass_storage"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 372
    sget-object v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3, v6}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->setMassStorage(Landroid/content/Context;Z)Z

    goto/16 :goto_0

    .line 352
    .end local v1           #i1:Landroid/content/Intent;
    .end local v2           #i2:Landroid/content/Intent;
    :cond_7
    sput-boolean v6, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mDirectAutorun:Z

    goto :goto_1

    .line 373
    .restart local v1       #i1:Landroid/content/Intent;
    .restart local v2       #i2:Landroid/content/Intent;
    :cond_8
    sget-object v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mDefaultFunction:Ljava/lang/String;

    const-string v4, "mtp_only"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isMtpAutorunModel()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 375
    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isDisconnectBugModel()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VZW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isDirectAutorunModel()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 378
    sget-object v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    const-string v4, "1"

    invoke-static {v3, v4, v6}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->changeAutorunMode(Landroid/content/Context;Ljava/lang/String;Z)Z

    goto/16 :goto_0

    .line 380
    :cond_9
    sget-object v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mDefaultFunction:Ljava/lang/String;

    const-string v4, "ecm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 381
    sget-object v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->getTetherStatus(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 382
    sget-object v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3, v6}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->connectUsbTether(Landroid/content/Context;Z)I

    .line 384
    :cond_a
    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isDisconnectBugModel()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VZW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isDirectAutorunModel()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 387
    sget-object v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    const-string v4, "5"

    invoke-static {v3, v4, v6}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->changeAutorunMode(Landroid/content/Context;Ljava/lang/String;Z)Z

    goto/16 :goto_0

    .line 389
    :cond_b
    sget-object v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mDefaultFunction:Ljava/lang/String;

    const-string v4, "pc_suite"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 390
    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isDisconnectBugModel()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VZW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isDirectAutorunModel()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 393
    sget-object v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    const-string v4, "0"

    invoke-static {v3, v4, v6}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->changeAutorunMode(Landroid/content/Context;Ljava/lang/String;Z)Z

    goto/16 :goto_0
.end method

.method private sprintUsbTetheringON()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 66
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SPR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    sget-object v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 68
    const-string v3, "persist.service.usb_ther"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, userdebugmode:Ljava/lang/String;
    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    const-string v3, "UsbSettingsReceiver"

    const-string v4, "[AUTORUN] onReceive() : SystemProperties"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string v3, "persist.sys.usb.state"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, usbtetheron:Ljava/lang/String;
    const-string v3, "on"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    sget-object v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 75
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 76
    const-string v3, "UsbSettingsReceiver"

    const-string v4, "[AUTORUN] onReceive() : ConnectivityManager"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v3

    if-eqz v3, :cond_1

    .line 78
    const-string v3, "UsbSettingsReceiver"

    const-string v4, "[AUTORUN] ============ USB Tethering ERROR !! ============"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #usbtetheron:Ljava/lang/String;
    .end local v2           #userdebugmode:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 81
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    .restart local v1       #usbtetheron:Ljava/lang/String;
    .restart local v2       #userdebugmode:Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3, v5}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->setTetherStatus(Landroid/content/Context;Z)V

    .line 82
    sput-boolean v5, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mTetherChanged:Z

    .line 84
    sput-boolean v5, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->sprintusbtethering:Z

    goto :goto_0
.end method

.method private startUmsSelection()V
    .locals 3

    .prologue
    .line 489
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 490
    .local v0, send:Landroid/content/Intent;
    const-string v1, "DirectUMS"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 491
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 492
    const-string v1, "com.android.lgesettings"

    const-string v2, "com.android.lgesettings.lge.UmsSelection"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    sget-object v1, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 494
    return-void
.end method

.method private startUsbSettings()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 399
    sget-object v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "device_provisioned"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 401
    .local v1, deviceProvisioned:I
    const-string v3, "UsbSettingsReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[AUTORUN] startUsbSettings() : deviceProvisioned="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    if-nez v1, :cond_1

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    const-string v3, "dev.bootcomplete"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    .line 411
    sget-object v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->getAskOnConnection(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 412
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 413
    .local v2, intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.lgesettings"

    const-string v4, "com.android.lgesettings.UsbSettings"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    .local v0, cmp:Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 415
    const v3, 0x50808000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 417
    const-string v3, "extra_usb_launcher"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 418
    sget-object v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 419
    sput-boolean v7, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mUsbSettingsRun:Z

    goto :goto_0

    .line 421
    .end local v0           #cmp:Landroid/content/ComponentName;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_2
    sget-object v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mDefaultFunction:Ljava/lang/String;

    const-string v4, "mass_storage"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 422
    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isMassSeperatedModel()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 423
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->startUmsSelection()V

    goto :goto_0

    .line 425
    :cond_3
    sget-object v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3, v7}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->setMassStorage(Landroid/content/Context;Z)Z

    goto :goto_0

    .line 427
    :cond_4
    sget-object v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mIntent:Landroid/content/Intent;

    const-string v4, "cdrom_storage"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mDefaultFunction:Ljava/lang/String;

    const-string v4, "ecm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 429
    sget-object v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->callTetherPopup(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 94
    sput-object p2, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mIntent:Landroid/content/Intent;

    .line 95
    sput-object p1, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    .line 96
    sget-object v18, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mIntent:Landroid/content/Intent;

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, action:Ljava/lang/String;
    const-string v18, "UsbSettingsReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[AUTORUN] onReceive() : action = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-string v18, "UsbSettingsReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[AUTORUN] sys.usb.config = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "sys.usb.config"

    const-string v21, ""

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v18, "UsbSettingsReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[AUTORUN] sys.usb.state = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "sys.usb.state"

    const-string v21, ""

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const-string v18, "UsbSettingsReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[AUTORUN] persist.sys.usb.config = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "persist.sys.usb.config"

    const-string v21, ""

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const-string v18, "UsbSettingsReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[AUTORUN] onReceive() : app userid = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", current userid = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v18

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    invoke-static {}, Lcom/android/lgesettings/Utils;->isMonkeyRunning()Z

    move-result v18

    if-nez v18, :cond_0

    .line 115
    sget-object v18, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mUsbManager:Landroid/hardware/usb/UsbManager;

    if-nez v18, :cond_2

    .line 116
    sget-object v18, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    sget-object v19, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    const-string v19, "usb"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/hardware/usb/UsbManager;

    sput-object v18, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 118
    :cond_2
    sget-object v18, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v18, :cond_3

    .line 119
    sget-object v18, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    sget-object v19, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    const-string v19, "connectivity"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/ConnectivityManager;

    sput-object v18, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 123
    :cond_3
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v18

    const-string v19, "VZW"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4

    sget-boolean v18, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mAlreadyObserving:Z

    if-nez v18, :cond_4

    .line 124
    const/16 v18, 0x1

    sput-boolean v18, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mAlreadyObserving:Z

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mUEventObserver:Landroid/os/UEventObserver;

    move-object/from16 v18, v0

    const-string v19, "DEVPATH=/devices/virtual/misc/usb_autorun"

    invoke-virtual/range {v18 .. v19}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 128
    :cond_4
    const-string v18, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 129
    sget-object v18, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->setTetherStatus(Landroid/content/Context;Z)V

    .line 130
    const/16 v18, 0x0

    sput-boolean v18, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mTetherChanged:Z

    .line 131
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v18

    const-string v19, "VZW"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_5

    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isDirectAutorunModel()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 133
    :cond_5
    const/16 v18, 0x1

    sput-boolean v18, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mDirectAutorun:Z

    .line 138
    :goto_1
    const-string v18, "UsbSettingsReceiver"

    const-string v19, "[AUTORUN] onReceive() : android.intent.action.BOOT_COMPLETED"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const-string v18, "UsbSettingsReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[AUTORUN] sys.usb.config = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "sys.usb.config"

    const-string v21, ""

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const-string v18, "UsbSettingsReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[AUTORUN] sys.usb.state = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "sys.usb.state"

    const-string v21, ""

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const-string v18, "UsbSettingsReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[AUTORUN] persist.sys.usb.config = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "persist.sys.usb.config"

    const-string v21, ""

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-direct/range {p0 .. p0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->sprintUsbTetheringON()V

    .line 145
    const/16 v18, 0x1

    sput-boolean v18, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->sprintusbtethering:Z

    goto/16 :goto_0

    .line 135
    :cond_6
    const/16 v18, 0x0

    sput-boolean v18, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mDirectAutorun:Z

    goto :goto_1

    .line 147
    :cond_7
    const-string v18, "android.hardware.usb.action.USB_STATE"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 148
    sget-object v18, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v18

    sput-object v18, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mDefaultFunction:Ljava/lang/String;

    .line 150
    const-string v18, "connected"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    .line 151
    .local v14, usbConnected:Z
    const-string v18, "configured"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    .line 153
    .local v13, usbConfigured:Z
    const-string v18, "UsbSettingsReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[AUTORUN] onReceive() : getDefaultFunction = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mDefaultFunction:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const-string v18, "UsbSettingsReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[AUTORUN] onReceive() : USB_FUNCTION_CDROM_STORAGE = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "cdrom_storage"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string v18, "UsbSettingsReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[AUTORUN] onReceive() : mDirectAutorun = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-boolean v20, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mDirectAutorun:Z

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-string v18, "UsbSettingsReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[AUTORUN] onReceive() : mActivityUsbModeChange = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-boolean v20, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v18, "UsbSettingsReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[AUTORUN] onReceive() : mActivityFinish = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-boolean v20, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityFinish:Z

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v14, v0, :cond_8

    if-nez v13, :cond_8

    .line 160
    const-string v18, "UsbSettingsReceiver"

    const-string v19, "[AUTORUN] onReceive() : ===== USB Connected ====="

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/16 v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->setUsbConnected(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 163
    :cond_8
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v14, v0, :cond_b

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v13, v0, :cond_b

    .line 164
    const-string v18, "UsbSettingsReceiver"

    const-string v19, "[AUTORUN] onReceive() : ===== USB Configured ====="

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/16 v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->setUsbConnected(Landroid/content/Context;Z)V

    .line 168
    const/4 v12, 0x0

    .line 169
    .local v12, isQMICM:Z
    const-string v18, "sys.usb.config"

    const-string v19, ""

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 170
    .local v8, checkQmicm:Ljava/lang/String;
    const-string v18, "UsbSettingsReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[AUTORUN] onReceive() : checkQmicm = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string v18, "qmicm"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 172
    const/4 v12, 0x1

    .line 175
    :cond_9
    const-string v18, "cdrom_storage"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_a

    sget-boolean v18, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mDirectAutorun:Z

    if-eqz v18, :cond_a

    sget-boolean v18, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    if-nez v18, :cond_a

    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isDisconnectBugModel()Z

    move-result v18

    if-nez v18, :cond_a

    if-nez v12, :cond_a

    .line 180
    sget-object v18, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    invoke-static/range {v18 .. v18}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->startAutorunTimer(Landroid/content/Context;)V

    .line 181
    const/16 v18, 0x0

    sput-boolean v18, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityFinish:Z

    .line 182
    invoke-direct/range {p0 .. p0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->setUsbConnect()V

    .line 187
    :goto_2
    sget-boolean v18, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->sprintusbtethering:Z

    if-eqz v18, :cond_0

    .line 188
    invoke-direct/range {p0 .. p0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->sprintUsbTetheringON()V

    goto/16 :goto_0

    .line 184
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->setUsbConnect()V

    goto :goto_2

    .line 190
    .end local v8           #checkQmicm:Ljava/lang/String;
    .end local v12           #isQMICM:Z
    :cond_b
    if-nez v14, :cond_c

    if-nez v13, :cond_c

    .line 191
    const-string v18, "UsbSettingsReceiver"

    const-string v19, "[AUTORUN] onReceive() : ===== USB Disconnected ====="

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->setUsbConnected(Landroid/content/Context;Z)V

    .line 195
    const/16 v18, 0x0

    sput-boolean v18, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mTetherChanged:Z

    .line 197
    invoke-direct/range {p0 .. p0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->setUsbDisconnect()V

    goto/16 :goto_0

    .line 199
    :cond_c
    const-string v18, "UsbSettingsReceiver"

    const-string v19, "[AUTORUN] onReceive() : ===== USB Unknown Connected ===="

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->setUsbConnected(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 203
    .end local v13           #usbConfigured:Z
    .end local v14           #usbConnected:Z
    :cond_d
    const-string v18, "com.lge.setup_wizard.AUTORUNON"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 204
    invoke-static/range {p1 .. p1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->getUsbConnected(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 205
    invoke-direct/range {p0 .. p0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->setUsbConnect()V

    goto/16 :goto_0

    .line 207
    :cond_e
    const-string v18, "com.lge.intent.action.autorun_ack"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 208
    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isOldVersionModel()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 209
    sget-object v18, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mDefaultFunction:Ljava/lang/String;

    const-string v19, "pc_suite"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 210
    sget-object v18, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v19, "pc_suite"

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 215
    :cond_f
    const-string v18, "com.lge.intent.action.autorun_change_mode"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 216
    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->cancelAutorunTimer()V

    .line 217
    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isOldVersionModel()Z

    move-result v18

    if-nez v18, :cond_0

    .line 218
    const-string v18, "/sys/class/android_usb/android0/f_cdrom_storage/lun/cdrom_usbmode"

    invoke-static/range {v18 .. v18}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->readToFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 219
    .local v17, value:Ljava/lang/String;
    if-eqz v17, :cond_0

    .line 220
    const-string v18, "1"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 221
    sget-object v18, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v19, "mtp_only"

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 222
    :cond_10
    const-string v18, "5"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 223
    sget-object v18, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v19, "ecm"

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 224
    :cond_11
    const-string v18, "0"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 225
    sget-object v18, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v19, "pc_suite"

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 229
    .end local v17           #value:Ljava/lang/String;
    :cond_12
    const-string v18, "com.lge.intent.action.autorun_timeout"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_15

    .line 230
    const-string v18, "/sys/class/android_usb/android0/f_cdrom_storage/lun/cdrom_usbmode"

    invoke-static/range {v18 .. v18}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->readToFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 231
    .restart local v17       #value:Ljava/lang/String;
    if-eqz v17, :cond_0

    .line 232
    const-string v18, "1"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_13

    .line 233
    sget-object v18, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v19, "mtp_only"

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 234
    :cond_13
    const-string v18, "5"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_14

    .line 235
    sget-object v18, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v19, "ecm"

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 236
    :cond_14
    const-string v18, "0"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 237
    sget-object v18, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v19, "pc_suite"

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 240
    .end local v17           #value:Ljava/lang/String;
    :cond_15
    const-string v18, "android.intent.action.MEDIA_MOUNTED"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_16

    .line 241
    const-string v18, "UsbSettingsReceiver"

    const-string v19, "[AUTORUN] onReceive() : android.intent.action.MEDIA_MOUNTED"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v10, Landroid/content/Intent;

    const-string v18, "com.lge.intent.action.mass_state_change"

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 244
    .local v10, i:Landroid/content/Intent;
    sget-object v18, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 245
    .end local v10           #i:Landroid/content/Intent;
    :cond_16
    const-string v18, "android.intent.action.MEDIA_REMOVED"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_17

    const-string v18, "android.intent.action.MEDIA_BAD_REMOVAL"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1a

    .line 248
    :cond_17
    new-instance v10, Landroid/content/Intent;

    const-string v18, "com.lge.intent.action.mass_state_change"

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 249
    .restart local v10       #i:Landroid/content/Intent;
    invoke-static/range {p1 .. p1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->getUsbConnected(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_18

    sget-object v18, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mDefaultFunction:Ljava/lang/String;

    const-string v19, "mass_storage"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_18

    .line 250
    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isMassSeperatedModel()Z

    move-result v18

    if-eqz v18, :cond_19

    .line 251
    sget-object v18, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "ums_selected_storage"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_18

    .line 252
    sget-object v18, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v19, "charge_only"

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 253
    const-string v18, "extra_usb_default_mode"

    const-string v19, "charge_only"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    :cond_18
    :goto_3
    sget-object v18, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 257
    :cond_19
    sget-boolean v18, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mMountInternalMemory:Z

    if-nez v18, :cond_18

    .line 258
    sget-object v18, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v19, "charge_only"

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 259
    const-string v18, "extra_usb_default_mode"

    const-string v19, "charge_only"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 264
    .end local v10           #i:Landroid/content/Intent;
    :cond_1a
    const-string v18, "android.net.conn.TETHER_STATE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 265
    sget-object v18, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    sget-object v19, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    const-string v19, "usb"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/hardware/usb/UsbManager;

    .line 266
    .local v15, usbManager:Landroid/hardware/usb/UsbManager;
    invoke-static/range {p1 .. p1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->getUsbConnected(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 267
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v6, availableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v4, activeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v9, errorList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v18, "activeArray"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 271
    const-string v18, "availableArray"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 272
    const-string v18, "erroredArray"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 274
    const-string v18, "UsbSettingsReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[AUTORUN] onReceive() : availableList="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const-string v18, "UsbSettingsReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[AUTORUN] onReceive() : activeList="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const-string v18, "UsbSettingsReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[AUTORUN] onReceive() : errorList="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isAutorunTimer()Z

    move-result v18

    if-nez v18, :cond_0

    .line 281
    const/4 v5, 0x0

    .line 282
    .local v5, activeTether:Z
    const/4 v7, 0x0

    .line 283
    .local v7, availableTether:Z
    if-eqz v6, :cond_1d

    .line 284
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_1b
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 285
    .local v16, usbTetherState:Ljava/lang/String;
    const-string v18, "UsbSettingsReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[AUTORUN] onReceive() : TetherState Changed="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const-string v18, "usb0"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1c

    const-string v18, "ecm0"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1b

    .line 287
    :cond_1c
    const/4 v7, 0x1

    goto :goto_4

    .line 291
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v16           #usbTetherState:Ljava/lang/String;
    :cond_1d
    if-eqz v4, :cond_20

    .line 292
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_1e
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_20

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 293
    .restart local v16       #usbTetherState:Ljava/lang/String;
    const-string v18, "UsbSettingsReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[AUTORUN] onReceive() : TetherState Changed="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const-string v18, "usb0"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1f

    const-string v18, "ecm0"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1e

    .line 295
    :cond_1f
    const/4 v5, 0x1

    goto :goto_5

    .line 300
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v16           #usbTetherState:Ljava/lang/String;
    :cond_20
    if-eqz v7, :cond_22

    if-nez v5, :cond_22

    .line 301
    sget-object v18, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    invoke-static/range {v18 .. v18}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->getTetherStatus(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 302
    sget-object v18, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->setTetherStatus(Landroid/content/Context;Z)V

    .line 304
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v18

    const-string v19, "VZW"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_21

    .line 305
    const-string v18, "charge_only"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 308
    :cond_21
    new-instance v10, Landroid/content/Intent;

    const-string v18, "com.lge.intent.action.tether_state_change"

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 309
    .restart local v10       #i:Landroid/content/Intent;
    const-string v18, "extra_usb_default_mode"

    const-string v19, "charge_only"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    sget-object v18, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 312
    .end local v10           #i:Landroid/content/Intent;
    :cond_22
    if-nez v7, :cond_23

    if-eqz v5, :cond_23

    .line 313
    sget-object v18, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->setTetherStatus(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 315
    :cond_23
    sget-object v18, Lcom/android/lgesettings/deviceinfo/UsbSettingsReceiver;->mContext:Landroid/content/Context;

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->setTetherStatus(Landroid/content/Context;Z)V

    goto/16 :goto_0
.end method
