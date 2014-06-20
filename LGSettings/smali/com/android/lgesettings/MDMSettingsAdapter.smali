.class public Lcom/android/lgesettings/MDMSettingsAdapter;
.super Ljava/lang/Object;
.source "MDMSettingsAdapter.java"


# static fields
.field public static LGMDM_ADAPTER_BLUETOOTH:Ljava/lang/String;

.field public static LGMDM_ADAPTER_EMAIL:Ljava/lang/String;

.field public static LGMDM_ADAPTER_ENCRYPTION:Ljava/lang/String;

.field public static LGMDM_ADAPTER_GPS:Ljava/lang/String;

.field public static LGMDM_ADAPTER_TETHERING:Ljava/lang/String;

.field public static LGMDM_ADAPTER_USB:Ljava/lang/String;

.field public static LGMDM_ADAPTER_WIFI:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static mInstance:Lcom/android/lgesettings/MDMSettingsAdapter;


# instance fields
.field private mDictionary:Ljava/util/HashMap;
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

.field private mLGMDMDeviceAdmin:Lcom/lge/mdm/manager/LGMDMDeviceAdminInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const-string v0, "MDMSettingsAdapter"

    sput-object v0, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    .line 92
    const-string v0, "LGMDMGPSUIAdpater"

    sput-object v0, Lcom/android/lgesettings/MDMSettingsAdapter;->LGMDM_ADAPTER_GPS:Ljava/lang/String;

    .line 93
    const-string v0, "LGMDMWifiUIAdapter"

    sput-object v0, Lcom/android/lgesettings/MDMSettingsAdapter;->LGMDM_ADAPTER_WIFI:Ljava/lang/String;

    .line 94
    const-string v0, "LGMDMEmailUIAdapter"

    sput-object v0, Lcom/android/lgesettings/MDMSettingsAdapter;->LGMDM_ADAPTER_EMAIL:Ljava/lang/String;

    .line 95
    const-string v0, "LGMDMUsbUIAdapter"

    sput-object v0, Lcom/android/lgesettings/MDMSettingsAdapter;->LGMDM_ADAPTER_USB:Ljava/lang/String;

    .line 96
    const-string v0, "LGMDMBluetoothAdapter"

    sput-object v0, Lcom/android/lgesettings/MDMSettingsAdapter;->LGMDM_ADAPTER_BLUETOOTH:Ljava/lang/String;

    .line 97
    const-string v0, "LGMDMTethringAdapter"

    sput-object v0, Lcom/android/lgesettings/MDMSettingsAdapter;->LGMDM_ADAPTER_TETHERING:Ljava/lang/String;

    .line 99
    const-string v0, "LGMDMEncryptionUIAdapter"

    sput-object v0, Lcom/android/lgesettings/MDMSettingsAdapter;->LGMDM_ADAPTER_ENCRYPTION:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    return-void
.end method

.method private getDictionary(Landroid/app/Activity;)Ljava/util/HashMap;
    .locals 11
    .parameter "activity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 496
    if-nez p1, :cond_1

    .line 497
    sget-object v9, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v10, "activity is null!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v8

    .line 553
    :cond_0
    :goto_0
    return-object v3

    .line 501
    :cond_1
    const/4 v0, 0x0

    .line 502
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 504
    .local v2, dictionary:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    .line 505
    .local v6, mgr:Landroid/content/res/AssetManager;
    if-nez v6, :cond_2

    .line 506
    sget-object v9, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v10, "mgr is null. SimplePasswordDictionaryAsset\'s initialization is failed!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v8

    .line 507
    goto :goto_0

    .line 511
    :cond_2
    :try_start_0
    sget-object v9, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v10, "AssetManager open start DICTIONARY_FILE : simple_password_dictionary.txt"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const-string v9, "simple_password_dictionary.txt"

    const/4 v10, 0x3

    invoke-virtual {v6, v9, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v5

    .line 513
    .local v5, in:Ljava/io/InputStream;
    sget-object v9, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v10, "AssetManager open end "

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    if-nez v5, :cond_4

    .line 516
    sget-object v9, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v10, "dictionaryStream is null!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 539
    if-eqz v0, :cond_3

    .line 540
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_1
    move-object v3, v8

    .line 544
    goto :goto_0

    .line 542
    :catch_0
    move-exception v4

    .line 543
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 520
    .end local v4           #e:Ljava/io/IOException;
    :cond_4
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    const-string v10, "UTF-8"

    invoke-direct {v9, v5, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 521
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 522
    .local v7, word:Ljava/lang/String;
    if-nez v7, :cond_6

    .line 523
    sget-object v9, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v10, "word is null. Dictionary is empty!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 539
    if-eqz v1, :cond_5

    .line 540
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_5
    :goto_2
    move-object v3, v8

    .line 544
    goto :goto_0

    .line 542
    :catch_1
    move-exception v4

    .line 543
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 527
    .end local v4           #e:Ljava/io/IOException;
    :cond_6
    :try_start_5
    new-instance v3, Ljava/util/HashMap;

    const/16 v9, 0x64

    invoke-direct {v3, v9}, Ljava/util/HashMap;-><init>(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 529
    .end local v2           #dictionary:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v3, dictionary:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_3
    if-eqz v7, :cond_7

    .line 530
    const/4 v9, 0x0

    :try_start_6
    invoke-virtual {v3, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    move-result-object v7

    goto :goto_3

    .line 539
    :cond_7
    if-eqz v1, :cond_8

    .line 540
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 548
    :cond_8
    :goto_4
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v9

    if-nez v9, :cond_0

    .line 549
    sget-object v9, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v10, "Dictionary is empty!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v8

    .line 550
    goto/16 :goto_0

    .line 542
    :catch_2
    move-exception v4

    .line 543
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 534
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v3           #dictionary:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #e:Ljava/io/IOException;
    .end local v5           #in:Ljava/io/InputStream;
    .end local v7           #word:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v2       #dictionary:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_3
    move-exception v4

    .line 535
    .restart local v4       #e:Ljava/io/IOException;
    :goto_5
    :try_start_8
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 539
    if-eqz v0, :cond_9

    .line 540
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    :cond_9
    :goto_6
    move-object v3, v8

    .line 544
    goto/16 :goto_0

    .line 542
    :catch_4
    move-exception v4

    .line 543
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 538
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 539
    :goto_7
    if-eqz v0, :cond_a

    .line 540
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 544
    :cond_a
    :goto_8
    throw v8

    .line 542
    :catch_5
    move-exception v4

    .line 543
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 538
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #e:Ljava/io/IOException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #in:Ljava/io/InputStream;
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_7

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #dictionary:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #dictionary:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7       #word:Ljava/lang/String;
    :catchall_2
    move-exception v8

    move-object v2, v3

    .end local v3           #dictionary:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2       #dictionary:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_7

    .line 534
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v7           #word:Ljava/lang/String;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_6
    move-exception v4

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_5

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #dictionary:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #dictionary:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7       #word:Ljava/lang/String;
    :catch_7
    move-exception v4

    move-object v2, v3

    .end local v3           #dictionary:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2       #dictionary:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_5
.end method

.method public static getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lcom/android/lgesettings/MDMSettingsAdapter;->mInstance:Lcom/android/lgesettings/MDMSettingsAdapter;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Lcom/android/lgesettings/MDMSettingsAdapter;

    invoke-direct {v0}, Lcom/android/lgesettings/MDMSettingsAdapter;-><init>()V

    sput-object v0, Lcom/android/lgesettings/MDMSettingsAdapter;->mInstance:Lcom/android/lgesettings/MDMSettingsAdapter;

    .line 181
    :cond_0
    sget-object v0, Lcom/android/lgesettings/MDMSettingsAdapter;->mInstance:Lcom/android/lgesettings/MDMSettingsAdapter;

    return-object v0
.end method

.method private isAccountByGoogle(Landroid/content/Context;Landroid/accounts/Account;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1540
    const-string v1, "com.google"

    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1541
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lge/mdm/LGMDMManager;->getAllowRemoveGoogleAccount(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1542
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080c37

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1547
    const/4 v0, 0x1

    .line 1550
    :cond_0
    return v0
.end method

.method private isAccountByMDM(Landroid/content/Context;Landroid/accounts/Account;)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1557
    sget-object v0, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isAccountByMDM]account: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1559
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    move v0, v7

    .line 1612
    :goto_0
    return v0

    .line 1563
    :cond_1
    new-array v2, v3, [Ljava/lang/String;

    const-string v0, "accountID"

    aput-object v0, v2, v7

    const-string v0, "mailAddress"

    aput-object v0, v2, v6

    .line 1570
    :try_start_0
    const-string v0, "content://com.lge.providers.lgemail/account/mdm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1571
    const-string v0, "content://com.lge.email.providers.content/account/mdm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 1573
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 1575
    if-nez v8, :cond_9

    .line 1576
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 1579
    :goto_1
    :try_start_2
    sget-object v0, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isAccountByMDM]cursor:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1580
    if-eqz v1, :cond_2

    .line 1581
    sget-object v0, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isAccountByMDM]cursor count :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1583
    :cond_2
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-ne v0, v6, :cond_6

    .line 1588
    :cond_3
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1589
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1590
    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1591
    if-ne v3, v6, :cond_5

    iget-object v4, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1593
    sget-object v4, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[isAccountByMDM]accountType:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1594
    sget-object v0, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isAccountByMDM]emailAddress:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    sget-object v0, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isAccountByMDM]MDMAccount:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1596
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080c36

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1608
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1609
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v6

    goto/16 :goto_0

    .line 1603
    :cond_5
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v0

    if-nez v0, :cond_3

    .line 1608
    :cond_6
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1609
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    :goto_2
    move v0, v7

    .line 1612
    goto/16 :goto_0

    .line 1605
    :catch_0
    move-exception v0

    move-object v1, v8

    .line 1606
    :goto_3
    :try_start_4
    sget-object v2, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v3, "[isMDMAccount] catch Exception CHECK Provider !!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1608
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1609
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1608
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_4
    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1609
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    .line 1608
    :catchall_1
    move-exception v0

    move-object v1, v8

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    .line 1605
    :catch_1
    move-exception v0

    move-object v1, v8

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_3

    :cond_9
    move-object v1, v8

    goto/16 :goto_1
.end method

.method private setUsbSettingsControlChargeOnly()V
    .locals 2

    .prologue
    .line 1041
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1042
    const-string v0, "/sys/class/android_usb/android0/f_cdrom_storage/lun/cdrom_usbmode"

    const-string v1, "4"

    invoke-static {v0, v1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->writeToFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1045
    :cond_0
    return-void
.end method

.method private strReverse(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "str"

    .prologue
    .line 557
    const-string v1, ""

    .line 558
    .local v1, s:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 559
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 558
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 561
    :cond_0
    return-object v1
.end method


# virtual methods
.method public addDataUsageSettingPolicyChangeIntentFilter(Landroid/content/IntentFilter;)V
    .locals 2
    .parameter

    .prologue
    .line 1292
    sget-object v0, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v1, "addDataUsageSettingPolicyChangeIntentFilter: "

    invoke-static {v0, v1}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    const-string v0, "com.lge.mdm.intent.action.MOBILE_NETWORK_POLICY_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1294
    const-string v0, "com.lge.mdm.intent.action.DATA_ROAMING_POLICY_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1295
    const-string v0, "com.lge.mdm.intent.action.BACKGROUND_DATA_RESTRICTED_POLICY_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1296
    return-void
.end method

.method public addDevelopmentPolicyChangeIntentFilter(Landroid/content/IntentFilter;)V
    .locals 1
    .parameter

    .prologue
    .line 1299
    const-string v0, "com.lge.mdm.intent.action.USB_POLICY_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1300
    const-string v0, "com.lge.mdm.intent.action.SCREEN_CAPTURE_POLICY_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1301
    const-string v0, "com.lge.mdm.intent.action.MOCK_LOCATION_POLICY_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1302
    return-void
.end method

.method public addExternalStoragePolicyChangeIntentFilter(Landroid/content/IntentFilter;)V
    .locals 2
    .parameter

    .prologue
    .line 1269
    sget-object v0, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v1, "addExternalStoragePolicyChangeIntentFilter: "

    invoke-static {v0, v1}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    const-string v0, "com.lge.mdm.intent.action.EXTERNAL_STORAGE_POLICY_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1271
    return-void
.end method

.method public addLGMDMDeivceAdminPolicyInfo(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/admin/DeviceAdminInfo$PolicyInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1718
    iget-object v0, p0, Lcom/android/lgesettings/MDMSettingsAdapter;->mLGMDMDeviceAdmin:Lcom/lge/mdm/manager/LGMDMDeviceAdminInfo;

    if-nez v0, :cond_1

    .line 1733
    :cond_0
    :goto_0
    return-void

    .line 1721
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/MDMSettingsAdapter;->mLGMDMDeviceAdmin:Lcom/lge/mdm/manager/LGMDMDeviceAdminInfo;

    invoke-virtual {v0}, Lcom/lge/mdm/manager/LGMDMDeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v0

    .line 1722
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1723
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1725
    :cond_2
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->isSupportMultiUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1726
    iget-object v0, p0, Lcom/android/lgesettings/MDMSettingsAdapter;->mLGMDMDeviceAdmin:Lcom/lge/mdm/manager/LGMDMDeviceAdminInfo;

    invoke-virtual {v0}, Lcom/lge/mdm/manager/LGMDMDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/cappuccino/Mdm;->isUseLGMDMLibrary(Landroid/content/ComponentName;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    .line 1728
    new-instance v0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/4 v1, 0x0

    const-string v2, "lg-disable-multiuser"

    const v3, 0x7f080c45

    const v4, 0x7f080c46

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addLocationPolicyChangeIntentFilter(Landroid/content/IntentFilter;)V
    .locals 2
    .parameter

    .prologue
    .line 1310
    sget-object v0, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v1, "addLocationPolicyChangeIntentFilter: "

    invoke-static {v0, v1}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    const-string v0, "com.lge.mdm.intent.action.LOCATION_POLICY_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1312
    return-void
.end method

.method public addMainSettingsPolicyChangeIntentFilter(Landroid/content/IntentFilter;)V
    .locals 2
    .parameter

    .prologue
    .line 1315
    sget-object v0, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v1, "addMainSettingsPolicyChangeIntentFilter: "

    invoke-static {v0, v1}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    const-string v0, "com.lge.mdm.intent.action.WIFI_POLICY_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1317
    const-string v0, "com.lge.mdm.intent.action.BLUETOOTH_POLICY_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1318
    const-string v0, "com.lge.mdm.intent.action.AIRPLANE_MODE_ON_POLICY_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1319
    const-string v0, "com.lge.mdm.intent.action.MOBILE_NETWORK_POLICY_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1320
    const-string v0, "com.lge.mdm.intent.action.MANUAL_SYNC_POLICY_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1321
    return-void
.end method

.method public addManualSyncPolicyChangeIntentFilter(Landroid/content/IntentFilter;)V
    .locals 2
    .parameter

    .prologue
    .line 1287
    sget-object v0, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v1, "addManualSyncPolicyChangeIntentFilter: "

    invoke-static {v0, v1}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    const-string v0, "com.lge.mdm.intent.action.MANUAL_SYNC_POLICY_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1289
    return-void
.end method

.method public addRemoveAdminPolicyChangeIntentFilter(Landroid/content/IntentFilter;)V
    .locals 2
    .parameter

    .prologue
    .line 1305
    sget-object v0, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v1, "addRemoveAdminPolicyChangeIntentFilter: "

    invoke-static {v0, v1}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    const-string v0, "com.lge.mdm.intent.action.REMOVE_ADMIN_POLICY_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1307
    return-void
.end method

.method public addSecuritySettingChangeIntentFilter(Landroid/content/IntentFilter;)V
    .locals 1
    .parameter

    .prologue
    .line 1347
    const-string v0, "com.lge.mdm.intent.action.ACTION_UNKNOWN_SOURCE_POLICY_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1348
    const-string v0, "com.lge.mdm.intent.action.SECURITY_SETTING_POLICY_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1349
    return-void
.end method

.method public addTetherPolicyChangeIntentFilter(Landroid/content/IntentFilter;)V
    .locals 2
    .parameter

    .prologue
    .line 1334
    sget-object v0, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v1, "addTetherPolicyChangeIntentFilter: "

    invoke-static {v0, v1}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    const-string v0, "com.lge.mdm.intent.action.TETHER_POLICY_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1336
    const-string v0, "com.lge.mdm.intent.action.BLUETOOTH_POLICY_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1337
    const-string v0, "com.lge.mdm.intent.action.USB_POLICY_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1338
    return-void
.end method

.method public addUsbPolicyChangeIntentFilter(Landroid/content/IntentFilter;)V
    .locals 2
    .parameter

    .prologue
    .line 1281
    sget-object v0, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v1, "addUsbPolicyChangeIntentFilter: "

    invoke-static {v0, v1}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    const-string v0, "com.lge.mdm.intent.action.USB_POLICY_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1283
    const-string v0, "com.lge.mdm.intent.action.TETHER_POLICY_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1284
    return-void
.end method

.method public addWipeDatePolicyChangeIntentFilter(Landroid/content/IntentFilter;)V
    .locals 2
    .parameter

    .prologue
    .line 1274
    sget-object v0, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v1, "addWipeDatePolicyChangeIntentFilter: "

    invoke-static {v0, v1}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    const-string v0, "com.lge.mdm.intent.action.WIPE_DATA_POLICY_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1276
    const-string v0, "com.lge.mdm.intent.action.GOOGLE_BACKUP_POLICY_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1277
    const-string v0, "com.lge.mdm.intent.action.AUTO_RESTORE_POLICY_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1278
    return-void
.end method

.method public addWirelessSettingsPolicyChangeIntentFilter(Landroid/content/IntentFilter;)V
    .locals 2
    .parameter

    .prologue
    .line 1324
    sget-object v0, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v1, "addWirelessSettingsPolicyChangeIntentFilter: "

    invoke-static {v0, v1}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    const-string v0, "com.lge.mdm.intent.action.BLUETOOTH_POLICY_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1326
    const-string v0, "com.lge.mdm.intent.action.MOBILE_NETWORK_POLICY_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1327
    const-string v0, "com.lge.mdm.intent.action.TETHER_POLICY_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1328
    const-string v0, "com.lge.mdm.intent.action.WIFI_POLICY_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1329
    const-string v0, "com.lge.mdm.intent.action.USB_POLICY_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1330
    const-string v0, "com.lge.mdm.intent.action.ACTION_WIRELESS_STORAGE_DISALLOW"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1331
    return-void
.end method

.method public checkAllowMicrophoneIME(Landroid/content/ComponentName;Ljava/lang/String;ZLandroid/content/Context;)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1677
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowMicrophone(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1678
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lge/mdm/LGMDMManager;->getMicrophoneWhitelist(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v1

    .line 1679
    if-eqz v1, :cond_1

    const-string v2, "com.google.android.googlequicksearchbox"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1691
    :cond_0
    :goto_0
    return v0

    .line 1682
    :cond_1
    if-eqz p2, :cond_0

    const-string v1, "com.google.android.voicesearch"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1683
    if-eqz p3, :cond_2

    .line 1684
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080c34

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1688
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkAllowMultiUser()Z
    .locals 2

    .prologue
    .line 1846
    invoke-static {}, Lcom/lge/mdm/LGMDMSystemServer;->getLGMDMDevicePolicyManager()Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/mdm/manager/LGMDMDevicePolicyManager;->getAllowMultiUser(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public checkDeviceEncryption()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1114
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lge/mdm/LGMDMManager;->getEncryptionPolicy(Landroid/content/ComponentName;)I

    move-result v0

    .line 1115
    .local v0, encryption:I
    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_1

    .line 1119
    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkDisabled(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 5
    .parameter "who"
    .parameter "mCurrentModuleName"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 199
    sget-object v2, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkDisabled() Component : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    sget-object v2, Lcom/android/lgesettings/MDMSettingsAdapter;->LGMDM_ADAPTER_GPS:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 202
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowGPSLocation(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 250
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 207
    goto :goto_0

    .line 208
    :cond_2
    sget-object v2, Lcom/android/lgesettings/MDMSettingsAdapter;->LGMDM_ADAPTER_WIFI:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 209
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 214
    goto :goto_0

    .line 215
    :cond_3
    sget-object v2, Lcom/android/lgesettings/MDMSettingsAdapter;->LGMDM_ADAPTER_EMAIL:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 216
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/mdm/LGMDMManager;->isManualSyncCurrent()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 217
    goto :goto_0

    .line 220
    :cond_4
    sget-object v2, Lcom/android/lgesettings/MDMSettingsAdapter;->LGMDM_ADAPTER_BLUETOOTH:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 221
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowBluetooth(Landroid/content/ComponentName;)I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 224
    goto :goto_0

    .line 225
    :cond_5
    sget-object v2, Lcom/android/lgesettings/MDMSettingsAdapter;->LGMDM_ADAPTER_USB:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 226
    invoke-static {}, Lcom/lge/mdm/LGMDMManagerInternal;->getInstance()Lcom/lge/mdm/LGMDMManagerInternal;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/lge/mdm/LGMDMManagerInternal;->getDisallowUSBType(I)Z

    move-result v0

    goto :goto_0

    .line 227
    :cond_6
    sget-object v2, Lcom/android/lgesettings/MDMSettingsAdapter;->LGMDM_ADAPTER_TETHERING:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 228
    invoke-static {}, Lcom/lge/mdm/LGMDMManagerInternal;->getInstance()Lcom/lge/mdm/LGMDMManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/mdm/LGMDMManagerInternal;->getDisallowTetheringType(I)Z

    move-result v0

    goto :goto_0

    .line 229
    :cond_7
    sget-object v2, Lcom/android/lgesettings/MDMSettingsAdapter;->LGMDM_ADAPTER_ENCRYPTION:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 230
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/lge/mdm/LGMDMManager;->getEncryptionPolicy(Landroid/content/ComponentName;)I

    move-result v2

    if-eq v2, v1, :cond_8

    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/lge/mdm/LGMDMManager;->getEncryptionPolicy(Landroid/content/ComponentName;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    :cond_8
    move v0, v1

    .line 232
    goto :goto_0

    .line 235
    :cond_9
    const-string v2, "LGMDMAirplaneModeUIAdpater"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 236
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowAirplaneModeOn(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 239
    goto/16 :goto_0

    .line 240
    :cond_a
    const-string v2, "com.lge.mdm.intent.action.MOBILE_NETWORK_POLICY_CHANGE"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 241
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowMobileNetwork(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/lge/mdm/LGMDMManager;->getEnforceMobileNetworkEnabled(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_b
    move v0, v1

    .line 245
    goto/16 :goto_0

    .line 247
    :cond_c
    sget-object v1, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v2, "checkDisabled() : Not found feature"

    invoke-static {v1, v2}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public checkDisabledUsbType(I)Z
    .locals 3
    .parameter

    .prologue
    .line 1695
    const/4 v0, 0x7

    if-le p1, v0, :cond_0

    .line 1696
    sget-object v0, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkDisabledUsbType : unknown type :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    const/4 v0, 0x0

    .line 1699
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/lge/mdm/LGMDMManagerInternal;->getInstance()Lcom/lge/mdm/LGMDMManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/mdm/LGMDMManagerInternal;->getDisallowUSBType(I)Z

    move-result v0

    goto :goto_0
.end method

.method public checkEnforceBackgroundDataRestrictedPolicy(Landroid/view/MenuItem;Landroid/widget/CheckBox;)V
    .locals 3
    .parameter "mMenuRestrictBackground"
    .parameter "mBackgroundSwitdh"

    .prologue
    const/4 v2, 0x1

    .line 1777
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 1788
    :cond_0
    :goto_0
    return-void

    .line 1780
    :cond_1
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/mdm/LGMDMManager;->getEnforceBackgroundDataRestricted(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1781
    if-eqz p1, :cond_2

    .line 1782
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1783
    :cond_2
    if-eqz p2, :cond_0

    .line 1784
    invoke-virtual {p2, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1785
    invoke-virtual {p2, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public checkSimplepassword(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .parameter "activity"
    .parameter "password"

    .prologue
    .line 403
    const-string v2, "abcdefghijklmnopqrstuvwxyz"

    .line 404
    .local v2, aAlpha:Ljava/lang/String;
    const-string v3, "0123456789012"

    .line 405
    .local v3, aNumeric:Ljava/lang/String;
    const/4 v8, 0x1

    .line 406
    .local v8, nRepCount:I
    const/4 v9, 0x4

    .line 407
    .local v9, nReqLimit:I
    const/4 v6, 0x0

    .line 408
    .local v6, currChar:C
    const/4 v11, 0x0

    .line 409
    .local v11, prevChar:C
    const-string v14, ""

    .line 410
    .local v14, sRepeatedString:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 413
    .local v12, rRes:Landroid/content/res/Resources;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_2

    .line 414
    move v11, v6

    .line 415
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 417
    if-ne v11, v6, :cond_0

    .line 418
    add-int/lit8 v8, v8, 0x1

    .line 419
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 425
    :goto_1
    if-lt v8, v9, :cond_1

    .line 426
    const v17, 0x7f080c10

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v14, v18, v19

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 491
    :goto_2
    return-object v17

    .line 421
    :cond_0
    const/4 v8, 0x1

    .line 422
    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v14

    goto :goto_1

    .line 413
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 430
    :cond_2
    const/4 v5, 0x0

    .line 431
    .local v5, bSeqDigit:Z
    const/4 v4, 0x0

    .line 432
    .local v4, bSeqAlpha:Z
    const/4 v10, 0x4

    .line 433
    .local v10, nSeqLimit:I
    const-string v16, ""

    .line 436
    .local v16, sSequentialString:Ljava/lang/String;
    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v17

    sub-int v17, v17, v10

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    if-ge v7, v0, :cond_3

    .line 437
    add-int v17, v10, v7

    move/from16 v0, v17

    invoke-virtual {v2, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 438
    .local v13, sFwd:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/lgesettings/MDMSettingsAdapter;->strReverse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 440
    .local v15, sRev:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    .line 441
    const/4 v4, 0x1

    .line 442
    move-object/from16 v16, v13

    .line 453
    .end local v13           #sFwd:Ljava/lang/String;
    .end local v15           #sRev:Ljava/lang/String;
    :cond_3
    :goto_4
    if-eqz v4, :cond_6

    .line 454
    const v17, 0x7f080c11

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v16, v18, v19

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    goto :goto_2

    .line 446
    .restart local v13       #sFwd:Ljava/lang/String;
    .restart local v15       #sRev:Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 447
    const/4 v4, 0x1

    .line 448
    move-object/from16 v16, v15

    .line 449
    goto :goto_4

    .line 436
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 458
    .end local v13           #sFwd:Ljava/lang/String;
    .end local v15           #sRev:Ljava/lang/String;
    :cond_6
    const/4 v7, 0x0

    :goto_5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v17

    sub-int v17, v17, v10

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    if-ge v7, v0, :cond_7

    .line 459
    add-int v17, v10, v7

    move/from16 v0, v17

    invoke-virtual {v3, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 460
    .restart local v13       #sFwd:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/lgesettings/MDMSettingsAdapter;->strReverse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 461
    .restart local v15       #sRev:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    .line 462
    const/4 v5, 0x1

    .line 463
    move-object/from16 v16, v13

    .line 473
    .end local v13           #sFwd:Ljava/lang/String;
    .end local v15           #sRev:Ljava/lang/String;
    :cond_7
    :goto_6
    if-eqz v5, :cond_a

    .line 474
    const v17, 0x7f080c11

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v16, v18, v19

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_2

    .line 466
    .restart local v13       #sFwd:Ljava/lang/String;
    .restart local v15       #sRev:Ljava/lang/String;
    :cond_8
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    .line 467
    const/4 v5, 0x1

    .line 468
    move-object/from16 v16, v15

    .line 469
    goto :goto_6

    .line 458
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 478
    .end local v13           #sFwd:Ljava/lang/String;
    .end local v15           #sRev:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/MDMSettingsAdapter;->mDictionary:Ljava/util/HashMap;

    move-object/from16 v17, v0

    if-nez v17, :cond_b

    .line 479
    invoke-direct/range {p0 .. p1}, Lcom/android/lgesettings/MDMSettingsAdapter;->getDictionary(Landroid/app/Activity;)Ljava/util/HashMap;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/MDMSettingsAdapter;->mDictionary:Ljava/util/HashMap;

    .line 482
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/MDMSettingsAdapter;->mDictionary:Ljava/util/HashMap;

    move-object/from16 v17, v0

    if-nez v17, :cond_c

    .line 483
    sget-object v17, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v18, "mDictionary is null!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 487
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/MDMSettingsAdapter;->mDictionary:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 488
    const v17, 0x7f080c12

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object p2, v18, v19

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_2

    .line 491
    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_2
.end method

.method public createLGMDMDeviceAdminInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1709
    :try_start_0
    new-instance v0, Lcom/lge/mdm/manager/LGMDMDeviceAdminInfo;

    invoke-direct {v0, p1, p2}, Lcom/lge/mdm/manager/LGMDMDeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    iput-object v0, p0, Lcom/android/lgesettings/MDMSettingsAdapter;->mLGMDMDeviceAdmin:Lcom/lge/mdm/manager/LGMDMDeviceAdminInfo;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1715
    :goto_0
    return-void

    .line 1710
    :catch_0
    move-exception v0

    .line 1711
    sget-object v1, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v2, "Unable to retrieve LGMDM device policy "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1712
    :catch_1
    move-exception v0

    .line 1713
    sget-object v1, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v2, "Unable to retrieve LGMDM device policy "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isShowDataUsageAutoSyncToastIfNeed(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 829
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/mdm/LGMDMManager;->isManualSyncCurrent()Z

    move-result v2

    if-ne v2, v0, :cond_0

    .line 831
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080c31

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 834
    sget-object v1, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v2, "send toast auto sync"

    invoke-static {v1, v2}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isShowDataUsageRoamingToastIfNeed(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 817
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lge/mdm/LGMDMManager;->getAllowDataRoaming(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 819
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080c33

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 822
    sget-object v0, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v1, "send toast data roaming"

    invoke-static {v0, v1}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    const/4 v0, 0x1

    .line 825
    :cond_0
    return v0
.end method

.method public isShowEnforceBackgroundDataRestrictedToastIfNeed(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1764
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lge/mdm/LGMDMManager;->getEnforceBackgroundDataRestricted(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1765
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080c38

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1770
    const/4 v0, 0x1

    .line 1772
    :cond_0
    return v0
.end method

.method public isShowRemoveAccountToastIfNeed(Landroid/content/Context;Landroid/accounts/Account;)Z
    .locals 2
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v0, 0x1

    .line 1530
    invoke-direct {p0, p1, p2}, Lcom/android/lgesettings/MDMSettingsAdapter;->isAccountByMDM(Landroid/content/Context;Landroid/accounts/Account;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/lgesettings/MDMSettingsAdapter;->isAccountByGoogle(Landroid/content/Context;Landroid/accounts/Account;)Z

    move-result v1

    if-ne v1, v0, :cond_1

    .line 1533
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public receiveDataUsageSettingPolicyChangeIntent(Landroid/content/Intent;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1399
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1408
    :cond_0
    :goto_0
    return v0

    .line 1402
    :cond_1
    sget-object v1, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receiveDataUsageSettingPolicyChangeIntent action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    const-string v1, "com.lge.mdm.intent.action.MOBILE_NETWORK_POLICY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.lge.mdm.intent.action.BACKGROUND_DATA_RESTRICTED_POLICY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.lge.mdm.intent.action.DATA_ROAMING_POLICY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1406
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public receiveDevelopmentPolicyChangeIntent(Landroid/content/Intent;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1412
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1421
    :cond_0
    :goto_0
    return v0

    .line 1415
    :cond_1
    sget-object v1, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receiveDevelopmentPolicyChangeIntent action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    const-string v1, "com.lge.mdm.intent.action.USB_POLICY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.lge.mdm.intent.action.MOCK_LOCATION_POLICY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.lge.mdm.intent.action.SCREEN_CAPTURE_POLICY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1419
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public receiveExternalStoragePolicyChangeIntent(Landroid/content/Intent;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1352
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1359
    :cond_0
    :goto_0
    return v0

    .line 1355
    :cond_1
    sget-object v1, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receiveExternalStoragePolicyChangeIntent action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    const-string v1, "com.lge.mdm.intent.action.EXTERNAL_STORAGE_POLICY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1357
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public receiveLocationPolicyChangeIntent(Landroid/content/Intent;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1436
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1443
    :cond_0
    :goto_0
    return v0

    .line 1439
    :cond_1
    sget-object v1, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receiveLocationPolicyChangeIntent action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    const-string v1, "com.lge.mdm.intent.action.LOCATION_POLICY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1441
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public receiveMainSettingsPolicyChangeIntent(Landroid/content/Intent;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1447
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1458
    :cond_0
    :goto_0
    return v0

    .line 1450
    :cond_1
    sget-object v1, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receiveMainSettingsPolicyChangeIntent action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    const-string v1, "com.lge.mdm.intent.action.WIFI_POLICY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.lge.mdm.intent.action.BLUETOOTH_POLICY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.lge.mdm.intent.action.AIRPLANE_MODE_ON_POLICY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.lge.mdm.intent.action.MOBILE_NETWORK_POLICY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.lge.mdm.intent.action.MANUAL_SYNC_POLICY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1456
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public receiveManualSyncPolicyChangeIntent(Landroid/content/Intent;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1388
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1395
    :cond_0
    :goto_0
    return v0

    .line 1391
    :cond_1
    sget-object v1, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receiveManualSyncPolicyChangeIntent action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    const-string v1, "com.lge.mdm.intent.action.MANUAL_SYNC_POLICY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1393
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public receiveRemoveAdminPolicyChangeIntent(Landroid/content/Intent;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1425
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1432
    :cond_0
    :goto_0
    return v0

    .line 1428
    :cond_1
    sget-object v1, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receiveRemoveAdminPolicyChangeIntent action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    const-string v1, "com.lge.mdm.intent.action.REMOVE_ADMIN_POLICY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1430
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public receiveSecuritySettingChangeIntent(Landroid/content/Intent;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1515
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1523
    :cond_0
    :goto_0
    return v0

    .line 1518
    :cond_1
    sget-object v1, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receiveSecuritySettingChangeIntent action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    const-string v1, "com.lge.mdm.intent.action.SECURITY_SETTING_POLICY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.lge.mdm.intent.action.ACTION_UNKNOWN_SOURCE_POLICY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1521
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public receiveTetherPolicyChangeIntent(Landroid/content/Intent;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1478
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1487
    :cond_0
    :goto_0
    return v0

    .line 1481
    :cond_1
    sget-object v1, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receiveTetherPolicyChangeIntent action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    const-string v1, "com.lge.mdm.intent.action.TETHER_POLICY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.lge.mdm.intent.action.BLUETOOTH_POLICY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.lge.mdm.intent.action.USB_POLICY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1485
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public receiveUsbPolicyChangeIntent(Landroid/content/Intent;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1376
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1384
    :cond_0
    :goto_0
    return v0

    .line 1379
    :cond_1
    sget-object v1, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receiveUsbPolicyChangeIntent action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    const-string v1, "com.lge.mdm.intent.action.TETHER_POLICY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.lge.mdm.intent.action.USB_POLICY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1382
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public receiveWipeDateChangeIntent(Landroid/content/Intent;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1363
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1372
    :cond_0
    :goto_0
    return v0

    .line 1366
    :cond_1
    sget-object v1, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receiveWipeDateChangeIntent action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    const-string v1, "com.lge.mdm.intent.action.WIPE_DATA_POLICY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.lge.mdm.intent.action.AUTO_RESTORE_POLICY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.lge.mdm.intent.action.GOOGLE_BACKUP_POLICY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1370
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public receiveWirelessSettingsPolicyChangeIntent(Landroid/content/Intent;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1462
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1474
    :cond_0
    :goto_0
    return v0

    .line 1465
    :cond_1
    sget-object v1, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receiveWirelessSettingsPolicyChangeIntent action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    const-string v1, "com.lge.mdm.intent.action.TETHER_POLICY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.lge.mdm.intent.action.MOBILE_NETWORK_POLICY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.lge.mdm.intent.action.WIFI_POLICY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.lge.mdm.intent.action.BLUETOOTH_POLICY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.lge.mdm.intent.action.USB_POLICY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.lge.mdm.intent.action.ACTION_WIRELESS_STORAGE_DISALLOW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1472
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setAdbEnableMenu(Landroid/preference/CheckBoxPreference;)V
    .locals 2
    .parameter "pref"

    .prologue
    .line 579
    if-nez p1, :cond_1

    .line 580
    sget-object v0, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v1, "setAdbEnableMenu : pref is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 584
    :cond_1
    invoke-static {}, Lcom/lge/mdm/LGMDMManagerInternal;->getInstance()Lcom/lge/mdm/LGMDMManagerInternal;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/lge/mdm/LGMDMManagerInternal;->getDisallowUSBType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    sget-object v0, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v1, "setAdbEnableMenu : LGMDM disallow Usb Debugging"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const v0, 0x7f080c1e

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 587
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setAdminListEnableClickMenu(Landroid/content/Context;Landroid/app/admin/DeviceAdminInfo;)Z
    .locals 7
    .parameter "context"
    .parameter "item"

    .prologue
    .line 673
    const-string v4, "device_policy"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 674
    .local v3, mDPM:Landroid/app/admin/DevicePolicyManager;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 675
    .local v2, mActiveAdmins:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v0

    .line 676
    .local v0, cur:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v0, :cond_0

    .line 677
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 678
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 677
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 681
    .end local v1           #i:I
    :cond_0
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/lge/mdm/LGMDMManager;->getAllowRemoveDeviceAdmin(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p2}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 683
    sget-object v4, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v5, "MDM: allowed package can\'t remove "

    invoke-static {v4, v5}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    const/4 v4, 0x1

    .line 686
    :goto_1
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public setAdminListEnableDisplayMenu(Landroid/content/Context;Landroid/app/admin/DeviceAdminInfo;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/CheckBox;Landroid/widget/TextView;)V
    .locals 8
    .parameter "context"
    .parameter "item"
    .parameter "icon"
    .parameter "name"
    .parameter "checkbox"
    .parameter "description"

    .prologue
    const/4 v7, 0x0

    .line 652
    const-string v4, "device_policy"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 653
    .local v3, mDPM:Landroid/app/admin/DevicePolicyManager;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 654
    .local v2, mActiveAdmins:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v0

    .line 655
    .local v0, cur:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v0, :cond_0

    .line 656
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 657
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 656
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 660
    .end local v1           #i:I
    :cond_0
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v4

    invoke-virtual {p2}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {p2}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/lge/mdm/LGMDMManager;->getAllowRemoveDeviceAdmin(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p2}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 663
    invoke-virtual {p3, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 664
    invoke-virtual {p4, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 665
    invoke-virtual {p5, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 666
    invoke-virtual {p6, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 667
    const v4, 0x7f080c1f

    invoke-virtual {p6, v4}, Landroid/widget/TextView;->setText(I)V

    .line 669
    :cond_1
    return-void
.end method

.method public setAutoMasterSynceEnableMenu(Landroid/content/ComponentName;Landroid/preference/CheckBoxPreference;)Z
    .locals 2
    .parameter "who"
    .parameter "autoSyncData"

    .prologue
    const/4 v0, 0x0

    .line 565
    if-nez p2, :cond_0

    .line 575
    :goto_0
    return v0

    .line 569
    :cond_0
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/mdm/LGMDMManager;->isManualSyncCurrent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 570
    invoke-virtual {p2, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 571
    const v0, 0x7f080c31

    invoke-virtual {p2, v0}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 572
    sget-object v0, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v1, "[LGMDM] master auto synce is false"

    invoke-static {v0, v1}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setAutoRestoreMenu(Landroid/content/ComponentName;Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V
    .locals 5
    .parameter "who"
    .parameter "resContext"
    .parameter "mAutoRestore"

    .prologue
    const/4 v4, 0x0

    .line 720
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowAutoRestore(Landroid/content/ComponentName;)Z

    move-result v0

    .line 721
    .local v0, allowAutoRestore:Z
    sget-object v1, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LGMDM menu : allowAutoRestore = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    if-nez p3, :cond_1

    .line 731
    :cond_0
    :goto_0
    return-void

    .line 726
    :cond_1
    if-nez v0, :cond_0

    .line 727
    invoke-virtual {p3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 728
    const v1, 0x7f080c3a

    invoke-virtual {p3, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 729
    invoke-virtual {p3, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setBluetoothTetheringMenu(Landroid/preference/TwoStatePreference;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1662
    if-nez p1, :cond_1

    .line 1672
    :cond_0
    :goto_0
    return v0

    .line 1666
    :cond_1
    invoke-static {}, Lcom/lge/mdm/LGMDMManagerInternal;->getInstance()Lcom/lge/mdm/LGMDMManagerInternal;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/lge/mdm/LGMDMManagerInternal;->getDisallowTetheringType(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1667
    invoke-virtual {p1, v0}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 1668
    invoke-virtual {p1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1669
    const v0, 0x7f080c1a

    invoke-virtual {p1, v0}, Landroid/preference/TwoStatePreference;->setSummary(I)V

    .line 1670
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setDataEnablerSwitch(Landroid/widget/Switch;)Z
    .locals 3
    .parameter "mSwitch"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 759
    if-nez p1, :cond_0

    .line 767
    :goto_0
    return v0

    .line 762
    :cond_0
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/lge/mdm/LGMDMManager;->getEnforceMobileNetworkEnabled(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 763
    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 767
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 764
    :cond_2
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/lge/mdm/LGMDMManager;->getAllowMobileNetwork(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 765
    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_1
.end method

.method public setDataUsageSwitch(Landroid/widget/Switch;Landroid/widget/CompoundButton$OnCheckedChangeListener;)Z
    .locals 3
    .parameter "mDataEnabled"
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 771
    if-nez p1, :cond_0

    .line 782
    :goto_0
    return v0

    .line 774
    :cond_0
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/lge/mdm/LGMDMManager;->getEnforceMobileNetworkEnabled(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 775
    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 782
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 776
    :cond_2
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/lge/mdm/LGMDMManager;->getAllowMobileNetwork(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 777
    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 778
    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 779
    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 780
    invoke-virtual {p1, p2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_1
.end method

.method public setDisallowAirplaneModeSummary(Landroid/content/ComponentName;Landroid/content/Context;Landroid/preference/CheckBoxPreference;)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1241
    if-nez p3, :cond_1

    .line 1242
    sget-object v1, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v2, "setDisallowAirplaneModeSummary : mDisallowAirplaneModeCBPref is null"

    invoke-static {v1, v2}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    :cond_0
    :goto_0
    return v0

    .line 1245
    :cond_1
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowAirplaneModeOn(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1246
    sget-object v1, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v2, "setDisallowAirplaneModeSummary : mDisallowAirplaneModeCBPref disable"

    invoke-static {v1, v2}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    invoke-virtual {p3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1248
    const v0, 0x7f080c30

    invoke-virtual {p3, v0}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1250
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setDisallowAirplaneModeSummary_VZW(Landroid/content/ComponentName;Landroid/content/Context;Landroid/widget/Switch;)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1225
    if-nez p3, :cond_1

    .line 1226
    sget-object v1, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v2, "setDisallowAirplaneModeSummary_VZW : mDisallowAirplaneModeCBPref is null"

    invoke-static {v1, v2}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    :cond_0
    :goto_0
    return v0

    .line 1230
    :cond_1
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowAirplaneModeOn(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1231
    sget-object v1, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v2, "setDisallowAirplaneModeSummary_VZW : mDisallowAirplaneModeCBPref disable"

    invoke-static {v1, v2}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    invoke-virtual {p3, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 1234
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setEncryptionSummary(ZILandroid/content/Context;Landroid/preference/Preference;Landroid/preference/Preference;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const v8, 0x7f080c2e

    const v7, 0x7f080c2d

    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 1124
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/mdm/LGMDMManager;->getEncryptionPolicy(Landroid/content/ComponentName;)I

    move-result v0

    .line 1125
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lge/mdm/LGMDMManager;->getEncryptionPolicyForEas(Landroid/content/ComponentName;)I

    move-result v1

    .line 1126
    sget-object v2, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setEncryptionSummary isEnable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "policyType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    packed-switch p2, :pswitch_data_0

    .line 1196
    :cond_0
    :goto_0
    return-void

    .line 1131
    :pswitch_0
    if-eqz p1, :cond_8

    .line 1132
    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    .line 1135
    if-eq v0, v9, :cond_1

    if-ne v1, v9, :cond_2

    .line 1137
    :cond_1
    invoke-virtual {p4, v8}, Landroid/preference/Preference;->setSummary(I)V

    .line 1138
    invoke-virtual {p4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 1139
    :cond_2
    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 1141
    :cond_3
    invoke-virtual {p5, v7}, Landroid/preference/Preference;->setSummary(I)V

    .line 1142
    invoke-virtual {p5, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 1143
    :cond_4
    if-eq v0, v6, :cond_5

    if-ne v1, v6, :cond_6

    .line 1145
    :cond_5
    invoke-virtual {p4, v8}, Landroid/preference/Preference;->setSummary(I)V

    .line 1146
    invoke-virtual {p4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1147
    invoke-virtual {p5, v7}, Landroid/preference/Preference;->setSummary(I)V

    .line 1148
    invoke-virtual {p5, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 1149
    :cond_6
    if-nez v0, :cond_7

    .line 1150
    invoke-virtual {p4, v8}, Landroid/preference/Preference;->setSummary(I)V

    .line 1151
    invoke-virtual {p4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 1152
    :cond_7
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1153
    const-string v0, "persist.sdcrypto.enabled"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1154
    invoke-virtual {p5, v7}, Landroid/preference/Preference;->setSummary(I)V

    .line 1155
    invoke-virtual {p5, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 1159
    :cond_8
    if-eqz p4, :cond_0

    .line 1162
    if-eq v0, v9, :cond_9

    if-eq v0, v6, :cond_9

    if-eq v1, v9, :cond_9

    if-ne v1, v6, :cond_a

    .line 1166
    :cond_9
    invoke-virtual {p4, v8}, Landroid/preference/Preference;->setSummary(I)V

    .line 1167
    invoke-virtual {p4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 1168
    :cond_a
    if-nez v0, :cond_0

    .line 1169
    invoke-virtual {p4, v8}, Landroid/preference/Preference;->setSummary(I)V

    .line 1170
    invoke-virtual {p4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 1175
    :pswitch_1
    if-eqz p5, :cond_0

    .line 1178
    if-eqz p1, :cond_0

    .line 1179
    const/4 v2, 0x2

    if-eq v0, v2, :cond_b

    if-eq v0, v6, :cond_b

    const/4 v2, 0x2

    if-eq v1, v2, :cond_b

    if-ne v1, v6, :cond_c

    .line 1183
    :cond_b
    invoke-virtual {p5, v7}, Landroid/preference/Preference;->setSummary(I)V

    .line 1184
    invoke-virtual {p5, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1185
    :cond_c
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1186
    const-string v0, "persist.sdcrypto.enabled"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1187
    invoke-virtual {p5, v7}, Landroid/preference/Preference;->setSummary(I)V

    .line 1188
    invoke-virtual {p5, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setEraseSdMenu(Landroid/content/ComponentName;Landroid/preference/Preference;Landroid/os/storage/StorageVolume;)Z
    .locals 5
    .parameter "who"
    .parameter "mFormatPreference"
    .parameter "storageVolume"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 380
    sget-object v3, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v4, "setEraseSdMenu"

    invoke-static {v3, v4}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 399
    :cond_0
    :goto_0
    return v2

    .line 385
    :cond_1
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowWipeData(Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 386
    invoke-virtual {p3}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    .line 387
    .local v0, allowFormat:Z
    :goto_1
    invoke-virtual {p2, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 388
    if-eqz v0, :cond_3

    invoke-virtual {p3}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v2

    if-nez v2, :cond_3

    .line 389
    const v2, 0x7f080c2f

    invoke-virtual {p2, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 395
    :goto_2
    sget-object v2, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v3, "setEraseSdMenu: MDM Locked menu"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 396
    goto :goto_0

    .end local v0           #allowFormat:Z
    :cond_2
    move v0, v2

    .line 386
    goto :goto_1

    .line 392
    .restart local v0       #allowFormat:Z
    :cond_3
    const v2, 0x7f080c2a

    invoke-virtual {p2, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_2
.end method

.method public setExternalMemoryEnableMenu(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "who"
    .parameter "resContext"
    .parameter "menuString"
    .parameter "externalmenu"

    .prologue
    const/4 v0, 0x0

    .line 359
    sget-object v1, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkReceAction() Component : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Menu: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    if-eqz p4, :cond_0

    if-nez p3, :cond_1

    .line 375
    :cond_0
    :goto_0
    return v0

    .line 365
    :cond_1
    const-string v1, "mMountSDcard"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 366
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowExternalMemorySlot(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 367
    sget-object v1, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v2, "[LGMDM] Allow mode"

    invoke-static {v1, v2}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-virtual {p4, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 370
    const v0, 0x7f08046d

    invoke-virtual {p4, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 371
    const v0, 0x7f080c1b

    invoke-virtual {p4, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 375
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setFactoryResetButton(Landroid/content/ComponentName;Landroid/content/Context;Landroid/widget/Button;)V
    .locals 4
    .parameter "who"
    .parameter "resContext"
    .parameter "mInitiateButton"

    .prologue
    .line 734
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowWipeData(Landroid/content/ComponentName;)Z

    move-result v0

    .line 735
    .local v0, allowFactoryRest:Z
    sget-object v1, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LGMDM menu : allowFactoryRest = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    if-nez p3, :cond_1

    .line 743
    :cond_0
    :goto_0
    return-void

    .line 740
    :cond_1
    if-nez v0, :cond_0

    .line 741
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setFactoryResetConfirmButton(Landroid/content/ComponentName;Landroid/content/Context;Landroid/widget/Button;)V
    .locals 4
    .parameter "who"
    .parameter "resContext"
    .parameter "mFinalButton"

    .prologue
    .line 747
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowWipeData(Landroid/content/ComponentName;)Z

    move-result v0

    .line 748
    .local v0, allowFactoryRest:Z
    sget-object v1, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LGMDM menu : allowFactoryRest = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    if-nez p3, :cond_1

    .line 756
    :cond_0
    :goto_0
    return-void

    .line 753
    :cond_1
    if-nez v0, :cond_0

    .line 754
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setFactoryResetMenu(Landroid/content/ComponentName;Landroid/content/Context;Landroid/preference/PreferenceScreen;)V
    .locals 4
    .parameter "who"
    .parameter "resContext"
    .parameter "mBackupReset"

    .prologue
    .line 691
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowWipeData(Landroid/content/ComponentName;)Z

    move-result v0

    .line 692
    .local v0, allowFactoryRest:Z
    sget-object v1, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LGMDM menu : allowFactoryRest = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    if-nez p3, :cond_1

    .line 701
    :cond_0
    :goto_0
    return-void

    .line 697
    :cond_1
    if-nez v0, :cond_0

    .line 698
    const v1, 0x7f080c29

    invoke-virtual {p3, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 699
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setGoogleBackupMenu(Landroid/content/ComponentName;Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V
    .locals 5
    .parameter "who"
    .parameter "resContext"
    .parameter "mBackup"

    .prologue
    const/4 v4, 0x0

    .line 705
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowGoogleBackup(Landroid/content/ComponentName;)Z

    move-result v0

    .line 706
    .local v0, allowGoogleBackup:Z
    sget-object v1, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LGMDM menu : allowGoogleBackup = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    if-nez p3, :cond_1

    .line 716
    :cond_0
    :goto_0
    return-void

    .line 711
    :cond_1
    if-nez v0, :cond_0

    .line 712
    invoke-virtual {p3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 713
    const v1, 0x7f080c39

    invoke-virtual {p3, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 714
    invoke-virtual {p3, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setLocationEnableMenu(Landroid/content/Context;Ljava/lang/String;Landroid/preference/TwoStatePreference;)Z
    .locals 10
    .parameter "context"
    .parameter "menuString"
    .parameter "menu"

    .prologue
    .line 254
    if-nez p3, :cond_0

    .line 255
    sget-object v8, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v9, "menu is null"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v8, 0x0

    .line 354
    :goto_0
    return v8

    .line 258
    :cond_0
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/lge/mdm/LGMDMManager;->getAllowGPSLocation(Landroid/content/ComponentName;)Z

    move-result v8

    if-nez v8, :cond_3

    const/4 v0, 0x1

    .line 259
    .local v0, disallowGps:Z
    :goto_1
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/lge/mdm/LGMDMManager;->getEnforceGPSLocationEnabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 260
    .local v3, enforceGps:Z
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/lge/mdm/LGMDMManager;->getAllowWirelessLocation(Landroid/content/ComponentName;)Z

    move-result v8

    if-nez v8, :cond_4

    const/4 v1, 0x1

    .line 262
    .local v1, disallowLocation:Z
    :goto_2
    const-string v8, "mGps"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 263
    if-eqz v0, :cond_5

    .line 264
    sget-object v8, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v9, "[LGMDM] mGps disabllow mode"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/4 v8, 0x0

    invoke-virtual {p3, v8}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 267
    const v8, 0x7f080c23

    invoke-virtual {p3, v8}, Landroid/preference/TwoStatePreference;->setSummary(I)V

    .line 268
    const-string v8, "SKT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "KT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "LGU"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 271
    :cond_1
    const v8, 0x7f080c23

    invoke-virtual {p3, v8}, Landroid/preference/TwoStatePreference;->setSummaryOff(I)V

    .line 273
    :cond_2
    const/4 v8, 0x1

    goto :goto_0

    .line 258
    .end local v0           #disallowGps:Z
    .end local v1           #disallowLocation:Z
    .end local v3           #enforceGps:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 260
    .restart local v0       #disallowGps:Z
    .restart local v3       #enforceGps:Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 274
    .restart local v1       #disallowLocation:Z
    :cond_5
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/lge/mdm/LGMDMManager;->getEnforceGPSLocationEnabled(Landroid/content/ComponentName;)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 275
    sget-object v8, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v9, "[LGMDM] mGps Enforce mode"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/4 v8, 0x0

    invoke-virtual {p3, v8}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 278
    const v8, 0x7f080c41

    invoke-virtual {p3, v8}, Landroid/preference/TwoStatePreference;->setSummary(I)V

    .line 279
    const-string v8, "SKT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "KT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "LGU"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 282
    :cond_6
    const v8, 0x7f080c41

    invoke-virtual {p3, v8}, Landroid/preference/TwoStatePreference;->setSummaryOn(I)V

    .line 284
    :cond_7
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 286
    :cond_8
    const-string v8, "mGpsVzw"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 287
    if-eqz v0, :cond_9

    .line 288
    sget-object v8, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v9, "[LGMDM] mGpsVzw disabllow mode"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/4 v8, 0x0

    invoke-virtual {p3, v8}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 291
    const v8, 0x7f080c23

    invoke-virtual {p3, v8}, Landroid/preference/TwoStatePreference;->setSummary(I)V

    .line 292
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 293
    :cond_9
    if-eqz v3, :cond_1d

    .line 294
    sget-object v8, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v9, "[LGMDM] mGpsVzw Enforce mode"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/4 v8, 0x0

    invoke-virtual {p3, v8}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 297
    const v8, 0x7f080c41

    invoke-virtual {p3, v8}, Landroid/preference/TwoStatePreference;->setSummary(I)V

    .line 298
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 300
    :cond_a
    const-string v8, "mNetwork"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 301
    if-eqz v1, :cond_1d

    .line 302
    sget-object v8, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v9, "[LGMDM] mNetwork disabllow mode"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const/4 v8, 0x0

    invoke-virtual {p3, v8}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 305
    const v8, 0x7f080c22

    invoke-virtual {p3, v8}, Landroid/preference/TwoStatePreference;->setSummary(I)V

    .line 306
    const-string v8, "SKT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    const-string v8, "KT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    const-string v8, "LGU"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 309
    :cond_b
    const v8, 0x7f080c22

    invoke-virtual {p3, v8}, Landroid/preference/TwoStatePreference;->setSummaryOff(I)V

    .line 311
    :cond_c
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 313
    :cond_d
    const-string v8, "mVzwLbs"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 314
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->isSupportVZWLocationAccessScenario4_0()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 315
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 317
    :cond_e
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/lge/mdm/LGMDMManager;->getAllowVerizonLocation(Landroid/content/ComponentName;)Z

    move-result v8

    if-nez v8, :cond_1d

    .line 318
    sget-object v8, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v9, "[LGMDM] mVzwLbs disabllow mode"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/4 v8, 0x0

    invoke-virtual {p3, v8}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 321
    const v8, 0x7f080c22

    invoke-virtual {p3, v8}, Landroid/preference/TwoStatePreference;->setSummary(I)V

    .line 322
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 324
    :cond_f
    const-string v8, "mLocationAccess"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 325
    if-eqz v3, :cond_10

    if-eqz v0, :cond_11

    :cond_10
    if-eqz v0, :cond_17

    if-eqz v1, :cond_17

    :cond_11
    const/4 v6, 0x1

    .line 326
    .local v6, restrictLocationAccess:Z
    :goto_3
    const-string v8, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->isSupportVZWLocationAccessScenario4_0()Z

    move-result v8

    if-nez v8, :cond_14

    .line 328
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/lge/mdm/LGMDMManager;->getAllowVerizonLocation(Landroid/content/ComponentName;)Z

    move-result v8

    if-nez v8, :cond_18

    const/4 v2, 0x1

    .line 329
    .local v2, disallwVzwLoc:Z
    :goto_4
    if-eqz v3, :cond_12

    if-eqz v0, :cond_13

    :cond_12
    if-eqz v6, :cond_19

    if-eqz v2, :cond_19

    :cond_13
    const/4 v6, 0x1

    .line 331
    .end local v2           #disallwVzwLoc:Z
    :cond_14
    :goto_5
    if-eqz v6, :cond_1d

    .line 332
    sget-object v8, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v9, "[LGMDM] mLocationAccess restrict mode"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .local v7, toastMsg:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_1a

    .line 335
    const/4 v8, 0x0

    invoke-virtual {p3, v8}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 336
    const v8, 0x7f080c23

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    :cond_15
    :goto_6
    if-eqz v1, :cond_16

    .line 342
    const v8, 0x7f080c22

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    :cond_16
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 345
    .local v5, id:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {p1, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 325
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #id:I
    .end local v6           #restrictLocationAccess:Z
    .end local v7           #toastMsg:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_17
    const/4 v6, 0x0

    goto :goto_3

    .line 328
    .restart local v6       #restrictLocationAccess:Z
    :cond_18
    const/4 v2, 0x0

    goto :goto_4

    .line 329
    .restart local v2       #disallwVzwLoc:Z
    :cond_19
    const/4 v6, 0x0

    goto :goto_5

    .line 337
    .end local v2           #disallwVzwLoc:Z
    .restart local v7       #toastMsg:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1a
    if-eqz v3, :cond_15

    .line 338
    const/4 v8, 0x1

    invoke-virtual {p3, v8}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 339
    const v8, 0x7f080c42

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 348
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_1b
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 351
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #restrictLocationAccess:Z
    .end local v7           #toastMsg:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1c
    sget-object v8, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v9, "setLocationEnableMenu : unknown menu"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_1d
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method public setMiracastPreference(Landroid/preference/Preference;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1831
    if-nez p1, :cond_1

    .line 1841
    :cond_0
    :goto_0
    return v0

    .line 1835
    :cond_1
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lge/mdm/LGMDMManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1836
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1837
    const v0, 0x7f080c44

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 1838
    sget-object v0, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v1, "setMiracastMenu : LGMDM Block Miracast menu"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setMobileNetworkMenu(Landroid/preference/PreferenceScreen;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1095
    if-nez p1, :cond_1

    .line 1111
    :cond_0
    :goto_0
    return-void

    .line 1098
    :cond_1
    const-string v0, "SKT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1102
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/lge/mdm/LGMDMManager;->getEnforceMobileNetworkEnabled(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1103
    const v0, 0x7f080c35

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 1104
    sget-object v0, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v1, "LGMDM DevicePolicyManager Locked Mobile Network enable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 1106
    :cond_2
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/lge/mdm/LGMDMManager;->getAllowMobileNetwork(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1107
    const v0, 0x7f080c2b

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 1108
    sget-object v0, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v1, "LGMDM DevicePolicyManager Locked Mobile Network disable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setMockLocationMenu(Landroid/preference/CheckBoxPreference;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1199
    if-nez p1, :cond_1

    .line 1200
    sget-object v0, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v1, "setMockLocationMenu : pref is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    :cond_0
    :goto_0
    return-void

    .line 1204
    :cond_1
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/mdm/LGMDMManager;->getAllowMockLocation(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1205
    sget-object v0, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v1, "setMockLocationMenu : LGMDM disallow MockLocation"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    const v0, 0x7f080c43

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1207
    invoke-virtual {p1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1208
    invoke-virtual {p1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public setPasswordTypingVisibleMenu(Landroid/preference/CheckBoxPreference;)V
    .locals 2
    .parameter

    .prologue
    .line 1803
    if-nez p1, :cond_1

    .line 1804
    sget-object v0, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v1, "setPasswordTypingVisibleMenu : pref is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    :cond_0
    :goto_0
    return-void

    .line 1807
    :cond_1
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/mdm/LGMDMManager;->getAllowPasswordTypingVisible(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1808
    sget-object v0, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v1, "LGMDM does not allow PasswordTypingVisible menu"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    const v0, 0x7f080c3c

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1810
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setSettingsMenu(Landroid/content/res/Resources;Landroid/widget/ListAdapter;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 987
    if-nez p2, :cond_1

    .line 988
    sget-object v0, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v1, "setSettingsMenu: listAdapter = null "

    invoke-static {v0, v1}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    :cond_0
    return-void

    .line 992
    :cond_1
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {p2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 993
    invoke-interface {p2, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 994
    iget-wide v3, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v3, v3

    .line 995
    invoke-virtual {v0, p1}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 997
    const v1, 0x7f0a043f

    if-ne v3, v1, :cond_3

    .line 998
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v1

    sget-object v3, Lcom/android/lgesettings/MDMSettingsAdapter;->LGMDM_ADAPTER_WIFI:Ljava/lang/String;

    invoke-virtual {v1, v5, v3}, Lcom/android/lgesettings/MDMSettingsAdapter;->checkDisabled(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1000
    sget-object v1, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v3, "MDM wifi change summary"

    invoke-static {v1, v3}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    const v1, 0x7f080c13

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 992
    :cond_2
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1003
    :cond_3
    const v1, 0x7f0a0440

    if-ne v3, v1, :cond_4

    .line 1004
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v1

    sget-object v3, Lcom/android/lgesettings/MDMSettingsAdapter;->LGMDM_ADAPTER_BLUETOOTH:Ljava/lang/String;

    invoke-virtual {v1, v5, v3}, Lcom/android/lgesettings/MDMSettingsAdapter;->checkDisabled(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1006
    sget-object v1, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v3, "MDM bt change summary"

    invoke-static {v1, v3}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    const v1, 0x7f080c16

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    goto :goto_1

    .line 1009
    :cond_4
    const v1, 0x7f0a045b

    if-ne v3, v1, :cond_5

    .line 1010
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v1

    sget-object v3, Lcom/android/lgesettings/MDMSettingsAdapter;->LGMDM_ADAPTER_EMAIL:Ljava/lang/String;

    invoke-virtual {v1, v5, v3}, Lcom/android/lgesettings/MDMSettingsAdapter;->checkDisabled(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1012
    sget-object v1, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v3, "MDM sync change summary"

    invoke-static {v1, v3}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    const v1, 0x7f080c31

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    goto :goto_1

    .line 1015
    :cond_5
    const v1, 0x7f0a043d

    if-ne v3, v1, :cond_6

    .line 1016
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v1

    const-string v3, "LGMDMAirplaneModeUIAdpater"

    invoke-virtual {v1, v5, v3}, Lcom/android/lgesettings/MDMSettingsAdapter;->checkDisabled(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1018
    sget-object v1, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v3, "MDM airplane mode change summary"

    invoke-static {v1, v3}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    const v1, 0x7f080c30

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    goto :goto_1

    .line 1021
    :cond_6
    const v1, 0x7f0a0441

    if-ne v3, v1, :cond_2

    .line 1022
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v1

    const-string v3, "com.lge.mdm.intent.action.MOBILE_NETWORK_POLICY_CHANGE"

    invoke-virtual {v1, v5, v3}, Lcom/android/lgesettings/MDMSettingsAdapter;->checkDisabled(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1024
    const-string v1, "ATT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1025
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/lge/mdm/LGMDMManager;->getEnforceMobileNetworkEnabled(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1027
    sget-object v1, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v3, "MDM EnforceMobileNetwork summary"

    invoke-static {v1, v3}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    const v1, 0x7f080c35

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 1029
    :cond_7
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/lge/mdm/LGMDMManager;->getAllowMobileNetwork(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1031
    sget-object v1, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v3, "MDM AllowMobileNetwork summary"

    invoke-static {v1, v3}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    const v1, 0x7f080c2b

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    goto/16 :goto_1
.end method

.method public setUSBHostStorageEnableMenu(Landroid/preference/Preference;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1815
    if-nez p1, :cond_1

    .line 1827
    :cond_0
    :goto_0
    return v0

    .line 1819
    :cond_1
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lge/mdm/LGMDMManager;->getAllowUSBHostStorage(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1820
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1821
    const v0, 0x7f080c40

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 1823
    sget-object v0, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v1, "LGMDM Block USBHostStorageEnableMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setUnknownSourceEnableMenu(Landroid/preference/CheckBoxPreference;)V
    .locals 3
    .parameter "pref"

    .prologue
    const v2, 0x7f080c1d

    .line 623
    if-nez p1, :cond_1

    .line 624
    sget-object v0, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v1, "setUnknownSourceEnableMenu : pref is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_0
    :goto_0
    return-void

    .line 627
    :cond_1
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/mdm/LGMDMManager;->getAllowUnknownSourceInstallation(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 628
    sget-object v0, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v1, "LGMDM does not allow unknown source installtion menu"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    invoke-virtual {p1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 630
    invoke-virtual {p1, v2}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    .line 631
    invoke-virtual {p1, v2}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    .line 632
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setUnknownSourceEnableMenu(Lcom/android/lgesettings/DoubleTitleListPreference;)V
    .locals 3
    .parameter "mListToggleAppInstallation"

    .prologue
    const/4 v2, 0x0

    .line 638
    if-nez p1, :cond_1

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 641
    :cond_1
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/mdm/LGMDMManager;->getAllowUnknownSourceInstallation(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 642
    sget-object v0, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v1, "LGMDM does not allow unknown source installation menu"

    invoke-static {v0, v1}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    invoke-virtual {p1, v2}, Lcom/android/lgesettings/DoubleTitleListPreference;->setValueIndex(I)V

    .line 644
    const v0, 0x7f080c1d

    invoke-virtual {p1, v0}, Lcom/android/lgesettings/DoubleTitleListPreference;->setSummary(I)V

    .line 645
    invoke-virtual {p1, v2}, Lcom/android/lgesettings/DoubleTitleListPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setUsbMenu(Lcom/android/lgesettings/lge/RadioButtonPreference;Lcom/android/lgesettings/lge/RadioButtonPreference;Lcom/android/lgesettings/lge/RadioButtonPreference;Lcom/android/lgesettings/lge/RadioButtonPreference;Lcom/android/lgesettings/lge/RadioButtonPreference;Lcom/android/lgesettings/lge/RadioButtonPreference;Lcom/android/lgesettings/lge/RadioButtonPreference;ILjava/lang/String;)Z
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 847
    const/4 v1, 0x0

    .line 848
    invoke-static {}, Lcom/lge/mdm/LGMDMManagerInternal;->getInstance()Lcom/lge/mdm/LGMDMManagerInternal;

    move-result-object v2

    .line 849
    if-nez v2, :cond_1

    .line 850
    sget-object v2, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v3, "setUsbMenu : mdm is null"

    invoke-static {v2, v3}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    :cond_0
    :goto_0
    return v1

    .line 853
    :cond_1
    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/lge/mdm/LGMDMManagerInternal;->getDisallowUSBType(I)Z

    move-result v6

    .line 854
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/lge/mdm/LGMDMManagerInternal;->getDisallowUSBType(I)Z

    move-result v7

    .line 855
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/lge/mdm/LGMDMManagerInternal;->getDisallowUSBType(I)Z

    move-result v5

    .line 856
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/lge/mdm/LGMDMManagerInternal;->getDisallowUSBType(I)Z

    move-result v4

    .line 857
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/lge/mdm/LGMDMManagerInternal;->getDisallowUSBType(I)Z

    move-result v3

    .line 858
    const/4 v8, 0x5

    invoke-virtual {v2, v8}, Lcom/lge/mdm/LGMDMManagerInternal;->getDisallowUSBType(I)Z

    move-result v2

    .line 860
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/android/lgesettings/lge/OverlayUtils;->getAllowUsbPort(Landroid/content/ComponentName;)Z

    move-result v8

    .line 861
    if-nez v8, :cond_2

    .line 862
    const/4 v5, 0x1

    .line 863
    const/4 v4, 0x1

    .line 864
    const/4 v3, 0x1

    .line 865
    const/4 v2, 0x1

    .line 868
    :cond_2
    if-eqz p2, :cond_a

    .line 869
    if-eqz v5, :cond_3

    .line 871
    const v8, 0x7f080c24

    invoke-virtual {p2, v8}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setSummary(I)V

    .line 872
    const/4 v8, 0x0

    invoke-virtual {p2, v8}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 873
    const/4 v8, 0x0

    invoke-virtual {p2, v8}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setEnabled(Z)V

    .line 874
    sget-object v8, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v9, "setUsbMenu : LGMDM Block mediasync"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    :cond_3
    :goto_1
    if-eqz p3, :cond_b

    .line 881
    if-eqz v3, :cond_4

    .line 883
    const v8, 0x7f080c27

    invoke-virtual {p3, v8}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setSummary(I)V

    .line 884
    const/4 v8, 0x0

    invoke-virtual {p3, v8}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 885
    const/4 v8, 0x0

    invoke-virtual {p3, v8}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setEnabled(Z)V

    .line 886
    sget-object v8, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v9, "setUsbMenu : LGMDM Block massStorage"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :cond_4
    :goto_2
    if-eqz p4, :cond_c

    .line 893
    if-eqz v2, :cond_5

    .line 895
    const v2, 0x7f080c25

    invoke-virtual {p4, v2}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setSummary(I)V

    .line 896
    const/4 v2, 0x0

    invoke-virtual {p4, v2}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 897
    const/4 v2, 0x0

    invoke-virtual {p4, v2}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setEnabled(Z)V

    .line 898
    sget-object v2, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v8, "setUsbMenu : LGMDM Block pcsuite"

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    :cond_5
    :goto_3
    if-eqz p5, :cond_d

    .line 905
    if-eqz v7, :cond_6

    .line 907
    const v2, 0x7f080c18

    invoke-virtual {p5, v2}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setSummary(I)V

    .line 908
    const/4 v2, 0x0

    invoke-virtual {p5, v2}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 909
    const/4 v2, 0x0

    invoke-virtual {p5, v2}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setEnabled(Z)V

    .line 910
    sget-object v2, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v8, "setUsbMenu : LGMDM Block tether"

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    :cond_6
    :goto_4
    if-eqz p6, :cond_e

    .line 917
    if-eqz v4, :cond_7

    .line 919
    const v2, 0x7f080c26

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setSummary(I)V

    .line 920
    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 921
    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setEnabled(Z)V

    .line 922
    sget-object v2, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v8, "setUsbMenu : LGMDM Block ptp"

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :cond_7
    :goto_5
    if-eqz p7, :cond_f

    .line 929
    const-string v2, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 930
    if-eqz v7, :cond_8

    .line 932
    const v2, 0x7f080c18

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setSummary(I)V

    .line 933
    const/4 v2, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 934
    const/4 v2, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setEnabled(Z)V

    .line 935
    sget-object v2, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v8, "setUsbMenu : LGMDM Block internet"

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    :cond_8
    :goto_6
    if-eqz p1, :cond_18

    .line 943
    if-eqz v6, :cond_10

    .line 944
    const/4 v1, 0x1

    .line 974
    :cond_9
    :goto_7
    if-eqz v1, :cond_0

    .line 975
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 976
    invoke-direct {p0}, Lcom/android/lgesettings/MDMSettingsAdapter;->setUsbSettingsControlChargeOnly()V

    goto/16 :goto_0

    .line 877
    :cond_a
    sget-object v8, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v9, "setUsbMenu : mediasync is null"

    invoke-static {v8, v9}, Lcom/lge/mdm/controller/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 889
    :cond_b
    sget-object v8, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v9, "setUsbMenu : massStorage is null"

    invoke-static {v8, v9}, Lcom/lge/mdm/controller/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 901
    :cond_c
    sget-object v2, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v8, "setUsbMenu : pcsuite is null"

    invoke-static {v2, v8}, Lcom/lge/mdm/controller/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 913
    :cond_d
    sget-object v2, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v8, "setUsbMenu : tether is null"

    invoke-static {v2, v8}, Lcom/lge/mdm/controller/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 925
    :cond_e
    sget-object v2, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v8, "setUsbMenu : ptp is null"

    invoke-static {v2, v8}, Lcom/lge/mdm/controller/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 939
    :cond_f
    sget-object v2, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v8, "setUsbMenu : internet is null"

    invoke-static {v2, v8}, Lcom/lge/mdm/controller/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 945
    :cond_10
    if-eqz v7, :cond_13

    .line 946
    const-string v2, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 947
    const-string v2, "ecm"

    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "pc_suite"

    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 949
    :cond_11
    const/4 v1, 0x1

    goto :goto_7

    .line 952
    :cond_12
    const-string v2, "ecm"

    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 953
    const/4 v1, 0x1

    goto :goto_7

    .line 956
    :cond_13
    if-eqz v5, :cond_15

    .line 957
    const-string v2, "mtp"

    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    const-string v2, "mtp_only"

    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    const-string v2, "usb_enable_mtp"

    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 960
    :cond_14
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 962
    :cond_15
    if-eqz v3, :cond_16

    .line 963
    const-string v2, "mass_storage"

    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 964
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 966
    :cond_16
    if-eqz v4, :cond_9

    .line 967
    const-string v2, "ptp"

    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    const-string v2, "ptp_only"

    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    const-string v2, "usb_enable_mtp"

    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 970
    :cond_17
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 979
    :cond_18
    sget-object v2, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v3, "setUsbMenu : charger is null"

    invoke-static {v2, v3}, Lcom/lge/mdm/controller/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setUsbTetherMenu(Landroid/preference/CheckBoxPreference;)Z
    .locals 3
    .parameter "usbTether"

    .prologue
    const/4 v0, 0x0

    .line 1256
    if-nez p1, :cond_1

    .line 1265
    :cond_0
    :goto_0
    return v0

    .line 1259
    :cond_1
    invoke-static {}, Lcom/lge/mdm/LGMDMManagerInternal;->getInstance()Lcom/lge/mdm/LGMDMManagerInternal;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/lge/mdm/LGMDMManagerInternal;->getDisallowUSBType(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1260
    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1261
    const v1, 0x7f080c18

    invoke-virtual {p1, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1262
    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1263
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setUsbTetheringMenu(Landroid/preference/TwoStatePreference;)Z
    .locals 3
    .parameter "usbMenu"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1648
    if-nez p1, :cond_1

    .line 1658
    :cond_0
    :goto_0
    return v0

    .line 1652
    :cond_1
    invoke-static {}, Lcom/lge/mdm/LGMDMManagerInternal;->getInstance()Lcom/lge/mdm/LGMDMManagerInternal;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/mdm/LGMDMManagerInternal;->getDisallowTetheringType(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1653
    invoke-virtual {p1, v0}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 1654
    invoke-virtual {p1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1655
    const v0, 0x7f080c18

    invoke-virtual {p1, v0}, Landroid/preference/TwoStatePreference;->setSummary(I)V

    move v0, v1

    .line 1656
    goto :goto_0
.end method

.method public setWifiApEnablerMenu(Landroid/preference/Preference;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1736
    if-nez p1, :cond_1

    .line 1746
    :cond_0
    :goto_0
    return v0

    .line 1740
    :cond_1
    invoke-static {}, Lcom/lge/mdm/LGMDMManagerInternal;->getInstance()Lcom/lge/mdm/LGMDMManagerInternal;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/lge/mdm/LGMDMManagerInternal;->getDisallowTetheringType(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1741
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1742
    const v0, 0x7f080c19

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 1743
    sget-object v0, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v1, "setWifiApEnablerMenu : LGMDM Block Hotspot menu"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setWirelessStorageMenu(Landroid/preference/Preference;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 1791
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/mdm/LGMDMManager;->getAllowWirelessStorage(Landroid/content/ComponentName;)I

    move-result v0

    .line 1792
    sget-object v1, Lcom/android/lgesettings/MDMSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "test wireless storage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    if-ne v0, v4, :cond_0

    .line 1794
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1795
    const v0, 0x7f080c3b

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 1800
    :goto_0
    return-void

    .line 1797
    :cond_0
    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1798
    const v0, 0x7f081200

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method
