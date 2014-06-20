.class Lcom/android/lgesettings/TetherSettings$TetherChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TetherChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/TetherSettings;


# direct methods
.method private constructor <init>(Lcom/android/lgesettings/TetherSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 838
    iput-object p1, p0, Lcom/android/lgesettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/lgesettings/TetherSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/lgesettings/TetherSettings;Lcom/android/lgesettings/TetherSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 838
    invoke-direct {p0, p1}, Lcom/android/lgesettings/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/lgesettings/TetherSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "content"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 841
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 842
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 844
    const-string v5, "availableArray"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 846
    .local v2, available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "activeArray"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 848
    .local v1, active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "erroredArray"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 853
    .local v4, errored:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/lgesettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/lgesettings/TetherSettings;

    #getter for: Lcom/android/lgesettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v5}, Lcom/android/lgesettings/TetherSettings;->access$500(Lcom/android/lgesettings/TetherSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 854
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/lgesettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/lgesettings/TetherSettings;

    #getter for: Lcom/android/lgesettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v6}, Lcom/android/lgesettings/TetherSettings;->access$500(Lcom/android/lgesettings/TetherSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 856
    iget-object v5, p0, Lcom/android/lgesettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/lgesettings/TetherSettings;

    #getter for: Lcom/android/lgesettings/TetherSettings;->mDialog:Lcom/android/lgesettings/wifi/WifiApDialog;
    invoke-static {v5}, Lcom/android/lgesettings/TetherSettings;->access$600(Lcom/android/lgesettings/TetherSettings;)Lcom/android/lgesettings/wifi/WifiApDialog;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/lgesettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/lgesettings/TetherSettings;

    #getter for: Lcom/android/lgesettings/TetherSettings;->mDialog:Lcom/android/lgesettings/wifi/WifiApDialog;
    invoke-static {v5}, Lcom/android/lgesettings/TetherSettings;->access$600(Lcom/android/lgesettings/TetherSettings;)Lcom/android/lgesettings/wifi/WifiApDialog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/lgesettings/wifi/WifiApDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 857
    iget-object v5, p0, Lcom/android/lgesettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/lgesettings/TetherSettings;

    #getter for: Lcom/android/lgesettings/TetherSettings;->mDialog:Lcom/android/lgesettings/wifi/WifiApDialog;
    invoke-static {v5}, Lcom/android/lgesettings/TetherSettings;->access$600(Lcom/android/lgesettings/TetherSettings;)Lcom/android/lgesettings/wifi/WifiApDialog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/lgesettings/wifi/WifiApDialog;->dismiss()V

    .line 861
    :cond_0
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    if-eqz v4, :cond_1

    .line 862
    iget-object v8, p0, Lcom/android/lgesettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/lgesettings/TetherSettings;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    #calls: Lcom/android/lgesettings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    invoke-static {v8, v5, v6, v7}, Lcom/android/lgesettings/TetherSettings;->access$700(Lcom/android/lgesettings/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 907
    .end local v1           #active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #errored:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    return-void

    .line 867
    :cond_2
    const-string v5, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 868
    iget-object v5, p0, Lcom/android/lgesettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/lgesettings/TetherSettings;

    #setter for: Lcom/android/lgesettings/TetherSettings;->mMassStorageActive:Z
    invoke-static {v5, v8}, Lcom/android/lgesettings/TetherSettings;->access$802(Lcom/android/lgesettings/TetherSettings;Z)Z

    .line 869
    iget-object v5, p0, Lcom/android/lgesettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/lgesettings/TetherSettings;

    #calls: Lcom/android/lgesettings/TetherSettings;->updateState()V
    invoke-static {v5}, Lcom/android/lgesettings/TetherSettings;->access$300(Lcom/android/lgesettings/TetherSettings;)V

    goto :goto_0

    .line 870
    :cond_3
    const-string v5, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 871
    iget-object v5, p0, Lcom/android/lgesettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/lgesettings/TetherSettings;

    #setter for: Lcom/android/lgesettings/TetherSettings;->mMassStorageActive:Z
    invoke-static {v5, v7}, Lcom/android/lgesettings/TetherSettings;->access$802(Lcom/android/lgesettings/TetherSettings;Z)Z

    .line 872
    iget-object v5, p0, Lcom/android/lgesettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/lgesettings/TetherSettings;

    #calls: Lcom/android/lgesettings/TetherSettings;->updateState()V
    invoke-static {v5}, Lcom/android/lgesettings/TetherSettings;->access$300(Lcom/android/lgesettings/TetherSettings;)V

    goto :goto_0

    .line 873
    :cond_4
    const-string v5, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 874
    iget-object v5, p0, Lcom/android/lgesettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/lgesettings/TetherSettings;

    const-string v6, "connected"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    #setter for: Lcom/android/lgesettings/TetherSettings;->mUsbConnected:Z
    invoke-static {v5, v6}, Lcom/android/lgesettings/TetherSettings;->access$902(Lcom/android/lgesettings/TetherSettings;Z)Z

    .line 875
    iget-object v5, p0, Lcom/android/lgesettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/lgesettings/TetherSettings;

    #calls: Lcom/android/lgesettings/TetherSettings;->updateState()V
    invoke-static {v5}, Lcom/android/lgesettings/TetherSettings;->access$300(Lcom/android/lgesettings/TetherSettings;)V

    goto :goto_0

    .line 876
    :cond_5
    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 877
    iget-object v5, p0, Lcom/android/lgesettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/lgesettings/TetherSettings;

    #getter for: Lcom/android/lgesettings/TetherSettings;->mBluetoothEnableForTether:Z
    invoke-static {v5}, Lcom/android/lgesettings/TetherSettings;->access$1000(Lcom/android/lgesettings/TetherSettings;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 878
    const-string v5, "android.bluetooth.adapter.extra.STATE"

    const/high16 v6, -0x8000

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 897
    :cond_6
    :goto_1
    iget-object v5, p0, Lcom/android/lgesettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/lgesettings/TetherSettings;

    #calls: Lcom/android/lgesettings/TetherSettings;->updateState()V
    invoke-static {v5}, Lcom/android/lgesettings/TetherSettings;->access$300(Lcom/android/lgesettings/TetherSettings;)V

    goto :goto_0

    .line 881
    :sswitch_0
    iget-object v5, p0, Lcom/android/lgesettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/lgesettings/TetherSettings;

    #getter for: Lcom/android/lgesettings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v5}, Lcom/android/lgesettings/TetherSettings;->access$000(Lcom/android/lgesettings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothPan;

    .line 882
    .local v3, bluetoothPan:Landroid/bluetooth/BluetoothPan;
    if-eqz v3, :cond_6

    .line 883
    invoke-virtual {v3, v8}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 884
    iget-object v5, p0, Lcom/android/lgesettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/lgesettings/TetherSettings;

    #setter for: Lcom/android/lgesettings/TetherSettings;->mBluetoothEnableForTether:Z
    invoke-static {v5, v7}, Lcom/android/lgesettings/TetherSettings;->access$1002(Lcom/android/lgesettings/TetherSettings;Z)Z

    goto :goto_1

    .line 890
    .end local v3           #bluetoothPan:Landroid/bluetooth/BluetoothPan;
    :sswitch_1
    iget-object v5, p0, Lcom/android/lgesettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/lgesettings/TetherSettings;

    #setter for: Lcom/android/lgesettings/TetherSettings;->mBluetoothEnableForTether:Z
    invoke-static {v5, v7}, Lcom/android/lgesettings/TetherSettings;->access$1002(Lcom/android/lgesettings/TetherSettings;Z)Z

    goto :goto_1

    .line 900
    :cond_7
    invoke-static {}, Lcom/lge/wifi/WifiLgeConfig;->doesSupportHotspotList()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 902
    const-string v5, "com.lge.wifi.sap.WIFI_SAP_STATION_ASSOC"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "com.lge.wifi.sap.WIFI_SAP_STATION_DISASSOC"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "com.lge.wifi.sap.WIFI_SAP_DHCP_INFO_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 903
    :cond_8
    iget-object v5, p0, Lcom/android/lgesettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/lgesettings/TetherSettings;

    #calls: Lcom/android/lgesettings/TetherSettings;->updateClientList()V
    invoke-static {v5}, Lcom/android/lgesettings/TetherSettings;->access$1100(Lcom/android/lgesettings/TetherSettings;)V

    goto/16 :goto_0

    .line 878
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method
