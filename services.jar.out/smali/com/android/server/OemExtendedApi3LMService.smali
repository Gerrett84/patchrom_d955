.class public final Lcom/android/server/OemExtendedApi3LMService;
.super Landroid/os/IOemExtendedApi3LM$Stub;
.source "OemExtendedApi3LMService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OemExtendedApi3LMService$PublicKey3LM;
    }
.end annotation


# static fields
.field private static final API_VERSION:I = 0x1

.field private static final DEBUG:Z = false

.field public static final STATE_DISABLED:I = 0x0

.field public static final STATE_ENABLED:I = 0x1

.field public static final STATE_UNKNOWN:I = -0x1

.field public static final STATE_UNSUPPORTED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "OemExtendedApi3LM"

.field private static final felicaPropertyKey:Ljava/lang/String; = "persist.security.felica.lockout"

.field private static final irdaPropertyKey:Ljava/lang/String; = "persist.security.irda.lockout"

.field private static final onesegPropertyKey:Ljava/lang/String; = "persist.security.oneseg.lockout"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDeviceManager:Landroid/os/IDeviceManager3LM;

.field private final mOem:Landroid/os/IDeviceManagerRestrictable3LM;

.field private mOwnerInfo:Ljava/lang/String;

.field private mOwnerInfoEnabled:I

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPublicKey3LM:Lcom/android/server/OemExtendedApi3LMService$PublicKey3LM;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IDeviceManagerRestrictable3LM;)V
    .locals 1
    .parameter "context"
    .parameter "oem"

    .prologue
    .line 129
    invoke-direct {p0}, Landroid/os/IOemExtendedApi3LM$Stub;-><init>()V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/OemExtendedApi3LMService;->mOwnerInfoEnabled:I

    .line 130
    iput-object p1, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    .line 131
    iput-object p2, p0, Lcom/android/server/OemExtendedApi3LMService;->mOem:Landroid/os/IDeviceManagerRestrictable3LM;

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OemExtendedApi3LMService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 133
    const-string v0, "DeviceManager3LM"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/os/IDeviceManager3LM;

    iput-object v0, p0, Lcom/android/server/OemExtendedApi3LMService;->mDeviceManager:Landroid/os/IDeviceManager3LM;

    .line 135
    new-instance v0, Lcom/android/server/OemExtendedApi3LMService$PublicKey3LM;

    invoke-direct {v0, p1}, Lcom/android/server/OemExtendedApi3LMService$PublicKey3LM;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/OemExtendedApi3LMService;->mPublicKey3LM:Lcom/android/server/OemExtendedApi3LMService$PublicKey3LM;

    .line 136
    return-void
.end method

.method private isAccessPermitted()Z
    .locals 15

    .prologue
    const/4 v12, 0x1

    .line 140
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 141
    .local v2, callerUid:I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v13

    if-ne v2, v13, :cond_1

    .line 167
    :cond_0
    :goto_0
    return v12

    .line 146
    :cond_1
    :try_start_0
    iget-object v13, p0, Lcom/android/server/OemExtendedApi3LMService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v13, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    .line 148
    .local v9, packages:[Ljava/lang/String;
    move-object v0, v9

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    move v5, v4

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v10, v0, v5

    .line 150
    .local v10, pkg:Ljava/lang/String;
    iget-object v13, p0, Lcom/android/server/OemExtendedApi3LMService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v14, 0x40

    invoke-virtual {v13, v10, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 154
    .local v8, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v1, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v1, arr$:[Landroid/content/pm/Signature;
    array-length v7, v1

    .local v7, len$:I
    const/4 v4, 0x0

    .end local v5           #i$:I
    .restart local v4       #i$:I
    :goto_2
    if-ge v4, v7, :cond_2

    aget-object v11, v1, v4

    .line 155
    .local v11, pkgSignature:Landroid/content/pm/Signature;
    iget-object v13, p0, Lcom/android/server/OemExtendedApi3LMService;->mPublicKey3LM:Lcom/android/server/OemExtendedApi3LMService$PublicKey3LM;

    invoke-virtual {v11}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/server/OemExtendedApi3LMService$PublicKey3LM;->comparePublicKey([B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    if-nez v13, :cond_0

    .line 154
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 148
    .end local v11           #pkgSignature:Landroid/content/pm/Signature;
    :cond_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4           #i$:I
    .restart local v5       #i$:I
    goto :goto_1

    .line 163
    .end local v1           #arr$:[Landroid/content/pm/Signature;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .end local v8           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v9           #packages:[Ljava/lang/String;
    .end local v10           #pkg:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 164
    .local v3, e:Ljava/lang/Exception;
    const-string v12, "OemExtendedApi3LM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error trying to verify package public key against 3LM pub key:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .end local v3           #e:Ljava/lang/Exception;
    :cond_3
    const-string v12, "OemExtendedApi3LM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Access denied to UID: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v12, 0x0

    goto :goto_0
.end method

.method private setFelicaStateForEmergencyLock()V
    .locals 5

    .prologue
    .line 292
    const-string v2, "ro.build.target_operator"

    const-string v3, "error"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DCM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 304
    :goto_0
    return-void

    .line 296
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 297
    .local v1, i:Landroid/content/Intent;
    const-string v2, "com.lge.nfclock"

    const-string v3, "com.lge.nfclock.NfcLockRemoteActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    const-string v2, "$func"

    const-string v3, "r-lock"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 300
    iget-object v2, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 301
    .end local v1           #i:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 302
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "OemExtendedApi3LM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NFC interface exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 178
    invoke-direct {p0}, Lcom/android/server/OemExtendedApi3LMService;->isAccessPermitted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 196
    :goto_0
    return-void

    .line 180
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/server/OemExtendedApi3LMService;->setFelicaState(I)V

    .line 181
    invoke-virtual {p0, v2}, Lcom/android/server/OemExtendedApi3LMService;->setOneSegState(I)V

    .line 182
    invoke-virtual {p0, v2}, Lcom/android/server/OemExtendedApi3LMService;->setInfraredState(I)V

    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/android/server/OemExtendedApi3LMService;->mDeviceManager:Landroid/os/IDeviceManager3LM;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/os/IDeviceManager3LM;->setNfcState(I)V

    .line 186
    iget-object v1, p0, Lcom/android/server/OemExtendedApi3LMService;->mDeviceManager:Landroid/os/IDeviceManager3LM;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/os/IDeviceManager3LM;->setWifiState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_1
    const-string v1, "persist.security.3lm.activated"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 193
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "3LM_MDM_DEACTIVATED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    iget-object v1, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 187
    .end local v0           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public getFelicaState()I
    .locals 2

    .prologue
    .line 210
    const-string v0, "ro.build.target_operator"

    const-string v1, "error"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DCM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    const/4 v0, -0x1

    .line 213
    :goto_0
    return v0

    :cond_0
    const-string v0, "persist.security.felica.lockout"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getInfraredState()I
    .locals 2

    .prologue
    .line 333
    const-string v0, "ro.product.name"

    const-string v1, "error"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "z_jp_kdi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    const/4 v0, -0x1

    .line 337
    :goto_0
    return v0

    :cond_0
    const-string v0, "persist.security.irda.lockout"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getOneSegState()I
    .locals 2

    .prologue
    .line 311
    const-string v0, "persist.security.oneseg.lockout"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public setEmergencyLock(ZLjava/lang/String;Z)Z
    .locals 9
    .parameter "enable"
    .parameter "text"
    .parameter "alarm"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 502
    const-string v4, "ro.product.name"

    const-string v7, "error"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "geehdc_dcm_jp"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 503
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/OemExtendedApi3LMService;->setEmergencyLockGJ(ZLjava/lang/String;Z)Z

    move-result v6

    .line 555
    :cond_0
    :goto_0
    return v6

    .line 506
    :cond_1
    const-string v4, "ro.build.target_operator"

    const-string v7, "error"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "KDDI"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 507
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/OemExtendedApi3LMService;->setEmergencyLockforKDDI(ZLjava/lang/String;Z)Z

    move-result v6

    goto :goto_0

    .line 510
    :cond_2
    invoke-direct {p0}, Lcom/android/server/OemExtendedApi3LMService;->isAccessPermitted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 512
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 515
    iget-object v4, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lock_screen_owner_info_enabled"

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    move v4, v5

    :goto_1
    invoke-static {v7, v8, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 519
    iget-object v4, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "lock_screen_owner_info"

    invoke-static {v4, v7, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 523
    if-eqz p1, :cond_5

    move v2, v5

    .line 525
    .local v2, newState:I
    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/server/OemExtendedApi3LMService;->setOneSegState(I)V

    .line 526
    invoke-virtual {p0, v2}, Lcom/android/server/OemExtendedApi3LMService;->setInfraredState(I)V

    .line 529
    if-eqz p1, :cond_6

    .line 531
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/OemExtendedApi3LMService;->getFelicaState()I

    move-result v4

    if-ne v4, v5, :cond_3

    .line 532
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/server/OemExtendedApi3LMService;->setFelicaState(I)V

    .line 535
    :cond_3
    iget-object v4, p0, Lcom/android/server/OemExtendedApi3LMService;->mDeviceManager:Landroid/os/IDeviceManager3LM;

    const/4 v7, 0x0

    invoke-interface {v4, v7}, Landroid/os/IDeviceManager3LM;->blockAdb(Z)V

    :goto_3
    move v6, v5

    .line 555
    goto :goto_0

    .end local v2           #newState:I
    :cond_4
    move v4, v6

    .line 515
    goto :goto_1

    :cond_5
    move v2, v6

    .line 523
    goto :goto_2

    .line 540
    .restart local v2       #newState:I
    :cond_6
    invoke-direct {p0}, Lcom/android/server/OemExtendedApi3LMService;->setFelicaStateForEmergencyLock()V

    .line 542
    iget-object v4, p0, Lcom/android/server/OemExtendedApi3LMService;->mDeviceManager:Landroid/os/IDeviceManager3LM;

    const/4 v7, 0x1

    invoke-interface {v4, v7}, Landroid/os/IDeviceManager3LM;->blockAdb(Z)V

    .line 544
    iget-object v4, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    const-string v7, "wifi"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 545
    .local v3, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 546
    .local v0, btAdapter:Landroid/bluetooth/BluetoothAdapter;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 547
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    .line 549
    .end local v0           #btAdapter:Landroid/bluetooth/BluetoothAdapter;
    .end local v3           #wifiManager:Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v1

    .line 550
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v4, "OemExtendedApi3LM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NullPointerException when disabling wifi"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 552
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 553
    .local v1, e:Landroid/os/RemoteException;
    goto/16 :goto_0
.end method

.method public setEmergencyLockGJ(ZLjava/lang/String;Z)Z
    .locals 10
    .parameter "enable"
    .parameter "text"
    .parameter "alarm"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 385
    invoke-direct {p0}, Lcom/android/server/OemExtendedApi3LMService;->isAccessPermitted()Z

    move-result v5

    if-nez v5, :cond_0

    .line 436
    :goto_0
    return v7

    .line 387
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 390
    iget-object v5, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_owner_info_enabled"

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    move v5, v6

    :goto_1
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 395
    iget-object v5, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "lock_screen_owner_info"

    invoke-static {v5, v8, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 399
    if-eqz p1, :cond_2

    move v3, v6

    .line 401
    .local v3, newState:I
    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/server/OemExtendedApi3LMService;->setFelicaState(I)V

    .line 402
    invoke-virtual {p0, v3}, Lcom/android/server/OemExtendedApi3LMService;->setOneSegState(I)V

    .line 403
    invoke-virtual {p0, v3}, Lcom/android/server/OemExtendedApi3LMService;->setInfraredState(I)V

    .line 406
    if-eqz p1, :cond_3

    .line 409
    :try_start_0
    iget-object v5, p0, Lcom/android/server/OemExtendedApi3LMService;->mDeviceManager:Landroid/os/IDeviceManager3LM;

    const/4 v8, 0x0

    invoke-interface {v5, v8}, Landroid/os/IDeviceManager3LM;->blockAdb(Z)V

    :goto_3
    move v7, v6

    .line 436
    goto :goto_0

    .end local v3           #newState:I
    :cond_1
    move v5, v7

    .line 390
    goto :goto_1

    :cond_2
    move v3, v7

    .line 399
    goto :goto_2

    .line 414
    .restart local v3       #newState:I
    :cond_3
    iget-object v5, p0, Lcom/android/server/OemExtendedApi3LMService;->mDeviceManager:Landroid/os/IDeviceManager3LM;

    const/4 v8, 0x1

    invoke-interface {v5, v8}, Landroid/os/IDeviceManager3LM;->blockAdb(Z)V

    .line 416
    iget-object v5, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    const-string v8, "wifi"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 417
    .local v4, wifiManager:Landroid/net/wifi/WifiManager;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 419
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 420
    .local v0, btAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 423
    :try_start_1
    iget-object v5, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    const-string v8, "usb"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbManager;

    .line 424
    .local v2, mUsbManager:Landroid/hardware/usb/UsbManager;
    const-string v5, "charge_only"

    const/4 v8, 0x1

    invoke-virtual {v2, v5, v8}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    .line 425
    .end local v2           #mUsbManager:Landroid/hardware/usb/UsbManager;
    :catch_0
    move-exception v1

    .line 426
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v5, "OemExtendedApi3LM"

    const-string v8, "usbmanager service exception"

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 429
    .end local v0           #btAdapter:Landroid/bluetooth/BluetoothAdapter;
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #wifiManager:Landroid/net/wifi/WifiManager;
    :catch_1
    move-exception v1

    .line 430
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v5, "OemExtendedApi3LM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "3lm NullPointerException"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 432
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v1

    .line 433
    .local v1, e:Landroid/os/RemoteException;
    const-string v5, "OemExtendedApi3LM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "3lm RemoteException"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setEmergencyLockforKDDI(ZLjava/lang/String;Z)Z
    .locals 9
    .parameter "enable"
    .parameter "text"
    .parameter "alarm"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 473
    invoke-direct {p0}, Lcom/android/server/OemExtendedApi3LMService;->isAccessPermitted()Z

    move-result v4

    if-nez v4, :cond_0

    .line 498
    :goto_0
    return v6

    .line 474
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 475
    if-eqz p1, :cond_1

    move v3, v5

    .line 476
    .local v3, newState:I
    :goto_1
    if-ne v3, v5, :cond_2

    const-string v1, "false"

    .line 478
    .local v1, emergency:Ljava/lang/String;
    :goto_2
    iget-object v4, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lock_screen_owner_info_enabled"

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    move v4, v5

    :goto_3
    invoke-static {v7, v8, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 482
    iget-object v4, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "lock_screen_owner_info"

    invoke-static {v4, v7, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 485
    iget-object v4, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "emergency_lock"

    invoke-static {v4, v7, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 487
    iget-object v4, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "emergency_lock"

    invoke-static {v4, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 490
    .local v2, imsilog:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/server/OemExtendedApi3LMService;->setFelicaState(I)V

    .line 491
    invoke-virtual {p0, v3}, Lcom/android/server/OemExtendedApi3LMService;->setOneSegState(I)V

    .line 492
    invoke-virtual {p0, v3}, Lcom/android/server/OemExtendedApi3LMService;->setInfraredState(I)V

    .line 494
    :try_start_0
    iget-object v4, p0, Lcom/android/server/OemExtendedApi3LMService;->mDeviceManager:Landroid/os/IDeviceManager3LM;

    invoke-interface {v4, v3}, Landroid/os/IDeviceManager3LM;->setNfcState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v5

    .line 498
    goto :goto_0

    .end local v1           #emergency:Ljava/lang/String;
    .end local v2           #imsilog:Ljava/lang/String;
    .end local v3           #newState:I
    :cond_1
    move v3, v6

    .line 475
    goto :goto_1

    .line 476
    .restart local v3       #newState:I
    :cond_2
    const-string v1, "true"

    goto :goto_2

    .restart local v1       #emergency:Ljava/lang/String;
    :cond_3
    move v4, v6

    .line 478
    goto :goto_3

    .line 495
    .restart local v2       #imsilog:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 496
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setFelicaState(I)V
    .locals 5
    .parameter "state"

    .prologue
    .line 255
    const-string v2, "ro.build.target_operator"

    const-string v3, "error"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DCM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    const-string v2, "ro.product.name"

    const-string v3, "error"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "geehdc_dcm_jp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 260
    invoke-virtual {p0, p1}, Lcom/android/server/OemExtendedApi3LMService;->setFelicaStateGJ(I)V

    goto :goto_0

    .line 265
    :cond_2
    invoke-direct {p0}, Lcom/android/server/OemExtendedApi3LMService;->isAccessPermitted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 266
    const-string v2, "persist.security.felica.lockout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    if-nez p1, :cond_3

    .line 271
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 272
    .local v1, i:Landroid/content/Intent;
    const-string v2, "com.lge.nfclock"

    const-string v3, "com.lge.nfclock.NfcLockRemoteActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    const-string v2, "$func"

    const-string v3, "r-lock"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 275
    iget-object v2, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 285
    .end local v1           #i:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 286
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "OemExtendedApi3LM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NFC interface exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 279
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 280
    .restart local v1       #i:Landroid/content/Intent;
    const-string v2, "com.lge.nfclock"

    const-string v3, "com.lge.nfclock.NfcLockRemoteActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    const-string v2, "$func"

    const-string v3, "r-unlock"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 283
    iget-object v2, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public setFelicaStateGJ(I)V
    .locals 5
    .parameter "state"

    .prologue
    .line 441
    invoke-direct {p0}, Lcom/android/server/OemExtendedApi3LMService;->isAccessPermitted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 470
    :goto_0
    return-void

    .line 443
    :cond_0
    const-string v2, "persist.security.felica.lockout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    if-nez p1, :cond_1

    .line 447
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 449
    .local v1, i:Landroid/content/Intent;
    const-string v2, "jp.co.fsi.felicalock"

    const-string v3, "jp.co.fsi.felicalock.FelicaLockON"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 450
    const-string v2, "$func"

    const-string v3, "lock"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 454
    iget-object v2, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 467
    .end local v1           #i:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 468
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "OemExtendedApi3LM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Felica interface exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 458
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 460
    .restart local v1       #i:Landroid/content/Intent;
    const-string v2, "jp.co.fsi.felicalock"

    const-string v3, "jp.co.fsi.felicalock.FelicaLockON"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 461
    const-string v2, "$func"

    const-string v3, "unlock"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 462
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 464
    iget-object v2, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setInfraredState(I)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    .line 347
    invoke-direct {p0}, Lcom/android/server/OemExtendedApi3LMService;->isAccessPermitted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 367
    :goto_0
    return-void

    .line 356
    :cond_0
    const-string v1, "persist.security.3lm.activated"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 357
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 358
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "3LM_MDM_ACTIVATED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    iget-object v1, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 361
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    const-string v1, "persist.security.3lm.activated"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v1, "persist.security.irda.lockout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOneSegState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 320
    invoke-direct {p0}, Lcom/android/server/OemExtendedApi3LMService;->isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    :goto_0
    return-void

    .line 324
    :cond_0
    const-string v0, "persist.security.oneseg.lockout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
