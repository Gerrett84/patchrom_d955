.class public Lcom/android/lgesettings/DataUsageEnabler;
.super Ljava/lang/Object;
.source "DataUsageEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static isDataDisable:Z

.field private static mContentQueryMap:Landroid/content/ContentQueryMap;

.field private static mSettingsObserver:Ljava/util/Observer;


# instance fields
.field fromTouch:Z

.field mAlertDialog:Landroid/app/AlertDialog;

.field private mCM:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field settingsCursor:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/lgesettings/DataUsageEnabler;->isDataDisable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;Landroid/preference/PreferenceScreen;)V
    .locals 2
    .parameter "context"
    .parameter "switch_"
    .parameter "pref"

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/DataUsageEnabler;->fromTouch:Z

    .line 553
    new-instance v0, Lcom/android/lgesettings/DataUsageEnabler$10;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/DataUsageEnabler$10;-><init>(Lcom/android/lgesettings/DataUsageEnabler;)V

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 87
    iput-object p1, p0, Lcom/android/lgesettings/DataUsageEnabler;->mContext:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lcom/android/lgesettings/DataUsageEnabler;->mSwitch:Landroid/widget/Switch;

    .line 90
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 93
    const-string v0, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const-string v0, "DataUsageEnabler::register the ACTION_PHONE_STATE_CHANGED for DCM"

    invoke-static {v0}, Lcom/android/lgesettings/SLog;->i(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/DataUsageEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/DataUsageEnabler;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/DataUsageEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/lgesettings/DataUsageEnabler;->isDataRoamingDisableSwitch()V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 65
    sget-boolean v0, Lcom/android/lgesettings/DataUsageEnabler;->isDataDisable:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/lgesettings/DataUsageEnabler;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/lgesettings/DataUsageEnabler;->setMobileDataEnabled(Z)V

    return-void
.end method

.method public static hasReadyMobileRadio(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 618
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 619
    .local v0, conn:Landroid/net/ConnectivityManager;
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 623
    .local v1, tele:Landroid/telephony/TelephonyManager;
    const-string v3, "SPR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "MPCS"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 624
    :cond_0
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    .line 629
    :cond_1
    :goto_0
    return v2

    .line 625
    :cond_2
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v3

    if-nez v3, :cond_3

    .line 627
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    goto :goto_0

    .line 629
    :cond_3
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 272
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isDataRoaming()Z
    .locals 2

    .prologue
    .line 253
    const/4 v0, 0x0

    .line 254
    .local v0, bRtn:Z
    const/4 v1, 0x0

    .line 255
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 256
    if-eqz v1, :cond_0

    .line 257
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 259
    :cond_0
    return v0
.end method

.method private isDataRoamingDisableSwitch()V
    .locals 2

    .prologue
    .line 262
    const-string v0, "SKT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LGU"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    :cond_0
    invoke-direct {p0}, Lcom/android/lgesettings/DataUsageEnabler;->isDataRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 268
    :cond_1
    return-void
.end method

.method private isMobileDataEnabled()Z
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageEnabler;->mCM:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    return v0
.end method

.method private isRememberOptionChecked()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 366
    iget-object v2, p0, Lcom/android/lgesettings/DataUsageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_connectivity_pop_rem"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private setMobileDataEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 280
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageEnabler;->mCM:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 281
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 283
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_1

    .line 284
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/mdm/LGMDMManager;->getEnforceMobileNetworkEnabled(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/mdm/LGMDMManager;->getAllowMobileNetwork(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    if-ne v2, p1, :cond_2

    .line 291
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 293
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private showDataEnablerDialog()V
    .locals 7

    .prologue
    const v6, 0x7f0807e7

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 372
    iget-object v2, p0, Lcom/android/lgesettings/DataUsageEnabler;->mCM:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    .line 374
    .local v1, enabled:Z
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/lgesettings/DataUsageEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 375
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 376
    const v2, 0x7f080115

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 378
    const-string v2, "SKT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v4, v2, :cond_2

    .line 379
    if-eqz v1, :cond_1

    .line 380
    const v2, 0x7f080ed3

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 381
    sput-boolean v4, Lcom/android/lgesettings/DataUsageEnabler;->isDataDisable:Z

    .line 436
    :cond_0
    :goto_0
    const v2, 0x104000a

    new-instance v3, Lcom/android/lgesettings/DataUsageEnabler$4;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/DataUsageEnabler$4;-><init>(Lcom/android/lgesettings/DataUsageEnabler;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 447
    const/high16 v2, 0x104

    new-instance v3, Lcom/android/lgesettings/DataUsageEnabler$5;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/DataUsageEnabler$5;-><init>(Lcom/android/lgesettings/DataUsageEnabler;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 459
    new-instance v2, Lcom/android/lgesettings/DataUsageEnabler$6;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/DataUsageEnabler$6;-><init>(Lcom/android/lgesettings/DataUsageEnabler;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 472
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/DataUsageEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    .line 473
    iget-object v2, p0, Lcom/android/lgesettings/DataUsageEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 474
    return-void

    .line 383
    :cond_1
    const v2, 0x7f080ed4

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 384
    sput-boolean v5, Lcom/android/lgesettings/DataUsageEnabler;->isDataDisable:Z

    goto :goto_0

    .line 386
    :cond_2
    const-string v2, "KT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v4, v2, :cond_5

    .line 387
    if-ne v4, v1, :cond_4

    .line 389
    invoke-direct {p0}, Lcom/android/lgesettings/DataUsageEnabler;->isDataRoaming()Z

    move-result v2

    if-ne v2, v4, :cond_3

    .line 390
    const v2, 0x7f081098

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 395
    :goto_1
    sput-boolean v4, Lcom/android/lgesettings/DataUsageEnabler;->isDataDisable:Z

    goto :goto_0

    .line 392
    :cond_3
    const v2, 0x7f081097

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 397
    :cond_4
    const v2, 0x7f080ed6

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 398
    sput-boolean v5, Lcom/android/lgesettings/DataUsageEnabler;->isDataDisable:Z

    goto :goto_0

    .line 400
    :cond_5
    const-string v2, "LGU"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v4, v2, :cond_7

    .line 401
    if-eqz v1, :cond_6

    .line 402
    const v2, 0x7f080c79

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 403
    sput-boolean v4, Lcom/android/lgesettings/DataUsageEnabler;->isDataDisable:Z

    goto :goto_0

    .line 405
    :cond_6
    const v2, 0x7f080c78

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 406
    sput-boolean v5, Lcom/android/lgesettings/DataUsageEnabler;->isDataDisable:Z

    goto :goto_0

    .line 408
    :cond_7
    const-string v2, "ATT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v4, v2, :cond_9

    .line 409
    if-eqz v1, :cond_8

    .line 410
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 411
    sput-boolean v4, Lcom/android/lgesettings/DataUsageEnabler;->isDataDisable:Z

    goto/16 :goto_0

    .line 413
    :cond_8
    const v2, 0x7f080f09

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 414
    sput-boolean v5, Lcom/android/lgesettings/DataUsageEnabler;->isDataDisable:Z

    goto/16 :goto_0

    .line 416
    :cond_9
    const-string v2, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v4, v2, :cond_a

    .line 417
    if-eqz v1, :cond_0

    .line 418
    const v2, 0x7f080f0b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 419
    sput-boolean v4, Lcom/android/lgesettings/DataUsageEnabler;->isDataDisable:Z

    goto/16 :goto_0

    .line 421
    :cond_a
    const-string v2, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v4, v2, :cond_c

    .line 422
    if-eqz v1, :cond_b

    .line 424
    const v2, 0x7f0810af

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 425
    sput-boolean v4, Lcom/android/lgesettings/DataUsageEnabler;->isDataDisable:Z

    goto/16 :goto_0

    .line 428
    :cond_b
    const v2, 0x7f0810ae

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 429
    sput-boolean v5, Lcom/android/lgesettings/DataUsageEnabler;->isDataDisable:Z

    goto/16 :goto_0

    .line 432
    :cond_c
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 433
    sput-boolean v4, Lcom/android/lgesettings/DataUsageEnabler;->isDataDisable:Z

    goto/16 :goto_0
.end method

.method private showDataEnablerDialog_VZW()V
    .locals 7

    .prologue
    .line 478
    iget-object v5, p0, Lcom/android/lgesettings/DataUsageEnabler;->mCM:Landroid/net/ConnectivityManager;

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    .line 482
    .local v1, enabled:Z
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/lgesettings/DataUsageEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 483
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x1010355

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 484
    const v5, 0x7f0807f3

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 486
    iget-object v5, p0, Lcom/android/lgesettings/DataUsageEnabler;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/lgesettings/DataUsageEnabler;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 487
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f040067

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 489
    .local v4, view:Landroid/view/View;
    const v5, 0x7f0a00e2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 491
    .local v3, messageText:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 492
    const v5, 0x7f080f0b

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 494
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/lgesettings/DataUsageEnabler;->isDataDisable:Z

    .line 497
    :cond_0
    const v5, 0x104000a

    new-instance v6, Lcom/android/lgesettings/DataUsageEnabler$7;

    invoke-direct {v6, p0}, Lcom/android/lgesettings/DataUsageEnabler$7;-><init>(Lcom/android/lgesettings/DataUsageEnabler;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 508
    const/high16 v5, 0x104

    new-instance v6, Lcom/android/lgesettings/DataUsageEnabler$8;

    invoke-direct {v6, p0}, Lcom/android/lgesettings/DataUsageEnabler$8;-><init>(Lcom/android/lgesettings/DataUsageEnabler;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 520
    new-instance v5, Lcom/android/lgesettings/DataUsageEnabler$9;

    invoke-direct {v5, p0}, Lcom/android/lgesettings/DataUsageEnabler$9;-><init>(Lcom/android/lgesettings/DataUsageEnabler;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 545
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 547
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/lgesettings/DataUsageEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    .line 548
    iget-object v5, p0, Lcom/android/lgesettings/DataUsageEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d3

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 549
    iget-object v5, p0, Lcom/android/lgesettings/DataUsageEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 550
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 9
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 300
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    .line 301
    .local v3, operator:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/lgesettings/DataUsageEnabler;->isMobileDataEnabled()Z

    move-result v1

    .line 304
    .local v1, dataEnabled:Z
    sget-boolean v6, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v6, :cond_1

    .line 305
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/lge/mdm/LGMDMManager;->getEnforceMobileNetworkEnabled(Landroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/lge/mdm/LGMDMManager;->getAllowMobileNetwork(Landroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    iget-boolean v6, p0, Lcom/android/lgesettings/DataUsageEnabler;->fromTouch:Z

    if-ne v4, v6, :cond_0

    .line 313
    if-eqz v1, :cond_5

    .line 314
    iget-object v4, p0, Lcom/android/lgesettings/DataUsageEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 316
    const-string v4, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 317
    iget-object v4, p0, Lcom/android/lgesettings/DataUsageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "vzw_data_off_enabled"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_2

    .line 318
    invoke-direct {p0}, Lcom/android/lgesettings/DataUsageEnabler;->showDataEnablerDialog_VZW()V

    .line 361
    :goto_1
    iput-boolean v5, p0, Lcom/android/lgesettings/DataUsageEnabler;->fromTouch:Z

    goto :goto_0

    .line 320
    :cond_2
    invoke-direct {p0, v5}, Lcom/android/lgesettings/DataUsageEnabler;->setMobileDataEnabled(Z)V

    goto :goto_1

    .line 323
    :cond_3
    const-string v4, "TLF"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 324
    invoke-direct {p0, v5}, Lcom/android/lgesettings/DataUsageEnabler;->setMobileDataEnabled(Z)V

    goto :goto_1

    .line 326
    :cond_4
    invoke-direct {p0}, Lcom/android/lgesettings/DataUsageEnabler;->showDataEnablerDialog()V

    goto :goto_1

    .line 329
    :cond_5
    iget-object v6, p0, Lcom/android/lgesettings/DataUsageEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 330
    const-string v6, "ATT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "SKT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "KT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "LGU"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 335
    :cond_6
    invoke-direct {p0}, Lcom/android/lgesettings/DataUsageEnabler;->showDataEnablerDialog()V

    goto :goto_1

    .line 336
    :cond_7
    const-string v6, "TLF"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 337
    invoke-direct {p0}, Lcom/android/lgesettings/DataUsageEnabler;->isRememberOptionChecked()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 338
    invoke-direct {p0, v4}, Lcom/android/lgesettings/DataUsageEnabler;->setMobileDataEnabled(Z)V

    .line 339
    iget-object v6, p0, Lcom/android/lgesettings/DataUsageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "preferred_data_network_mode"

    invoke-direct {p0}, Lcom/android/lgesettings/DataUsageEnabler;->isMobileDataEnabled()Z

    move-result v8

    if-eqz v8, :cond_8

    :goto_2
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_8
    move v4, v5

    goto :goto_2

    .line 344
    :cond_9
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 345
    .local v0, connectionDialogIntent:Landroid/content/Intent;
    const/high16 v6, 0x1000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 346
    const-string v6, "com.lge.android.connectionmanager.widget"

    const-string v7, "com.lge.android.connectionmanager.widget.DialogActivity"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    :try_start_0
    iget-object v6, p0, Lcom/android/lgesettings/DataUsageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 352
    :catch_0
    move-exception v2

    .line 354
    .local v2, e:Landroid/content/ActivityNotFoundException;
    invoke-direct {p0, v4}, Lcom/android/lgesettings/DataUsageEnabler;->setMobileDataEnabled(Z)V

    goto/16 :goto_1

    .line 358
    .end local v0           #connectionDialogIntent:Landroid/content/Intent;
    .end local v2           #e:Landroid/content/ActivityNotFoundException;
    :cond_a
    invoke-direct {p0, v4}, Lcom/android/lgesettings/DataUsageEnabler;->setMobileDataEnabled(Z)V

    goto/16 :goto_1
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/lgesettings/DataUsageEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 105
    sget-object v0, Lcom/android/lgesettings/DataUsageEnabler;->mContentQueryMap:Landroid/content/ContentQueryMap;

    if-eqz v0, :cond_0

    .line 106
    sget-object v0, Lcom/android/lgesettings/DataUsageEnabler;->mContentQueryMap:Landroid/content/ContentQueryMap;

    sget-object v1, Lcom/android/lgesettings/DataUsageEnabler;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->deleteObserver(Ljava/util/Observer;)V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageEnabler;->settingsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageEnabler;->settingsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 112
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 116
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageEnabler;->mCM:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageEnabler;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageEnabler;->mCM:Landroid/net/ConnectivityManager;

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/lgesettings/DataUsageEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/lgesettings/DataUsageEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/lgesettings/DataUsageEnabler;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_2

    .line 121
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v7}, Landroid/widget/Switch;->setChecked(Z)V

    .line 122
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v7}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 145
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "mobile_data"

    aput-object v5, v4, v7

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageEnabler;->settingsCursor:Landroid/database/Cursor;

    .line 147
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageEnabler;->settingsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 148
    new-instance v0, Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/lgesettings/DataUsageEnabler;->settingsCursor:Landroid/database/Cursor;

    const-string v3, "name"

    invoke-direct {v0, v1, v3, v8, v2}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    sput-object v0, Lcom/android/lgesettings/DataUsageEnabler;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 151
    :cond_3
    new-instance v0, Lcom/android/lgesettings/DataUsageEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/DataUsageEnabler$1;-><init>(Lcom/android/lgesettings/DataUsageEnabler;)V

    sput-object v0, Lcom/android/lgesettings/DataUsageEnabler;->mSettingsObserver:Ljava/util/Observer;

    .line 174
    sget-object v0, Lcom/android/lgesettings/DataUsageEnabler;->mContentQueryMap:Landroid/content/ContentQueryMap;

    if-eqz v0, :cond_4

    .line 175
    sget-object v0, Lcom/android/lgesettings/DataUsageEnabler;->mContentQueryMap:Landroid/content/ContentQueryMap;

    sget-object v1, Lcom/android/lgesettings/DataUsageEnabler;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 178
    :cond_4
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/lgesettings/DataUsageEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/lgesettings/DataUsageEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 181
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_5

    .line 182
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/DataUsageEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/MDMSettingsAdapter;->setDataEnablerSwitch(Landroid/widget/Switch;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 183
    const-string v0, "DataUsageEnabler"

    const-string v1, "[LGMDM] block"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_5
    return-void

    .line 127
    :cond_6
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 129
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v8}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 132
    :cond_7
    const-string v0, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 133
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    .line 134
    .local v6, tm:Landroid/telephony/TelephonyManager;
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_8

    .line 135
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v7}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 139
    .end local v6           #tm:Landroid/telephony/TelephonyManager;
    :cond_8
    iget-boolean v0, p0, Lcom/android/lgesettings/DataUsageEnabler;->fromTouch:Z

    if-nez v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/lgesettings/DataUsageEnabler;->isMobileDataEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_0
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 8
    .parameter "switch_"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 190
    iget-object v6, p0, Lcom/android/lgesettings/DataUsageEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v6, p1, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    invoke-direct {p0}, Lcom/android/lgesettings/DataUsageEnabler;->isMobileDataEnabled()Z

    move-result v6

    if-ne v4, v6, :cond_4

    .line 195
    iget-object v6, p0, Lcom/android/lgesettings/DataUsageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "mobile_data"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 200
    :goto_1
    iget-object v6, p0, Lcom/android/lgesettings/DataUsageEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 201
    iput-object p1, p0, Lcom/android/lgesettings/DataUsageEnabler;->mSwitch:Landroid/widget/Switch;

    .line 202
    iget-object v6, p0, Lcom/android/lgesettings/DataUsageEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 204
    iget-object v6, p0, Lcom/android/lgesettings/DataUsageEnabler;->mSwitch:Landroid/widget/Switch;

    new-instance v7, Lcom/android/lgesettings/DataUsageEnabler$2;

    invoke-direct {v7, p0}, Lcom/android/lgesettings/DataUsageEnabler$2;-><init>(Lcom/android/lgesettings/DataUsageEnabler;)V

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v6, p0, Lcom/android/lgesettings/DataUsageEnabler;->mSwitch:Landroid/widget/Switch;

    new-instance v7, Lcom/android/lgesettings/DataUsageEnabler$3;

    invoke-direct {v7, p0}, Lcom/android/lgesettings/DataUsageEnabler$3;-><init>(Lcom/android/lgesettings/DataUsageEnabler;)V

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 222
    iget-object v6, p0, Lcom/android/lgesettings/DataUsageEnabler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/lgesettings/DataUsageEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    .line 223
    .local v2, isAirplaneMode:Z
    iget-object v6, p0, Lcom/android/lgesettings/DataUsageEnabler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/lgesettings/DataUsageEnabler;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v1

    .line 224
    .local v1, hasReadyMobile:Z
    iget-object v6, p0, Lcom/android/lgesettings/DataUsageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "mobile_data"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_5

    move v0, v4

    .line 226
    .local v0, enabled:Z
    :goto_2
    if-eq v2, v4, :cond_2

    if-nez v1, :cond_6

    .line 227
    :cond_2
    iget-object v4, p0, Lcom/android/lgesettings/DataUsageEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 233
    :goto_3
    const-string v4, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 234
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 235
    .local v3, tm:Landroid/telephony/TelephonyManager;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-eqz v4, :cond_3

    .line 236
    iget-object v4, p0, Lcom/android/lgesettings/DataUsageEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 241
    .end local v3           #tm:Landroid/telephony/TelephonyManager;
    :cond_3
    invoke-direct {p0}, Lcom/android/lgesettings/DataUsageEnabler;->isDataRoamingDisableSwitch()V

    .line 243
    sget-boolean v4, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v4, :cond_0

    .line 244
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/DataUsageEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v5}, Lcom/android/lgesettings/MDMSettingsAdapter;->setDataEnablerSwitch(Landroid/widget/Switch;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_0

    .line 197
    .end local v0           #enabled:Z
    .end local v1           #hasReadyMobile:Z
    .end local v2           #isAirplaneMode:Z
    :cond_4
    iget-object v6, p0, Lcom/android/lgesettings/DataUsageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "mobile_data"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .restart local v1       #hasReadyMobile:Z
    .restart local v2       #isAirplaneMode:Z
    :cond_5
    move v0, v5

    .line 224
    goto :goto_2

    .line 229
    .restart local v0       #enabled:Z
    :cond_6
    iget-object v4, p0, Lcom/android/lgesettings/DataUsageEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_3
.end method
