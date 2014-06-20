.class public Lcom/android/lgesettings/StoreModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StoreModeReceiver.java"


# static fields
.field private static BRIGHTNESS_MODE:I

.field private static DEFAULT_BACKLIGHT:I

.field private static MAXIMUM_BACKLIGHT:I

.field private static SHOP_MODE_SCREEN_OFF_TIMEOUT:I

.field private static USER_MODE_SCREEN_OFF_TIMEOUT:I

.field private static isSystemProperty:Z


# instance fields
.field context:Landroid/content/Context;

.field private launchKit:Z

.field private mScreenBrightnessDim:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    const/16 v0, 0xff

    sput v0, Lcom/android/lgesettings/StoreModeReceiver;->MAXIMUM_BACKLIGHT:I

    .line 35
    sput v1, Lcom/android/lgesettings/StoreModeReceiver;->DEFAULT_BACKLIGHT:I

    .line 43
    const v0, 0x1d4c0

    sput v0, Lcom/android/lgesettings/StoreModeReceiver;->SHOP_MODE_SCREEN_OFF_TIMEOUT:I

    .line 44
    sput v1, Lcom/android/lgesettings/StoreModeReceiver;->USER_MODE_SCREEN_OFF_TIMEOUT:I

    .line 45
    sput v1, Lcom/android/lgesettings/StoreModeReceiver;->BRIGHTNESS_MODE:I

    .line 46
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/lgesettings/StoreModeReceiver;->isSystemProperty:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/StoreModeReceiver;->launchKit:Z

    return-void
.end method

.method private ReceiverDisable()V
    .locals 4

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/lgesettings/StoreModeReceiver;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 456
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/lgesettings/StoreModeReceiver;->context:Landroid/content/Context;

    const-class v3, Lcom/android/lgesettings/StoreModeReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 460
    const-string v0, "StoreModeReceiver"

    const-string v1, "StoreModeReceiver disenabled!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    return-void
.end method

.method private final StoreModeCheck(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 159
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 160
    const-string v5, "StoreModeReceiver"

    const-string v6, "isStoremode not null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v2

    .line 167
    .local v2, isStoremode:Z
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "shop_mode"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 170
    .local v4, shop_mode:I
    const-string v5, "ro.product.name"

    const-string v6, "notFound"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 171
    .local v3, product_name:Ljava/lang/String;
    const-string v5, "StoreModeReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "product_name : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "vzw_gb_ics_upgrade"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v8, v5, :cond_1

    .line 175
    if-ne v8, v2, :cond_0

    .line 177
    iget-boolean v5, p0, Lcom/android/lgesettings/StoreModeReceiver;->launchKit:Z

    if-ne v8, v5, :cond_4

    .line 178
    const/4 v4, 0x1

    .line 179
    const-string v5, "StoreModeReceiver"

    const-string v6, "VZW GB upgrade case - LaunchKit : true"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "shop_mode"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 189
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "vzw_gb_ics_upgrade"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 190
    const-string v5, "StoreModeReceiver"

    const-string v6, "VZW GB upgrade case"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 197
    .local v0, cr:Landroid/content/ContentResolver;
    if-nez v2, :cond_5

    if-ne v4, v8, :cond_5

    .line 198
    :try_start_0
    const-string v5, "StoreModeReceiver"

    const-string v6, "Store mode start!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-boolean v5, p0, Lcom/android/lgesettings/StoreModeReceiver;->launchKit:Z

    if-ne v5, v8, :cond_2

    .line 202
    const v5, 0xea60

    sput v5, Lcom/android/lgesettings/StoreModeReceiver;->SHOP_MODE_SCREEN_OFF_TIMEOUT:I

    .line 203
    const-string v5, "StoreModeReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SHOP_MODE_SCREEN_OFF_TIMEOUT = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/lgesettings/StoreModeReceiver;->SHOP_MODE_SCREEN_OFF_TIMEOUT:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/lgesettings/StoreModeReceiver;->setStoreMode(Landroid/content/ContentResolver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :goto_2
    return-void

    .line 164
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v2           #isStoremode:Z
    .end local v3           #product_name:Ljava/lang/String;
    .end local v4           #shop_mode:I
    :cond_3
    const-string v5, "StoreModeReceiver"

    const-string v6, "isStoremode null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v2, 0x0

    .restart local v2       #isStoremode:Z
    goto/16 :goto_0

    .line 182
    .restart local v3       #product_name:Ljava/lang/String;
    .restart local v4       #shop_mode:I
    :cond_4
    const/4 v4, 0x0

    .line 183
    const-string v5, "StoreModeReceiver"

    const-string v6, "VZW GB upgrade case - LaunchKit : false"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 207
    .restart local v0       #cr:Landroid/content/ContentResolver;
    :cond_5
    if-ne v8, v2, :cond_6

    if-ne v4, v8, :cond_6

    .line 210
    :try_start_1
    const-string v5, "StoreModeReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lauhchkit db value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "launchkit_value"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string v5, "StoreModeReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lauhchkit boolean value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/lgesettings/StoreModeReceiver;->launchKit:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string v5, "StoreModeReceiver"

    const-string v6, "User mode start!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-direct {p0, v0}, Lcom/android/lgesettings/StoreModeReceiver;->setUserMode(Landroid/content/ContentResolver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 223
    :catch_0
    move-exception v1

    .line 224
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "StoreModeReceiver"

    const-string v6, "Exception in StoreModeReceiver"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 220
    .end local v1           #e:Ljava/lang/Exception;
    :cond_6
    :try_start_2
    const-string v5, "StoreModeReceiver"

    const-string v6, "####User setting mode start!####"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-direct {p0}, Lcom/android/lgesettings/StoreModeReceiver;->ReceiverDisable()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method private getDefaultBooleanValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "pkgName"
    .parameter "Name"

    .prologue
    const/4 v4, 0x0

    .line 335
    const/4 v0, 0x0

    .line 336
    .local v0, con:Landroid/content/Context;
    const/4 v2, 0x0

    .line 338
    .local v2, id:I
    :try_start_0
    iget-object v5, p0, Lcom/android/lgesettings/StoreModeReceiver;->context:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 339
    const/4 v3, 0x0

    .line 340
    .local v3, res:Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 341
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 342
    const-string v5, "bool"

    invoke-virtual {v3, p2, v5, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 343
    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 351
    .end local v3           #res:Landroid/content/res/Resources;
    :cond_0
    :goto_0
    return v4

    .line 345
    :catch_0
    move-exception v1

    .line 347
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "StoreModeReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NameNotFoundException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 348
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 349
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v5, "StoreModeReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NullPointerException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getDefaultIntegerValue(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .parameter "pkgName"
    .parameter "Name"

    .prologue
    const/4 v4, 0x0

    .line 315
    const/4 v0, 0x0

    .line 316
    .local v0, con:Landroid/content/Context;
    const/4 v2, 0x0

    .line 318
    .local v2, id:I
    :try_start_0
    iget-object v5, p0, Lcom/android/lgesettings/StoreModeReceiver;->context:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 319
    const/4 v3, 0x0

    .line 320
    .local v3, res:Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 321
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 322
    const-string v5, "integer"

    invoke-virtual {v3, p2, v5, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 323
    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 331
    .end local v3           #res:Landroid/content/res/Resources;
    :cond_0
    :goto_0
    return v4

    .line 325
    :catch_0
    move-exception v1

    .line 327
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "StoreModeReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NameNotFoundException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 328
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 329
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v5, "StoreModeReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NullPointerException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getPhoneNumber()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 505
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, rawNumber:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 509
    const-string v2, "0000000000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "0100000000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 511
    :cond_0
    const-string v2, "StoreModeReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPhoneNumber is 0000000000 or 01000000000: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :goto_0
    return v1

    .line 514
    :cond_1
    const-string v1, "StoreModeReceiver"

    const-string v2, "getPhoneNumber is not empty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const/4 v1, 0x1

    goto :goto_0

    .line 519
    :cond_2
    const-string v2, "StoreModeReceiver"

    const-string v3, "getPhoneNumber is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isFactoryTest()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 401
    const-string v5, "ro.factorytest"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 402
    .local v1, factoryTestInt:I
    const-string v5, "sys.factory.qem"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 403
    .local v2, factoryqem:Ljava/lang/String;
    const/4 v0, 0x0

    .line 405
    .local v0, factoryTest:Z
    const-string v5, "1"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 408
    const-string v4, "StoreModeReceiver"

    const-string v5, "ro.factoryqem"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :goto_0
    return v3

    .line 412
    :cond_0
    if-eqz v1, :cond_1

    .line 413
    const/4 v0, 0x1

    .line 414
    const-string v5, "StoreModeReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ro.factorytest : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_1
    if-ne v0, v3, :cond_2

    .line 418
    sget v4, Lcom/android/lgesettings/StoreModeReceiver;->DEFAULT_BACKLIGHT:I

    invoke-direct {p0, v4}, Lcom/android/lgesettings/StoreModeReceiver;->setBrightness(I)V

    .line 419
    iget-object v4, p0, Lcom/android/lgesettings/StoreModeReceiver;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_brightness"

    sget v6, Lcom/android/lgesettings/StoreModeReceiver;->DEFAULT_BACKLIGHT:I

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 420
    const-string v4, "android.setting.updateBrightness"

    invoke-direct {p0, v4}, Lcom/android/lgesettings/StoreModeReceiver;->sendBroadcast(Ljava/lang/String;)V

    .line 421
    const-string v4, "StoreModeReceiver"

    const-string v5, "ro.factorytest case"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v3, v4

    .line 424
    goto :goto_0
.end method

.method private isPMIC()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 146
    const-string v1, "ro.lge.usbcable.info"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pif_56k"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "sys.lge.pif"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    :cond_0
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "d1lkt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "d1lsk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "d1lu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "d1lv"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 154
    :cond_1
    :goto_0
    return v0

    .line 151
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isStoreModeNotUse()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 431
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SPR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "l1a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 434
    :cond_0
    const-string v1, "StoreModeReceiver"

    const-string v2, "Skip the routine of store mode temporaly for verizon model"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_1
    :goto_0
    return v0

    .line 440
    :cond_2
    const-string v1, "ro.product.device"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "u0_cdma"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 445
    const-string v1, "ro.product.model"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "L-02D"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 451
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTablet()Z
    .locals 2

    .prologue
    .line 136
    const-string v0, "tablet"

    const-string v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const/4 v0, 0x1

    .line 140
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendBroadcast(Ljava/lang/String;)V
    .locals 2
    .parameter "broadcast"

    .prologue
    .line 392
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 393
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/lgesettings/StoreModeReceiver;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 394
    return-void
.end method

.method private setBrightness(I)V
    .locals 6
    .parameter "brightness"

    .prologue
    const/4 v5, 0x1

    .line 230
    :try_start_0
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 232
    .local v0, power:Landroid/os/IPowerManager;
    if-eqz v0, :cond_0

    .line 233
    iget-object v2, p0, Lcom/android/lgesettings/StoreModeReceiver;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "shop_mode"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    sget v2, Lcom/android/lgesettings/StoreModeReceiver;->BRIGHTNESS_MODE:I

    if-ne v2, v5, :cond_1

    .line 235
    iget v2, p0, Lcom/android/lgesettings/StoreModeReceiver;->mScreenBrightnessDim:I

    sub-int/2addr p1, v2

    .line 236
    int-to-float v2, p1

    const/high16 v3, 0x4000

    mul-float/2addr v2, v3

    sget v3, Lcom/android/lgesettings/StoreModeReceiver;->MAXIMUM_BACKLIGHT:I

    iget v4, p0, Lcom/android/lgesettings/StoreModeReceiver;->mScreenBrightnessDim:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f80

    sub-float v1, v2, v3

    .line 237
    .local v1, valf:F
    invoke-interface {v0, v1}, Landroid/os/IPowerManager;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V

    .line 238
    const-string v2, "StoreModeReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBrightness() : MultiALC="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .end local v0           #power:Landroid/os/IPowerManager;
    .end local v1           #valf:F
    :cond_0
    :goto_0
    return-void

    .line 241
    .restart local v0       #power:Landroid/os/IPowerManager;
    :cond_1
    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V

    .line 242
    const-string v2, "StoreModeReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBrightness() : NoMultiALC="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 245
    .end local v0           #power:Landroid/os/IPowerManager;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private setDefaultBrightnessMode()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 274
    const/4 v3, 0x0

    .line 275
    .local v3, sp_def_brightness_Mode:Z
    const-string v6, "ro.lge.lcd_auto_brightness_mode"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 276
    sput-boolean v4, Lcom/android/lgesettings/StoreModeReceiver;->isSystemProperty:Z

    .line 277
    const-string v6, "StoreModeReceiver"

    const-string v7, "Systemproperty is Empty!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :goto_0
    const-string v6, "StoreModeReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SystemProperty Default brightness Mode value[true/false] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v6, p0, Lcom/android/lgesettings/StoreModeReceiver;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1110018

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 285
    sput v4, Lcom/android/lgesettings/StoreModeReceiver;->BRIGHTNESS_MODE:I

    .line 286
    const-string v4, "StoreModeReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BRIGHTNESS_MODE - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/lgesettings/StoreModeReceiver;->BRIGHTNESS_MODE:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_0
    :goto_1
    const-string v4, "StoreModeReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Default brightness Mode [0/1] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/lgesettings/StoreModeReceiver;->BRIGHTNESS_MODE:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return-void

    .line 280
    :cond_1
    const-string v6, "ro.lge.lcd_auto_brightness_mode"

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    goto :goto_0

    .line 288
    :cond_2
    sget-boolean v6, Lcom/android/lgesettings/StoreModeReceiver;->isSystemProperty:Z

    if-ne v6, v5, :cond_7

    .line 289
    const-string v6, "gsm.sim.operator.numeric"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 290
    .local v2, simOperator:Ljava/lang/String;
    const-string v0, ""

    .line 291
    .local v0, mcc:Ljava/lang/String;
    const-string v1, ""

    .line 293
    .local v1, mnc:Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 294
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v9, :cond_3

    .line 295
    invoke-virtual {v2, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 300
    :cond_3
    if-ne v3, v5, :cond_4

    move v4, v5

    :cond_4
    sput v4, Lcom/android/lgesettings/StoreModeReceiver;->BRIGHTNESS_MODE:I

    .line 302
    const-string v4, "208"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "10"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    const-string v4, "647"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "10"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 304
    :cond_6
    sput v5, Lcom/android/lgesettings/StoreModeReceiver;->BRIGHTNESS_MODE:I

    goto :goto_1

    .line 308
    .end local v0           #mcc:Ljava/lang/String;
    .end local v1           #mnc:Ljava/lang/String;
    .end local v2           #simOperator:Ljava/lang/String;
    :cond_7
    const-string v6, "com.android.providers.settings"

    const-string v7, "def_screen_brightness_automatic_mode"

    invoke-direct {p0, v6, v7}, Lcom/android/lgesettings/StoreModeReceiver;->getDefaultBooleanValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 309
    if-ne v3, v5, :cond_8

    :goto_2
    sput v5, Lcom/android/lgesettings/StoreModeReceiver;->BRIGHTNESS_MODE:I

    goto :goto_1

    :cond_8
    move v5, v4

    goto :goto_2
.end method

.method private setDefaultBrightnessValues()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 256
    const-string v1, "ro.lge.lcd_default_brightness"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 261
    .local v0, sp_def_brightness:I
    iget-object v1, p0, Lcom/android/lgesettings/StoreModeReceiver;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/lgesettings/StoreModeReceiver;->mScreenBrightnessDim:I

    .line 264
    const-string v1, "StoreModeReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SystemProperty Default brightness value [0-255] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    if-eq v4, v0, :cond_0

    .line 266
    sput v0, Lcom/android/lgesettings/StoreModeReceiver;->DEFAULT_BACKLIGHT:I

    .line 270
    :goto_0
    const-string v1, "StoreModeReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default brightness[0-255] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/lgesettings/StoreModeReceiver;->DEFAULT_BACKLIGHT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return-void

    .line 268
    :cond_0
    const-string v1, "com.android.providers.settings"

    const-string v2, "def_screen_brightness"

    invoke-direct {p0, v1, v2}, Lcom/android/lgesettings/StoreModeReceiver;->getDefaultIntegerValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/lgesettings/StoreModeReceiver;->DEFAULT_BACKLIGHT:I

    goto :goto_0
.end method

.method private setDefaultScreenOffTimeoutValues()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 251
    const-string v0, "com.android.providers.settings"

    const-string v1, "def_screen_off_timeout"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/StoreModeReceiver;->getDefaultIntegerValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/lgesettings/StoreModeReceiver;->USER_MODE_SCREEN_OFF_TIMEOUT:I

    .line 252
    const-string v0, "StoreModeReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default Screen off timeout value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/lgesettings/StoreModeReceiver;->USER_MODE_SCREEN_OFF_TIMEOUT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    return-void
.end method

.method private setMode(Landroid/content/ContentResolver;III)V
    .locals 2
    .parameter "cr"
    .parameter "shopMode"
    .parameter "screenTimeout"
    .parameter "brightness"

    .prologue
    .line 382
    const-string v0, "shop_mode"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 383
    invoke-direct {p0, p4}, Lcom/android/lgesettings/StoreModeReceiver;->setBrightness(I)V

    .line 384
    const-string v0, "android.setting.updateBrightness"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/StoreModeReceiver;->sendBroadcast(Ljava/lang/String;)V

    .line 385
    const-string v0, "screen_brightness_mode"

    sget v1, Lcom/android/lgesettings/StoreModeReceiver;->BRIGHTNESS_MODE:I

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 386
    const-string v0, "screen_off_timeout"

    invoke-static {p1, v0, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 387
    iget-object v0, p0, Lcom/android/lgesettings/StoreModeReceiver;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v0, v1, p4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 389
    return-void
.end method

.method private setStoreMode(Landroid/content/ContentResolver;)V
    .locals 3
    .parameter "cr"

    .prologue
    .line 364
    const/4 v0, 0x0

    sput v0, Lcom/android/lgesettings/StoreModeReceiver;->BRIGHTNESS_MODE:I

    .line 365
    const/4 v0, 0x1

    sget v1, Lcom/android/lgesettings/StoreModeReceiver;->SHOP_MODE_SCREEN_OFF_TIMEOUT:I

    sget v2, Lcom/android/lgesettings/StoreModeReceiver;->MAXIMUM_BACKLIGHT:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/lgesettings/StoreModeReceiver;->setMode(Landroid/content/ContentResolver;III)V

    .line 370
    return-void
.end method

.method private setStoreModeBirghtness(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 356
    const-string v0, "ro.build.product"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "p2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    const/16 v0, 0xb3

    sput v0, Lcom/android/lgesettings/StoreModeReceiver;->MAXIMUM_BACKLIGHT:I

    .line 360
    :cond_0
    const-string v0, "StoreModeReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set MaxBrightness : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/lgesettings/StoreModeReceiver;->MAXIMUM_BACKLIGHT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    return-void
.end method

.method private setUserMode(Landroid/content/ContentResolver;)V
    .locals 3
    .parameter "cr"

    .prologue
    .line 373
    const/4 v0, 0x0

    sget v1, Lcom/android/lgesettings/StoreModeReceiver;->USER_MODE_SCREEN_OFF_TIMEOUT:I

    sget v2, Lcom/android/lgesettings/StoreModeReceiver;->DEFAULT_BACKLIGHT:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/lgesettings/StoreModeReceiver;->setMode(Landroid/content/ContentResolver;III)V

    .line 378
    invoke-direct {p0}, Lcom/android/lgesettings/StoreModeReceiver;->ReceiverDisable()V

    .line 379
    return-void
.end method

.method private setVZWScreenTimeValue(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 471
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VZW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v5, v1, :cond_1

    .line 472
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "launchkit_value"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 475
    .local v0, launchKit_status:Ljava/lang/String;
    const-string v1, "StoreModeReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVZWScreenTimeValue(): launchKit_status from db = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    if-nez v0, :cond_0

    .line 477
    const-string v1, "StoreModeReceiver"

    const-string v2, "launchKit_status value is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const-string v0, "0"

    .line 480
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/lgesettings/StoreModeReceiver;->launchKit:Z

    .line 481
    const-string v1, "StoreModeReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVZWScreenTimeValue(): launchKit after parseBoolean= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/lgesettings/StoreModeReceiver;->launchKit:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 484
    iput-boolean v4, p0, Lcom/android/lgesettings/StoreModeReceiver;->launchKit:Z

    .line 492
    :goto_0
    const-string v1, "StoreModeReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launchKit value after equals is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/lgesettings/StoreModeReceiver;->launchKit:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-boolean v1, p0, Lcom/android/lgesettings/StoreModeReceiver;->launchKit:Z

    if-nez v1, :cond_4

    .line 495
    const v1, 0xea60

    sput v1, Lcom/android/lgesettings/StoreModeReceiver;->SHOP_MODE_SCREEN_OFF_TIMEOUT:I

    .line 501
    .end local v0           #launchKit_status:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 485
    .restart local v0       #launchKit_status:Ljava/lang/String;
    :cond_2
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 486
    iput-boolean v5, p0, Lcom/android/lgesettings/StoreModeReceiver;->launchKit:Z

    goto :goto_0

    .line 488
    :cond_3
    const-string v1, "StoreModeReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launchKit_status is not 0 and 1, launchKit_status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iput-boolean v4, p0, Lcom/android/lgesettings/StoreModeReceiver;->launchKit:Z

    goto :goto_0

    .line 497
    :cond_4
    const v1, 0x3b9aca00

    sput v1, Lcom/android/lgesettings/StoreModeReceiver;->SHOP_MODE_SCREEN_OFF_TIMEOUT:I

    .line 498
    const-string v1, "StoreModeReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SHOP_MODE_SCREEN_OFF_TIMEOUT : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/lgesettings/StoreModeReceiver;->SHOP_MODE_SCREEN_OFF_TIMEOUT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "_context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, action:Ljava/lang/String;
    const-string v4, "ss"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, stateExtra:Ljava/lang/String;
    const-string v4, "StoreModeReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "intent.getAction() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string v4, "StoreModeReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sim state :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iput-object p1, p0, Lcom/android/lgesettings/StoreModeReceiver;->context:Landroid/content/Context;

    .line 75
    iget-object v4, p0, Lcom/android/lgesettings/StoreModeReceiver;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x2070029

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 76
    const-string v4, "StoreModeReceiver"

    const-string v5, "Back LED don\'t supported."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v4, p0, Lcom/android/lgesettings/StoreModeReceiver;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "emotional_led_back_led"

    invoke-static {v4, v5, v7}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 78
    iget-object v4, p0, Lcom/android/lgesettings/StoreModeReceiver;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "emotional_led_back_incoming_call"

    invoke-static {v4, v5, v7}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 79
    iget-object v4, p0, Lcom/android/lgesettings/StoreModeReceiver;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "emotional_led_back_alarm"

    invoke-static {v4, v5, v7}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 80
    iget-object v4, p0, Lcom/android/lgesettings/StoreModeReceiver;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "emotional_led_back_missed_call"

    invoke-static {v4, v5, v7}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 81
    iget-object v4, p0, Lcom/android/lgesettings/StoreModeReceiver;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "emotional_led_back_missed_messages"

    invoke-static {v4, v5, v7}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 82
    iget-object v4, p0, Lcom/android/lgesettings/StoreModeReceiver;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "emotional_led_back_missed_emails"

    invoke-static {v4, v5, v7}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 83
    iget-object v4, p0, Lcom/android/lgesettings/StoreModeReceiver;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "emotional_led_back_calendar_noti"

    invoke-static {v4, v5, v7}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 84
    iget-object v4, p0, Lcom/android/lgesettings/StoreModeReceiver;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "emotional_led_back_voice_recording"

    invoke-static {v4, v5, v7}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 87
    :cond_0
    invoke-direct {p0}, Lcom/android/lgesettings/StoreModeReceiver;->isStoreModeNotUse()Z

    move-result v4

    if-ne v8, v4, :cond_2

    .line 88
    invoke-direct {p0}, Lcom/android/lgesettings/StoreModeReceiver;->ReceiverDisable()V

    .line 130
    :cond_1
    :goto_0
    return-void

    .line 92
    :cond_2
    if-nez v3, :cond_3

    .line 93
    const-string v3, "empty"

    .line 96
    :cond_3
    :try_start_0
    invoke-direct {p0}, Lcom/android/lgesettings/StoreModeReceiver;->setDefaultBrightnessValues()V

    .line 97
    invoke-direct {p0}, Lcom/android/lgesettings/StoreModeReceiver;->setDefaultScreenOffTimeoutValues()V

    .line 98
    invoke-direct {p0}, Lcom/android/lgesettings/StoreModeReceiver;->setDefaultBrightnessMode()V

    .line 100
    invoke-direct {p0, p1}, Lcom/android/lgesettings/StoreModeReceiver;->setVZWScreenTimeValue(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_1
    iget-object v4, p0, Lcom/android/lgesettings/StoreModeReceiver;->context:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/android/lgesettings/StoreModeReceiver;->setStoreModeBirghtness(Landroid/content/Context;)V

    .line 109
    invoke-direct {p0}, Lcom/android/lgesettings/StoreModeReceiver;->isFactoryTest()Z

    move-result v4

    if-eq v8, v4, :cond_1

    .line 113
    invoke-direct {p0}, Lcom/android/lgesettings/StoreModeReceiver;->isPMIC()Z

    move-result v4

    if-eq v8, v4, :cond_1

    .line 117
    invoke-direct {p0}, Lcom/android/lgesettings/StoreModeReceiver;->isTablet()Z

    move-result v4

    if-eq v8, v4, :cond_1

    .line 122
    const-string v4, "ro.product.model"

    const-string v5, "empty"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, model_name:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/lgesettings/StoreModeReceiver;->getPhoneNumber()Z

    move-result v4

    if-ne v8, v4, :cond_5

    const-string v4, "LG-LU5400"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eq v8, v4, :cond_4

    const-string v4, "LG-LU6800"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eq v8, v4, :cond_4

    const-string v4, "LG-LU6500"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v8, v4, :cond_5

    .line 124
    :cond_4
    iget-object v4, p0, Lcom/android/lgesettings/StoreModeReceiver;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/lgesettings/StoreModeReceiver;->setUserMode(Landroid/content/ContentResolver;)V

    goto :goto_0

    .line 102
    .end local v2           #model_name:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 104
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 105
    const-string v4, "StoreModeReceiver"

    const-string v5, "Default value set Exception!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 126
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2       #model_name:Ljava/lang/String;
    :cond_5
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "LOADED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 127
    :cond_6
    const-string v4, "StoreModeReceiver"

    const-string v5, "go to StoreModeCheck()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v4, p0, Lcom/android/lgesettings/StoreModeReceiver;->context:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/android/lgesettings/StoreModeReceiver;->StoreModeCheck(Landroid/content/Context;)V

    goto :goto_0
.end method
