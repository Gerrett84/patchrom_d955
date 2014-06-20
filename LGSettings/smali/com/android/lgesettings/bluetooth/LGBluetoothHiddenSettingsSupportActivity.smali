.class public final Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;
.super Landroid/app/Activity;
.source "LGBluetoothHiddenSettingsSupportActivity.java"


# static fields
.field private static final mLogProperties:[Ljava/lang/String;

.field private static final mPropertiesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSettableProperties:[Ljava/lang/String;


# instance fields
.field private mBackupDirPath:Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;

.field private mOption:Ljava/lang/String;

.field private mServiceManager:Lcom/lge/bluetooth/LGBluetoothServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "persist.service.main.enable"

    aput-object v1, v0, v3

    const-string v1, "persist.service.system.enable"

    aput-object v1, v0, v4

    const-string v1, "persist.service.radio.enable"

    aput-object v1, v0, v5

    const-string v1, "persist.service.events.enable"

    aput-object v1, v0, v6

    const-string v1, "persist.service.kernel.enable"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "persist.service.btui.hci"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "service.brcm.bt.btsnoop"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "service.btui.ssp_debug"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "service.btui.capture.pcm"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->mSettableProperties:[Ljava/lang/String;

    .line 53
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "persist.service.main.enable"

    aput-object v1, v0, v3

    const-string v1, "persist.service.system.enable"

    aput-object v1, v0, v4

    const-string v1, "persist.service.radio.enable"

    aput-object v1, v0, v5

    const-string v1, "persist.service.events.enable"

    aput-object v1, v0, v6

    const-string v1, "persist.service.kernel.enable"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->mLogProperties:[Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->mPropertiesMap:Ljava/util/HashMap;

    .line 67
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->mPropertiesMap:Ljava/util/HashMap;

    const-string v1, "persist.service.main.enable"

    const-string v2, "main.log"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->mPropertiesMap:Ljava/util/HashMap;

    const-string v1, "persist.service.system.enable"

    const-string v2, "system.log"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->mPropertiesMap:Ljava/util/HashMap;

    const-string v1, "persist.service.radio.enable"

    const-string v2, "radio.log"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->mPropertiesMap:Ljava/util/HashMap;

    const-string v1, "persist.service.events.enable"

    const-string v2, "events.log"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->mPropertiesMap:Ljava/util/HashMap;

    const-string v1, "persist.service.kernel.enable"

    const-string v2, "kernel.log"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 93
    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->mBackupDirPath:Ljava/lang/String;

    .line 95
    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->mIntent:Landroid/content/Intent;

    .line 96
    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->mOption:Ljava/lang/String;

    return-void
.end method

.method private checkSettableProperty(Ljava/lang/String;)Z
    .locals 5
    .parameter "property"

    .prologue
    .line 230
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->mSettableProperties:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 231
    .local v1, check_property:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 232
    const/4 v4, 0x1

    .line 236
    .end local v1           #check_property:Ljava/lang/String;
    :goto_1
    return v4

    .line 230
    .restart local v1       #check_property:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 236
    .end local v1           #check_property:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private copyFile(Ljava/lang/String;Ljava/lang/String;)I
    .locals 25
    .parameter "logFileName"
    .parameter "logDir"

    .prologue
    .line 356
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v21

    .line 357
    .local v21, uid:I
    const/16 v13, 0x3e8

    .line 358
    .local v13, gid:I
    const/16 v20, 0x0

    .line 359
    .local v20, ret:I
    const/4 v11, 0x0

    .line 361
    .local v11, errRet:I
    new-instance v17, Ljava/io/File;

    const-string v22, "/data/logger/"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 362
    .local v17, intDirFiles:Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v16

    .line 364
    .local v16, intDirFileNames:[Ljava/lang/String;
    move-object/from16 v5, v16

    .local v5, arr$:[Ljava/lang/String;
    array-length v0, v5

    move/from16 v18, v0

    .local v18, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_0
    move/from16 v0, v18

    if-ge v14, v0, :cond_2

    aget-object v12, v5, v14

    .line 365
    .local v12, fileName:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 366
    new-instance v3, Ljava/io/File;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "/data/logger/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 367
    .local v3, InternalFile:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 369
    .local v4, SDCardFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1b6

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v21

    invoke-static {v0, v1, v2, v13}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 370
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1b6

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v21

    invoke-static {v0, v1, v2, v13}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 372
    const-string v22, "LGBluetoothHiddenSettingsSupportActivity"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "copyFile "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " to "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const-wide/16 v8, 0x0

    .line 377
    .local v8, bytesWritten:J
    const/16 v22, 0x1000

    :try_start_0
    move/from16 v0, v22

    new-array v6, v0, [B

    .line 379
    .local v6, buf:[B
    const/4 v15, 0x0

    .line 380
    .local v15, in:Ljava/io/InputStream;
    const/16 v19, 0x0

    .line 382
    .local v19, out:Ljava/io/OutputStream;
    new-instance v15, Ljava/io/FileInputStream;

    .end local v15           #in:Ljava/io/InputStream;
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 383
    .restart local v15       #in:Ljava/io/InputStream;
    new-instance v19, Ljava/io/FileOutputStream;

    .end local v19           #out:Ljava/io/OutputStream;
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 385
    .restart local v19       #out:Ljava/io/OutputStream;
    :goto_1
    invoke-virtual {v15, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, bytesRead:I
    if-lez v7, :cond_0

    .line 386
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v6, v1, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 387
    int-to-long v0, v7

    move-wide/from16 v22, v0

    add-long v8, v8, v22

    goto :goto_1

    .line 390
    :cond_0
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 391
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V

    .line 393
    const-string v22, "LGBluetoothHiddenSettingsSupportActivity"

    const-string v23, "[***] internal file - delete"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 395
    const/16 v20, 0x1

    .line 364
    .end local v3           #InternalFile:Ljava/io/File;
    .end local v4           #SDCardFile:Ljava/io/File;
    .end local v6           #buf:[B
    .end local v7           #bytesRead:I
    .end local v8           #bytesWritten:J
    .end local v15           #in:Ljava/io/InputStream;
    .end local v19           #out:Ljava/io/OutputStream;
    :cond_1
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 396
    .restart local v3       #InternalFile:Ljava/io/File;
    .restart local v4       #SDCardFile:Ljava/io/File;
    .restart local v8       #bytesWritten:J
    :catch_0
    move-exception v10

    .line 397
    .local v10, e:Ljava/io/FileNotFoundException;
    const-string v22, "LGBluetoothHiddenSettingsSupportActivity"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[***] FileNotFoundException : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const/4 v11, 0x0

    .line 405
    goto :goto_2

    .line 399
    .end local v10           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v10

    .line 400
    .local v10, e:Ljava/io/IOException;
    const-string v22, "LGBluetoothHiddenSettingsSupportActivity"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[***] IOException : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const/4 v11, 0x2

    .line 405
    goto :goto_2

    .line 402
    .end local v10           #e:Ljava/io/IOException;
    :catch_2
    move-exception v10

    .line 403
    .local v10, e:Ljava/lang/SecurityException;
    const-string v22, "LGBluetoothHiddenSettingsSupportActivity"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[***] SecurityException : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const/4 v11, 0x2

    goto :goto_2

    .line 409
    .end local v3           #InternalFile:Ljava/io/File;
    .end local v4           #SDCardFile:Ljava/io/File;
    .end local v8           #bytesWritten:J
    .end local v10           #e:Ljava/lang/SecurityException;
    .end local v12           #fileName:Ljava/lang/String;
    :cond_2
    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    .line 412
    .end local v11           #errRet:I
    :goto_3
    return v11

    .restart local v11       #errRet:I
    :cond_3
    move/from16 v11, v20

    goto :goto_3
.end method

.method private saveLogs()I
    .locals 22

    .prologue
    .line 283
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v18

    .line 284
    .local v18, uid:I
    const/16 v9, 0x3e8

    .line 285
    .local v9, gid:I
    const/16 v16, 0x0

    .line 286
    .local v16, ret:I
    const/4 v12, 0x0

    .line 287
    .local v12, logDir:Ljava/io/File;
    const/4 v4, 0x0

    .line 289
    .local v4, backupDir:Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    .line 290
    .local v8, extStorageStatus:Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 292
    .local v6, calendar:Ljava/util/Calendar;
    new-instance v19, Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "/sdcard/carkit_logs/logs_backup_"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x2

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v21

    add-int/lit8 v21, v21, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "M"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x5

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "D"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0xb

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "H"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0xc

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "M"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0xd

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "S"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->mBackupDirPath:Ljava/lang/String;

    .line 300
    const-string v19, "LGBluetoothHiddenSettingsSupportActivity"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "status: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const-string v19, "mounted"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 304
    :try_start_0
    new-instance v13, Ljava/io/File;

    const-string v19, "/sdcard/carkit_logs/"

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 305
    .end local v12           #logDir:Ljava/io/File;
    .local v13, logDir:Ljava/io/File;
    :try_start_1
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 306
    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v19

    if-nez v19, :cond_0

    .line 307
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 308
    invoke-virtual {v13}, Ljava/io/File;->mkdir()Z

    .line 309
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1f6

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-static {v0, v1, v2, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 315
    :cond_0
    :goto_0
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->mBackupDirPath:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 316
    .end local v4           #backupDir:Ljava/io/File;
    .local v5, backupDir:Ljava/io/File;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 317
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v19

    if-nez v19, :cond_1

    .line 318
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 319
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    .line 320
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1f6

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-static {v0, v1, v2, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 332
    :cond_1
    :goto_1
    const/4 v15, 0x0

    .line 333
    .local v15, newRet:I
    sget-object v3, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->mLogProperties:[Ljava/lang/String;

    .local v3, arr$:[Ljava/lang/String;
    array-length v11, v3

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_2
    if-ge v10, v11, :cond_6

    aget-object v14, v3, v10

    .line 334
    .local v14, logProperty:Ljava/lang/String;
    const-string v19, "1"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 335
    sget-object v19, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->mPropertiesMap:Ljava/util/HashMap;

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->mBackupDirPath:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->copyFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 338
    if-eqz v16, :cond_5

    .line 339
    const/16 v19, 0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    if-eqz v15, :cond_2

    .line 340
    move/from16 v16, v15

    .line 333
    :cond_2
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 312
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v5           #backupDir:Ljava/io/File;
    .end local v10           #i$:I
    .end local v11           #len$:I
    .end local v14           #logProperty:Ljava/lang/String;
    .end local v15           #newRet:I
    .restart local v4       #backupDir:Ljava/io/File;
    :cond_3
    :try_start_3
    invoke-virtual {v13}, Ljava/io/File;->mkdir()Z

    .line 313
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1f6

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-static {v0, v1, v2, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 326
    :catch_0
    move-exception v7

    move-object v12, v13

    .line 327
    .end local v13           #logDir:Ljava/io/File;
    .local v7, e:Ljava/lang/SecurityException;
    .restart local v12       #logDir:Ljava/io/File;
    :goto_4
    const-string v19, "LGBluetoothHiddenSettingsSupportActivity"

    const-string v20, "security exception"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/16 v16, 0x2

    move/from16 v17, v16

    .line 352
    .end local v7           #e:Ljava/lang/SecurityException;
    .end local v16           #ret:I
    .local v17, ret:I
    :goto_5
    return v17

    .line 323
    .end local v4           #backupDir:Ljava/io/File;
    .end local v12           #logDir:Ljava/io/File;
    .end local v17           #ret:I
    .restart local v5       #backupDir:Ljava/io/File;
    .restart local v13       #logDir:Ljava/io/File;
    .restart local v16       #ret:I
    :cond_4
    :try_start_4
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    .line 324
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1f6

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-static {v0, v1, v2, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 326
    :catch_1
    move-exception v7

    move-object v4, v5

    .end local v5           #backupDir:Ljava/io/File;
    .restart local v4       #backupDir:Ljava/io/File;
    move-object v12, v13

    .end local v13           #logDir:Ljava/io/File;
    .restart local v12       #logDir:Ljava/io/File;
    goto :goto_4

    .line 343
    .end local v4           #backupDir:Ljava/io/File;
    .end local v12           #logDir:Ljava/io/File;
    .restart local v3       #arr$:[Ljava/lang/String;
    .restart local v5       #backupDir:Ljava/io/File;
    .restart local v10       #i$:I
    .restart local v11       #len$:I
    .restart local v13       #logDir:Ljava/io/File;
    .restart local v14       #logProperty:Ljava/lang/String;
    .restart local v15       #newRet:I
    :cond_5
    move/from16 v16, v15

    goto :goto_3

    .end local v14           #logProperty:Ljava/lang/String;
    :cond_6
    move-object v4, v5

    .end local v5           #backupDir:Ljava/io/File;
    .restart local v4       #backupDir:Ljava/io/File;
    move-object v12, v13

    .end local v3           #arr$:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v11           #len$:I
    .end local v13           #logDir:Ljava/io/File;
    .end local v15           #newRet:I
    .restart local v12       #logDir:Ljava/io/File;
    :goto_6
    move/from16 v17, v16

    .line 352
    .end local v16           #ret:I
    .restart local v17       #ret:I
    goto :goto_5

    .line 348
    .end local v17           #ret:I
    .restart local v16       #ret:I
    :cond_7
    const-string v19, "LGBluetoothHiddenSettingsSupportActivity"

    const-string v20, "Micro SD card is not mounted."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const/16 v16, 0x3

    goto :goto_6

    .line 326
    :catch_2
    move-exception v7

    goto :goto_4
.end method

.method private setDisableProperties(Ljava/lang/String;)V
    .locals 4
    .parameter "value"

    .prologue
    .line 277
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->mLogProperties:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 278
    .local v3, property:Ljava/lang/String;
    invoke-direct {p0, v3, p1}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 280
    .end local v3           #property:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setEnableProperties(ILjava/lang/String;)V
    .locals 2
    .parameter "properties"
    .parameter "value"

    .prologue
    .line 249
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 250
    const-string v0, "LGBluetoothHiddenSettingsSupportActivity"

    const-string v1, "ENABLE_MAIN_LOG"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->mLogProperties:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p2}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 255
    const-string v0, "LGBluetoothHiddenSettingsSupportActivity"

    const-string v1, "ENABLE_SYSTEM_LOG"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->mLogProperties:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p2}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    .line 260
    const-string v0, "LGBluetoothHiddenSettingsSupportActivity"

    const-string v1, "ENABLE_RADIO_LOG"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->mLogProperties:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p2}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_2
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_3

    .line 265
    const-string v0, "LGBluetoothHiddenSettingsSupportActivity"

    const-string v1, "ENABLE_EVENTS_LOG"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->mLogProperties:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p2}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_3
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_4

    .line 270
    const-string v0, "LGBluetoothHiddenSettingsSupportActivity"

    const-string v1, "ENABLE_KERNEL_LOG"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->mLogProperties:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p2}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_4
    return-void
.end method

.method private setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "property"
    .parameter "value"

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->checkSettableProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    const-string v0, "LGBluetoothHiddenSettingsSupportActivity"

    const-string v1, "not supported property!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSSPDebugMode(Z)V
    .locals 3
    .parameter "onoff"

    .prologue
    .line 417
    const-string v0, "LGBluetoothHiddenSettingsSupportActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSSPDebugMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->mServiceManager:Lcom/lge/bluetooth/LGBluetoothServiceManager;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->mServiceManager:Lcom/lge/bluetooth/LGBluetoothServiceManager;

    invoke-virtual {v0, p1}, Lcom/lge/bluetooth/LGBluetoothServiceManager;->setSspDebugMode(Z)V

    .line 422
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 120
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->requestWindowFeature(I)Z

    .line 122
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->mIntent:Landroid/content/Intent;

    .line 123
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "option"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->mOption:Ljava/lang/String;

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->mBackupDirPath:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 222
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 224
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->mServiceManager:Lcom/lge/bluetooth/LGBluetoothServiceManager;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->mServiceManager:Lcom/lge/bluetooth/LGBluetoothServiceManager;

    invoke-virtual {v0}, Lcom/lge/bluetooth/LGBluetoothServiceManager;->terminateServiceManager()V

    .line 227
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 12

    .prologue
    const/4 v8, 0x0

    const/4 v11, -0x1

    .line 130
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 132
    const/4 v2, 0x0

    .line 134
    .local v2, cfaFile:Ljava/lang/String;
    invoke-static {p0}, Lcom/lge/bluetooth/LGBluetoothServiceManager;->getInstance(Landroid/content/Context;)Lcom/lge/bluetooth/LGBluetoothServiceManager;

    move-result-object v9

    iput-object v9, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->mServiceManager:Lcom/lge/bluetooth/LGBluetoothServiceManager;

    .line 136
    iget-object v9, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->mIntent:Landroid/content/Intent;

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->mOption:Ljava/lang/String;

    if-eqz v9, :cond_c

    .line 137
    iget-object v9, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->mOption:Ljava/lang/String;

    const-string v10, "setproperty"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 138
    const-string v9, "LGBluetoothHiddenSettingsSupportActivity"

    const-string v10, "support set property!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v9, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->mIntent:Landroid/content/Intent;

    const-string v10, "property"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 141
    .local v4, property:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->mIntent:Landroid/content/Intent;

    const-string v10, "value"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 143
    .local v7, value:Ljava/lang/String;
    const-string v9, "service.brcm.bt.btsnoop"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 144
    const-string v9, "0"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 145
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    .local v0, btDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 147
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 148
    const/16 v9, 0x1fd

    invoke-static {v7, v9, v11, v11}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 151
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 152
    .local v1, calendar:Ljava/util/Calendar;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "bt_snoop_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "M"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x5

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "D"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xb

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "H"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xc

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "M"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xd

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "S"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".cfa"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 163
    .end local v0           #btDir:Ljava/io/File;
    .end local v1           #calendar:Ljava/util/Calendar;
    :cond_1
    :goto_0
    invoke-direct {p0, v4, v7}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v9, "service.btui.ssp_debug"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 166
    const-string v9, "LGBluetoothHiddenSettingsSupportActivity"

    const-string v10, "enable ssp debug mode!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const-string v9, "1"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v8, 0x1

    :cond_2
    invoke-direct {p0, v8}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->setSSPDebugMode(Z)V

    .line 178
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->finish()V

    .line 218
    .end local v4           #property:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    :goto_2
    return-void

    .line 159
    .restart local v4       #property:Ljava/lang/String;
    .restart local v7       #value:Ljava/lang/String;
    :cond_4
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 168
    :cond_5
    const-string v8, "service.brcm.bt.btsnoop"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 169
    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 170
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 171
    .local v6, sendIntent:Landroid/content/Intent;
    const-string v8, "bt_snoop_file"

    invoke-virtual {v6, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    invoke-virtual {p0, v11, v6}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_1

    .line 174
    .end local v6           #sendIntent:Landroid/content/Intent;
    :cond_6
    invoke-virtual {p0, v11}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->setResult(I)V

    goto :goto_1

    .line 179
    .end local v4           #property:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    :cond_7
    iget-object v9, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->mOption:Ljava/lang/String;

    const-string v10, "setproperties"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 180
    const-string v9, "LGBluetoothHiddenSettingsSupportActivity"

    const-string v10, "support set properties!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v9, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->mIntent:Landroid/content/Intent;

    const-string v10, "properties"

    invoke-virtual {v9, v10, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 184
    .local v3, properties:I
    iget-object v8, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->mIntent:Landroid/content/Intent;

    const-string v9, "value"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 186
    .restart local v7       #value:Ljava/lang/String;
    const-string v8, "0"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 187
    const-string v8, "LGBluetoothHiddenSettingsSupportActivity"

    const-string v9, "stop capturing logs!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->saveLogs()I

    move-result v5

    .line 190
    .local v5, ret:I
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 191
    .restart local v6       #sendIntent:Landroid/content/Intent;
    const-string v8, "stop_savelogs"

    invoke-virtual {v6, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 192
    iget-object v8, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->mBackupDirPath:Ljava/lang/String;

    if-eqz v8, :cond_8

    .line 193
    const-string v8, "dir_savelogs"

    iget-object v9, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->mBackupDirPath:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    :cond_8
    invoke-virtual {p0, v11, v6}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->setResult(ILandroid/content/Intent;)V

    .line 196
    invoke-direct {p0, v7}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->setDisableProperties(Ljava/lang/String;)V

    .line 202
    .end local v5           #ret:I
    .end local v6           #sendIntent:Landroid/content/Intent;
    :goto_3
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->finish()V

    goto :goto_2

    .line 198
    :cond_9
    invoke-virtual {p0, v11}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->setResult(I)V

    .line 199
    invoke-direct {p0, v3, v7}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->setEnableProperties(ILjava/lang/String;)V

    goto :goto_3

    .line 203
    .end local v3           #properties:I
    .end local v7           #value:Ljava/lang/String;
    :cond_a
    iget-object v8, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->mOption:Ljava/lang/String;

    const-string v9, "savelogs"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 204
    const-string v8, "LGBluetoothHiddenSettingsSupportActivity"

    const-string v9, "support saving logs!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->saveLogs()I

    move-result v5

    .line 208
    .restart local v5       #ret:I
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 209
    .restart local v6       #sendIntent:Landroid/content/Intent;
    const-string v8, "return_savelogs"

    invoke-virtual {v6, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 210
    invoke-virtual {p0, v11, v6}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->setResult(ILandroid/content/Intent;)V

    .line 211
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->finish()V

    goto/16 :goto_2

    .line 213
    .end local v5           #ret:I
    .end local v6           #sendIntent:Landroid/content/Intent;
    :cond_b
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->finish()V

    goto/16 :goto_2

    .line 216
    :cond_c
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsSupportActivity;->finish()V

    goto/16 :goto_2
.end method
