.class public Lcom/android/lgesettings/lge/AccessorySettings;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "AccessorySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static USER_OWNER:I

.field public static supportDOCK:Ljava/lang/String;

.field public static supportOTG:Ljava/lang/String;

.field public static supportPen:Ljava/lang/String;


# instance fields
.field private mCarHome:Landroid/preference/CheckBoxPreference;

.field private mDock:Landroid/preference/Preference;

.field private mDock_switch:Landroid/preference/SwitchPreference;

.field private mEarjack:Landroid/preference/Preference;

.field private mEarjack_switch:Landroid/preference/SwitchPreference;

.field private mPen:Landroid/preference/Preference;

.field private mQuickCover:Landroid/preference/SwitchPreference;

.field private mQuickCoverLollipop:Landroid/preference/Preference;

.field private mQuickCoverWindow:Landroid/preference/Preference;

.field private mUsbStorage:Landroid/preference/Preference;

.field private mUsbStorage_switch:Landroid/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 83
    const-string v2, "NA"

    sput-object v2, Lcom/android/lgesettings/lge/AccessorySettings;->supportPen:Ljava/lang/String;

    .line 84
    const-string v2, "NA"

    sput-object v2, Lcom/android/lgesettings/lge/AccessorySettings;->supportOTG:Ljava/lang/String;

    .line 85
    const-string v2, "NA"

    sput-object v2, Lcom/android/lgesettings/lge/AccessorySettings;->supportDOCK:Ljava/lang/String;

    .line 105
    :try_start_0
    const-string v2, "android.os.UserHandle"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 107
    .local v1, userHandleInstance:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    .line 108
    const-string v2, "USER_OWNER"

    invoke-static {v1, v2}, Lcom/android/lgesettings/lge/AccessorySettings;->getIntField(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/lgesettings/lge/AccessorySettings;->USER_OWNER:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "AccessorySettings"

    const-string v3, "Fail to get the USER_OWNER."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method public static getIntField(Ljava/lang/Class;Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter "intFieldName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 445
    .local p0, ref:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 446
    .local v0, resField:Ljava/lang/reflect/Field;
    invoke-virtual {v0, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method private isLGTangibleIOServiceRunning()Z
    .locals 5

    .prologue
    .line 450
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/AccessorySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 451
    .local v1, manager:Landroid/app/ActivityManager;
    const v3, 0x7fffffff

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 453
    .local v2, service:Landroid/app/ActivityManager$RunningServiceInfo;
    const-string v3, "com.lge.tangible.core.TangibleUIService"

    iget-object v4, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 454
    const/4 v3, 0x1

    .line 457
    .end local v2           #service:Landroid/app/ActivityManager$RunningServiceInfo;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private parseSystemProperty()V
    .locals 4

    .prologue
    .line 461
    const-string v0, "tangible_test_config"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 463
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 464
    const-string v1, "AccessorySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read test device config from system property : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-direct {p0, v0}, Lcom/android/lgesettings/lge/AccessorySettings;->parseSystemPropertyNew(Ljava/lang/String;)V

    .line 493
    :goto_0
    return-void

    .line 469
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/AccessorySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-class v1, Lcom/lge/internal/R$string;

    const-string v2, "tangible_device_config"

    invoke-static {v1, v2}, Lcom/android/lgesettings/lge/AccessorySettings;->getIntField(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 472
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 473
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    :catch_0
    move-exception v0

    .line 480
    const-string v0, "tangible_device_config"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 481
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 482
    const-string v1, "AccessorySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read old device config from system property : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-direct {p0}, Lcom/android/lgesettings/lge/AccessorySettings;->parseSystemPropertyOld()V

    goto :goto_0

    .line 475
    :cond_1
    :try_start_1
    const-string v1, "AccessorySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read new device config from system property : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-direct {p0, v0}, Lcom/android/lgesettings/lge/AccessorySettings;->parseSystemPropertyNew(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 486
    :cond_2
    const-string v0, "T90,BC,O,X,X"

    .line 487
    const-string v1, "AccessorySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resouce for Plug&Pop not found. Load default config : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-direct {p0, v0}, Lcom/android/lgesettings/lge/AccessorySettings;->parseSystemPropertyNew(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private parseSystemPropertyNew(Ljava/lang/String;)V
    .locals 4
    .parameter "prop"

    .prologue
    .line 496
    move-object v0, p1

    .line 497
    .local v0, property:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 499
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 500
    .local v1, property_out:[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    .line 501
    const-string v2, "AccessorySettings"

    const-string v3, "This property is not 5 item."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 503
    :cond_1
    const-string v2, "O"

    const/4 v3, 0x2

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 504
    const-string v2, "OT"

    sput-object v2, Lcom/android/lgesettings/lge/AccessorySettings;->supportOTG:Ljava/lang/String;

    .line 508
    :goto_1
    const-string v2, "O"

    const/4 v3, 0x3

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 509
    const-string v2, "DO"

    sput-object v2, Lcom/android/lgesettings/lge/AccessorySettings;->supportDOCK:Ljava/lang/String;

    .line 513
    :goto_2
    const-string v2, "X"

    const/4 v3, 0x4

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 514
    const-string v2, "NA"

    sput-object v2, Lcom/android/lgesettings/lge/AccessorySettings;->supportPen:Ljava/lang/String;

    goto :goto_0

    .line 506
    :cond_2
    const-string v2, "NA"

    sput-object v2, Lcom/android/lgesettings/lge/AccessorySettings;->supportOTG:Ljava/lang/String;

    goto :goto_1

    .line 511
    :cond_3
    const-string v2, "NA"

    sput-object v2, Lcom/android/lgesettings/lge/AccessorySettings;->supportDOCK:Ljava/lang/String;

    goto :goto_2
.end method

.method private parseSystemPropertyOld()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x6

    const/16 v4, 0xa

    .line 520
    const-string v3, "tangible_device_config"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 521
    .local v2, property:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 542
    :goto_0
    return-void

    .line 525
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 526
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 529
    const/4 v0, 0x5

    .line 531
    .local v0, NUM_OF_FEATURE:I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v4, :cond_2

    .line 532
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 533
    .local v1, buf:Ljava/lang/StringBuffer;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-ge v3, v4, :cond_1

    .line 534
    const-string v3, "NA"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 536
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 539
    .end local v1           #buf:Ljava/lang/StringBuffer;
    :cond_2
    const/4 v3, 0x4

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/lgesettings/lge/AccessorySettings;->supportPen:Ljava/lang/String;

    .line 540
    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/lgesettings/lge/AccessorySettings;->supportOTG:Ljava/lang/String;

    .line 541
    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/lgesettings/lge/AccessorySettings;->supportDOCK:Ljava/lang/String;

    goto :goto_0
.end method

.method private setQuickCoverLollipopSummary()V
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x0

    .line 548
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "cover_type"

    invoke-static {v2, v3, v6}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 549
    .local v0, coverDbValue:I
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lollipop_cover_type"

    invoke-static {v2, v3, v6}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 551
    .local v1, lollipopCoverDbValue:I
    if-nez v0, :cond_1

    .line 552
    iget-object v2, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mQuickCoverLollipop:Landroid/preference/Preference;

    const v3, 0x7f080f2f

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 561
    :cond_0
    :goto_0
    const-string v2, "AccessorySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "cover_type"

    invoke-static {v4, v5, v6}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    return-void

    .line 553
    :cond_1
    if-ne v0, v4, :cond_2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 554
    iget-object v2, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mQuickCoverLollipop:Landroid/preference/Preference;

    const v3, 0x7f080f3c

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 555
    :cond_2
    if-ne v0, v4, :cond_3

    if-nez v1, :cond_3

    .line 556
    iget-object v2, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mQuickCoverLollipop:Landroid/preference/Preference;

    const v3, 0x7f080f3d

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 557
    :cond_3
    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 558
    iget-object v2, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mQuickCoverLollipop:Landroid/preference/Preference;

    const v3, 0x7f080f3f

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method private startTangibleService()V
    .locals 4

    .prologue
    .line 360
    invoke-direct {p0}, Lcom/android/lgesettings/lge/AccessorySettings;->isLGTangibleIOServiceRunning()Z

    move-result v2

    if-nez v2, :cond_0

    .line 361
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 362
    .local v0, i:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.lge.tangible"

    const-string v3, "com.lge.tangible.core.TangibleUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    .local v1, tangibleServiceComp:Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 365
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/AccessorySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 367
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #tangibleServiceComp:Landroid/content/ComponentName;
    :cond_0
    return-void
.end method


# virtual methods
.method public getPanelEnable(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 4
    .parameter "mcr"
    .parameter "field"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 370
    invoke-virtual {p0, p1, p2}, Lcom/android/lgesettings/lge/AccessorySettings;->getPanelEnableDB(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 372
    .local v0, result:I
    if-ne v0, v1, :cond_0

    .line 373
    const-string v2, "AccessorySettings"

    const-string v3, "result == 1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :goto_0
    return v1

    .line 375
    :cond_0
    if-nez v0, :cond_1

    .line 376
    const-string v1, "AccessorySettings"

    const-string v3, "result == 0"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 377
    goto :goto_0

    .line 379
    :cond_1
    const-string v1, "AccessorySettings"

    const-string v3, "result == else"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 380
    goto :goto_0
.end method

.method public getPanelEnableDB(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 5
    .parameter "mcr"
    .parameter "field"

    .prologue
    .line 384
    const/4 v1, 0x2

    .line 387
    .local v1, panel_enable:I
    :try_start_0
    invoke-static {p1, p2}, Lcom/lge/provider/SettingsEx$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 388
    const-string v2, "AccessorySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " try "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/lge/provider/SettingsEx$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :goto_0
    return v1

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, e:Lcom/lge/provider/SettingsEx$SettingNotFoundException;
    const/4 v1, 0x2

    .line 391
    const-string v2, "AccessorySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " catch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isOwner()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 432
    :try_start_0
    const-class v2, Landroid/app/ActivityManager;

    const-string v3, "getCurrentUser"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 434
    const/4 v3, 0x0

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 435
    sget v2, Lcom/android/lgesettings/lge/AccessorySettings;->USER_OWNER:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v0, :cond_0

    move v0, v1

    .line 440
    :goto_0
    return v0

    .line 435
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 436
    :catch_0
    move-exception v0

    .line 437
    const-string v2, "AccessorySettings"

    const-string v3, "This OS version is not support getCurrentUser in isOwner()."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 440
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 117
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 118
    const v3, 0x7f060001

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/AccessorySettings;->addPreferencesFromResource(I)V

    .line 120
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/AccessorySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 123
    .local v2, root:Landroid/preference/PreferenceScreen;
    const-string v3, "earphone_settings_switch"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/AccessorySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mEarjack_switch:Landroid/preference/SwitchPreference;

    .line 124
    iget-object v3, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mEarjack_switch:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 125
    iget-object v3, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mEarjack_switch:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "tangible_earphone_panel_enable"

    invoke-virtual {p0, v6, v7}, Lcom/android/lgesettings/lge/AccessorySettings;->getPanelEnable(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 126
    const-string v3, "usb_storage_settings_switch"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/AccessorySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mUsbStorage_switch:Landroid/preference/SwitchPreference;

    .line 127
    iget-object v3, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mUsbStorage_switch:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 128
    iget-object v3, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mUsbStorage_switch:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "tangible_usbstorage_panel_enable"

    invoke-virtual {p0, v6, v7}, Lcom/android/lgesettings/lge/AccessorySettings;->getPanelEnable(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 129
    const-string v3, "dock_settings_switch"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/AccessorySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mDock_switch:Landroid/preference/SwitchPreference;

    .line 130
    iget-object v3, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mDock_switch:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 131
    iget-object v3, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mDock_switch:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "tangible_dock_panel_enable"

    invoke-virtual {p0, v6, v7}, Lcom/android/lgesettings/lge/AccessorySettings;->getPanelEnable(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 134
    const-string v3, "earphone_settings"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/AccessorySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mEarjack:Landroid/preference/Preference;

    .line 135
    const-string v3, "pen_settings"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mPen:Landroid/preference/Preference;

    .line 136
    const-string v3, "usb_storage_settings"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mUsbStorage:Landroid/preference/Preference;

    .line 137
    const-string v3, "dock_settings"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mDock:Landroid/preference/Preference;

    .line 138
    const-string v3, "car_home"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/AccessorySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mCarHome:Landroid/preference/CheckBoxPreference;

    .line 139
    iget-object v6, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mCarHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "car_home_auto_launch"

    invoke-static {v3, v7, v4}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 140
    const-string v3, "quick_cover_settings"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mQuickCover:Landroid/preference/SwitchPreference;

    .line 141
    const-string v3, "quick_cover_window_settings"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mQuickCoverWindow:Landroid/preference/Preference;

    .line 142
    const-string v3, "quick_cover_lollipop_settings"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mQuickCoverLollipop:Landroid/preference/Preference;

    .line 145
    iget-object v3, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mQuickCover:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 146
    iget-object v6, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mQuickCover:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "quick_cover_enable"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_7

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 148
    invoke-direct {p0}, Lcom/android/lgesettings/lge/AccessorySettings;->parseSystemProperty()V

    .line 149
    const-string v3, "AccessorySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Accessory] supportOTG ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/lgesettings/lge/AccessorySettings;->supportOTG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , supportDOCK = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/lgesettings/lge/AccessorySettings;->supportDOCK:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", supportPen = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/lgesettings/lge/AccessorySettings;->supportPen:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "tangible_earphone_panel_enable"

    invoke-virtual {p0, v3, v6}, Lcom/android/lgesettings/lge/AccessorySettings;->getPanelEnableDB(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    const/4 v6, 0x2

    if-eq v3, v6, :cond_8

    .line 152
    iget-object v3, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mEarjack:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 153
    iget-object v3, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mUsbStorage:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 154
    iget-object v3, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mDock:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 156
    const-string v3, "OT"

    sget-object v6, Lcom/android/lgesettings/lge/AccessorySettings;->supportOTG:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 157
    iget-object v3, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mUsbStorage_switch:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 159
    :cond_0
    const-string v3, "DO"

    sget-object v6, Lcom/android/lgesettings/lge/AccessorySettings;->supportDOCK:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 160
    iget-object v3, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mDock_switch:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 175
    :cond_1
    :goto_2
    const-string v3, "NA"

    sget-object v6, Lcom/android/lgesettings/lge/AccessorySettings;->supportPen:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 176
    iget-object v3, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mPen:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 179
    :cond_2
    const-string v3, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 180
    iget-object v3, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mCarHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 187
    :cond_3
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/AccessorySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x2070010

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_a

    .line 188
    const-string v3, "YSY"

    const-string v6, "no smart_cover feature"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v3, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mQuickCover:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 190
    iget-object v3, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mQuickCoverLollipop:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 192
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "cover_type"

    invoke-static {v3, v6, v4}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 194
    .local v1, coverDefalut:I
    if-ne v1, v4, :cond_4

    .line 195
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "cover_type"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 246
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/AccessorySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 247
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_5

    .line 249
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/AccessorySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/lgesettings/Utils;->supportSplitView(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 250
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 255
    :cond_5
    :goto_4
    return-void

    .end local v0           #actionBar:Landroid/app/ActionBar;
    .end local v1           #coverDefalut:I
    :cond_6
    move v3, v5

    .line 139
    goto/16 :goto_0

    :cond_7
    move v3, v5

    .line 146
    goto/16 :goto_1

    .line 163
    :cond_8
    iget-object v3, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mEarjack_switch:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 164
    iget-object v3, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mUsbStorage_switch:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 165
    iget-object v3, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mDock_switch:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 167
    const-string v3, "OT"

    sget-object v6, Lcom/android/lgesettings/lge/AccessorySettings;->supportOTG:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 168
    iget-object v3, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mUsbStorage:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 170
    :cond_9
    const-string v3, "DO"

    sget-object v6, Lcom/android/lgesettings/lge/AccessorySettings;->supportDOCK:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 171
    iget-object v3, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mDock:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 203
    :cond_a
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/AccessorySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v6, "com.lge.lollipop"

    invoke-static {v3, v6}, Lcom/android/lgesettings/Utils;->checkPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 204
    const-string v3, "YSY"

    const-string v6, "lollipop feature"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v3, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mQuickCover:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 206
    iget-object v3, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mQuickCoverWindow:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 208
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "cover_type"

    invoke-static {v3, v6, v4}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 210
    .restart local v1       #coverDefalut:I
    if-ne v1, v4, :cond_4

    .line 211
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "cover_type"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 219
    .end local v1           #coverDefalut:I
    :cond_b
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/AccessorySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/lgesettings/Utils;->supportSplitView(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 220
    const-string v3, "YSY"

    const-string v6, "tablet feature"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v3, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mQuickCoverWindow:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 223
    iget-object v3, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mQuickCoverLollipop:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 225
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "cover_type"

    invoke-static {v3, v6, v4}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 227
    .restart local v1       #coverDefalut:I
    if-ne v1, v4, :cond_4

    .line 228
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "cover_type"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 231
    .end local v1           #coverDefalut:I
    :cond_c
    iget-object v3, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mQuickCoverLollipop:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 232
    iget-object v3, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mQuickCoverWindow:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 234
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "cover_type"

    invoke-static {v3, v6, v4}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 236
    .restart local v1       #coverDefalut:I
    if-ne v1, v4, :cond_4

    .line 237
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "cover_type"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 252
    .restart local v0       #actionBar:Landroid/app/ActionBar;
    :cond_d
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto/16 :goto_4
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 324
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, key:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/AccessorySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 356
    .end local p2
    :cond_0
    :goto_0
    return v2

    .line 333
    .restart local p2
    :cond_1
    const-string v1, "quick_cover_settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 334
    const-string v4, "tangible earjack switch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Switch: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v4, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mQuickCover:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mQuickCover:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 336
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "quick_cover_enable"

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v3

    :goto_2
    invoke-static {v4, v5, v1}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 339
    :cond_2
    const-string v1, "earphone_settings_switch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 340
    const-string v4, "tangible earjack switch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Switch: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v4, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mEarjack_switch:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mEarjack_switch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 342
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tangible_earphone_panel_enable"

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v3

    :goto_4
    invoke-static {v4, v5, v1}, Lcom/lge/provider/SettingsEx$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 345
    :cond_3
    const-string v1, "usb_storage_settings_switch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 346
    const-string v4, "tangible usbstorage switch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Switch: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v4, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mUsbStorage_switch:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mUsbStorage_switch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v2

    :goto_5
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 348
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tangible_usbstorage_panel_enable"

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v3

    :goto_6
    invoke-static {v4, v5, v1}, Lcom/lge/provider/SettingsEx$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 351
    :cond_4
    const-string v1, "dock_settings_switch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    const-string v4, "tangible dock switch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Switch: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v4, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mDock_switch:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mDock_switch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_b

    move v1, v2

    :goto_7
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 354
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "tangible_dock_panel_enable"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_c

    :goto_8
    invoke-static {v1, v4, v3}, Lcom/lge/provider/SettingsEx$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .restart local p2
    :cond_5
    move v1, v3

    .line 335
    goto/16 :goto_1

    :cond_6
    move v1, v2

    .line 336
    goto/16 :goto_2

    :cond_7
    move v1, v3

    .line 341
    goto/16 :goto_3

    :cond_8
    move v1, v2

    .line 342
    goto/16 :goto_4

    :cond_9
    move v1, v3

    .line 347
    goto :goto_5

    :cond_a
    move v1, v2

    .line 348
    goto :goto_6

    :cond_b
    move v1, v3

    .line 353
    goto :goto_7

    .end local p2
    :cond_c
    move v3, v2

    .line 354
    goto :goto_8
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 259
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/AccessorySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/lgesettings/Utils;->supportSplitView(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/AccessorySettings;->isOwner()Z

    move-result v5

    if-nez v5, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/AccessorySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/AccessorySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0810a5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 317
    :goto_0
    return v4

    .line 264
    :cond_0
    const-string v5, "earphone_settings"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 265
    invoke-direct {p0}, Lcom/android/lgesettings/lge/AccessorySettings;->startTangibleService()V

    .line 266
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.lge.tangible"

    const-string v4, "com.lge.tangible.HeadsetPreferenceAcitivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .local v0, c:Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    .local v1, i:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 269
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/lge/AccessorySettings;->startActivity(Landroid/content/Intent;)V

    .line 317
    .end local v0           #c:Landroid/content/ComponentName;
    .end local v1           #i:Landroid/content/Intent;
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto :goto_0

    .line 270
    :cond_2
    const-string v5, "pen_settings"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 271
    invoke-direct {p0}, Lcom/android/lgesettings/lge/AccessorySettings;->startTangibleService()V

    .line 272
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.lge.tangible"

    const-string v4, "com.lge.tangible.PenPreferenceActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .restart local v0       #c:Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 274
    .restart local v1       #i:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 275
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/lge/AccessorySettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 276
    .end local v0           #c:Landroid/content/ComponentName;
    .end local v1           #i:Landroid/content/Intent;
    :cond_3
    const-string v5, "usb_storage_settings"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 277
    invoke-direct {p0}, Lcom/android/lgesettings/lge/AccessorySettings;->startTangibleService()V

    .line 278
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.lge.tangible"

    const-string v4, "com.lge.tangible.UsbStoragePreferenceActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    .restart local v0       #c:Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 280
    .restart local v1       #i:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 281
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/lge/AccessorySettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 282
    .end local v0           #c:Landroid/content/ComponentName;
    .end local v1           #i:Landroid/content/Intent;
    :cond_4
    const-string v5, "dock_settings"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 283
    invoke-direct {p0}, Lcom/android/lgesettings/lge/AccessorySettings;->startTangibleService()V

    .line 284
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.lge.tangible"

    const-string v4, "com.lge.tangible.DockPreferenceActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .restart local v0       #c:Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 286
    .restart local v1       #i:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 287
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/lge/AccessorySettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 288
    .end local v0           #c:Landroid/content/ComponentName;
    .end local v1           #i:Landroid/content/Intent;
    :cond_5
    const-string v5, "car_home"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 289
    iget-object v5, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mCarHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 290
    .local v2, value:Z
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "car_home_auto_launch"

    if-eqz v2, :cond_6

    :goto_2
    invoke-static {v5, v6, v3}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_6
    move v3, v4

    goto :goto_2

    .line 292
    .end local v2           #value:Z
    :cond_7
    const-string v3, "earphone_settings_switch"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 293
    invoke-direct {p0}, Lcom/android/lgesettings/lge/AccessorySettings;->startTangibleService()V

    .line 294
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.lge.tangible"

    const-string v4, "com.lge.tangible.btnpanel.ButtonEditActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .restart local v0       #c:Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 296
    .restart local v1       #i:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 297
    const-string v3, "com.lge.tangible.btnpanel.KEY"

    const-string v4, "headset_pref_key"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/lge/AccessorySettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 301
    .end local v0           #c:Landroid/content/ComponentName;
    .end local v1           #i:Landroid/content/Intent;
    :cond_8
    const-string v3, "usb_storage_settings_switch"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 302
    invoke-direct {p0}, Lcom/android/lgesettings/lge/AccessorySettings;->startTangibleService()V

    .line 303
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.lge.tangible"

    const-string v4, "com.lge.tangible.btnpanel.ButtonEditActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .restart local v0       #c:Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 305
    .restart local v1       #i:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 306
    const-string v3, "com.lge.tangible.btnpanel.KEY"

    const-string v4, "otg_ums_button_manager"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/lge/AccessorySettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 308
    .end local v0           #c:Landroid/content/ComponentName;
    .end local v1           #i:Landroid/content/Intent;
    :cond_9
    const-string v3, "dock_settings_switch"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 309
    invoke-direct {p0}, Lcom/android/lgesettings/lge/AccessorySettings;->startTangibleService()V

    .line 310
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.lge.tangible"

    const-string v4, "com.lge.tangible.btnpanel.ButtonEditActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    .restart local v0       #c:Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 312
    .restart local v1       #i:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 313
    const-string v3, "com.lge.tangible.btnpanel.KEY"

    const-string v4, "dock_pref_key"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/lge/AccessorySettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 398
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onResume()V

    .line 403
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/AccessorySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.lge.lollipop"

    invoke-static {v3, v4}, Lcom/android/lgesettings/Utils;->checkPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 404
    invoke-direct {p0}, Lcom/android/lgesettings/lge/AccessorySettings;->setQuickCoverLollipopSummary()V

    .line 410
    :cond_0
    iget-object v3, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mQuickCover:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_2

    .line 411
    iget-object v3, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mQuickCover:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "quick_cover_enable"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 415
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tangible_earphone_panel_enable"

    invoke-static {v2, v3}, Lcom/lge/provider/SettingsEx$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 416
    .local v1, temp_earphone:I
    const-string v2, "tangible"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "temp_earphone = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/lge/provider/SettingsEx$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    .end local v1           #temp_earphone:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tangible_earphone_panel_enable"

    invoke-virtual {p0, v2, v3}, Lcom/android/lgesettings/lge/AccessorySettings;->getPanelEnableDB(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    .line 424
    iget-object v2, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mEarjack_switch:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "tangible_earphone_panel_enable"

    invoke-virtual {p0, v3, v4}, Lcom/android/lgesettings/lge/AccessorySettings;->getPanelEnable(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 425
    iget-object v2, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mUsbStorage_switch:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "tangible_usbstorage_panel_enable"

    invoke-virtual {p0, v3, v4}, Lcom/android/lgesettings/lge/AccessorySettings;->getPanelEnable(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 426
    iget-object v2, p0, Lcom/android/lgesettings/lge/AccessorySettings;->mDock_switch:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "tangible_dock_panel_enable"

    invoke-virtual {p0, v3, v4}, Lcom/android/lgesettings/lge/AccessorySettings;->getPanelEnable(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 428
    :cond_3
    return-void

    .line 417
    :catch_0
    move-exception v0

    .line 419
    .local v0, e:Lcom/lge/provider/SettingsEx$SettingNotFoundException;
    const-string v2, "tangible"

    const-string v3, "temp_earphone SettingNotFoundException "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
