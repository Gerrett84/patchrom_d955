.class final Lcom/android/lgesettings/bluetooth/PanProfile;
.super Ljava/lang/Object;
.source "PanProfile.java"

# interfaces
.implements Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/bluetooth/PanProfile$1;,
        Lcom/android/lgesettings/bluetooth/PanProfile$PanServiceListener;
    }
.end annotation


# static fields
.field private static final DISABLE_PAN:Z

.field private static V:Z

.field private static mConnect:Z


# instance fields
.field private final mDeviceManager:Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;

.field private mIsProfileReady:Z

.field private final mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

.field private final mProfileManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

.field private mService:Landroid/bluetooth/BluetoothPan;

.field private mServiceManager:Lcom/lge/bluetooth/LGBluetoothServiceManager;

.field mainContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 46
    sput-boolean v2, Lcom/android/lgesettings/bluetooth/PanProfile;->V:Z

    .line 47
    const-string v0, "persist.service.btui.disablePan"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/lgesettings/bluetooth/PanProfile;->DISABLE_PAN:Z

    .line 49
    sput-boolean v2, Lcom/android/lgesettings/bluetooth/PanProfile;->mConnect:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;)V
    .locals 3
    .parameter "context"
    .parameter "localAdapter"
    .parameter "deviceManager"
    .parameter "profileManager"

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p2, p0, Lcom/android/lgesettings/bluetooth/PanProfile;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    .line 129
    iput-object p3, p0, Lcom/android/lgesettings/bluetooth/PanProfile;->mDeviceManager:Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;

    .line 130
    iput-object p4, p0, Lcom/android/lgesettings/bluetooth/PanProfile;->mProfileManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    .line 134
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/PanProfile;->mainContext:Landroid/content/Context;

    .line 137
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 138
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    new-instance v1, Lcom/android/lgesettings/bluetooth/PanProfile$PanServiceListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/lgesettings/bluetooth/PanProfile$PanServiceListener;-><init>(Lcom/android/lgesettings/bluetooth/PanProfile;Lcom/android/lgesettings/bluetooth/PanProfile$1;)V

    const/4 v2, 0x5

    invoke-virtual {v0, p1, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 142
    invoke-static {}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isSupportPan()Z

    .line 144
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/android/lgesettings/bluetooth/PanProfile;->V:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/bluetooth/PanProfile;)Landroid/bluetooth/BluetoothPan;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/lgesettings/bluetooth/PanProfile;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/lgesettings/bluetooth/PanProfile;)Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/PanProfile;->mDeviceManager:Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/bluetooth/PanProfile;)Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/PanProfile;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/lgesettings/bluetooth/PanProfile;)Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/PanProfile;->mProfileManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/lgesettings/bluetooth/PanProfile;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/lgesettings/bluetooth/PanProfile;->mIsProfileReady:Z

    return p1
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    .line 176
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    if-nez v3, :cond_0

    .line 177
    const/4 v3, 0x0

    .line 185
    :goto_0
    return v3

    .line 179
    :cond_0
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    .line 180
    .local v2, sinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v2, :cond_1

    .line 181
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 182
    .local v1, sink:Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v3, v1}, Landroid/bluetooth/BluetoothPan;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_1

    .line 185
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #sink:Landroid/bluetooth/BluetoothDevice;
    :cond_1
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothPan;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    goto :goto_0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    if-nez v0, :cond_0

    .line 190
    const/4 v0, 0x0

    .line 192
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothPan;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 4

    .prologue
    .line 317
    sget-boolean v1, Lcom/android/lgesettings/bluetooth/PanProfile;->V:Z

    if-eqz v1, :cond_0

    .line 318
    const-string v1, "PanProfile"

    const-string v2, "finalize()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    if-eqz v1, :cond_1

    .line 322
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 323
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :cond_1
    :goto_0
    return-void

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "PanProfile"

    const-string v2, "Error cleaning up PAN proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .parameter "device"

    .prologue
    .line 197
    sget-boolean v0, Lcom/android/lgesettings/bluetooth/PanProfile;->V:Z

    if-eqz v0, :cond_0

    .line 198
    const-string v0, "PanProfile"

    const-string v1, "getConnectionStatus()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_0
    sget-boolean v0, Lcom/android/lgesettings/bluetooth/PanProfile;->mConnect:Z

    if-nez v0, :cond_1

    .line 202
    const-string v0, "PanProfile"

    const-string v1, "mConnect == false -> try connect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/bluetooth/PanProfile;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    if-nez v0, :cond_2

    .line 208
    const/4 v0, 0x0

    .line 210
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothPan;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 1
    .parameter "btClass"

    .prologue
    .line 282
    const v0, 0x7f020181

    return v0
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;Z)I
    .locals 1
    .parameter "btClass"
    .parameter "isConnected"

    .prologue
    .line 332
    if-eqz p2, :cond_0

    const v0, 0x7f020182

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f020181

    goto :goto_0
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 252
    const v0, 0x7f0801b9

    return v0
.end method

.method public getOrdinal()I
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x4

    return v0
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 228
    const/4 v0, -0x1

    return v0
.end method

.method public getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .parameter "device"

    .prologue
    .line 264
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/bluetooth/PanProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 265
    .local v0, state:I
    packed-switch v0, :pswitch_data_0

    .line 277
    :pswitch_0
    invoke-static {v0}, Lcom/android/lgesettings/bluetooth/Utils;->getConnectionStateSummary(I)I

    move-result v1

    :goto_0
    return v1

    .line 267
    :pswitch_1
    const v1, 0x7f0801d1

    goto :goto_0

    .line 270
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/bluetooth/PanProfile;->isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    const v1, 0x7f0801cc

    goto :goto_0

    .line 273
    :cond_0
    const v1, 0x7f0801cb

    goto :goto_0

    .line 265
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public isAutoConnectable()Z
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public isConnectable()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 148
    sget-boolean v1, Lcom/android/lgesettings/bluetooth/PanProfile;->V:Z

    if-eqz v1, :cond_0

    .line 149
    const-string v1, "PanProfile"

    const-string v2, "isConnectable()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    sget-boolean v1, Lcom/android/lgesettings/bluetooth/PanProfile;->mConnect:Z

    if-nez v1, :cond_1

    .line 153
    sput-boolean v0, Lcom/android/lgesettings/bluetooth/PanProfile;->mConnect:Z

    .line 158
    :cond_1
    sget-boolean v1, Lcom/android/lgesettings/bluetooth/PanProfile;->DISABLE_PAN:Z

    if-nez v1, :cond_2

    invoke-static {}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isSupportPan()Z

    move-result v1

    if-nez v1, :cond_3

    .line 159
    :cond_2
    const-string v0, "PanProfile"

    const-string v1, "[BTUI] Not Support PAN : not connectable device"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v0, 0x0

    .line 163
    :cond_3
    return v0
.end method

.method isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter "device"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/PanProfile;->mainContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/bluetooth/LGBluetoothServiceManager;->getInstance(Landroid/content/Context;)Lcom/lge/bluetooth/LGBluetoothServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/PanProfile;->mServiceManager:Lcom/lge/bluetooth/LGBluetoothServiceManager;

    .line 299
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/PanProfile;->mServiceManager:Lcom/lge/bluetooth/LGBluetoothServiceManager;

    if-eqz v0, :cond_0

    .line 300
    const-string v0, "PanProfile"

    const-string v1, "[BTUI] isLocalRoleNap - mService != null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/PanProfile;->mServiceManager:Lcom/lge/bluetooth/LGBluetoothServiceManager;

    invoke-virtual {v0, p1}, Lcom/lge/bluetooth/LGBluetoothServiceManager;->checkNapRole(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 304
    :goto_0
    return v0

    .line 303
    :cond_0
    const-string v0, "PanProfile"

    const-string v1, "[BTUI] isLocalRoleNap - mSrevice == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    .line 219
    sget-boolean v0, Lcom/android/lgesettings/bluetooth/PanProfile;->V:Z

    if-eqz v0, :cond_0

    .line 220
    const-string v0, "PanProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPreffered return : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/lgesettings/bluetooth/PanProfile;->mConnect:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_0
    sget-boolean v0, Lcom/android/lgesettings/bluetooth/PanProfile;->mConnect:Z

    return v0
.end method

.method public isProfileReady()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/lgesettings/bluetooth/PanProfile;->mIsProfileReady:Z

    return v0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 2
    .parameter "device"
    .parameter "preferred"

    .prologue
    .line 233
    sget-boolean v0, Lcom/android/lgesettings/bluetooth/PanProfile;->V:Z

    if-eqz v0, :cond_0

    .line 234
    const-string v0, "PanProfile"

    const-string v1, "setPreferred()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/lgesettings/bluetooth/PanProfile;->mConnect:Z

    .line 240
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    const-string v0, "PAN"

    return-object v0
.end method
