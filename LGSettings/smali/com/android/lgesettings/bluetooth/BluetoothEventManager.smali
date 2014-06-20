.class final Lcom/android/lgesettings/bluetooth/BluetoothEventManager;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/bluetooth/BluetoothEventManager$LGSmartOneKeyEventHandler;,
        Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BtUiEventHandler;,
        Lcom/android/lgesettings/bluetooth/BluetoothEventManager$DockEventHandler;,
        Lcom/android/lgesettings/bluetooth/BluetoothEventManager$PairingCancelHandler;,
        Lcom/android/lgesettings/bluetooth/BluetoothEventManager$UuidChangedHandler;,
        Lcom/android/lgesettings/bluetooth/BluetoothEventManager$ClassChangedHandler;,
        Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;,
        Lcom/android/lgesettings/bluetooth/BluetoothEventManager$NameChangedHandler;,
        Lcom/android/lgesettings/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;,
        Lcom/android/lgesettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;,
        Lcom/android/lgesettings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;,
        Lcom/android/lgesettings/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;,
        Lcom/android/lgesettings/bluetooth/BluetoothEventManager$Handler;
    }
.end annotation


# static fields
.field private static final LG_BTUI_HIDDEN:Z

.field private static final LG_DBG:Z

.field public static isRecordStarted:Z


# instance fields
.field private final mAdapterIntentFilter:Landroid/content/IntentFilter;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallbacks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/lgesettings/bluetooth/BluetoothCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mDeviceManager:Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;

.field private final mHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/lgesettings/bluetooth/BluetoothEventManager$Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

.field private final mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

.field private final mProfileIntentFilter:Landroid/content/IntentFilter;

.field private mProfileManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 80
    const-string v0, "persist.service.btui.hidden"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->LG_BTUI_HIDDEN:Z

    .line 81
    const-string v0, "persist.service.btui.debug"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->LG_DBG:Z

    .line 752
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->isRecordStarted:Z

    return-void
.end method

.method constructor <init>(Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;Landroid/content/Context;)V
    .locals 4
    .parameter "adapter"
    .parameter "deviceManager"
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    .line 195
    new-instance v0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$1;-><init>(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)V

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 118
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    .line 119
    iput-object p2, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;

    .line 120
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mAdapterIntentFilter:Landroid/content/IntentFilter;

    .line 121
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mProfileIntentFilter:Landroid/content/IntentFilter;

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    .line 123
    iput-object p3, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    .line 126
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    new-instance v1, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;-><init>(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;Lcom/android/lgesettings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/lgesettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 129
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    new-instance v1, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;-><init>(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;Z)V

    invoke-virtual {p0, v0, v1}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/lgesettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 130
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    new-instance v1, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;-><init>(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;Z)V

    invoke-virtual {p0, v0, v1}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/lgesettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 131
    const-string v0, "android.bluetooth.device.action.FOUND"

    new-instance v1, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;Lcom/android/lgesettings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/lgesettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 132
    const-string v0, "android.bluetooth.device.action.DISAPPEARED"

    new-instance v1, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;-><init>(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;Lcom/android/lgesettings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/lgesettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 133
    const-string v0, "android.bluetooth.device.action.NAME_CHANGED"

    new-instance v1, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$NameChangedHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$NameChangedHandler;-><init>(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;Lcom/android/lgesettings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/lgesettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 136
    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    new-instance v1, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;-><init>(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;Lcom/android/lgesettings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/lgesettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 137
    const-string v0, "android.bluetooth.device.action.PAIRING_CANCEL"

    new-instance v1, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$PairingCancelHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$PairingCancelHandler;-><init>(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;Lcom/android/lgesettings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/lgesettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 140
    const-string v0, "android.bluetooth.device.action.CLASS_CHANGED"

    new-instance v1, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$ClassChangedHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$ClassChangedHandler;-><init>(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;Lcom/android/lgesettings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/lgesettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 141
    const-string v0, "android.bluetooth.device.action.UUID"

    new-instance v1, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$UuidChangedHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$UuidChangedHandler;-><init>(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;Lcom/android/lgesettings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/lgesettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 144
    const-string v0, "android.intent.action.DOCK_EVENT"

    new-instance v1, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$DockEventHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$DockEventHandler;-><init>(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;Lcom/android/lgesettings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/lgesettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 147
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->addBtUiEventHandler()V

    .line 151
    const-string v0, "LGBT_COMMON_FUNCTION_SMARTONEKEY"

    invoke-static {v0}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const-string v0, "com.lge.bluetooth.device.action.LG_SMART_ONEKEY_DEVICECONNECTED"

    new-instance v1, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$LGSmartOneKeyEventHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$LGSmartOneKeyEventHandler;-><init>(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;Lcom/android/lgesettings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/lgesettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 153
    const-string v0, "com.lge.bluetooth.device.action.LG_SMART_ONEKEY_DEVICEDISCONNECTED"

    new-instance v1, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$LGSmartOneKeyEventHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$LGSmartOneKeyEventHandler;-><init>(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;Lcom/android/lgesettings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/lgesettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 154
    const-string v0, "com.lge.bluetooth.device.action.LG_SMART_ONEKEY_REFRESHED"

    new-instance v1, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$LGSmartOneKeyEventHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$LGSmartOneKeyEventHandler;-><init>(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;Lcom/android/lgesettings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/lgesettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mAdapterIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 159
    return-void
.end method

.method private BtUiLog(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 817
    const-string v0, "BluetoothEventManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    return-void
.end method

.method static synthetic access$1000(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->BtUiLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->dispatchDeviceAdded(Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-static {p0}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->getDockedDeviceAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->getTopActivityName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100()Z
    .locals 1

    .prologue
    .line 77
    sget-boolean v0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->LG_BTUI_HIDDEN:Z

    return v0
.end method

.method static synthetic access$2200()Z
    .locals 1

    .prologue
    .line 77
    sget-boolean v0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->LG_DBG:Z

    return v0
.end method

.method private dispatchDeviceAdded(Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;)V
    .locals 4
    .parameter "cachedDevice"

    .prologue
    .line 373
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v3

    .line 374
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/bluetooth/BluetoothCallback;

    .line 375
    .local v0, callback:Lcom/android/lgesettings/bluetooth/BluetoothCallback;
    invoke-interface {v0, p1}, Lcom/android/lgesettings/bluetooth/BluetoothCallback;->onDeviceAdded(Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 377
    .end local v0           #callback:Lcom/android/lgesettings/bluetooth/BluetoothCallback;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 378
    return-void
.end method

.method private static getDockedDeviceAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 182
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.DOCK_EVENT"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 183
    .local v1, i:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 184
    const-string v4, "android.intent.extra.DOCK_STATE"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 185
    .local v2, state:I
    if-eqz v2, :cond_0

    .line 186
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 187
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 192
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #state:I
    :cond_0
    return-object v3
.end method

.method private getTopActivityName()Ljava/lang/String;
    .locals 8

    .prologue
    .line 880
    :try_start_0
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 881
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 882
    .local v1, info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 883
    .local v3, topActivity:Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 884
    .local v4, topActivityClassName:Ljava/lang/String;
    const-string v5, "BluetoothEventManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "topActivity : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v3           #topActivity:Landroid/content/ComponentName;
    .end local v4           #topActivityClassName:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 886
    :catch_0
    move-exception v2

    .line 887
    .local v2, npe:Ljava/lang/NullPointerException;
    const-string v5, "TAG"

    const-string v6, "topActivity : NullPointerException"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    const-string v4, ""

    goto :goto_0
.end method


# virtual methods
.method addBtUiEventHandler()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 760
    const-string v0, "android.bluetooth.pbap.intent.action.PBAP_STATE_CHANGED"

    new-instance v1, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BtUiEventHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BtUiEventHandler;-><init>(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;Lcom/android/lgesettings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/lgesettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 763
    const-string v0, "voice_video_record_playing"

    new-instance v1, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BtUiEventHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BtUiEventHandler;-><init>(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;Lcom/android/lgesettings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/lgesettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 764
    const-string v0, "voice_video_record_finish"

    new-instance v1, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BtUiEventHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BtUiEventHandler;-><init>(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;Lcom/android/lgesettings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/lgesettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 767
    const-string v0, "com.lge.btui.action.BlockAVRCPToggle"

    new-instance v1, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BtUiEventHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BtUiEventHandler;-><init>(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;Lcom/android/lgesettings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/lgesettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 769
    return-void
.end method

.method addHandler(Ljava/lang/String;Lcom/android/lgesettings/bluetooth/BluetoothEventManager$Handler;)V
    .locals 1
    .parameter "action"
    .parameter "handler"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mAdapterIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method addProfileHandler(Ljava/lang/String;Lcom/android/lgesettings/bluetooth/BluetoothEventManager$Handler;)V
    .locals 1
    .parameter "action"
    .parameter "handler"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mProfileIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method readPairedDevices()Z
    .locals 8

    .prologue
    .line 728
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 729
    .local v0, bondedDevices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-nez v0, :cond_1

    .line 730
    const/4 v3, 0x0

    .line 743
    :cond_0
    return v3

    .line 733
    :cond_1
    const/4 v3, 0x0

    .line 734
    .local v3, deviceAdded:Z
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 735
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v5, v2}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 736
    .local v1, cachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;
    if-nez v1, :cond_2

    .line 737
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;

    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v5, v6, v7, v2}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 738
    invoke-direct {p0, v1}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->dispatchDeviceAdded(Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;)V

    .line 739
    const/4 v3, 0x1

    goto :goto_0
.end method

.method registerCallback(Lcom/android/lgesettings/bluetooth/BluetoothCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 167
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v1

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 169
    monitor-exit v1

    .line 170
    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method registerProfileIntentReceiver()V
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mProfileIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 163
    return-void
.end method

.method setProfileManager(Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;)V
    .locals 0
    .parameter "manager"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    .line 115
    return-void
.end method

.method unregisterCallback(Lcom/android/lgesettings/bluetooth/BluetoothCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 174
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v1

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 176
    monitor-exit v1

    .line 177
    return-void

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
