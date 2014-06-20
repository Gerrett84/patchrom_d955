.class Lcom/android/lgesettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/lgesettings/bluetooth/BluetoothEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/bluetooth/BluetoothEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceFoundHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)V
    .locals 0
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;Lcom/android/lgesettings/bluetooth/BluetoothEventManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 284
    invoke-direct {p0, p1}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 12
    .parameter "context"
    .parameter "intent"
    .parameter "device"

    .prologue
    const/16 v11, 0xa

    const/4 v10, 0x1

    .line 286
    const-string v7, "android.bluetooth.device.extra.RSSI"

    const/16 v8, -0x8000

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result v6

    .line 287
    .local v6, rssi:S
    const-string v7, "android.bluetooth.device.extra.CLASS"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothClass;

    .line 288
    .local v0, btClass:Landroid/bluetooth/BluetoothClass;
    const-string v7, "android.bluetooth.device.extra.NAME"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 289
    .local v5, name:Ljava/lang/String;
    if-eqz p3, :cond_0

    if-eqz v0, :cond_0

    .line 290
    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[BTUI] onReceive()... "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " name("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") addr("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") class("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") rssi("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->BtUiLog(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1600(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;Ljava/lang/String;)V

    .line 297
    :cond_0
    :try_start_0
    const-string v7, "LGBT_COMMON_FUNCTION_SMARTONEKEY"

    invoke-static {v7}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 298
    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;
    invoke-static {v7}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v7

    if-nez v7, :cond_4

    .line 299
    const-string v7, "BluetoothEventManager"

    const-string v8, "mProfileManager is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v7}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v7

    invoke-virtual {v7, p3}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 301
    .local v1, cachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;
    if-nez v1, :cond_1

    .line 302
    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v7}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;
    invoke-static {v8}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1400(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v8

    iget-object v9, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;
    invoke-static {v9}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v9

    invoke-virtual {v7, v8, v9, p3}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 303
    const-string v7, "BluetoothEventManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DeviceFoundHandler created new CachedBluetoothDevice: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #calls: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->dispatchDeviceAdded(Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;)V
    invoke-static {v7, v1}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1700(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;)V

    .line 307
    :cond_1
    invoke-virtual {v1, v6}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->setRssi(S)V

    .line 308
    invoke-virtual {v1, v0}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->setBtClass(Landroid/bluetooth/BluetoothClass;)V

    .line 313
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v7

    if-ne v7, v11, :cond_2

    .line 314
    invoke-virtual {v1, v5}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    .line 317
    :cond_2
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->setVisible(Z)V

    .line 369
    .end local v1           #cachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;
    :cond_3
    :goto_0
    return-void

    .line 319
    :cond_4
    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    iget-object v8, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;
    invoke-static {v8}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->getLGSmartOneKeyProfile()Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v8

    #setter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v7, v8}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1302(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    .line 321
    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v7}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v7

    invoke-virtual {v7, p3}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getDeviceType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    .line 323
    .local v3, deviceType:I
    const-string v7, "BluetoothEventManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mProfileManager is not null : deviceType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v7}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v7

    iget v7, v7, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->DEVICE_TYPE_BLE:I

    if-ne v3, v7, :cond_5

    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v7}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v7

    iget v7, v7, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->DEVICE_TYPE_BLE:I

    if-ne v3, v7, :cond_3

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "LG RCB"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 327
    :cond_5
    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v7}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v7

    invoke-virtual {v7, p3}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 328
    .restart local v1       #cachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;
    if-nez v1, :cond_6

    .line 329
    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v7}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;
    invoke-static {v8}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1400(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v8

    iget-object v9, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;
    invoke-static {v9}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v9

    invoke-virtual {v7, v8, v9, p3}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 330
    const-string v7, "BluetoothEventManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DeviceFoundHandler created new CachedBluetoothDevice: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #calls: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->dispatchDeviceAdded(Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;)V
    invoke-static {v7, v1}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1700(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;)V

    .line 334
    :cond_6
    invoke-virtual {v1, v6}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->setRssi(S)V

    .line 335
    invoke-virtual {v1, v0}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->setBtClass(Landroid/bluetooth/BluetoothClass;)V

    .line 336
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v7

    if-ne v7, v11, :cond_7

    .line 337
    invoke-virtual {v1, v5}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    .line 339
    :cond_7
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->setVisible(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 365
    .end local v1           #cachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;
    .end local v3           #deviceType:I
    :catch_0
    move-exception v4

    .line 366
    .local v4, e:Ljava/lang/NullPointerException;
    const-string v7, "BluetoothEventManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NullPointerException : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 343
    .end local v4           #e:Ljava/lang/NullPointerException;
    :cond_8
    :try_start_1
    const-string v7, "BluetoothEventManager"

    const-string v8, "mLGSmartOneKeyDevice is null, BLE Feature is OFF"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 346
    .local v2, deviceName:Ljava/lang/String;
    const-string v7, "CASIO GB"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eq v7, v10, :cond_9

    const-string v7, "LG RCB"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-ne v7, v10, :cond_a

    .line 347
    :cond_9
    const-string v7, "BluetoothEventManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deviceName : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 350
    :cond_a
    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v7}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v7

    invoke-virtual {v7, p3}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 351
    .restart local v1       #cachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;
    if-nez v1, :cond_b

    .line 352
    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v7}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;
    invoke-static {v8}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1400(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v8

    iget-object v9, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;
    invoke-static {v9}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v9

    invoke-virtual {v7, v8, v9, p3}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 353
    const-string v7, "BluetoothEventManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DeviceFoundHandler created new CachedBluetoothDevice: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #calls: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->dispatchDeviceAdded(Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;)V
    invoke-static {v7, v1}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1700(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;)V

    .line 357
    :cond_b
    invoke-virtual {v1, v6}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->setRssi(S)V

    .line 358
    invoke-virtual {v1, v0}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->setBtClass(Landroid/bluetooth/BluetoothClass;)V

    .line 359
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v7

    if-ne v7, v11, :cond_c

    .line 360
    invoke-virtual {v1, v5}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    .line 362
    :cond_c
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->setVisible(Z)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
