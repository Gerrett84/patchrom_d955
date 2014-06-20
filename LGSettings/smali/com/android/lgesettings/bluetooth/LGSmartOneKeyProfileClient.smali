.class public Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
.super Ljava/lang/Object;
.source "LGSmartOneKeyProfileClient.java"


# static fields
.field private static final CLIENT_CONFIG_UUID:Ljava/util/UUID;

.field public static LeConStatus:I

.field public static final ONEKEY_CHAR_UUID:Ljava/util/UUID;

.field public static final ONEKEY_SERVICE_UUID:Ljava/util/UUID;

.field static TAG:Ljava/lang/String;

.field private static isStartFirst:I


# instance fields
.field public DEVICE_TYPE_BLE:I

.field public DEVICE_TYPE_BREDR:I

.field private final LE_CAMERA_SHUTTER:I

.field private final LE_CONTROL_NOTUSE:I

.field private final LE_CONTROL_USE:I

.field private final LE_FIND_ME:I

.field private final LE_MUSIC_CONTROL:I

.field private final LE_VOICE_CALL:I

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothGatt:Lcom/broadcom/bt/gatt/BluetoothGatt;

.field private mBluetoothGattServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBluetoothService:Landroid/bluetooth/IBluetooth;

.field private mGattCallbacks:Lcom/broadcom/bt/gatt/BluetoothGattCallback;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mServiceManager:Lcom/lge/bluetooth/LGBluetoothServiceManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mainContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "LGSmartOneKeyProfileClient"

    sput-object v0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    .line 108
    const-string v0, "00001850-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->ONEKEY_SERVICE_UUID:Ljava/util/UUID;

    .line 109
    const-string v0, "0000B1E6-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->ONEKEY_CHAR_UUID:Ljava/util/UUID;

    .line 110
    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->CLIENT_CONFIG_UUID:Ljava/util/UUID;

    .line 124
    const/4 v0, 0x0

    sput v0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->isStartFirst:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "ctxt"

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput v0, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->LE_CONTROL_NOTUSE:I

    .line 63
    iput v2, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->LE_CONTROL_USE:I

    .line 65
    iput v0, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->LE_MUSIC_CONTROL:I

    .line 66
    iput v2, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->LE_CAMERA_SHUTTER:I

    .line 67
    iput v3, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->LE_VOICE_CALL:I

    .line 68
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->LE_FIND_ME:I

    .line 80
    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 81
    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mBluetoothGatt:Lcom/broadcom/bt/gatt/BluetoothGatt;

    .line 84
    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mPowerManager:Landroid/os/PowerManager;

    .line 85
    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 103
    iput v2, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->DEVICE_TYPE_BREDR:I

    .line 104
    iput v3, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->DEVICE_TYPE_BLE:I

    .line 128
    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mBluetoothService:Landroid/bluetooth/IBluetooth;

    .line 130
    new-instance v0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient$1;-><init>(Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;)V

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mGattCallbacks:Lcom/broadcom/bt/gatt/BluetoothGattCallback;

    .line 320
    new-instance v0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient$2;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient$2;-><init>(Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;)V

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mBluetoothGattServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 342
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    const-string v1, "LGSmartOneKeyProfileClient"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mainContext:Landroid/content/Context;

    .line 344
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mainContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->init(Landroid/content/Context;)Z

    .line 345
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mainContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/bluetooth/LGBluetoothServiceManager;->getInstance(Landroid/content/Context;)Lcom/lge/bluetooth/LGBluetoothServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mServiceManager:Lcom/lge/bluetooth/LGBluetoothServiceManager;

    .line 346
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBluetoothAdapter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mBluetoothGatt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mBluetoothGatt:Lcom/broadcom/bt/gatt/BluetoothGatt;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->acquireScreenWakeLock(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;)Lcom/broadcom/bt/gatt/BluetoothGatt;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mBluetoothGatt:Lcom/broadcom/bt/gatt/BluetoothGatt;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;Lcom/broadcom/bt/gatt/BluetoothGatt;)Lcom/broadcom/bt/gatt/BluetoothGatt;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mBluetoothGatt:Lcom/broadcom/bt/gatt/BluetoothGatt;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;)Lcom/broadcom/bt/gatt/BluetoothGattCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mGattCallbacks:Lcom/broadcom/bt/gatt/BluetoothGattCallback;

    return-object v0
.end method

.method private acquireScreenWakeLock(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 1217
    const/16 v0, 0x2710

    .line 1219
    .local v0, BACKLIGHT_ON_DURATION:I
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mPowerManager:Landroid/os/PowerManager;

    .line 1220
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1221
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 1222
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mPowerManager:Landroid/os/PowerManager;

    const v2, 0x3000001a

    sget-object v3, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1229
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    .line 1230
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1233
    :cond_1
    return-void
.end method

.method private getService()Lcom/lge/bluetooth/LGBluetoothServiceManager;
    .locals 3

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mainContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/bluetooth/LGBluetoothServiceManager;->getInstance(Landroid/content/Context;)Lcom/lge/bluetooth/LGBluetoothServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mServiceManager:Lcom/lge/bluetooth/LGBluetoothServiceManager;

    .line 352
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mServiceManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mServiceManager:Lcom/lge/bluetooth/LGBluetoothServiceManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mServiceManager:Lcom/lge/bluetooth/LGBluetoothServiceManager;

    return-object v0
.end method

.method private sendOnekeyConnectionStateChange(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 5
    .parameter "device"
    .parameter "newOnekeyState"

    .prologue
    const/16 v4, 0xa

    .line 357
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getService()Lcom/lge/bluetooth/LGBluetoothServiceManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 361
    packed-switch p2, :pswitch_data_0

    .line 376
    const/4 v0, 0x0

    .line 380
    .local v0, state:I
    :goto_0
    sget-object v1, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendOnekeyConnectionStateChange  Onekey Status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / new State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    if-eqz p1, :cond_1

    .line 382
    sget-object v1, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendOnekeyConnectionStateChange   device : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mServiceManager:Lcom/lge/bluetooth/LGBluetoothServiceManager;

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mServiceManager:Lcom/lge/bluetooth/LGBluetoothServiceManager;

    invoke-virtual {v2, v4}, Lcom/lge/bluetooth/LGBluetoothServiceManager;->getProfileConnectionState(I)I

    move-result v2

    invoke-virtual {v1, p1, v4, v0, v2}, Lcom/lge/bluetooth/LGBluetoothServiceManager;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V

    .line 392
    .end local v0           #state:I
    :cond_0
    :goto_1
    return-void

    .line 363
    :pswitch_0
    const/4 v0, 0x1

    .line 364
    .restart local v0       #state:I
    goto :goto_0

    .line 366
    .end local v0           #state:I
    :pswitch_1
    const/4 v0, 0x2

    .line 367
    .restart local v0       #state:I
    goto :goto_0

    .line 369
    .end local v0           #state:I
    :pswitch_2
    const/4 v0, 0x3

    .line 370
    .restart local v0       #state:I
    goto :goto_0

    .line 372
    .end local v0           #state:I
    :pswitch_3
    const/4 v0, 0x0

    .line 373
    .restart local v0       #state:I
    goto :goto_0

    .line 385
    :cond_1
    sget-object v1, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    const-string v2, "sendOnekeyConnectionStateChange   device : null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 361
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private sendOnekeyConnectionStateSync(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 5
    .parameter "device"
    .parameter "currentOnekeyState"

    .prologue
    const/16 v4, 0xa

    .line 396
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getService()Lcom/lge/bluetooth/LGBluetoothServiceManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 399
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getStatusOfOnekeyAddressFromList(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getStatusOfOnekeyAddressFromList(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getStatusOfOnekeyAddressFromList(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 402
    :cond_0
    sget-object v1, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendOnekeyConnectionStateSync name() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "currentOnekeyState"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    packed-switch p2, :pswitch_data_0

    .line 418
    const/4 v0, 0x0

    .line 423
    .local v0, state:I
    :goto_0
    if-eqz p1, :cond_1

    .line 424
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mServiceManager:Lcom/lge/bluetooth/LGBluetoothServiceManager;

    invoke-virtual {v1, v4}, Lcom/lge/bluetooth/LGBluetoothServiceManager;->getProfileConnectionState(I)I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 425
    sget-object v1, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendOnekeyConnectionStateSync   device : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mServiceManager:Lcom/lge/bluetooth/LGBluetoothServiceManager;

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mServiceManager:Lcom/lge/bluetooth/LGBluetoothServiceManager;

    invoke-virtual {v2, v4}, Lcom/lge/bluetooth/LGBluetoothServiceManager;->getProfileConnectionState(I)I

    move-result v2

    invoke-virtual {v1, p1, v4, v0, v2}, Lcom/lge/bluetooth/LGBluetoothServiceManager;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V

    .line 434
    .end local v0           #state:I
    :cond_1
    return-void

    .line 406
    :pswitch_0
    const/4 v0, 0x1

    .line 407
    .restart local v0       #state:I
    goto :goto_0

    .line 409
    .end local v0           #state:I
    :pswitch_1
    const/4 v0, 0x2

    .line 410
    .restart local v0       #state:I
    goto :goto_0

    .line 412
    .end local v0           #state:I
    :pswitch_2
    const/4 v0, 0x3

    .line 413
    .restart local v0       #state:I
    goto :goto_0

    .line 415
    .end local v0           #state:I
    :pswitch_3
    const/4 v0, 0x0

    .line 416
    .restart local v0       #state:I
    goto :goto_0

    .line 404
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public allOnekeyAddressChangeToDisconnectedStatus()V
    .locals 5

    .prologue
    .line 463
    const-string v2, "persist.service.btui.onekey"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 464
    new-instance v1, Ljava/lang/String;

    const-string v2, "persist.service.btui.onekey"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 465
    .local v1, onekeyFunctionValue:Ljava/lang/String;
    const-string v2, "_D_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 466
    const-string v2, "_D_"

    const-string v3, "_F_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, onekeyFV:Ljava/lang/String;
    sget-object v2, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allOnekeyAddressChangeToDisconnectedStatus - Result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const-string v2, "persist.service.btui.onekey"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    .end local v0           #onekeyFV:Ljava/lang/String;
    :cond_0
    const-string v2, "_T_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 472
    const-string v2, "_T_"

    const-string v3, "_F_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 473
    .restart local v0       #onekeyFV:Ljava/lang/String;
    sget-object v2, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allOnekeyAddressChangeToDisconnectedStatus - Result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const-string v2, "persist.service.btui.onekey"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    .end local v0           #onekeyFV:Ljava/lang/String;
    :cond_1
    const-string v2, "_C_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 478
    const-string v2, "_C_"

    const-string v3, "_F_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 479
    .restart local v0       #onekeyFV:Ljava/lang/String;
    sget-object v2, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allOnekeyAddressChangeToDisconnectedStatus - Result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const-string v2, "persist.service.btui.onekey"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    .end local v0           #onekeyFV:Ljava/lang/String;
    .end local v1           #onekeyFunctionValue:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public connect(Ljava/lang/String;Z)V
    .locals 4
    .parameter "address"
    .parameter "enable_background"

    .prologue
    .line 1053
    sget-object v1, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect() - address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mBluetoothGatt:Lcom/broadcom/bt/gatt/BluetoothGatt;

    if-nez v1, :cond_1

    .line 1063
    :cond_0
    :goto_0
    return-void

    .line 1058
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 1059
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    .line 1062
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mBluetoothGatt:Lcom/broadcom/bt/gatt/BluetoothGatt;

    invoke-virtual {v1, v0, p2}, Lcom/broadcom/bt/gatt/BluetoothGatt;->connect(Landroid/bluetooth/BluetoothDevice;Z)Z

    goto :goto_0
.end method

.method public connectedOnekeyAddressChangeToDisconnectingStatus(Ljava/lang/String;)V
    .locals 10
    .parameter "address"

    .prologue
    .line 603
    const-string v7, "persist.service.btui.onekey"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 604
    new-instance v5, Ljava/lang/String;

    const-string v7, "persist.service.btui.onekey"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 605
    .local v5, onekeyFunctionValue:Ljava/lang/String;
    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 606
    const-string v7, "/"

    invoke-virtual {p0, v5, v7}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->countSubstring(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 607
    .local v2, count:I
    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 608
    .local v0, addressArr:[Ljava/lang/String;
    const/4 v7, 0x1

    if-ne v2, v7, :cond_1

    .line 609
    const-string v7, "_T_"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 610
    const-string v7, "_T_"

    const-string v8, "_D_"

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 611
    .local v4, onekeyFV:Ljava/lang/String;
    sget-object v7, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "connectedOnekeyAddressChangeToDisconnectingStatus - Result : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    const-string v7, "persist.service.btui.onekey"

    invoke-static {v7, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    .end local v0           #addressArr:[Ljava/lang/String;
    .end local v2           #count:I
    .end local v4           #onekeyFV:Ljava/lang/String;
    .end local v5           #onekeyFunctionValue:Ljava/lang/String;
    :cond_0
    return-void

    .line 615
    .restart local v0       #addressArr:[Ljava/lang/String;
    .restart local v2       #count:I
    .restart local v5       #onekeyFunctionValue:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    .local v3, num:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 616
    aget-object v7, v0, v3

    const-string v8, "_T_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 617
    aget-object v7, v0, v3

    const-string v8, "_T_"

    const-string v9, "_D_"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 618
    .local v6, tempData:Ljava/lang/String;
    aget-object v7, v0, v3

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 619
    .local v1, changedData:Ljava/lang/String;
    sget-object v7, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "connectedOnekeyAddressChangeToDisconnectingStatus - Result : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const-string v7, "persist.service.btui.onekey"

    invoke-static {v7, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    .end local v1           #changedData:Ljava/lang/String;
    .end local v6           #tempData:Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public connectedOnekeyAddressMoveToFirst()V
    .locals 9

    .prologue
    .line 552
    new-instance v5, Ljava/lang/String;

    const-string v6, "persist.service.btui.onekey"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 553
    .local v5, onekeyData:Ljava/lang/String;
    const-string v6, "_T_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 554
    const-string v6, "/"

    invoke-virtual {p0, v5, v6}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->countSubstring(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 555
    .local v1, count:I
    const/4 v6, 0x1

    if-le v1, v6, :cond_1

    .line 556
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 557
    .local v0, addressArr:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, num:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 558
    aget-object v6, v0, v3

    const-string v7, "_T_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v3, :cond_0

    .line 559
    sget-object v6, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "connectedOnekeyAddressMoveToFirst - Saved : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v0, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 561
    .local v4, oldOnekeyFV:Ljava/lang/String;
    aget-object v6, v0, v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 562
    .local v2, newOnekeyFV:Ljava/lang/String;
    sget-object v6, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "connectedOnekeyAddressMoveToFirst - Changed : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const-string v6, "persist.service.btui.onekey"

    invoke-static {v6, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    .end local v2           #newOnekeyFV:Ljava/lang/String;
    .end local v4           #oldOnekeyFV:Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 568
    .end local v0           #addressArr:[Ljava/lang/String;
    .end local v1           #count:I
    .end local v3           #num:I
    :cond_1
    return-void
.end method

.method public countSubstring(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "src"
    .parameter "sub"

    .prologue
    .line 449
    const/4 v0, 0x0

    .line 450
    .local v0, count:I
    const/4 v1, 0x0

    .line 452
    .local v1, index:I
    :goto_0
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    .line 453
    add-int/lit8 v0, v0, 0x1

    .line 454
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 457
    :cond_0
    return v0
.end method

.method public deleteOnekeyDeviceAddressFromList(Ljava/lang/String;)V
    .locals 10
    .parameter "address"

    .prologue
    const/4 v9, 0x1

    .line 718
    sget-object v6, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deleteOnekeyDeviceAddressFromList - will delete this :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    const-string v6, "persist.service.btui.onekey"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    .line 746
    :goto_0
    return-void

    .line 723
    :cond_0
    new-instance v5, Ljava/lang/String;

    const-string v6, "persist.service.btui.onekey"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 724
    .local v5, onekeyFunctionValue:Ljava/lang/String;
    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 725
    .local v2, isAlreadySaved:Z
    if-eqz v2, :cond_1

    .line 726
    const-string v6, "/"

    invoke-virtual {p0, v5, v6}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->countSubstring(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 727
    .local v1, count:I
    if-ne v1, v9, :cond_2

    .line 728
    const-string v6, "persist.service.btui.onekey"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    .end local v1           #count:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->connectedOnekeyAddressMoveToFirst()V

    .line 744
    sput v9, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->isStartFirst:I

    .line 745
    sget-object v6, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deleteOnekeyDeviceAddressFromList - Delete Result Check : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "persist.service.btui.onekey"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 730
    .restart local v1       #count:I
    :cond_2
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 731
    .local v0, addressArr:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, num:I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 732
    sget-object v6, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deleteOnekeyDeviceAddressFromList - AddressArr : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v0, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    aget-object v6, v0, v3

    invoke-virtual {v6, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 734
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v0, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 735
    .local v4, onekeyFV:Ljava/lang/String;
    sget-object v6, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deleteOnekeyDeviceAddressFromList - Delete Result : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const-string v6, "persist.service.btui.onekey"

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    .end local v4           #onekeyFV:Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public disconnect(Ljava/lang/String;)V
    .locals 4
    .parameter "address"

    .prologue
    .line 1066
    sget-object v1, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disconnect() - address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mBluetoothGatt:Lcom/broadcom/bt/gatt/BluetoothGatt;

    if-nez v1, :cond_1

    .line 1077
    :cond_0
    :goto_0
    return-void

    .line 1071
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 1072
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    .line 1076
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mBluetoothGatt:Lcom/broadcom/bt/gatt/BluetoothGatt;

    invoke-virtual {v1, v0}, Lcom/broadcom/bt/gatt/BluetoothGatt;->cancelConnection(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0
.end method

.method public disconnectedOnekeyAddressChangeToConnectingStatus(Ljava/lang/String;)V
    .locals 11
    .parameter "address"

    .prologue
    .line 572
    const-string v8, "persist.service.btui.onekey"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 573
    new-instance v6, Ljava/lang/String;

    const-string v8, "persist.service.btui.onekey"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 574
    .local v6, onekeyFunctionValue:Ljava/lang/String;
    invoke-virtual {v6, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 575
    const-string v8, "/"

    invoke-virtual {p0, v6, v8}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->countSubstring(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 576
    .local v3, count:I
    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 577
    .local v0, addressArr:[Ljava/lang/String;
    const/4 v8, 0x1

    if-ne v3, v8, :cond_1

    .line 578
    const-string v8, "_F_"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 579
    const-string v8, "_F_"

    const-string v9, "_C_"

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 580
    .local v5, onekeyFV:Ljava/lang/String;
    sget-object v8, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "disconnectedOnekeyAddressChangeToConnectingStatus - Result : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const-string v8, "persist.service.btui.onekey"

    invoke-static {v8, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    .end local v0           #addressArr:[Ljava/lang/String;
    .end local v3           #count:I
    .end local v5           #onekeyFV:Ljava/lang/String;
    .end local v6           #onekeyFunctionValue:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 584
    .restart local v0       #addressArr:[Ljava/lang/String;
    .restart local v3       #count:I
    .restart local v6       #onekeyFunctionValue:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    .local v4, num:I
    :goto_1
    if-ge v4, v3, :cond_0

    .line 585
    aget-object v8, v0, v4

    invoke-virtual {v8, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 586
    aget-object v8, v0, v4

    const-string v9, "_F_"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 587
    aget-object v8, v0, v4

    const-string v9, "_F_"

    const-string v10, "_C_"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 588
    .local v7, tempData:Ljava/lang/String;
    aget-object v8, v0, v4

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 589
    .local v1, changedData:Ljava/lang/String;
    sget-object v8, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "disconnectedOnekeyAddressChangeToConnectingStatus - Result : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const-string v8, "persist.service.btui.onekey"

    invoke-static {v8, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    .end local v1           #changedData:Ljava/lang/String;
    .end local v7           #tempData:Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 596
    .end local v0           #addressArr:[Ljava/lang/String;
    .end local v3           #count:I
    .end local v4           #num:I
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "1111_C_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 597
    .local v2, connectingData:Ljava/lang/String;
    const-string v8, "persist.service.btui.onekey"

    invoke-static {v8, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public discoverServices(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .parameter "device"

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mBluetoothGatt:Lcom/broadcom/bt/gatt/BluetoothGatt;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 1082
    :cond_0
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    const-string v1, "discoverServices() : mBluetoothGatt Or device is null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    :goto_0
    return-void

    .line 1085
    :cond_1
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "discoverServices() - name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mBluetoothGatt:Lcom/broadcom/bt/gatt/BluetoothGatt;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/gatt/BluetoothGatt;->discoverServices(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0
.end method

.method public enableIndication(ZLcom/broadcom/bt/gatt/BluetoothGattCharacteristic;)Z
    .locals 5
    .parameter "enable"
    .parameter "characteristic"

    .prologue
    const/4 v1, 0x0

    .line 1116
    sget-object v2, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableIndication() - enable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "characteristic="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mBluetoothGatt:Lcom/broadcom/bt/gatt/BluetoothGatt;

    if-nez v2, :cond_1

    .line 1138
    :cond_0
    :goto_0
    return v1

    .line 1121
    :cond_1
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mBluetoothGatt:Lcom/broadcom/bt/gatt/BluetoothGatt;

    invoke-virtual {v2, p2, p1}, Lcom/broadcom/bt/gatt/BluetoothGatt;->setCharacteristicNotification(Lcom/broadcom/bt/gatt/BluetoothGattCharacteristic;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1125
    sget-object v2, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->CLIENT_CONFIG_UUID:Ljava/util/UUID;

    invoke-virtual {p2, v2}, Lcom/broadcom/bt/gatt/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Lcom/broadcom/bt/gatt/BluetoothGattDescriptor;

    move-result-object v0

    .line 1126
    .local v0, clientConfig:Lcom/broadcom/bt/gatt/BluetoothGattDescriptor;
    sget-object v2, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDescriptor() - clientConfig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    if-eqz v0, :cond_0

    .line 1132
    if-eqz p1, :cond_2

    .line 1133
    sget-object v1, Lcom/broadcom/bt/gatt/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/gatt/BluetoothGattDescriptor;->setValue([B)Z

    .line 1137
    :goto_1
    sget-object v1, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    const-string v2, "writeDescriptor()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mBluetoothGatt:Lcom/broadcom/bt/gatt/BluetoothGatt;

    invoke-virtual {v1, v0}, Lcom/broadcom/bt/gatt/BluetoothGatt;->writeDescriptor(Lcom/broadcom/bt/gatt/BluetoothGattDescriptor;)Z

    move-result v1

    goto :goto_0

    .line 1135
    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/gatt/BluetoothGattDescriptor;->setValue([B)Z

    goto :goto_1

    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .parameter "device"

    .prologue
    .line 1182
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConnectionState() - device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mBluetoothGatt:Lcom/broadcom/bt/gatt/BluetoothGatt;

    if-nez v0, :cond_0

    .line 1184
    const/4 v0, 0x0

    .line 1186
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mBluetoothGatt:Lcom/broadcom/bt/gatt/BluetoothGatt;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/gatt/BluetoothGatt;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method public getDeviceType(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mBluetoothGatt:Lcom/broadcom/bt/gatt/BluetoothGatt;

    if-nez v0, :cond_0

    .line 1099
    const/4 v0, 0x0

    .line 1101
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mBluetoothGatt:Lcom/broadcom/bt/gatt/BluetoothGatt;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/gatt/BluetoothGatt;->getDeviceType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method public getDrawableResource(ILjava/lang/String;)I
    .locals 4
    .parameter "control_function"
    .parameter "address"

    .prologue
    const v0, 0x7f020183

    .line 984
    sget-object v1, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ------getDrawableResource : LE CONTROL FUNCTION : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    invoke-virtual {p0, p1, p2}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->isOnekeyControl(ILjava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 986
    packed-switch p1, :pswitch_data_0

    .line 996
    sget-object v1, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    const-string v2, "------getDrawableResource Error : Function is different."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    :goto_0
    return v0

    .line 988
    :pswitch_0
    const v0, 0x7f020180

    goto :goto_0

    .line 990
    :pswitch_1
    const v0, 0x7f020169

    goto :goto_0

    .line 992
    :pswitch_2
    const v0, 0x7f02018c

    goto :goto_0

    .line 994
    :pswitch_3
    const v0, 0x7f020170

    goto :goto_0

    .line 1000
    :cond_0
    packed-switch p1, :pswitch_data_1

    .line 1010
    sget-object v1, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    const-string v2, "------getDrawableResource Error : Function is different."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1002
    :pswitch_4
    const v0, 0x7f02017f

    goto :goto_0

    .line 1004
    :pswitch_5
    const v0, 0x7f020168

    goto :goto_0

    .line 1006
    :pswitch_6
    const v0, 0x7f02018b

    goto :goto_0

    .line 1008
    :pswitch_7
    const v0, 0x7f02016f

    goto :goto_0

    .line 986
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1000
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getLGSmartOneKeyconnstatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .parameter "device"

    .prologue
    .line 1017
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LE getLeconnstatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->LeConStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    if-eqz p1, :cond_0

    .line 1019
    sget v0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->LeConStatus:I

    invoke-direct {p0, p1, v0}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->sendOnekeyConnectionStateSync(Landroid/bluetooth/BluetoothDevice;I)V

    .line 1021
    :cond_0
    sget v0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->LeConStatus:I

    return v0
.end method

.method public getNameResource(I)I
    .locals 2
    .parameter "control_function"

    .prologue
    .line 943
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    const-string v1, "------getNameResource"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    packed-switch p1, :pswitch_data_0

    .line 954
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    const-string v1, " ------getNameResource Error : Function is different."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    const v0, 0x7f08143b

    :goto_0
    return v0

    .line 946
    :pswitch_0
    const v0, 0x7f0815b5

    goto :goto_0

    .line 948
    :pswitch_1
    const v0, 0x7f0815b6

    goto :goto_0

    .line 950
    :pswitch_2
    const v0, 0x7f0815b7

    goto :goto_0

    .line 952
    :pswitch_3
    const v0, 0x7f0815b8

    goto :goto_0

    .line 944
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getService(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;)Lcom/broadcom/bt/gatt/BluetoothGattService;
    .locals 3
    .parameter "device"
    .parameter "uuid"

    .prologue
    .line 1105
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getService() - device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "uuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getService() - mBluetoothGatt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mBluetoothGatt:Lcom/broadcom/bt/gatt/BluetoothGatt;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mBluetoothGatt:Lcom/broadcom/bt/gatt/BluetoothGatt;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 1109
    :cond_0
    const/4 v0, 0x0

    .line 1111
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mBluetoothGatt:Lcom/broadcom/bt/gatt/BluetoothGatt;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/gatt/BluetoothGatt;->getService(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;)Lcom/broadcom/bt/gatt/BluetoothGattService;

    move-result-object v0

    goto :goto_0
.end method

.method public getStatusOfOnekeyAddressFromList(Landroid/bluetooth/BluetoothDevice;)I
    .locals 14
    .parameter "device"

    .prologue
    const/4 v12, 0x6

    const/4 v11, 0x5

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 782
    const-string v13, "persist.service.btui.onekey"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_1

    .line 783
    sget-object v9, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getStatusOfOnekeyAddressFromList : CUR_NOT_PAIRED_AND_OTHER_NONE -"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "persist.service.btui.onekey"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    sget v9, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->isStartFirst:I

    if-nez v9, :cond_0

    .line 785
    sget-object v9, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    const-string v11, "getStatusOfOnekeyAddressFromList : isStartFirst 0"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    sput v10, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->isStartFirst:I

    .line 872
    :cond_0
    :goto_0
    return v8

    .line 790
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->connectedOnekeyAddressMoveToFirst()V

    .line 792
    new-instance v7, Ljava/lang/String;

    const-string v13, "persist.service.btui.onekey"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v7, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 793
    .local v7, onekeyFunctionValue:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 795
    .local v2, isAlreadySaved:Z
    if-nez v2, :cond_3

    .line 796
    const-string v9, "_T_"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 797
    .local v5, isOtherOnekeyPairing:Z
    if-eqz v5, :cond_2

    .line 798
    sget-object v8, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getStatusOfOnekeyAddressFromList : CUR_NOT_PAIRED_AND_OTHER_CONNECTED -"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "persist.service.btui.onekey"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    const/4 v8, 0x4

    goto :goto_0

    .line 801
    :cond_2
    sget-object v9, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getStatusOfOnekeyAddressFromList : CUR_NOT_PAIRED_AND_OTHER_NONE -"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "persist.service.btui.onekey"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 805
    .end local v5           #isOtherOnekeyPairing:Z
    :cond_3
    const-string v8, "/"

    invoke-virtual {p0, v7, v8}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->countSubstring(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 806
    .local v1, count:I
    const-string v8, "_T_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 807
    .restart local v5       #isOtherOnekeyPairing:Z
    const-string v8, "_D_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 808
    .local v4, isDisconnecting:Z
    const-string v8, "_C_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 809
    .local v3, isConnecting:Z
    if-ne v1, v10, :cond_9

    .line 810
    if-eqz v5, :cond_6

    .line 811
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v8

    if-nez v8, :cond_5

    .line 812
    sget v8, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->isStartFirst:I

    if-nez v8, :cond_4

    .line 813
    sget-object v8, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    const-string v11, "getStatusOfOnekeyAddressFromList : isStartFirst 0"

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    sput v10, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->isStartFirst:I

    .line 816
    :cond_4
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->allOnekeyAddressChangeToDisconnectedStatus()V

    .line 817
    sget-object v8, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getStatusOfOnekeyAddressFromList : CUR_PAIRED_AND_OTHER_NONE -"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "persist.service.btui.onekey"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    .line 818
    goto/16 :goto_0

    .line 820
    :cond_5
    sget-object v8, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getStatusOfOnekeyAddressFromList : CUR_CONNECTED_AND_OTHER_NONE -"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "persist.service.btui.onekey"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v10

    .line 821
    goto/16 :goto_0

    .line 823
    :cond_6
    if-eqz v4, :cond_7

    .line 824
    sget-object v8, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getStatusOfOnekeyAddressFromList : CUR_DISCONNECTING_AND_OTHER_NONE -"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "persist.service.btui.onekey"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v11

    .line 825
    goto/16 :goto_0

    .line 826
    :cond_7
    if-eqz v3, :cond_8

    .line 827
    sget-object v8, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getStatusOfOnekeyAddressFromList : CUR_CONNECTING_AND_OTHER_NONE -"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "persist.service.btui.onekey"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v12

    .line 828
    goto/16 :goto_0

    .line 830
    :cond_8
    sget-object v8, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getStatusOfOnekeyAddressFromList : CUR_PAIRED_AND_OTHER_NONE -"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "persist.service.btui.onekey"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    .line 831
    goto/16 :goto_0

    .line 834
    :cond_9
    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 835
    .local v0, addressArr:[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, num:I
    :goto_1
    if-ge v6, v1, :cond_11

    .line 836
    aget-object v8, v0, v6

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 837
    aget-object v8, v0, v6

    const-string v13, "_T_"

    invoke-virtual {v8, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 838
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v8

    if-nez v8, :cond_b

    .line 839
    sget v8, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->isStartFirst:I

    if-nez v8, :cond_a

    .line 840
    sget-object v8, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    const-string v11, "getStatusOfOnekeyAddressFromList : isStartFirst 0"

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    sput v10, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->isStartFirst:I

    .line 843
    :cond_a
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->allOnekeyAddressChangeToDisconnectedStatus()V

    .line 844
    sget-object v8, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getStatusOfOnekeyAddressFromList : CUR_PAIRED_AND_OTHER_NONE -"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "persist.service.btui.onekey"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    .line 845
    goto/16 :goto_0

    .line 847
    :cond_b
    sget-object v8, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getStatusOfOnekeyAddressFromList : CUR_CONNECTED_AND_OTHER_NONE -"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "persist.service.btui.onekey"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v10

    .line 848
    goto/16 :goto_0

    .line 850
    :cond_c
    aget-object v8, v0, v6

    const-string v10, "_D_"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 851
    sget-object v8, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getStatusOfOnekeyAddressFromList : CUR_DISCONNECTING_AND_OTHER_NONE -"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "persist.service.btui.onekey"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v11

    .line 852
    goto/16 :goto_0

    .line 853
    :cond_d
    aget-object v8, v0, v6

    const-string v10, "_C_"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 854
    sget-object v8, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getStatusOfOnekeyAddressFromList : CUR_CONNECTING_AND_OTHER_NONE -"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "persist.service.btui.onekey"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v12

    .line 855
    goto/16 :goto_0

    .line 857
    :cond_e
    if-eqz v5, :cond_f

    .line 858
    sget-object v8, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getStatusOOnekeyAddressFromList : CUR_PAIRED_AND_OTHER_CONNECTED -"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "persist.service.btui.onekey"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    const/4 v8, 0x2

    goto/16 :goto_0

    .line 862
    :cond_f
    sget-object v8, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getStatusOfOnekeyAddressFromList : CUR_PAIRED_AND_OTHER_NONE -"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "persist.service.btui.onekey"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    .line 863
    goto/16 :goto_0

    .line 835
    :cond_10
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 871
    :cond_11
    sget-object v8, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getStatusOfOnekeyAddressFromList : NO_CASE -"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "persist.service.btui.onekey"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    const/16 v8, 0x8

    goto/16 :goto_0
.end method

.method public getStatusOfOtherDevicesFromList(Landroid/bluetooth/BluetoothDevice;)I
    .locals 7
    .parameter "device"

    .prologue
    .line 750
    sget-object v4, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SJS]getStatusOfOtherDevicesFromList : the address ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    const-string v4, "persist.service.btui.onekey"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 752
    sget-object v4, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getStatusOfOtherDevicesFromList : CUR_NOT_PAIRED_AND_OTHER_NONE -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "persist.service.btui.onekey"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    sget v4, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->isStartFirst:I

    if-nez v4, :cond_0

    .line 754
    sget-object v4, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    const-string v5, "getStatusOfOtherDevicesFromList : isStartFirst 0"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    const/4 v4, 0x1

    sput v4, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->isStartFirst:I

    .line 758
    :cond_0
    const/4 v4, 0x3

    .line 777
    :goto_0
    return v4

    .line 760
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->connectedOnekeyAddressMoveToFirst()V

    .line 762
    new-instance v3, Ljava/lang/String;

    const-string v4, "persist.service.btui.onekey"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 763
    .local v3, onekeyFunctionValue:Ljava/lang/String;
    const-string v4, "/"

    invoke-virtual {p0, v3, v4}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->countSubstring(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 765
    .local v1, count:I
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 766
    .local v0, addressArr:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, num:I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 767
    aget-object v4, v0, v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 768
    aget-object v4, v0, v2

    const-string v5, "_C_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 769
    sget-object v4, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SJS]getStatusOfOtherDevicesFromList : address ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    sget-object v4, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SJS]getStatusOfOtherDevicesFromList : CUR_PAIRED_AND_OTHER_CONNECTING -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "persist.service.btui.onekey"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    const/4 v4, 0x7

    goto :goto_0

    .line 766
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 776
    :cond_3
    sget-object v4, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getStatusOfOtherDevicesFromList : NO_CASE -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "persist.service.btui.onekey"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    const/16 v4, 0x8

    goto/16 :goto_0
.end method

.method public getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;)I
    .locals 4
    .parameter "device"
    .parameter "control_function"
    .parameter "address"

    .prologue
    .line 960
    sget-object v1, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "------getSummaryResourceForDevice : LE CONTROL FUNCTION : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " address : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getLGSmartOneKeyconnstatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 963
    .local v0, state:I
    invoke-virtual {p0, p2, p3}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->isOnekeyControl(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 964
    packed-switch p2, :pswitch_data_0

    .line 974
    sget-object v1, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    const-string v2, "------getSummaryResourceForDevice Error : Function is different."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    const/4 v1, 0x0

    .line 978
    :goto_0
    return v1

    .line 966
    :pswitch_0
    const v1, 0x7f0815ba

    goto :goto_0

    .line 968
    :pswitch_1
    const v1, 0x7f0815bb

    goto :goto_0

    .line 970
    :pswitch_2
    const v1, 0x7f0815bc

    goto :goto_0

    .line 972
    :pswitch_3
    const v1, 0x7f0815bd

    goto :goto_0

    .line 978
    :cond_0
    const v1, 0x7f0815bf

    goto :goto_0

    .line 964
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public init(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 1037
    sget-object v1, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() - context="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_0

    .line 1039
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 1040
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_0

    .line 1049
    :goto_0
    return v0

    .line 1043
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mBluetoothGatt:Lcom/broadcom/bt/gatt/BluetoothGatt;

    if-nez v1, :cond_1

    .line 1044
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mBluetoothGattServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v2, 0x7

    invoke-static {p1, v1, v2}, Lcom/broadcom/bt/gatt/BluetoothGattAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1045
    sget-object v1, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    const-string v2, "init() - Getting Gatt Proxy failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1049
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isOnekeyControl(ILjava/lang/String;)Z
    .locals 9
    .parameter "control_function"
    .parameter "address"

    .prologue
    .line 876
    const/4 v5, 0x1

    .line 877
    .local v5, value:Z
    sget-object v6, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isOnekeyControl - LE CONTROL FUNCTION : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " address : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    new-instance v4, Ljava/lang/String;

    const-string v6, "persist.service.btui.onekey"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 879
    .local v4, onekeyFunctionValue:Ljava/lang/String;
    const-string v6, "/"

    invoke-virtual {p0, v4, v6}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->countSubstring(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 880
    .local v1, count:I
    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 882
    .local v0, addressArr:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, num:I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 883
    aget-object v6, v0, v3

    invoke-virtual {v6, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 886
    aget-object v6, v0, v3

    invoke-virtual {v6, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 887
    .local v2, functionValue:C
    const-string v6, "1"

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 888
    const/4 v5, 0x1

    .line 882
    .end local v2           #functionValue:C
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 889
    .restart local v2       #functionValue:C
    :cond_1
    const-string v6, "0"

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 890
    const/4 v5, 0x0

    goto :goto_1

    .line 895
    .end local v2           #functionValue:C
    :cond_2
    if-eqz v5, :cond_3

    .line 896
    sget-object v6, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    const-string v7, "isOnekeyControl - return value : true"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :goto_2
    sget-object v6, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isOnekeyControl - persist.service.btui.onekey : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    return v5

    .line 898
    :cond_3
    sget-object v6, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    const-string v7, "isOnekeyControl - return value : false"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public setIndication(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;Ljava/util/UUID;Z)Z
    .locals 6
    .parameter "device"
    .parameter "service_uuid"
    .parameter "char_uuid"
    .parameter "enable"

    .prologue
    const/4 v2, 0x0

    .line 1142
    sget-object v3, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setIndication() - device="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "service_uuid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    sget-object v3, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setIndication() - char_uuid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "enable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    invoke-virtual {p0, p1, p2}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getService(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;)Lcom/broadcom/bt/gatt/BluetoothGattService;

    move-result-object v1

    .line 1146
    .local v1, onekeyService:Lcom/broadcom/bt/gatt/BluetoothGattService;
    if-eqz v1, :cond_0

    .line 1147
    invoke-virtual {v1, p3}, Lcom/broadcom/bt/gatt/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Lcom/broadcom/bt/gatt/BluetoothGattCharacteristic;

    move-result-object v0

    .line 1148
    .local v0, onekeyCharacteristic:Lcom/broadcom/bt/gatt/BluetoothGattCharacteristic;
    if-nez v0, :cond_1

    .line 1149
    sget-object v3, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    const-string v4, "onekeyCharacteristic - NULL"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    .end local v0           #onekeyCharacteristic:Lcom/broadcom/bt/gatt/BluetoothGattCharacteristic;
    :cond_0
    :goto_0
    return v2

    .line 1152
    .restart local v0       #onekeyCharacteristic:Lcom/broadcom/bt/gatt/BluetoothGattCharacteristic;
    :cond_1
    invoke-virtual {p0, p4, v0}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->enableIndication(ZLcom/broadcom/bt/gatt/BluetoothGattCharacteristic;)Z

    move-result v2

    goto :goto_0
.end method

.method public setLGSmartOneKeyconnstatus(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 3
    .parameter "device"
    .parameter "status"

    .prologue
    .line 1025
    if-eqz p1, :cond_0

    .line 1026
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LE GetRemote "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "setLeconnstatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    sput p2, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->LeConStatus:I

    .line 1028
    invoke-direct {p0, p1, p2}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->sendOnekeyConnectionStateChange(Landroid/bluetooth/BluetoothDevice;I)V

    .line 1034
    :goto_0
    return-void

    .line 1030
    :cond_0
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LE setLeconnstatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    sput p2, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->LeConStatus:I

    .line 1032
    invoke-direct {p0, p1, p2}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->sendOnekeyConnectionStateChange(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0
.end method

.method setOnekeyControl(IZLjava/lang/String;)V
    .locals 12
    .parameter "control_function"
    .parameter "onoff"
    .parameter "address"

    .prologue
    const/4 v11, 0x4

    .line 905
    sget-object v8, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setOnekeyControl : LE CONTROL FUNCTION : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " / address : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    new-instance v6, Ljava/lang/String;

    const-string v8, "persist.service.btui.onekey"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 908
    .local v6, onekeyFunctionValue:Ljava/lang/String;
    const-string v8, "/"

    invoke-virtual {p0, v6, v8}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->countSubstring(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 909
    .local v1, count:I
    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 911
    .local v0, addressArr:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, num:I
    :goto_0
    if-ge v3, v1, :cond_5

    .line 912
    aget-object v8, v0, v3

    invoke-virtual {v8, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 913
    new-array v7, v11, [C

    .line 915
    .local v7, temp:[C
    const/4 v2, 0x0

    .local v2, fn:I
    :goto_1
    if-ge v2, v11, :cond_2

    .line 916
    if-ne p1, v2, :cond_1

    .line 917
    if-eqz p2, :cond_0

    .line 918
    const/16 v8, 0x31

    aput-char v8, v7, p1

    .line 915
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 920
    :cond_0
    const/16 v8, 0x30

    aput-char v8, v7, p1

    goto :goto_2

    .line 923
    :cond_1
    aget-object v8, v0, v3

    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aput-char v8, v7, v2

    goto :goto_2

    .line 927
    :cond_2
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>([C)V

    .line 929
    .local v5, onekeyFV:Ljava/lang/String;
    aget-object v8, v0, v3

    const-string v9, "_T_"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 930
    aget-object v8, v0, v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_T_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 931
    .local v4, onekeyChange:Ljava/lang/String;
    const-string v8, "persist.service.btui.onekey"

    invoke-static {v8, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    sget-object v8, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setOnekeyControl -- persist.service.btui.onekey : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    .end local v2           #fn:I
    .end local v4           #onekeyChange:Ljava/lang/String;
    .end local v5           #onekeyFV:Ljava/lang/String;
    .end local v7           #temp:[C
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 934
    .restart local v2       #fn:I
    .restart local v5       #onekeyFV:Ljava/lang/String;
    .restart local v7       #temp:[C
    :cond_4
    aget-object v8, v0, v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_F_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 935
    .restart local v4       #onekeyChange:Ljava/lang/String;
    const-string v8, "persist.service.btui.onekey"

    invoke-static {v8, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    sget-object v8, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setOnekeyControl -- persist.service.btui.onekey : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 940
    .end local v2           #fn:I
    .end local v4           #onekeyChange:Ljava/lang/String;
    .end local v5           #onekeyFV:Ljava/lang/String;
    .end local v7           #temp:[C
    :cond_5
    return-void
.end method

.method public setOnekeyDeviceAddressToList(Ljava/lang/String;Z)V
    .locals 11
    .parameter "address"
    .parameter "setMainOnekeyConnecting"

    .prologue
    .line 629
    const-string v8, "persist.service.btui.onekey"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_2

    .line 630
    if-eqz p2, :cond_1

    .line 631
    const-string v8, "persist.service.btui.onekey"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "1111_T_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->connectedOnekeyAddressMoveToFirst()V

    .line 713
    const/4 v8, 0x1

    sput v8, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->isStartFirst:I

    .line 714
    sget-object v8, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setOnekeyDeviceAddressToList : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "persist.service.btui.onekey"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    return-void

    .line 633
    :cond_1
    const-string v8, "persist.service.btui.onekey"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "1111_F_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 636
    :cond_2
    new-instance v6, Ljava/lang/String;

    const-string v8, "persist.service.btui.onekey"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 637
    .local v6, onekeyFunctionValue:Ljava/lang/String;
    const-string v8, "_T_"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 638
    .local v3, isConnectingOnekey:Z
    invoke-virtual {v6, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 640
    .local v2, isAlreadySaved:Z
    if-eqz v3, :cond_9

    .line 641
    if-eqz v2, :cond_7

    .line 642
    if-eqz p2, :cond_3

    .line 643
    const-string v8, "_T_"

    const-string v9, "_F_"

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 644
    .local v7, tempFV:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_F_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_T_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 645
    .local v5, onekeyFV:Ljava/lang/String;
    const-string v8, "persist.service.btui.onekey"

    invoke-static {v8, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 647
    .end local v5           #onekeyFV:Ljava/lang/String;
    .end local v7           #tempFV:Ljava/lang/String;
    :cond_3
    const-string v8, "/"

    invoke-virtual {p0, v6, v8}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->countSubstring(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 648
    .local v1, count:I
    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 650
    .local v0, addressArr:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, num:I
    :goto_1
    if-ge v4, v1, :cond_0

    .line 651
    aget-object v8, v0, v4

    invoke-virtual {v8, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 652
    aget-object v8, v0, v4

    const-string v9, "_T_"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 653
    const-string v8, "_T_"

    const-string v9, "_F_"

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 654
    .restart local v5       #onekeyFV:Ljava/lang/String;
    const-string v8, "persist.service.btui.onekey"

    invoke-static {v8, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    .end local v5           #onekeyFV:Ljava/lang/String;
    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 655
    :cond_5
    aget-object v8, v0, v4

    const-string v9, "_C_"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 656
    const-string v8, "_C_"

    const-string v9, "_F_"

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 657
    .restart local v5       #onekeyFV:Ljava/lang/String;
    const-string v8, "persist.service.btui.onekey"

    invoke-static {v8, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 658
    .end local v5           #onekeyFV:Ljava/lang/String;
    :cond_6
    aget-object v8, v0, v4

    const-string v9, "_D_"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 659
    const-string v8, "_D_"

    const-string v9, "_F_"

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 660
    .restart local v5       #onekeyFV:Ljava/lang/String;
    const-string v8, "persist.service.btui.onekey"

    invoke-static {v8, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 666
    .end local v0           #addressArr:[Ljava/lang/String;
    .end local v1           #count:I
    .end local v4           #num:I
    .end local v5           #onekeyFV:Ljava/lang/String;
    :cond_7
    if-eqz p2, :cond_8

    .line 667
    const-string v8, "_T_"

    const-string v9, "_F_"

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 668
    .restart local v7       #tempFV:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "1111_T_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 669
    .restart local v5       #onekeyFV:Ljava/lang/String;
    const-string v8, "persist.service.btui.onekey"

    invoke-static {v8, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 671
    .end local v5           #onekeyFV:Ljava/lang/String;
    .end local v7           #tempFV:Ljava/lang/String;
    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "1111_F_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 672
    .restart local v5       #onekeyFV:Ljava/lang/String;
    const-string v8, "persist.service.btui.onekey"

    invoke-static {v8, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 676
    .end local v5           #onekeyFV:Ljava/lang/String;
    :cond_9
    if-eqz v2, :cond_f

    .line 677
    if-eqz p2, :cond_c

    .line 678
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_C_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 679
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_C_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_T_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 680
    .restart local v5       #onekeyFV:Ljava/lang/String;
    const-string v8, "persist.service.btui.onekey"

    invoke-static {v8, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 681
    .end local v5           #onekeyFV:Ljava/lang/String;
    :cond_a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_F_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 682
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_F_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_T_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 683
    .restart local v5       #onekeyFV:Ljava/lang/String;
    const-string v8, "persist.service.btui.onekey"

    invoke-static {v8, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 684
    .end local v5           #onekeyFV:Ljava/lang/String;
    :cond_b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_D_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 685
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_D_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_T_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 686
    .restart local v5       #onekeyFV:Ljava/lang/String;
    const-string v8, "persist.service.btui.onekey"

    invoke-static {v8, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 689
    .end local v5           #onekeyFV:Ljava/lang/String;
    :cond_c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_C_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 690
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_C_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_F_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 691
    .restart local v5       #onekeyFV:Ljava/lang/String;
    const-string v8, "persist.service.btui.onekey"

    invoke-static {v8, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 692
    .end local v5           #onekeyFV:Ljava/lang/String;
    :cond_d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_F_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 693
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_T_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_F_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 694
    .restart local v5       #onekeyFV:Ljava/lang/String;
    const-string v8, "persist.service.btui.onekey"

    invoke-static {v8, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 695
    .end local v5           #onekeyFV:Ljava/lang/String;
    :cond_e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_D_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 696
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_D_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_F_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 697
    .restart local v5       #onekeyFV:Ljava/lang/String;
    const-string v8, "persist.service.btui.onekey"

    invoke-static {v8, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 701
    .end local v5           #onekeyFV:Ljava/lang/String;
    :cond_f
    if-eqz p2, :cond_10

    .line 702
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "1111_T_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 703
    .restart local v5       #onekeyFV:Ljava/lang/String;
    const-string v8, "persist.service.btui.onekey"

    invoke-static {v8, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 705
    .end local v5           #onekeyFV:Ljava/lang/String;
    :cond_10
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "1111_F_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 706
    .restart local v5       #onekeyFV:Ljava/lang/String;
    const-string v8, "persist.service.btui.onekey"

    invoke-static {v8, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 1
    .parameter "control_function"

    .prologue
    .line 437
    if-nez p1, :cond_0

    .line 438
    const-string v0, "MUSIC"

    .line 444
    :goto_0
    return-object v0

    .line 439
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 440
    const-string v0, "CAMERA"

    goto :goto_0

    .line 441
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 442
    const-string v0, "VOICECALL"

    goto :goto_0

    .line 444
    :cond_2
    const-string v0, "FINDME"

    goto :goto_0
.end method

.method public unregisterApp()V
    .locals 3

    .prologue
    .line 1201
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterApp mGattCallbacks="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mGattCallbacks:Lcom/broadcom/bt/gatt/BluetoothGattCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mBluetoothGatt:Lcom/broadcom/bt/gatt/BluetoothGatt;

    if-nez v0, :cond_0

    .line 1206
    :goto_0
    return-void

    .line 1205
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mBluetoothGatt:Lcom/broadcom/bt/gatt/BluetoothGatt;

    invoke-virtual {v0}, Lcom/broadcom/bt/gatt/BluetoothGatt;->unregisterApp()V

    goto :goto_0
.end method
