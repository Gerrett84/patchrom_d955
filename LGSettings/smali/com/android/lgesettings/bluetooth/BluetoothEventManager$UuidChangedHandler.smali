.class Lcom/android/lgesettings/bluetooth/BluetoothEventManager$UuidChangedHandler;
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
    name = "UuidChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)V
    .locals 0
    .parameter

    .prologue
    .line 576
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$UuidChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;Lcom/android/lgesettings/bluetooth/BluetoothEventManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 576
    invoke-direct {p0, p1}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$UuidChangedHandler;-><init>(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 16
    .parameter "context"
    .parameter "intent"
    .parameter "device"

    .prologue
    .line 579
    const-string v13, "LGBT_COMMON_FUNCTION_SMARTONEKEY"

    invoke-static {v13}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 580
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$UuidChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$UuidChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;
    invoke-static {v14}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->getLGSmartOneKeyProfile()Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v14

    #setter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v13, v14}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1302(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    .line 581
    if-eqz p3, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$UuidChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v13}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v13

    if-nez v13, :cond_2

    .line 582
    :cond_0
    const-string v13, "BluetoothEventManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "UuidChangedHandler device ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "mLGSmartOneKeyDevice ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$UuidChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v15}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    :cond_1
    :goto_0
    return-void

    .line 586
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$UuidChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v13}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getDeviceType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$UuidChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v14}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v14

    iget v14, v14, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->DEVICE_TYPE_BLE:I

    if-ne v13, v14, :cond_8

    .line 588
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 589
    .local v1, action:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 590
    .local v2, b:Landroid/os/Bundle;
    const-string v13, "android.bluetooth.device.action.UUID"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 591
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$UuidChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v13}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    .line 592
    .local v3, cachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;
    const/4 v6, 0x0

    .line 593
    .local v6, matchedservice:Z
    const-string v13, "android.bluetooth.device.extra.UUID"

    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v12

    .line 595
    .local v12, uuids:[Landroid/os/Parcelable;
    const-string v13, "BluetoothEventManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Got remote services ACTION_UUID for device : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p3 .. p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    if-eqz v12, :cond_7

    .line 598
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v13, v12

    if-ge v5, v13, :cond_4

    .line 599
    aget-object v8, v12, v5

    check-cast v8, Landroid/os/ParcelUuid;

    .line 601
    .local v8, uuid:Landroid/os/ParcelUuid;
    invoke-virtual {v8}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    .line 602
    .local v11, uuidStr:Ljava/lang/String;
    if-eqz v11, :cond_1

    .line 606
    const/4 v13, 0x0

    const/16 v14, 0x8

    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    .line 607
    .local v10, uuidPrefixStr:Ljava/lang/String;
    const/4 v9, -0x1

    .line 609
    .local v9, uuidPrefix:I
    :try_start_0
    const-string v13, "BluetoothEventManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "uuidPrefixStr "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    const/16 v13, 0x10

    invoke-static {v10, v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 615
    :goto_2
    sparse-switch v9, :sswitch_data_0

    .line 598
    :cond_3
    :goto_3
    :sswitch_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 611
    :catch_0
    move-exception v4

    .line 612
    .local v4, e:Ljava/lang/Exception;
    const-string v13, "BluetoothEventManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception in integer parse - unknown uuid "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 624
    .end local v4           #e:Ljava/lang/Exception;
    :sswitch_1
    const/4 v6, 0x1

    .line 625
    const-string v13, "BluetoothEventManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mLGSmartOneKeyDevice.getConnectionState : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$UuidChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v15}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    const-string v13, "BluetoothEventManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mLGSmartOneKeyDevice.getLGSmartOneKeyconnstatus(device) : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$UuidChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v15}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getLGSmartOneKeyconnstatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$UuidChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v13}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getLGSmartOneKeyconnstatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$UuidChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v14}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$UuidChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v13}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getStatusOfOnekeyAddressFromList(Landroid/bluetooth/BluetoothDevice;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$UuidChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v14}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    const/4 v14, 0x6

    if-ne v13, v14, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$UuidChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v13}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v13

    const/4 v14, 0x2

    if-eq v13, v14, :cond_3

    .line 630
    const-string v13, "BluetoothEventManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mLGSmartOneKeyDevice.connectBackground remote : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p3 .. p3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$UuidChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v13}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v13

    invoke-virtual/range {p3 .. p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->connect(Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 641
    .end local v8           #uuid:Landroid/os/ParcelUuid;
    .end local v9           #uuidPrefix:I
    .end local v10           #uuidPrefixStr:Ljava/lang/String;
    .end local v11           #uuidStr:Ljava/lang/String;
    :cond_4
    if-nez v6, :cond_1

    .line 643
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$UuidChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #calls: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->getTopActivityName()Ljava/lang/String;
    invoke-static {v13}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1900(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Ljava/lang/String;

    move-result-object v7

    .line 645
    .local v7, topActivityName:Ljava/lang/String;
    const-string v13, "com.android.lgesettings.Settings$BluetoothSettingsActivity"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 646
    const-string v13, "BluetoothEventManager"

    const-string v14, "LGSmartOneKeyEventHandler() - BluetoothSettingsActivity is topActivity"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    const v13, 0x7f0815b4

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 650
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$UuidChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v13}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getLGSmartOneKeyconnstatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$UuidChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v14}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    if-eqz v13, :cond_6

    invoke-virtual/range {p3 .. p3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "LG RCB"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 652
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$UuidChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v13}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$UuidChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v14}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v14}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->setLGSmartOneKeyconnstatus(Landroid/bluetooth/BluetoothDevice;I)V

    .line 653
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$UuidChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v13}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v13

    invoke-virtual/range {p3 .. p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->deleteOnekeyDeviceAddressFromList(Ljava/lang/String;)V

    .line 654
    if-eqz v3, :cond_6

    .line 655
    invoke-virtual {v3}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 658
    :cond_6
    const-string v13, "BluetoothEventManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "don\'t have support service remote : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p3 .. p3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 666
    .end local v5           #i:I
    .end local v7           #topActivityName:Ljava/lang/String;
    :cond_7
    const-string v13, "BluetoothEventManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "uuids : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$UuidChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v13}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getLGSmartOneKeyconnstatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$UuidChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v14}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    if-eqz v13, :cond_1

    invoke-virtual/range {p3 .. p3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "LG RCB"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    .line 670
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$UuidChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v13}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$UuidChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v14}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v14}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->setLGSmartOneKeyconnstatus(Landroid/bluetooth/BluetoothDevice;I)V

    .line 671
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$UuidChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v13}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v13

    invoke-virtual/range {p3 .. p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->deleteOnekeyDeviceAddressFromList(Ljava/lang/String;)V

    .line 672
    if-eqz v3, :cond_1

    .line 673
    invoke-virtual {v3}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->refresh()V

    goto/16 :goto_0

    .line 680
    .end local v1           #action:Ljava/lang/String;
    .end local v2           #b:Landroid/os/Bundle;
    .end local v3           #cachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;
    .end local v6           #matchedservice:Z
    .end local v12           #uuids:[Landroid/os/Parcelable;
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$UuidChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v13}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;->onUuidChanged(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 683
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$UuidChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v13}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;->onUuidChanged(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 615
    :sswitch_data_0
    .sparse-switch
        0x1801 -> :sswitch_0
        0x1803 -> :sswitch_0
        0x1806 -> :sswitch_0
        0x1850 -> :sswitch_1
    .end sparse-switch
.end method
