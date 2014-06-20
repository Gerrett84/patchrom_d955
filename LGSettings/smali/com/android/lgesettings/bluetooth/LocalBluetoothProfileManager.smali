.class final Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;
.super Ljava/lang/Object;
.source "LocalBluetoothProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;,
        Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;,
        Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager$AdapterStateChangedCallback;,
        Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    }
.end annotation


# instance fields
.field private mA2dpProfile:Lcom/android/lgesettings/bluetooth/A2dpProfile;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceManager:Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;

.field private final mEventManager:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

.field private mHeadsetProfile:Lcom/android/lgesettings/bluetooth/HeadsetProfile;

.field private final mHidProfile:Lcom/android/lgesettings/bluetooth/HidProfile;

.field private mLGSmartOneKeyProfile:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

.field private final mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

.field private mOppProfile:Lcom/android/lgesettings/bluetooth/OppProfile;

.field private final mPanProfile:Lcom/android/lgesettings/bluetooth/PanProfile;

.field private final mPbapProfile:Lcom/android/lgesettings/bluetooth/PbapServerProfile;

.field private final mProfileNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)V
    .locals 5
    .parameter "context"
    .parameter "adapter"
    .parameter "deviceManager"
    .parameter "eventManager"

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mLGSmartOneKeyProfile:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    .line 104
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    .line 270
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    .line 111
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    .line 113
    iput-object p2, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    .line 114
    iput-object p3, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;

    .line 115
    iput-object p4, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    .line 117
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1, p0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->setProfileManager(Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;)V

    .line 118
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    invoke-virtual {v1, p0}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->setProfileManager(Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;)V

    .line 120
    invoke-virtual {p2}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 123
    .local v0, uuids:[Landroid/os/ParcelUuid;
    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->updateLocalProfiles([Landroid/os/ParcelUuid;)V

    .line 132
    :cond_0
    new-instance v1, Lcom/android/lgesettings/bluetooth/HidProfile;

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/android/lgesettings/bluetooth/HidProfile;-><init>(Landroid/content/Context;Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/lgesettings/bluetooth/HidProfile;

    .line 135
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/lgesettings/bluetooth/HidProfile;

    const-string v2, "HID"

    const-string v3, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    new-instance v1, Lcom/android/lgesettings/bluetooth/PanProfile;

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/android/lgesettings/bluetooth/PanProfile;-><init>(Landroid/content/Context;Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/lgesettings/bluetooth/PanProfile;

    .line 144
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/lgesettings/bluetooth/PanProfile;

    const-string v2, "PAN"

    const-string v3, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->addPanProfile(Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    new-instance v1, Lcom/android/lgesettings/bluetooth/PbapServerProfile;

    invoke-direct {v1, p1}, Lcom/android/lgesettings/bluetooth/PbapServerProfile;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/lgesettings/bluetooth/PbapServerProfile;

    .line 151
    const-string v1, "LocalBluetoothProfileManager"

    const-string v2, "LocalBluetoothProfileManager construction complete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mLGSmartOneKeyProfile:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;)Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;)Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method private addPanProfile(Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "profile"
    .parameter "profileName"
    .parameter "stateChangedAction"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    new-instance v1, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;-><init>(Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;)V

    invoke-virtual {v0, p3, v1}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->addProfileHandler(Ljava/lang/String;Lcom/android/lgesettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 283
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    return-void
.end method

.method private addProfile(Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "profile"
    .parameter "profileName"
    .parameter "stateChangedAction"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    new-instance v1, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;-><init>(Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;)V

    invoke-virtual {v0, p3, v1}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->addProfileHandler(Ljava/lang/String;Lcom/android/lgesettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 276
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    return-void
.end method


# virtual methods
.method addServiceListener(Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 358
    return-void
.end method

.method callServiceConnectedListeners()V
    .locals 3

    .prologue
    .line 367
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    .line 368
    .local v1, l:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    invoke-interface {v1}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;->onServiceConnected()V

    goto :goto_0

    .line 370
    .end local v1           #l:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    :cond_0
    return-void
.end method

.method callServiceDisconnectedListeners()V
    .locals 3

    .prologue
    .line 374
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    .line 375
    .local v1, listener:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    invoke-interface {v1}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;->onServiceDisconnected()V

    goto :goto_0

    .line 377
    .end local v1           #listener:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    :cond_0
    return-void
.end method

.method getA2dpProfile()Lcom/android/lgesettings/bluetooth/A2dpProfile;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/lgesettings/bluetooth/A2dpProfile;

    return-object v0
.end method

.method getHeadsetProfile()Lcom/android/lgesettings/bluetooth/HeadsetProfile;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/lgesettings/bluetooth/HeadsetProfile;

    return-object v0
.end method

.method getLGSmartOneKeyProfile()Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mLGSmartOneKeyProfile:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    if-nez v0, :cond_0

    .line 410
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "getLGSmartOneKeyProfile is mull"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const/4 v0, 0x0

    .line 416
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mLGSmartOneKeyProfile:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    goto :goto_0
.end method

.method getPbapProfile()Lcom/android/lgesettings/bluetooth/PbapServerProfile;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/lgesettings/bluetooth/PbapServerProfile;

    return-object v0
.end method

.method getProfileByName(Ljava/lang/String;)Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;
    .locals 1
    .parameter "name"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;

    return-object v0
.end method

.method public declared-synchronized isManagerReady()Z
    .locals 2

    .prologue
    .line 383
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/lgesettings/bluetooth/HeadsetProfile;

    .line 384
    .local v0, profile:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;
    if-eqz v0, :cond_0

    .line 385
    invoke-interface {v0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;->isProfileReady()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 391
    :goto_0
    monitor-exit p0

    return v1

    .line 387
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/lgesettings/bluetooth/A2dpProfile;

    .line 388
    if-eqz v0, :cond_1

    .line 389
    invoke-interface {v0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;->isProfileReady()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 391
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 383
    .end local v0           #profile:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method removeServiceListener(Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 363
    return-void
.end method

.method setBluetoothStateOn()V
    .locals 2

    .prologue
    .line 292
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 293
    .local v0, uuids:[Landroid/os/ParcelUuid;
    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->updateLocalProfiles([Landroid/os/ParcelUuid;)V

    .line 296
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    invoke-virtual {v1}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->readPairedDevices()Z

    .line 297
    return-void
.end method

.method updateLocalProfiles([Landroid/os/ParcelUuid;)V
    .locals 4
    .parameter "uuids"

    .prologue
    .line 163
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 164
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/lgesettings/bluetooth/A2dpProfile;

    if-nez v0, :cond_0

    .line 165
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local A2DP profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    new-instance v0, Lcom/android/lgesettings/bluetooth/A2dpProfile;

    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/lgesettings/bluetooth/A2dpProfile;-><init>(Landroid/content/Context;Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/lgesettings/bluetooth/A2dpProfile;

    .line 173
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/lgesettings/bluetooth/A2dpProfile;

    const-string v1, "A2DP"

    const-string v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_0
    :goto_0
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/lgesettings/bluetooth/HeadsetProfile;

    if-nez v0, :cond_2

    .line 184
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local HEADSET profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance v0, Lcom/android/lgesettings/bluetooth/HeadsetProfile;

    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/lgesettings/bluetooth/HeadsetProfile;-><init>(Landroid/content/Context;Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/lgesettings/bluetooth/HeadsetProfile;

    .line 187
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/lgesettings/bluetooth/HeadsetProfile;

    const-string v1, "HEADSET"

    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_2
    :goto_1
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 196
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/lgesettings/bluetooth/OppProfile;

    if-nez v0, :cond_3

    .line 197
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local OPP profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance v0, Lcom/android/lgesettings/bluetooth/OppProfile;

    invoke-direct {v0}, Lcom/android/lgesettings/bluetooth/OppProfile;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/lgesettings/bluetooth/OppProfile;

    .line 200
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    const-string v1, "OPP"

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/lgesettings/bluetooth/OppProfile;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_3
    :goto_2
    const-string v0, "LGBT_COMMON_FUNCTION_SMARTONEKEY"

    invoke-static {v0}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 208
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mLGSmartOneKeyProfile:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    if-nez v0, :cond_8

    .line 209
    new-instance v0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mLGSmartOneKeyProfile:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    .line 210
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    new-instance v1, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager$AdapterStateChangedCallback;

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mLGSmartOneKeyProfile:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    invoke-direct {v1, p0, v2, p0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager$AdapterStateChangedCallback;-><init>(Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;)V

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/lgesettings/bluetooth/BluetoothCallback;)V

    .line 211
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local LGSmartOneKey Profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->registerProfileIntentReceiver()V

    .line 220
    return-void

    .line 176
    :cond_5
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/lgesettings/bluetooth/A2dpProfile;

    if-eqz v0, :cond_0

    .line 177
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: A2DP profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 190
    :cond_6
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/lgesettings/bluetooth/HeadsetProfile;

    if-eqz v0, :cond_2

    .line 191
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: HEADSET profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 202
    :cond_7
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/lgesettings/bluetooth/OppProfile;

    if-eqz v0, :cond_3

    .line 203
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: OPP profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 212
    :cond_8
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mLGSmartOneKeyProfile:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    if-eqz v0, :cond_4

    .line 213
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: LGSmartOneKey Profile was previously added."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method declared-synchronized updateProfiles([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;Ljava/util/Collection;Ljava/util/Collection;Z)V
    .locals 2
    .parameter "uuids"
    .parameter "localUuids"
    .parameter
    .parameter
    .parameter "isPanNapConnected"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/ParcelUuid;",
            "[",
            "Landroid/os/ParcelUuid;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 436
    .local p3, profiles:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;>;"
    .local p4, removedProfiles:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;>;"
    monitor-enter p0

    :try_start_0
    invoke-interface {p4}, Ljava/util/Collection;->clear()V

    .line 437
    invoke-interface {p4, p3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 438
    invoke-interface {p3}, Ljava/util/Collection;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    if-nez p1, :cond_1

    .line 480
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 444
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/lgesettings/bluetooth/HeadsetProfile;

    if-eqz v0, :cond_4

    .line 445
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-static {p2, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-static {p2, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 449
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/lgesettings/bluetooth/HeadsetProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 450
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/lgesettings/bluetooth/HeadsetProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 454
    :cond_4
    sget-object v0, Lcom/android/lgesettings/bluetooth/A2dpProfile;->SINK_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/lgesettings/bluetooth/A2dpProfile;

    if-eqz v0, :cond_5

    .line 456
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/lgesettings/bluetooth/A2dpProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 457
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/lgesettings/bluetooth/A2dpProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 460
    :cond_5
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/lgesettings/bluetooth/OppProfile;

    if-eqz v0, :cond_6

    .line 462
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/lgesettings/bluetooth/OppProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 463
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/lgesettings/bluetooth/OppProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 466
    :cond_6
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/lgesettings/bluetooth/HidProfile;

    if-eqz v0, :cond_7

    .line 468
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/lgesettings/bluetooth/HidProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 469
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/lgesettings/bluetooth/HidProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 472
    :cond_7
    if-eqz p5, :cond_8

    .line 473
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Valid PAN-NAP connection exists."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_8
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/lgesettings/bluetooth/PanProfile;

    if-nez v0, :cond_a

    :cond_9
    if-eqz p5, :cond_0

    .line 477
    :cond_a
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/lgesettings/bluetooth/PanProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 478
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/lgesettings/bluetooth/PanProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 436
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
