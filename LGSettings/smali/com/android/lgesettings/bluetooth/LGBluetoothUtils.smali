.class public final Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;
.super Ljava/lang/Object;
.source "LGBluetoothUtils.java"


# static fields
.field private static mAlertDialog:Landroid/app/AlertDialog;

.field static mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

.field private static mContext:Landroid/content/Context;

.field private static mDelayedDialog:Z

.field private static mDevice:Landroid/bluetooth/BluetoothDevice;

.field private static mHandler:Landroid/os/Handler;

.field private static mMessageResId:I

.field private static mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils$1;

    invoke-direct {v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils$1;-><init>()V

    sput-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static BtUiBondStateHandle(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;IZ)V
    .locals 4
    .parameter "context"
    .parameter "intent"
    .parameter "device"
    .parameter "bondState"
    .parameter "auto_accept"

    .prologue
    .line 259
    packed-switch p3, :pswitch_data_0

    .line 302
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 262
    :pswitch_1
    const-string v2, "android.bluetooth.device.extra.REASON"

    const/high16 v3, -0x8000

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 263
    .local v1, reason:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BTUI] BOND_NONE == reason("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") [failed:1 / rejected:2 / canceled:3 / down:4 / timeout:6 / rem_canceled:8 / removed:9]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->BtUiLog(Ljava/lang/String;)V

    .line 264
    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 273
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BTUI] == Not displaying any message for reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->BtUiLog(Ljava/lang/String;)V

    goto :goto_0

    .line 277
    :pswitch_3
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 279
    .local v0, manager:Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    .line 280
    const v2, 0x1080080

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 259
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 264
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private static BtUiLog(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 414
    const-string v0, "LGBluetoothUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    return-void
.end method

.method static BtUiPropertyGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 243
    const-string v1, "0"

    invoke-static {p0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, value:Ljava/lang/String;
    return-object v0
.end method

.method static BtUiPropertySet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 238
    const-string v0, "LGBluetoothUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BTUI] [SET] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    sput-boolean p0, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->mDelayedDialog:Z

    return p0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 60
    sget v0, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->mMessageResId:I

    return v0
.end method

.method static synthetic access$400()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$500()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static askIncomingSecurity(Landroid/content/Context;Landroid/preference/Preference;Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;)V
    .locals 8
    .parameter "context"
    .parameter "pref"
    .parameter "cachedDevice"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 309
    invoke-virtual {p2}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 310
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getTrustState()Z

    move-result v7

    if-eqz v7, :cond_0

    move v4, v5

    .line 312
    .local v4, pos:I
    :goto_0
    const/4 v7, 0x2

    new-array v3, v7, [Ljava/lang/String;

    const v7, 0x7f0814c7

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    const v5, 0x7f0814c6

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v6

    .line 315
    .local v3, items:[Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 316
    .local v1, alt_bld:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0814c4

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 317
    new-instance v5, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils$4;

    invoke-direct {v5, p1, v2}, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils$4;-><init>(Landroid/preference/Preference;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {v1, v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 331
    const/high16 v5, 0x104

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 332
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 333
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 334
    return-void

    .end local v0           #alertDialog:Landroid/app/AlertDialog;
    .end local v1           #alt_bld:Landroid/app/AlertDialog$Builder;
    .end local v3           #items:[Ljava/lang/String;
    .end local v4           #pos:I
    :cond_0
    move v4, v6

    .line 310
    goto :goto_0
.end method

.method static dismissDialog()V
    .locals 1

    .prologue
    .line 251
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 252
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 254
    :cond_0
    return-void
.end method

.method static getLinkKey(Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;)V
    .locals 9
    .parameter "cachedDevice"

    .prologue
    .line 423
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 424
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 425
    .local v4, localAddress:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 426
    .local v5, peerAddress:Ljava/lang/String;
    const-string v1, "/data/misc/bluedroid/bt_config.xml"

    .line 428
    .local v1, bt_config:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 429
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 430
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 431
    invoke-static {v1, v5}, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->readLinkkeyFromFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 433
    .local v3, linkkey:Ljava/lang/String;
    const-string v6, "LGBluetoothUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[BTUI] [Address] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " [Linkkey] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    .end local v2           #file:Ljava/io/File;
    .end local v3           #linkkey:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 424
    .end local v1           #bt_config:Ljava/lang/String;
    .end local v4           #localAddress:Ljava/lang/String;
    .end local v5           #peerAddress:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 436
    .restart local v1       #bt_config:Ljava/lang/String;
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #localAddress:Ljava/lang/String;
    .restart local v5       #peerAddress:Ljava/lang/String;
    :cond_2
    const-string v6, "LGBluetoothUtils"

    const-string v7, "[BTUI] there is no bt_config.xml in /data/misc/bluedroid"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static readLinkkeyFromFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "filename"
    .parameter "peerAddress"

    .prologue
    .line 443
    const-string v4, ""

    .line 444
    .local v4, linkkey:Ljava/lang/String;
    const/4 v2, 0x0

    .line 446
    .local v2, isFound:Z
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x2000

    invoke-direct {v0, v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 447
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v8, 0x0

    .local v8, row:I
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .local v7, result:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 449
    const/16 v5, 0x12

    .line 450
    .local v5, offset:I
    add-int/lit8 v3, v5, 0x11

    .line 451
    .local v3, length:I
    :try_start_1
    invoke-virtual {v7, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 453
    .local v9, token:Ljava/lang/String;
    if-eqz v9, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {v9, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    if-eqz v10, :cond_2

    .line 455
    const/4 v2, 0x1

    .line 462
    .end local v3           #length:I
    .end local v5           #offset:I
    .end local v9           #token:Ljava/lang/String;
    :cond_0
    if-eqz v2, :cond_5

    .line 463
    const/4 v2, 0x0

    .line 464
    const/4 v8, 0x0

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v7

    if-eqz v7, :cond_5

    .line 467
    if-nez v2, :cond_4

    .line 468
    :try_start_3
    const-string v10, "LinkKeyType"

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-gez v10, :cond_3

    .line 464
    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 458
    .restart local v3       #length:I
    .restart local v5       #offset:I
    :catch_0
    move-exception v10

    .line 447
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 471
    .end local v3           #length:I
    .end local v5           #offset:I
    :cond_3
    const/4 v2, 0x1

    goto :goto_2

    .line 475
    :cond_4
    const-string v10, "LinkKey"

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 476
    .restart local v5       #offset:I
    if-ltz v5, :cond_1

    .line 480
    add-int/lit8 v6, v5, 0x17

    .line 481
    .local v6, offset_linkkey:I
    add-int/lit8 v10, v6, 0x20

    invoke-virtual {v7, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v4

    .line 487
    .end local v5           #offset:I
    .end local v6           #offset_linkkey:I
    :cond_5
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 491
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v7           #result:Ljava/lang/String;
    .end local v8           #row:I
    :goto_3
    return-object v4

    .line 488
    :catch_1
    move-exception v1

    .line 489
    .local v1, e:Ljava/io/IOException;
    const-string v10, "LGBluetoothUtils"

    const-string v11, "[BTUI] IOException : [Developer TODO] => adb shell chmod -R 755 /data/misc/bluedroid"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 483
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v7       #result:Ljava/lang/String;
    .restart local v8       #row:I
    :catch_2
    move-exception v10

    goto :goto_2
.end method

.method static setOnKeyListenerForHiddenMenu(Landroid/content/Context;Landroid/app/AlertDialog;)V
    .locals 1
    .parameter "context"
    .parameter "alertDialog"

    .prologue
    .line 376
    new-instance v0, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils$6;

    invoke-direct {v0, p0, p1}, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils$6;-><init>(Landroid/content/Context;Landroid/app/AlertDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 407
    return-void
.end method

.method static showError(Landroid/content/Context;Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V
    .locals 10
    .parameter "context"
    .parameter "name"
    .parameter "messageResId"
    .parameter "device"

    .prologue
    const v9, 0x7f0814dc

    const/4 v5, 0x1

    const v8, 0x7f0814e1

    const/4 v7, 0x0

    .line 138
    sput-object p0, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->mContext:Landroid/content/Context;

    .line 139
    sput-object p1, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->mName:Ljava/lang/String;

    .line 140
    sput p2, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->mMessageResId:I

    .line 141
    sput-object p3, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 142
    sget-boolean v4, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->mDelayedDialog:Z

    if-nez v4, :cond_0

    .line 143
    sget-object v4, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 144
    .local v3, msg:Landroid/os/Message;
    sget-object v4, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x64

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 217
    .end local v3           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 147
    :cond_0
    sput-boolean v7, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->mDelayedDialog:Z

    .line 150
    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v7

    invoke-virtual {p0, p2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, message:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;

    move-result-object v1

    .line 152
    .local v1, manager:Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;
    const-string v4, "LGBluetoothUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[BTUI] ****** showError("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "service.btui.gap.pairByLocal"

    invoke-static {v6}, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->BtUiPropertyGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") ******"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    if-nez v1, :cond_1

    .line 154
    const-string v4, "LGBluetoothUtils"

    const-string v5, "[BTUI] Can\'t get manager: exiting"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 158
    :cond_1
    const-string v4, "service.btui.gap.pairByLocal"

    invoke-static {v4}, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->BtUiPropertyGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 159
    const-string v4, "LGBluetoothUtils"

    const-string v5, "[BTUI] User cancel pairing : exiting"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string v4, "service.btui.gap.pairByLocal"

    const-string v5, "0"

    invoke-static {v4, v5}, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->BtUiPropertySet(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_2
    invoke-virtual {v1}, Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;->isForegroundActivity()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 165
    if-eqz p3, :cond_5

    .line 167
    const-string v4, "LGBluetoothUtils"

    const-string v5, "[BTUI] mForegroundActivity, device is not null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {v1}, Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    sput-object v4, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    .line 169
    sget-object v4, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    if-nez v4, :cond_3

    .line 171
    invoke-virtual {v1}, Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    .line 172
    .local v0, cachedDeviceManager:Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-virtual {v1}, Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v5

    invoke-virtual {v0, v4, v5, p3}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    sput-object v4, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    .line 175
    .end local v0           #cachedDeviceManager:Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;
    :cond_3
    const-string v4, "service.btui.gap.pairByLocal"

    invoke-static {v4}, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->BtUiPropertyGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 177
    const-string v4, "LGBluetoothUtils"

    const-string v5, "[BTUI] 1st fail : retry popup"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;->getForegroundActivity()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x1010355

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0814e9

    new-instance v6, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils$3;

    invoke-direct {v6}, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils$3;-><init>()V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0814ea

    new-instance v6, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils$2;

    invoke-direct {v6}, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils$2;-><init>()V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    sput-object v4, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->mAlertDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 201
    :cond_4
    const-string v4, "LGBluetoothUtils"

    const-string v5, "[BTUI] 2nd fail : popup only"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const-string v4, "service.btui.gap.pairByLocal"

    const-string v5, "0"

    invoke-static {v4, v5}, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->BtUiPropertySet(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-static {p0, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 208
    :cond_5
    const-string v4, "LGBluetoothUtils"

    const-string v5, "[BTUI] mForegroundActivity, device is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-static {p0, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 212
    :cond_6
    const-string v4, "LGBluetoothUtils"

    const-string v5, "[BTUI] mForegroundActivity is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 214
    invoke-static {p0, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 215
    const-string v4, "service.btui.gap.pairByLocal"

    const-string v5, "0"

    invoke-static {v4, v5}, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->BtUiPropertySet(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static showUnbondMessage(Landroid/content/Context;Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .parameter "context"
    .parameter "name"
    .parameter "reason"
    .parameter "device"

    .prologue
    .line 96
    packed-switch p2, :pswitch_data_0

    .line 123
    :pswitch_0
    const-string v1, "service.btui.gap.pairByLocal"

    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->BtUiPropertySet(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v1, "LGBluetoothUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showUnbondMessage: Not displaying any message for reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :goto_0
    return-void

    .line 98
    :pswitch_1
    const-string v1, "service.btui.gap.pairByLocal"

    invoke-static {v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->BtUiPropertyGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f0814dd

    .line 128
    .local v0, errorMsg:I
    :goto_1
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;->getInstance()Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;->checkBluetoothPairingAndToast(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 130
    const-string v1, "BluetoothPairingRequest"

    const-string v2, "MDM Block Pairing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    .end local v0           #errorMsg:I
    :cond_0
    const v0, 0x7f0801a1

    goto :goto_1

    .line 103
    :pswitch_2
    const-string v1, "service.btui.gap.pairByLocal"

    invoke-static {v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->BtUiPropertyGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f081533

    .line 106
    .restart local v0       #errorMsg:I
    :goto_2
    goto :goto_1

    .line 103
    .end local v0           #errorMsg:I
    :cond_1
    const v0, 0x7f0801a3

    goto :goto_2

    .line 108
    :pswitch_3
    const-string v1, "service.btui.gap.pairByLocal"

    invoke-static {v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->BtUiPropertyGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f0814e6

    .line 111
    .restart local v0       #errorMsg:I
    :goto_3
    goto :goto_1

    .line 108
    .end local v0           #errorMsg:I
    :cond_2
    const v0, 0x7f0801a2

    goto :goto_3

    .line 115
    :pswitch_4
    const-string v1, "service.btui.gap.pairByLocal"

    invoke-static {v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->BtUiPropertyGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v0, 0x7f081534

    .line 118
    .restart local v0       #errorMsg:I
    :goto_4
    goto :goto_1

    .line 115
    .end local v0           #errorMsg:I
    :cond_3
    const v0, 0x7f0801a0

    goto :goto_4

    .line 120
    :pswitch_5
    const v0, 0x7f0801a0

    .line 121
    .restart local v0       #errorMsg:I
    goto :goto_1

    .line 134
    :cond_4
    invoke-static {p0, p1, v0, p3}, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->showError(Landroid/content/Context;Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
