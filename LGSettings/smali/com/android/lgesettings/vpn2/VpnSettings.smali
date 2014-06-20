.class public Lcom/android/lgesettings/vpn2/VpnSettings;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "VpnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/os/Handler$Callback;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/vpn2/VpnSettings$LockdownConfigFragment;,
        Lcom/android/lgesettings/vpn2/VpnSettings$VpnPreference;
    }
.end annotation


# static fields
.field public static FEATURE_FRIENDLY_VPN:Z


# instance fields
.field private InstalledKey:Ljava/lang/String;

.field private mDialog:Lcom/android/lgesettings/vpn2/VpnDialog;

.field private mInfo:Lcom/android/internal/net/LegacyVpnInfo;

.field mInfoReceiver:Landroid/content/BroadcastReceiver;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mPreferences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/lgesettings/vpn2/VpnSettings$VpnPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mPs:Landroid/preference/PreferenceCategory;

.field private mSelectedKey:Ljava/lang/String;

.field private final mService:Landroid/net/IConnectivityManager;

.field private mType:I

.field private mUnlocking:Z

.field private mUpdater:Landroid/os/Handler;

.field private savedDialog:Lcom/android/lgesettings/vpn2/VpnDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/lgesettings/vpn2/VpnSettings;->FEATURE_FRIENDLY_VPN:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    .line 98
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    .line 100
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    .line 101
    iput-boolean v1, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mUnlocking:Z

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    .line 117
    iput v1, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mType:I

    .line 120
    new-instance v0, Lcom/android/lgesettings/vpn2/VpnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/vpn2/VpnSettings$1;-><init>(Lcom/android/lgesettings/vpn2/VpnSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 659
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/vpn2/VpnSettings;)Lcom/android/lgesettings/vpn2/VpnDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mDialog:Lcom/android/lgesettings/vpn2/VpnDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/vpn2/VpnSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mType:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/lgesettings/vpn2/VpnSettings;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/lgesettings/vpn2/VpnSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mType:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/lgesettings/vpn2/VpnSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->InstalledKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/lgesettings/vpn2/VpnSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->InstalledKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/lgesettings/vpn2/VpnSettings;)Landroid/security/KeyStore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    return-object v0
.end method

.method static synthetic access$400(Landroid/security/KeyStore;[I)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-static {p0, p1}, Lcom/android/lgesettings/vpn2/VpnSettings;->loadVpnProfiles(Landroid/security/KeyStore;[I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/lgesettings/vpn2/VpnSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/lgesettings/vpn2/VpnSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/lgesettings/vpn2/VpnSettings;->disconnect(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/lgesettings/vpn2/VpnSettings;)Landroid/preference/PreferenceCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mPs:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method private connect(Lcom/android/internal/net/VpnProfile;)V
    .locals 5
    .parameter "profile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 492
    const-string v2, "LGU"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 494
    new-instance v1, Landroid/content/Intent;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-gt v2, v3, :cond_2

    const-string v2, "com.lguplus.common.wificm.interface"

    :goto_0
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 498
    .local v1, i:Landroid/content/Intent;
    const-string v2, "type"

    const-string v3, "request"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 499
    const-string v2, "action"

    const-string v3, "stopMwlanDaemon"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 500
    invoke-virtual {p0}, Lcom/android/lgesettings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 505
    .end local v1           #i:Landroid/content/Intent;
    :cond_0
    const-string v2, "ro.lge.capp_lgevpn"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v4, v2, :cond_1

    .line 506
    invoke-direct {p0}, Lcom/android/lgesettings/vpn2/VpnSettings;->mayDisconnectLgeVpn()V

    .line 511
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v2, p1}, Landroid/net/IConnectivityManager;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    :goto_1
    return-void

    .line 494
    :cond_2
    const-string v2, "com.lguplus.common.wificm.mwlan.interface"

    goto :goto_0

    .line 512
    :catch_0
    move-exception v0

    .line 513
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {p0}, Lcom/android/lgesettings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f08083a

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private deleteProfile(Landroid/preference/Preference;)V
    .locals 4
    .parameter "preference"

    .prologue
    .line 771
    new-instance v1, Lcom/android/lgesettings/vpn2/VpnSettings$3;

    invoke-direct {v1, p0, p1}, Lcom/android/lgesettings/vpn2/VpnSettings$3;-><init>(Lcom/android/lgesettings/vpn2/VpnSettings;Landroid/preference/Preference;)V

    .line 783
    .local v1, onClickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f08079c

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080aaa

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080106

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 790
    .local v0, mShowingDialog:Landroid/content/DialogInterface;
    return-void
.end method

.method private disconnect(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    :try_start_0
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    const-string v1, "[Legacy VPN]"

    const-string v2, "[Legacy VPN]"

    invoke-interface {v0, v1, v2}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 521
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static varargs loadVpnProfiles(Landroid/security/KeyStore;[I)Ljava/util/List;
    .locals 9
    .parameter "keyStore"
    .parameter "excludeTypes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/security/KeyStore;",
            "[I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/net/VpnProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 755
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 756
    .local v6, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    const-string v7, "VPN_"

    invoke-virtual {p0, v7}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 757
    .local v3, keys:[Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 758
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v0, v1

    .line 759
    .local v2, key:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VPN_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v2, v7}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v5

    .line 761
    .local v5, profile:Lcom/android/internal/net/VpnProfile;
    if-eqz v5, :cond_0

    iget v7, v5, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-static {p1, v7}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v7

    if-nez v7, :cond_0

    .line 762
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 766
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #key:Ljava/lang/String;
    .end local v4           #len$:I
    .end local v5           #profile:Lcom/android/internal/net/VpnProfile;
    :cond_1
    return-object v6
.end method

.method private mayDisconnectLgeVpn()V
    .locals 17

    .prologue
    .line 530
    const/4 v5, 0x0

    .line 532
    .local v5, am:Landroid/app/ActivityManager;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    const-string v13, "activity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/lgesettings/vpn2/VpnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Landroid/app/ActivityManager;

    move-object v5, v0

    .line 533
    if-nez v5, :cond_1

    .line 534
    const-string v13, "VpnSettings"

    const-string v14, "ActivityManager is null"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 537
    :catch_0
    move-exception v6

    .line 538
    .local v6, e:Ljava/lang/Exception;
    const-string v13, "VpnSettings"

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    .end local v6           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v12, 0x0

    .line 542
    .local v12, sendIntent:Z
    const/16 v1, 0x64

    .line 543
    .local v1, WAIT_MILLIS_TIME:I
    const/16 v4, 0x1388

    .line 544
    .local v4, WAIT_MILLIS_TIME_TOTAL:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const-wide/16 v15, 0x1388

    add-long v2, v13, v15

    .line 548
    .local v2, WAIT_MILLIS_TIME_OVER:J
    :cond_2
    :goto_1
    const/4 v9, 0x0

    .line 552
    .local v9, isServiceExist:Z
    const/4 v11, 0x0

    .line 553
    .local v11, rsiList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    const v13, 0x7fffffff

    :try_start_1
    invoke-virtual {v5, v13}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v11

    .line 554
    if-nez v11, :cond_4

    .line 555
    const-string v13, "VpnSettings"

    const-string v14, "getRunningServices() is null"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 572
    :catch_1
    move-exception v6

    .line 573
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v13, "VpnSettings"

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    .end local v6           #e:Ljava/lang/Exception;
    :cond_3
    :goto_2
    if-eqz v9, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    cmp-long v13, v2, v13

    if-ltz v13, :cond_0

    .line 582
    const/4 v13, 0x1

    if-ne v13, v9, :cond_2

    .line 584
    const-wide/16 v13, 0x64

    :try_start_2
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 585
    :catch_2
    move-exception v13

    goto :goto_1

    .line 560
    :cond_4
    :try_start_3
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 561
    .local v10, rsi:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v13, v10, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v13}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "com.ipsec.vpnclient.pm.GUIService"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 562
    const/4 v9, 0x1

    .line 564
    if-nez v12, :cond_3

    .line 565
    new-instance v8, Landroid/content/Intent;

    const-string v13, "com.ipsec.vpnclient.pm.GUIService.ACTION.STOP"

    invoke-direct {v8, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 566
    .local v8, intent:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13, v8}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 567
    const/4 v12, 0x1

    .line 568
    goto :goto_2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "message"

    .prologue
    const/4 v5, 0x0

    .line 463
    iget-object v2, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 465
    invoke-virtual {p0}, Lcom/android/lgesettings/vpn2/VpnSettings;->isResumed()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 467
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v2}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v0

    .line 468
    .local v0, info:Lcom/android/internal/net/LegacyVpnInfo;
    iget-object v2, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v2, :cond_1

    .line 469
    iget-object v2, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v3, v3, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/vpn2/VpnSettings$VpnPreference;

    .line 470
    .local v1, preference:Lcom/android/lgesettings/vpn2/VpnSettings$VpnPreference;
    if-eqz v1, :cond_0

    .line 471
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/vpn2/VpnSettings$VpnPreference;->update(I)V

    .line 473
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    .line 475
    .end local v1           #preference:Lcom/android/lgesettings/vpn2/VpnSettings$VpnPreference;
    :cond_1
    if-eqz v0, :cond_2

    .line 476
    iget-object v2, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/vpn2/VpnSettings$VpnPreference;

    .line 477
    .restart local v1       #preference:Lcom/android/lgesettings/vpn2/VpnSettings$VpnPreference;
    if-eqz v1, :cond_2

    .line 478
    iget v2, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/vpn2/VpnSettings$VpnPreference;->update(I)V

    .line 479
    iput-object v0, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    .end local v0           #info:Lcom/android/internal/net/LegacyVpnInfo;
    .end local v1           #preference:Lcom/android/lgesettings/vpn2/VpnSettings$VpnPreference;
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 487
    :cond_3
    const/4 v2, 0x1

    return v2

    .line 482
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 326
    const/4 v5, -0x1

    if-ne p2, v5, :cond_1

    .line 328
    iget-object v5, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mDialog:Lcom/android/lgesettings/vpn2/VpnDialog;

    if-nez v5, :cond_0

    .line 329
    iget-object v5, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->savedDialog:Lcom/android/lgesettings/vpn2/VpnDialog;

    iput-object v5, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mDialog:Lcom/android/lgesettings/vpn2/VpnDialog;

    .line 333
    :cond_0
    iget-object v5, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mDialog:Lcom/android/lgesettings/vpn2/VpnDialog;

    invoke-virtual {v5}, Lcom/android/lgesettings/vpn2/VpnDialog;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v4

    .line 334
    .local v4, profile:Lcom/android/internal/net/VpnProfile;
    iget-object v5, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VPN_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    .line 337
    iget-object v5, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v6, v4, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/lgesettings/vpn2/VpnSettings$VpnPreference;

    .line 338
    .local v3, preference:Lcom/android/lgesettings/vpn2/VpnSettings$VpnPreference;
    if-eqz v3, :cond_2

    .line 339
    iget-object v5, v4, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/lgesettings/vpn2/VpnSettings;->disconnect(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v3, v4}, Lcom/android/lgesettings/vpn2/VpnSettings$VpnPreference;->update(Lcom/android/internal/net/VpnProfile;)V

    .line 349
    :goto_0
    iget-object v5, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mDialog:Lcom/android/lgesettings/vpn2/VpnDialog;

    invoke-virtual {v5}, Lcom/android/lgesettings/vpn2/VpnDialog;->isEditing()Z

    move-result v5

    if-nez v5, :cond_1

    .line 352
    const-string v5, "SKT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 353
    new-instance v2, Ljava/io/File;

    const-string v5, "/data/iwland/iwlandrunning"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 354
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 356
    const-string v5, "VpnSettings"

    const-string v6, "i-wlan is running!"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x1040014

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1080027

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f080cbc

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    new-instance v7, Lcom/android/lgesettings/vpn2/VpnSettings$2;

    invoke-direct {v7, p0}, Lcom/android/lgesettings/vpn2/VpnSettings$2;-><init>(Lcom/android/lgesettings/vpn2/VpnSettings;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 367
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 368
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 380
    .end local v0           #alertDialog:Landroid/app/AlertDialog;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #preference:Lcom/android/lgesettings/vpn2/VpnSettings$VpnPreference;
    .end local v4           #profile:Lcom/android/internal/net/VpnProfile;
    :cond_1
    :goto_1
    return-void

    .line 342
    .restart local v3       #preference:Lcom/android/lgesettings/vpn2/VpnSettings$VpnPreference;
    .restart local v4       #profile:Lcom/android/internal/net/VpnProfile;
    :cond_2
    new-instance v3, Lcom/android/lgesettings/vpn2/VpnSettings$VpnPreference;

    .end local v3           #preference:Lcom/android/lgesettings/vpn2/VpnSettings$VpnPreference;
    invoke-virtual {p0}, Lcom/android/lgesettings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5, v4}, Lcom/android/lgesettings/vpn2/VpnSettings$VpnPreference;-><init>(Landroid/content/Context;Lcom/android/internal/net/VpnProfile;)V

    .line 343
    .restart local v3       #preference:Lcom/android/lgesettings/vpn2/VpnSettings$VpnPreference;
    invoke-virtual {v3, p0}, Lcom/android/lgesettings/vpn2/VpnSettings$VpnPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 344
    iget-object v5, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v6, v4, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    iget-object v5, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mPs:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 374
    :cond_3
    :try_start_0
    invoke-direct {p0, v4}, Lcom/android/lgesettings/vpn2/VpnSettings;->connect(Lcom/android/internal/net/VpnProfile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 375
    :catch_0
    move-exception v1

    .line 376
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "VpnSettings"

    const-string v6, "connect"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 795
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 797
    iget-object v1, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mDialog:Lcom/android/lgesettings/vpn2/VpnDialog;

    if-eqz v1, :cond_0

    .line 798
    iget-object v1, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mDialog:Lcom/android/lgesettings/vpn2/VpnDialog;

    iput-object v1, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->savedDialog:Lcom/android/lgesettings/vpn2/VpnDialog;

    .line 800
    iget-object v1, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mDialog:Lcom/android/lgesettings/vpn2/VpnDialog;

    const v2, 0x7f0a0370

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/vpn2/VpnDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 802
    .local v0, vpnType:Landroid/widget/Spinner;
    const/4 v1, 0x1

    invoke-virtual {v0}, Landroid/widget/Spinner;->isActivated()Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 803
    iget-object v1, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mDialog:Lcom/android/lgesettings/vpn2/VpnDialog;

    invoke-virtual {v1}, Lcom/android/lgesettings/vpn2/VpnDialog;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 804
    iget-object v1, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mDialog:Lcom/android/lgesettings/vpn2/VpnDialog;

    invoke-virtual {v1}, Lcom/android/lgesettings/vpn2/VpnDialog;->dismiss()V

    .line 805
    iget-object v1, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mDialog:Lcom/android/lgesettings/vpn2/VpnDialog;

    invoke-virtual {v1}, Lcom/android/lgesettings/vpn2/VpnDialog;->show()V

    .line 808
    .end local v0           #vpnType:Landroid/widget/Spinner;
    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 404
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mDialog:Lcom/android/lgesettings/vpn2/VpnDialog;

    if-eqz v0, :cond_0

    .line 405
    const-string v0, "VpnSettings"

    const-string v1, "onContextItemSelected() is called when mDialog != null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :goto_0
    return v5

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/lgesettings/vpn2/VpnSettings$VpnPreference;

    .line 410
    .local v6, preference:Lcom/android/lgesettings/vpn2/VpnSettings$VpnPreference;
    if-nez v6, :cond_1

    .line 411
    const-string v0, "VpnSettings"

    const-string v1, "onContextItemSelected() is called but no preference is found"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 415
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 417
    :pswitch_0
    new-instance v0, Lcom/android/lgesettings/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/lgesettings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v6}, Lcom/android/lgesettings/vpn2/VpnSettings$VpnPreference;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v3

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/lgesettings/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;ZZ)V

    iput-object v0, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mDialog:Lcom/android/lgesettings/vpn2/VpnDialog;

    .line 418
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mDialog:Lcom/android/lgesettings/vpn2/VpnDialog;

    invoke-virtual {v0, p0}, Lcom/android/lgesettings/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 419
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mDialog:Lcom/android/lgesettings/vpn2/VpnDialog;

    invoke-virtual {v0}, Lcom/android/lgesettings/vpn2/VpnDialog;->show()V

    move v5, v4

    .line 420
    goto :goto_0

    .line 422
    :pswitch_1
    invoke-direct {p0, v6}, Lcom/android/lgesettings/vpn2/VpnSettings;->deleteProfile(Landroid/preference/Preference;)V

    move v5, v4

    .line 423
    goto :goto_0

    .line 415
    nop

    :pswitch_data_0
    .packed-switch 0x7f080834
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedState"

    .prologue
    const/4 v5, 0x0

    .line 149
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 151
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/vpn2/VpnSettings;->setHasOptionsMenu(Z)V

    .line 152
    const v0, 0x7f060074

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/vpn2/VpnSettings;->addPreferencesFromResource(I)V

    .line 154
    const-string v0, "vpn_list"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/vpn2/VpnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mPs:Landroid/preference/PreferenceCategory;

    .line 157
    const-string v0, "ro.lge.capp_lgevpn"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/lgesettings/vpn2/VpnSettings;->FEATURE_FRIENDLY_VPN:Z

    .line 158
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 159
    .local v7, filter:Landroid/content/IntentFilter;
    const-string v0, "com.lge.vpn.vpninfo"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    sget-boolean v0, Lcom/android/lgesettings/vpn2/VpnSettings;->FEATURE_FRIENDLY_VPN:Z

    if-eqz v0, :cond_0

    .line 161
    const-string v0, "com.lge.vpn.friendlyvpn"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string v0, "add_network"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/vpn2/VpnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    .line 164
    .local v6, addNetwork:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/lgesettings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08105e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 167
    .end local v6           #addNetwork:Landroid/preference/PreferenceScreen;
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v7}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 170
    if-eqz p1, :cond_1

    .line 171
    const-string v0, "VpnKey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VpnProfile"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v3

    .line 173
    .local v3, profile:Lcom/android/internal/net/VpnProfile;
    if-eqz v3, :cond_1

    .line 174
    new-instance v0, Lcom/android/lgesettings/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/lgesettings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "VpnEditing"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/lgesettings/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;ZZ)V

    iput-object v0, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mDialog:Lcom/android/lgesettings/vpn2/VpnDialog;

    .line 178
    .end local v3           #profile:Lcom/android/internal/net/VpnProfile;
    :cond_1
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7
    .parameter "menu"
    .parameter "view"
    .parameter "info"

    .prologue
    const v6, 0x7f080835

    const v5, 0x7f080834

    const/4 v4, 0x0

    .line 384
    iget-object v2, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mDialog:Lcom/android/lgesettings/vpn2/VpnDialog;

    if-eqz v2, :cond_1

    .line 385
    const-string v2, "VpnSettings"

    const-string v3, "onCreateContextMenu() is called when mDialog != null"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    .end local p3
    :cond_0
    :goto_0
    return-void

    .line 389
    .restart local p3
    :cond_1
    instance-of v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v2, :cond_0

    .line 390
    invoke-virtual {p0}, Lcom/android/lgesettings/vpn2/VpnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3
    iget v3, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 392
    .local v0, preference:Landroid/preference/Preference;
    instance-of v2, v0, Lcom/android/lgesettings/vpn2/VpnSettings$VpnPreference;

    if-eqz v2, :cond_0

    .line 393
    check-cast v0, Lcom/android/lgesettings/vpn2/VpnSettings$VpnPreference;

    .end local v0           #preference:Landroid/preference/Preference;
    invoke-virtual {v0}, Lcom/android/lgesettings/vpn2/VpnSettings$VpnPreference;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v1

    .line 394
    .local v1, profile:Lcom/android/internal/net/VpnProfile;
    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    .line 395
    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 396
    invoke-interface {p1, v4, v5, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 397
    invoke-interface {p1, v4, v6, v4, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 182
    invoke-super {p0, p1, p2}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 183
    const v0, 0x7f110007

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 184
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 313
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onDestroy()V

    .line 314
    invoke-virtual {p0}, Lcom/android/lgesettings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 315
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mDialog:Lcom/android/lgesettings/vpn2/VpnDialog;

    .line 322
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    .line 200
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 218
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    :goto_0
    return v4

    .line 203
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 204
    .local v6, millis:J
    :goto_1
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    const-wide/16 v0, 0x1

    add-long/2addr v6, v0

    goto :goto_1

    .line 207
    :cond_0
    new-instance v0, Lcom/android/lgesettings/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/lgesettings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v3, Lcom/android/internal/net/VpnProfile;

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    move-object v2, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/lgesettings/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;ZZ)V

    iput-object v0, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mDialog:Lcom/android/lgesettings/vpn2/VpnDialog;

    .line 209
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mDialog:Lcom/android/lgesettings/vpn2/VpnDialog;

    invoke-virtual {v0, p0}, Lcom/android/lgesettings/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 210
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mDialog:Lcom/android/lgesettings/vpn2/VpnDialog;

    invoke-virtual {v0}, Lcom/android/lgesettings/vpn2/VpnDialog;->show()V

    goto :goto_0

    .line 214
    .end local v6           #millis:J
    :pswitch_1
    invoke-static {p0}, Lcom/android/lgesettings/vpn2/VpnSettings$LockdownConfigFragment;->show(Lcom/android/lgesettings/vpn2/VpnSettings;)V

    goto :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x7f0a0493
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 295
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPause()V

    .line 304
    invoke-virtual {p0}, Lcom/android/lgesettings/vpn2/VpnSettings;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/android/lgesettings/vpn2/VpnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/vpn2/VpnSettings;->unregisterForContextMenu(Landroid/view/View;)V

    .line 307
    :cond_0
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 12
    .parameter "preference"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 430
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mDialog:Lcom/android/lgesettings/vpn2/VpnDialog;

    if-eqz v0, :cond_0

    .line 431
    const-string v0, "VpnSettings"

    const-string v1, "onPreferenceClick() is called when mDialog != null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    .end local p1
    :goto_0
    return v8

    .line 435
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/android/lgesettings/vpn2/VpnSettings$VpnPreference;

    if-eqz v0, :cond_2

    .line 436
    check-cast p1, Lcom/android/lgesettings/vpn2/VpnSettings$VpnPreference;

    .end local p1
    invoke-virtual {p1}, Lcom/android/lgesettings/vpn2/VpnSettings$VpnPreference;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v3

    .line 437
    .local v3, profile:Lcom/android/internal/net/VpnProfile;
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v0, :cond_1

    iget-object v0, v3, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v1, v1, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 440
    :try_start_0
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 442
    :catch_0
    move-exception v0

    .line 446
    :cond_1
    new-instance v0, Lcom/android/lgesettings/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/lgesettings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object v2, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/lgesettings/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;ZZ)V

    iput-object v0, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mDialog:Lcom/android/lgesettings/vpn2/VpnDialog;

    .line 456
    .end local v3           #profile:Lcom/android/internal/net/VpnProfile;
    :goto_1
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mDialog:Lcom/android/lgesettings/vpn2/VpnDialog;

    invoke-virtual {v0, p0}, Lcom/android/lgesettings/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 457
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mDialog:Lcom/android/lgesettings/vpn2/VpnDialog;

    invoke-virtual {v0}, Lcom/android/lgesettings/vpn2/VpnDialog;->show()V

    goto :goto_0

    .line 449
    .restart local p1
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 450
    .local v10, millis:J
    :goto_2
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 451
    const-wide/16 v0, 0x1

    add-long/2addr v10, v0

    goto :goto_2

    .line 453
    :cond_3
    new-instance v4, Lcom/android/lgesettings/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/lgesettings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    new-instance v7, Lcom/android/internal/net/VpnProfile;

    invoke-static {v10, v11}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    move-object v6, p0

    move v9, v8

    invoke-direct/range {v4 .. v9}, Lcom/android/lgesettings/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;ZZ)V

    iput-object v4, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mDialog:Lcom/android/lgesettings/vpn2/VpnDialog;

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    .line 188
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 191
    const v0, 0x7f0a0493

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 193
    const-string v0, "persist.radio.imsregrequired"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const v0, 0x7f0a0494

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 196
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 235
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onResume()V

    .line 236
    invoke-virtual {p0}, Lcom/android/lgesettings/vpn2/VpnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0006

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 239
    .local v3, isMultiPane:Z
    sget-boolean v8, Lcom/android/lgesettings/vpn2/VpnSettings;->FEATURE_FRIENDLY_VPN:Z

    if-eqz v8, :cond_0

    if-nez v3, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/android/lgesettings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 241
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {p0}, Lcom/android/lgesettings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080711

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 246
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_0
    iget-object v8, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v8}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v8

    sget-object v9, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v8, v9, :cond_3

    .line 247
    iget-boolean v8, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mUnlocking:Z

    if-nez v8, :cond_2

    .line 249
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/lgesettings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    .line 254
    :goto_0
    iget-boolean v8, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mUnlocking:Z

    if-nez v8, :cond_1

    const/4 v7, 0x1

    :cond_1
    iput-boolean v7, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mUnlocking:Z

    .line 291
    :goto_1
    return-void

    .line 252
    :cond_2
    invoke-virtual {p0}, Lcom/android/lgesettings/vpn2/VpnSettings;->finishFragment()V

    goto :goto_0

    .line 259
    :cond_3
    iput-boolean v7, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mUnlocking:Z

    .line 264
    iget-object v8, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-nez v8, :cond_5

    .line 266
    invoke-virtual {p0}, Lcom/android/lgesettings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 267
    .local v1, context:Landroid/content/Context;
    iget-object v8, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-array v9, v7, [I

    invoke-static {v8, v9}, Lcom/android/lgesettings/vpn2/VpnSettings;->loadVpnProfiles(Landroid/security/KeyStore;[I)Ljava/util/List;

    move-result-object v6

    .line 268
    .local v6, profiles:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/net/VpnProfile;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/net/VpnProfile;

    .line 269
    .local v5, profile:Lcom/android/internal/net/VpnProfile;
    new-instance v4, Lcom/android/lgesettings/vpn2/VpnSettings$VpnPreference;

    invoke-direct {v4, v1, v5}, Lcom/android/lgesettings/vpn2/VpnSettings$VpnPreference;-><init>(Landroid/content/Context;Lcom/android/internal/net/VpnProfile;)V

    .line 270
    .local v4, pref:Lcom/android/lgesettings/vpn2/VpnSettings$VpnPreference;
    invoke-virtual {v4, p0}, Lcom/android/lgesettings/vpn2/VpnSettings$VpnPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 271
    iget-object v8, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v9, v5, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v8, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v8, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mPs:Landroid/preference/PreferenceCategory;

    invoke-virtual {v8, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 274
    .end local v4           #pref:Lcom/android/lgesettings/vpn2/VpnSettings$VpnPreference;
    .end local v5           #profile:Lcom/android/internal/net/VpnProfile;
    :cond_4
    invoke-virtual {p0}, Lcom/android/lgesettings/vpn2/VpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    const-string v9, "add_network"

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 278
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v6           #profiles:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/net/VpnProfile;>;"
    :cond_5
    iget-object v8, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mDialog:Lcom/android/lgesettings/vpn2/VpnDialog;

    if-eqz v8, :cond_6

    .line 279
    iget-object v8, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mDialog:Lcom/android/lgesettings/vpn2/VpnDialog;

    invoke-virtual {v8, p0}, Lcom/android/lgesettings/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 280
    iget-object v8, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mDialog:Lcom/android/lgesettings/vpn2/VpnDialog;

    invoke-virtual {v8}, Lcom/android/lgesettings/vpn2/VpnDialog;->show()V

    .line 284
    :cond_6
    iget-object v8, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    if-nez v8, :cond_7

    .line 285
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v8, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    .line 287
    :cond_7
    iget-object v8, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    invoke-virtual {v8, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 290
    invoke-virtual {p0}, Lcom/android/lgesettings/vpn2/VpnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/lgesettings/vpn2/VpnSettings;->registerForContextMenu(Landroid/view/View;)V

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedState"

    .prologue
    .line 224
    iget-object v1, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mDialog:Lcom/android/lgesettings/vpn2/VpnDialog;

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mDialog:Lcom/android/lgesettings/vpn2/VpnDialog;

    invoke-virtual {v1}, Lcom/android/lgesettings/vpn2/VpnDialog;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    .line 226
    .local v0, profile:Lcom/android/internal/net/VpnProfile;
    const-string v1, "VpnKey"

    iget-object v2, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v1, "VpnProfile"

    invoke-virtual {v0}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 228
    const-string v1, "VpnEditing"

    iget-object v2, p0, Lcom/android/lgesettings/vpn2/VpnSettings;->mDialog:Lcom/android/lgesettings/vpn2/VpnDialog;

    invoke-virtual {v2}, Lcom/android/lgesettings/vpn2/VpnDialog;->isEditing()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 231
    .end local v0           #profile:Lcom/android/internal/net/VpnProfile;
    :cond_0
    return-void
.end method
