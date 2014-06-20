.class Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;
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
    name = "BondStateChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)V
    .locals 0
    .parameter

    .prologue
    .line 406
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;Lcom/android/lgesettings/bluetooth/BluetoothEventManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 406
    invoke-direct {p0, p1}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;-><init>(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 11
    .parameter "context"
    .parameter "intent"
    .parameter "device"

    .prologue
    const/high16 v10, -0x8000

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 408
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[BTUI] BondStateChangedHandler:onReceive() : getAction = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->BtUiLog(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1600(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;Ljava/lang/String;)V

    .line 409
    if-nez p3, :cond_1

    .line 410
    const-string v5, "BluetoothEventManager"

    const-string v6, "ACTION_BOND_STATE_CHANGED with no EXTRA_DEVICE"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    const-string v5, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 415
    .local v0, bondState:I
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[BTUI] BondStateChangedHandler:onReceive() bondState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->BtUiLog(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1600(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;Ljava/lang/String;)V

    .line 420
    invoke-static {p1, p2, p3, v0, v9}, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->BtUiBondStateHandle(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;IZ)V

    .line 422
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v5}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 424
    .local v1, cachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;
    if-nez v1, :cond_3

    .line 425
    const-string v5, "BluetoothEventManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CachedBluetoothDevice for device "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not found, calling readPairedDevices()."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    invoke-virtual {v5}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->readPairedDevices()Z

    move-result v5

    if-nez v5, :cond_2

    .line 428
    const-string v5, "BluetoothEventManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got bonding state changed for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", but we have no record of that device."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 432
    :cond_2
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v5}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 433
    if-nez v1, :cond_3

    .line 434
    const-string v5, "BluetoothEventManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got bonding state changed for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", but device not added in cache."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 440
    :cond_3
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;
    invoke-static {v5}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1500(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v6

    monitor-enter v6

    .line 441
    :try_start_0
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;
    invoke-static {v5}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1500(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/lgesettings/bluetooth/BluetoothCallback;

    .line 442
    .local v2, callback:Lcom/android/lgesettings/bluetooth/BluetoothCallback;
    invoke-interface {v2, v1, v0}, Lcom/android/lgesettings/bluetooth/BluetoothCallback;->onDeviceBondStateChanged(Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;I)V

    goto :goto_1

    .line 444
    .end local v2           #callback:Lcom/android/lgesettings/bluetooth/BluetoothCallback;
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_4
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 446
    invoke-virtual {v1, v0}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->onBondingStateChanged(I)V

    .line 448
    const/16 v5, 0xa

    if-ne v0, v5, :cond_9

    .line 449
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 451
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/android/lgesettings/bluetooth/LocalBluetoothPreferences;->removeDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;)V

    .line 455
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->getDockedDeviceAddress(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1800(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 456
    invoke-virtual {v1, v9}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->setVisible(Z)V

    .line 461
    :cond_5
    const-string v5, "LGBT_COMMON_FUNCTION_SMARTONEKEY"

    invoke-static {v5}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 463
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;
    invoke-static {v6}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->getLGSmartOneKeyProfile()Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v6

    #setter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v5, v6}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1302(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    .line 465
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v5}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getDeviceType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v6}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v6

    iget v6, v6, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->DEVICE_TYPE_BLE:I

    if-ne v5, v6, :cond_8

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "LG RCB"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-ne v5, v8, :cond_8

    .line 467
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v5}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getLGSmartOneKeyconnstatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v6}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    if-eqz v5, :cond_7

    .line 468
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v5}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getStatusOfOnekeyAddressFromList(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v6}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    if-eq v5, v8, :cond_6

    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v5}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getStatusOfOnekeyAddressFromList(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v6}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v5}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getStatusOfOnekeyAddressFromList(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v6}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    const/4 v6, 0x5

    if-eq v5, v6, :cond_6

    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v5}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getStatusOfOnekeyAddressFromList(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v6}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    const/4 v6, 0x6

    if-ne v5, v6, :cond_7

    .line 473
    :cond_6
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    const-string v6, "[BTUI] BondStateChangedHandler:setLGSmartOneKeyconnstatus:LE_NONE_STATUS"

    #calls: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->BtUiLog(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1600(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;Ljava/lang/String;)V

    .line 475
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v5}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v5

    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v6}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    invoke-virtual {v5, p3, v9}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->setLGSmartOneKeyconnstatus(Landroid/bluetooth/BluetoothDevice;I)V

    .line 478
    :cond_7
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v5}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v5

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->deleteOnekeyDeviceAddressFromList(Ljava/lang/String;)V

    .line 479
    if-eqz v1, :cond_8

    .line 480
    invoke-virtual {v1}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 485
    :cond_8
    const-string v5, "android.bluetooth.device.extra.REASON"

    invoke-virtual {p2, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 491
    .local v4, reason:I
    invoke-virtual {v1}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5, v4, p3}, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->showUnbondMessage(Landroid/content/Context;Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 495
    .end local v4           #reason:I
    :cond_9
    const/16 v5, 0xc

    if-ne v0, v5, :cond_0

    .line 496
    const-string v5, "service.btui.gap.pairByLocal"

    const-string v6, "0"

    invoke-static {v5, v6}, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->BtUiPropertySet(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const-string v5, "LGBT_COMMON_FUNCTION_SMARTONEKEY"

    invoke-static {v5}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 500
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;
    invoke-static {v6}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->getLGSmartOneKeyProfile()Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v6

    #setter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v5, v6}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1302(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    .line 502
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[BTUI] BondStateChangedHandler:cachedDevice.bondState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->BtUiLog(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1600(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;Ljava/lang/String;)V

    .line 507
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v5}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getDeviceType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v6}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v6

    iget v6, v6, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->DEVICE_TYPE_BLE:I

    if-ne v5, v6, :cond_0

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "LG RCB"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-ne v5, v8, :cond_0

    .line 510
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v5}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getStatusOfOnekeyAddressFromList(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v6}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    const/4 v6, 0x3

    if-ne v5, v6, :cond_b

    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v5}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getLGSmartOneKeyconnstatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v6}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    const/4 v6, 0x2

    if-eq v5, v6, :cond_b

    .line 513
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v5}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    if-nez v5, :cond_a

    .line 515
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    const-string v6, "[BTUI] BondStateChangedHandler: onekey is going to connect"

    #calls: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->BtUiLog(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1600(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;Ljava/lang/String;)V

    .line 517
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v5}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v5

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v8}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->connect(Ljava/lang/String;Z)V

    .line 518
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v5}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v5

    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v6}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    invoke-virtual {v5, p3, v8}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->setLGSmartOneKeyconnstatus(Landroid/bluetooth/BluetoothDevice;I)V

    .line 519
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v5}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v5

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->disconnectedOnekeyAddressChangeToConnectingStatus(Ljava/lang/String;)V

    .line 526
    :cond_a
    :goto_2
    if-eqz v1, :cond_0

    .line 527
    invoke-virtual {v1}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->refresh()V

    goto/16 :goto_0

    .line 521
    :cond_b
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v5}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getStatusOfOnekeyAddressFromList(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v6}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    const/4 v6, 0x4

    if-ne v5, v6, :cond_a

    .line 522
    const-string v5, "BluetoothEventManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Just pairing completed!! Don\'t connect this! : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v5}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v5

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v9}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->setOnekeyDeviceAddressToList(Ljava/lang/String;Z)V

    goto :goto_2
.end method
