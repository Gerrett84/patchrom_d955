.class Lcom/android/lgesettings/TetherNetworkSettings$21;
.super Landroid/content/BroadcastReceiver;
.source "TetherNetworkSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/TetherNetworkSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/TetherNetworkSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/TetherNetworkSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1464
    iput-object p1, p0, Lcom/android/lgesettings/TetherNetworkSettings$21;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1467
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1468
    .local v0, action:Ljava/lang/String;
    const-string v9, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1470
    const-string v9, "availableArray"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1472
    .local v3, available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v9, "activeArray"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1474
    .local v1, active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v9, "erroredArray"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1477
    .local v5, errored:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    if-eqz v5, :cond_0

    .line 1478
    iget-object v12, p0, Lcom/android/lgesettings/TetherNetworkSettings$21;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    #calls: Lcom/android/lgesettings/TetherNetworkSettings;->updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    invoke-static {v12, v9, v10, v11}, Lcom/android/lgesettings/TetherNetworkSettings;->access$500(Lcom/android/lgesettings/TetherNetworkSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1481
    iget-object v9, p0, Lcom/android/lgesettings/TetherNetworkSettings$21;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    #getter for: Lcom/android/lgesettings/TetherNetworkSettings;->bluetoothAvailable:Z
    invoke-static {v9}, Lcom/android/lgesettings/TetherNetworkSettings;->access$600(Lcom/android/lgesettings/TetherNetworkSettings;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1482
    iget-object v12, p0, Lcom/android/lgesettings/TetherNetworkSettings$21;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    #calls: Lcom/android/lgesettings/TetherNetworkSettings;->updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    invoke-static {v12, v9, v10, v11}, Lcom/android/lgesettings/TetherNetworkSettings;->access$700(Lcom/android/lgesettings/TetherNetworkSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1609
    .end local v1           #active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #errored:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ATT"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v9

    const-string v10, "US"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1610
    const-string v9, "com.android.lgesettings.EntitlementCheckService.BT_ENTITLEMENT_CHECK_OK"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 1611
    const-string v9, "TetherNetworkSettings"

    const-string v10, "BT_ENTITLEMENT_CHECK_OK recieved"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    iget-object v9, p0, Lcom/android/lgesettings/TetherNetworkSettings$21;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    #calls: Lcom/android/lgesettings/TetherNetworkSettings;->onBluetoothTether()V
    invoke-static {v9}, Lcom/android/lgesettings/TetherNetworkSettings;->access$1900(Lcom/android/lgesettings/TetherNetworkSettings;)V

    .line 1619
    :cond_1
    :goto_1
    return-void

    .line 1488
    :cond_2
    const-string v9, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1489
    iget-object v9, p0, Lcom/android/lgesettings/TetherNetworkSettings$21;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    const/4 v10, 0x1

    #setter for: Lcom/android/lgesettings/TetherNetworkSettings;->mMassStorageActive:Z
    invoke-static {v9, v10}, Lcom/android/lgesettings/TetherNetworkSettings;->access$802(Lcom/android/lgesettings/TetherNetworkSettings;Z)Z

    .line 1490
    iget-object v9, p0, Lcom/android/lgesettings/TetherNetworkSettings$21;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    #calls: Lcom/android/lgesettings/TetherNetworkSettings;->updateState()V
    invoke-static {v9}, Lcom/android/lgesettings/TetherNetworkSettings;->access$200(Lcom/android/lgesettings/TetherNetworkSettings;)V

    goto :goto_0

    .line 1492
    :cond_3
    const-string v9, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1493
    iget-object v9, p0, Lcom/android/lgesettings/TetherNetworkSettings$21;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    const/4 v10, 0x0

    #setter for: Lcom/android/lgesettings/TetherNetworkSettings;->mMassStorageActive:Z
    invoke-static {v9, v10}, Lcom/android/lgesettings/TetherNetworkSettings;->access$802(Lcom/android/lgesettings/TetherNetworkSettings;Z)Z

    .line 1494
    iget-object v9, p0, Lcom/android/lgesettings/TetherNetworkSettings$21;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    #calls: Lcom/android/lgesettings/TetherNetworkSettings;->updateState()V
    invoke-static {v9}, Lcom/android/lgesettings/TetherNetworkSettings;->access$200(Lcom/android/lgesettings/TetherNetworkSettings;)V

    goto :goto_0

    .line 1496
    :cond_4
    const-string v9, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1497
    iget-object v9, p0, Lcom/android/lgesettings/TetherNetworkSettings$21;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    const-string v10, "connected"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    #setter for: Lcom/android/lgesettings/TetherNetworkSettings;->mUsbConnected:Z
    invoke-static {v9, v10}, Lcom/android/lgesettings/TetherNetworkSettings;->access$902(Lcom/android/lgesettings/TetherNetworkSettings;Z)Z

    .line 1498
    iget-object v9, p0, Lcom/android/lgesettings/TetherNetworkSettings$21;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    const-string v10, "cdrom_storage"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    #setter for: Lcom/android/lgesettings/TetherNetworkSettings;->mCdromStorage:Z
    invoke-static {v9, v10}, Lcom/android/lgesettings/TetherNetworkSettings;->access$1002(Lcom/android/lgesettings/TetherNetworkSettings;Z)Z

    .line 1499
    const-string v9, "connected"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 1501
    .local v7, usbConnected:Z
    if-eqz v7, :cond_6

    .line 1502
    iget-object v9, p0, Lcom/android/lgesettings/TetherNetworkSettings$21;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    const/4 v10, 0x0

    #setter for: Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTetherTurningOn:Z
    invoke-static {v9, v10}, Lcom/android/lgesettings/TetherNetworkSettings;->access$1102(Lcom/android/lgesettings/TetherNetworkSettings;Z)Z

    .line 1514
    :cond_5
    :goto_2
    iget-object v9, p0, Lcom/android/lgesettings/TetherNetworkSettings$21;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    #calls: Lcom/android/lgesettings/TetherNetworkSettings;->updateState()V
    invoke-static {v9}, Lcom/android/lgesettings/TetherNetworkSettings;->access$200(Lcom/android/lgesettings/TetherNetworkSettings;)V

    goto/16 :goto_0

    .line 1509
    :cond_6
    iget-object v9, p0, Lcom/android/lgesettings/TetherNetworkSettings$21;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    iget-object v9, v9, Lcom/android/lgesettings/TetherNetworkSettings;->mTetherAlertDialog:Landroid/app/AlertDialog;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/lgesettings/TetherNetworkSettings$21;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    iget-object v9, v9, Lcom/android/lgesettings/TetherNetworkSettings;->mTetherAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1510
    iget-object v9, p0, Lcom/android/lgesettings/TetherNetworkSettings$21;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    iget-object v9, v9, Lcom/android/lgesettings/TetherNetworkSettings;->mTetherAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->dismiss()V

    .line 1511
    iget-object v9, p0, Lcom/android/lgesettings/TetherNetworkSettings$21;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    const/4 v10, 0x0

    iput-object v10, v9, Lcom/android/lgesettings/TetherNetworkSettings;->mTetherAlertDialog:Landroid/app/AlertDialog;

    goto :goto_2

    .line 1518
    .end local v7           #usbConnected:Z
    :cond_7
    const-string v9, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1519
    iget-object v9, p0, Lcom/android/lgesettings/TetherNetworkSettings$21;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    #calls: Lcom/android/lgesettings/TetherNetworkSettings;->updateState()V
    invoke-static {v9}, Lcom/android/lgesettings/TetherNetworkSettings;->access$200(Lcom/android/lgesettings/TetherNetworkSettings;)V

    goto/16 :goto_0

    .line 1524
    :cond_8
    const-string v9, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1525
    iget-object v9, p0, Lcom/android/lgesettings/TetherNetworkSettings$21;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    #getter for: Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothEnableForTether:Z
    invoke-static {v9}, Lcom/android/lgesettings/TetherNetworkSettings;->access$1200(Lcom/android/lgesettings/TetherNetworkSettings;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1526
    const-string v9, "android.bluetooth.adapter.extra.STATE"

    const/high16 v10, -0x8000

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    .line 1545
    :cond_9
    :goto_3
    iget-object v9, p0, Lcom/android/lgesettings/TetherNetworkSettings$21;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    #getter for: Lcom/android/lgesettings/TetherNetworkSettings;->bluetoothAvailable:Z
    invoke-static {v9}, Lcom/android/lgesettings/TetherNetworkSettings;->access$600(Lcom/android/lgesettings/TetherNetworkSettings;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1546
    iget-object v9, p0, Lcom/android/lgesettings/TetherNetworkSettings$21;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    #calls: Lcom/android/lgesettings/TetherNetworkSettings;->updateState()V
    invoke-static {v9}, Lcom/android/lgesettings/TetherNetworkSettings;->access$200(Lcom/android/lgesettings/TetherNetworkSettings;)V

    goto/16 :goto_0

    .line 1530
    :sswitch_0
    iget-object v9, p0, Lcom/android/lgesettings/TetherNetworkSettings$21;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    #getter for: Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;
    invoke-static {v9}, Lcom/android/lgesettings/TetherNetworkSettings;->access$400(Lcom/android/lgesettings/TetherNetworkSettings;)Landroid/bluetooth/BluetoothPan;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 1531
    iget-object v9, p0, Lcom/android/lgesettings/TetherNetworkSettings$21;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    #getter for: Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;
    invoke-static {v9}, Lcom/android/lgesettings/TetherNetworkSettings;->access$400(Lcom/android/lgesettings/TetherNetworkSettings;)Landroid/bluetooth/BluetoothPan;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 1533
    :cond_a
    iget-object v9, p0, Lcom/android/lgesettings/TetherNetworkSettings$21;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    const/4 v10, 0x0

    #setter for: Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothEnableForTether:Z
    invoke-static {v9, v10}, Lcom/android/lgesettings/TetherNetworkSettings;->access$1202(Lcom/android/lgesettings/TetherNetworkSettings;Z)Z

    goto :goto_3

    .line 1538
    :sswitch_1
    iget-object v9, p0, Lcom/android/lgesettings/TetherNetworkSettings$21;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    const/4 v10, 0x0

    #setter for: Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothEnableForTether:Z
    invoke-static {v9, v10}, Lcom/android/lgesettings/TetherNetworkSettings;->access$1202(Lcom/android/lgesettings/TetherNetworkSettings;Z)Z

    goto :goto_3

    .line 1550
    :cond_b
    iget-object v9, p0, Lcom/android/lgesettings/TetherNetworkSettings$21;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    #getter for: Lcom/android/lgesettings/TetherNetworkSettings;->PROVISION:Z
    invoke-static {v9}, Lcom/android/lgesettings/TetherNetworkSettings;->access$1300(Lcom/android/lgesettings/TetherNetworkSettings;)Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.lge.hotspotprovision.STATE_CHANGED"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 1552
    invoke-virtual {p1, p2}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 1553
    const-string v9, "TetherNetworkSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[BTUI]hotspotprovision.STATE_CHANGED : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "result"

    const/4 v12, 0x0

    invoke-virtual {p2, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    const-string v9, "TetherNetworkSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "4G MOBILE HOTSPOT PROVISION - mTetherChoice : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/lgesettings/TetherNetworkSettings$21;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    #getter for: Lcom/android/lgesettings/TetherNetworkSettings;->mTetherChoice:I
    invoke-static {v11}, Lcom/android/lgesettings/TetherNetworkSettings;->access$1400(Lcom/android/lgesettings/TetherNetworkSettings;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    const-string v9, "result"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_e

    .line 1557
    const-string v9, "TetherNetworkSettings"

    const-string v10, "[BTUI] 4G MOBILE HOTSPOT PROVISION OK."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    iget-object v9, p0, Lcom/android/lgesettings/TetherNetworkSettings$21;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    #getter for: Lcom/android/lgesettings/TetherNetworkSettings;->mTetherChoice:I
    invoke-static {v9}, Lcom/android/lgesettings/TetherNetworkSettings;->access$1400(Lcom/android/lgesettings/TetherNetworkSettings;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_d

    .line 1560
    iget-object v9, p0, Lcom/android/lgesettings/TetherNetworkSettings$21;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    #getter for: Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;
    invoke-static {v9}, Lcom/android/lgesettings/TetherNetworkSettings;->access$100(Lcom/android/lgesettings/TetherNetworkSettings;)Lcom/android/lgesettings/SettingsSwitchPreference;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/lgesettings/SettingsSwitchPreference;->setChecked(Z)V

    .line 1562
    iget-object v9, p0, Lcom/android/lgesettings/TetherNetworkSettings$21;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    const/4 v10, 0x1

    #calls: Lcom/android/lgesettings/TetherNetworkSettings;->setUsbTethering(Z)V
    invoke-static {v9, v10}, Lcom/android/lgesettings/TetherNetworkSettings;->access$000(Lcom/android/lgesettings/TetherNetworkSettings;Z)V

    .line 1568
    :cond_c
    :goto_4
    iget-object v9, p0, Lcom/android/lgesettings/TetherNetworkSettings$21;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    const/4 v10, 0x1

    #setter for: Lcom/android/lgesettings/TetherNetworkSettings;->mIsProvisioned:Z
    invoke-static {v9, v10}, Lcom/android/lgesettings/TetherNetworkSettings;->access$1602(Lcom/android/lgesettings/TetherNetworkSettings;Z)Z

    goto/16 :goto_0

    .line 1564
    :cond_d
    iget-object v9, p0, Lcom/android/lgesettings/TetherNetworkSettings$21;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    #getter for: Lcom/android/lgesettings/TetherNetworkSettings;->mTetherChoice:I
    invoke-static {v9}, Lcom/android/lgesettings/TetherNetworkSettings;->access$1400(Lcom/android/lgesettings/TetherNetworkSettings;)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_c

    .line 1565
    iget-object v9, p0, Lcom/android/lgesettings/TetherNetworkSettings$21;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    #getter for: Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothTether:Lcom/android/lgesettings/SettingsSwitchPreference;
    invoke-static {v9}, Lcom/android/lgesettings/TetherNetworkSettings;->access$300(Lcom/android/lgesettings/TetherNetworkSettings;)Lcom/android/lgesettings/SettingsSwitchPreference;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/lgesettings/SettingsSwitchPreference;->setChecked(Z)V

    .line 1566
    iget-object v9, p0, Lcom/android/lgesettings/TetherNetworkSettings$21;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    const/4 v10, 0x1

    #calls: Lcom/android/lgesettings/TetherNetworkSettings;->gotoNextStep(Z)V
    invoke-static {v9, v10}, Lcom/android/lgesettings/TetherNetworkSettings;->access$1500(Lcom/android/lgesettings/TetherNetworkSettings;Z)V

    goto :goto_4

    .line 1571
    :cond_e
    const-string v9, "TetherNetworkSettings"

    const-string v10, "[BTUI] 4G MOBILE HOTSPOT PROVISION FAIL."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    iget-object v9, p0, Lcom/android/lgesettings/TetherNetworkSettings$21;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    #getter for: Lcom/android/lgesettings/TetherNetworkSettings;->mTetherChoice:I
    invoke-static {v9}, Lcom/android/lgesettings/TetherNetworkSettings;->access$1400(Lcom/android/lgesettings/TetherNetworkSettings;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_10

    .line 1574
    iget-object v9, p0, Lcom/android/lgesettings/TetherNetworkSettings$21;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    #getter for: Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;
    invoke-static {v9}, Lcom/android/lgesettings/TetherNetworkSettings;->access$100(Lcom/android/lgesettings/TetherNetworkSettings;)Lcom/android/lgesettings/SettingsSwitchPreference;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/lgesettings/SettingsSwitchPreference;->setChecked(Z)V

    .line 1579
    :cond_f
    :goto_5
    iget-object v9, p0, Lcom/android/lgesettings/TetherNetworkSettings$21;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    const/4 v10, 0x0

    #setter for: Lcom/android/lgesettings/TetherNetworkSettings;->mIsProvisioned:Z
    invoke-static {v9, v10}, Lcom/android/lgesettings/TetherNetworkSettings;->access$1602(Lcom/android/lgesettings/TetherNetworkSettings;Z)Z

    .line 1582
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 1583
    .local v6, failIntent:Landroid/content/Intent;
    const-string v9, "android.intent.action.MAIN"

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1584
    const-string v9, "com.lge.mobilehotspot.ui"

    const-string v10, "com.lge.mobilehotspot.ui.MHPProvisionFailActivity"

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1585
    iget-object v9, p0, Lcom/android/lgesettings/TetherNetworkSettings$21;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    invoke-virtual {v9, v6}, Lcom/android/lgesettings/TetherNetworkSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1576
    .end local v6           #failIntent:Landroid/content/Intent;
    :cond_10
    iget-object v9, p0, Lcom/android/lgesettings/TetherNetworkSettings$21;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    #getter for: Lcom/android/lgesettings/TetherNetworkSettings;->mTetherChoice:I
    invoke-static {v9}, Lcom/android/lgesettings/TetherNetworkSettings;->access$1400(Lcom/android/lgesettings/TetherNetworkSettings;)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_f

    .line 1577
    iget-object v9, p0, Lcom/android/lgesettings/TetherNetworkSettings$21;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    #getter for: Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothTether:Lcom/android/lgesettings/SettingsSwitchPreference;
    invoke-static {v9}, Lcom/android/lgesettings/TetherNetworkSettings;->access$300(Lcom/android/lgesettings/TetherNetworkSettings;)Lcom/android/lgesettings/SettingsSwitchPreference;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/lgesettings/SettingsSwitchPreference;->setChecked(Z)V

    goto :goto_5

    .line 1590
    :cond_11
    const-string v9, "com.lge.upsell.Upsell.UPSELL_CHECK_USB_SUCCESS"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 1591
    iget-object v9, p0, Lcom/android/lgesettings/TetherNetworkSettings$21;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    const-string v10, "connectivity"

    invoke-virtual {v9, v10}, Lcom/android/lgesettings/TetherNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 1592
    .local v4, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 1593
    .local v2, available:[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/lgesettings/TetherNetworkSettings$21;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    #getter for: Lcom/android/lgesettings/TetherNetworkSettings;->mUsbRegexs:[Ljava/lang/String;
    invoke-static {v9}, Lcom/android/lgesettings/TetherNetworkSettings;->access$1700(Lcom/android/lgesettings/TetherNetworkSettings;)[Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/lgesettings/TetherNetworkSettings;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v9}, Lcom/android/lgesettings/TetherNetworkSettings;->access$1800([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1595
    .local v8, usbIface:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/lgesettings/TetherNetworkSettings$21;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    const/4 v10, 0x1

    #calls: Lcom/android/lgesettings/TetherNetworkSettings;->setUsbTethering(Z)V
    invoke-static {v9, v10}, Lcom/android/lgesettings/TetherNetworkSettings;->access$000(Lcom/android/lgesettings/TetherNetworkSettings;Z)V

    goto/16 :goto_0

    .line 1599
    .end local v2           #available:[Ljava/lang/String;
    .end local v4           #cm:Landroid/net/ConnectivityManager;
    .end local v8           #usbIface:Ljava/lang/String;
    :cond_12
    const-string v9, "com.lge.upsell.Upsell.UPSELL_CHECK_USB_FAIL"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1600
    iget-object v9, p0, Lcom/android/lgesettings/TetherNetworkSettings$21;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    const-string v10, "connectivity"

    invoke-virtual {v9, v10}, Lcom/android/lgesettings/TetherNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 1601
    .restart local v4       #cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 1602
    .restart local v2       #available:[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/lgesettings/TetherNetworkSettings$21;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    #getter for: Lcom/android/lgesettings/TetherNetworkSettings;->mUsbRegexs:[Ljava/lang/String;
    invoke-static {v9}, Lcom/android/lgesettings/TetherNetworkSettings;->access$1700(Lcom/android/lgesettings/TetherNetworkSettings;)[Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/lgesettings/TetherNetworkSettings;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v9}, Lcom/android/lgesettings/TetherNetworkSettings;->access$1800([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1604
    .restart local v8       #usbIface:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/lgesettings/TetherNetworkSettings$21;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    const/4 v10, 0x0

    #calls: Lcom/android/lgesettings/TetherNetworkSettings;->setUsbTethering(Z)V
    invoke-static {v9, v10}, Lcom/android/lgesettings/TetherNetworkSettings;->access$000(Lcom/android/lgesettings/TetherNetworkSettings;Z)V

    .line 1606
    iget-object v9, p0, Lcom/android/lgesettings/TetherNetworkSettings$21;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    #calls: Lcom/android/lgesettings/TetherNetworkSettings;->updateState()V
    invoke-static {v9}, Lcom/android/lgesettings/TetherNetworkSettings;->access$200(Lcom/android/lgesettings/TetherNetworkSettings;)V

    goto/16 :goto_0

    .line 1613
    .end local v2           #available:[Ljava/lang/String;
    .end local v4           #cm:Landroid/net/ConnectivityManager;
    .end local v8           #usbIface:Ljava/lang/String;
    :cond_13
    const-string v9, "com.android.lgesettings.EntitlementCheckService.BT_ENTITLEMENT_CHECK_FAILURE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1614
    const-string v9, "TetherNetworkSettings"

    const-string v10, "BT_ENTITLEMENT_CHECK_FAILURE recieved"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    iget-object v9, p0, Lcom/android/lgesettings/TetherNetworkSettings$21;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    #getter for: Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothTether:Lcom/android/lgesettings/SettingsSwitchPreference;
    invoke-static {v9}, Lcom/android/lgesettings/TetherNetworkSettings;->access$300(Lcom/android/lgesettings/TetherNetworkSettings;)Lcom/android/lgesettings/SettingsSwitchPreference;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/lgesettings/SettingsSwitchPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 1526
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method
