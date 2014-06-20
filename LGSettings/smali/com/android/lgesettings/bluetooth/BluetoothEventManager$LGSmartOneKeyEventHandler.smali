.class Lcom/android/lgesettings/bluetooth/BluetoothEventManager$LGSmartOneKeyEventHandler;
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
    name = "LGSmartOneKeyEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)V
    .locals 0
    .parameter

    .prologue
    .line 822
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$LGSmartOneKeyEventHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;Lcom/android/lgesettings/bluetooth/BluetoothEventManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 822
    invoke-direct {p0, p1}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$LGSmartOneKeyEventHandler;-><init>(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 7
    .parameter "context"
    .parameter "intent"
    .parameter "device"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 824
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 825
    .local v0, action:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$LGSmartOneKeyEventHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$LGSmartOneKeyEventHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;
    invoke-static {v4}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->getLGSmartOneKeyProfile()Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v4

    #setter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v3, v4}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1302(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    .line 826
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$LGSmartOneKeyEventHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v3}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 828
    .local v1, cachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;
    const-string v3, "com.lge.bluetooth.device.action.LG_SMART_ONEKEY_DEVICECONNECTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 829
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$LGSmartOneKeyEventHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    const-string v4, "[BTUI] == action : LGBluetoothDevice.ACTION_LGSMARTONEKEY_DEVICECONNECTED"

    #calls: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->BtUiLog(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1600(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;Ljava/lang/String;)V

    .line 830
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$LGSmartOneKeyEventHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v3}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$LGSmartOneKeyEventHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v4}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    const/4 v4, 0x2

    invoke-virtual {v3, p3, v4}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->setLGSmartOneKeyconnstatus(Landroid/bluetooth/BluetoothDevice;I)V

    .line 831
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 832
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$LGSmartOneKeyEventHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v3}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getStatusOfOnekeyAddressFromList(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$LGSmartOneKeyEventHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v4}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    if-eq v3, v6, :cond_0

    .line 833
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$LGSmartOneKeyEventHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v3}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v3

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->setOnekeyDeviceAddressToList(Ljava/lang/String;Z)V

    .line 839
    :cond_0
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$LGSmartOneKeyEventHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #calls: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->getTopActivityName()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1900(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Ljava/lang/String;

    move-result-object v2

    .line 841
    .local v2, topActivityName:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LG RCB"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-ne v3, v6, :cond_2

    .line 842
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$LGSmartOneKeyEventHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v3}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->discoverServices(Landroid/bluetooth/BluetoothDevice;)V

    .line 875
    .end local v2           #topActivityName:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 844
    .restart local v2       #topActivityName:Ljava/lang/String;
    :cond_2
    const-string v3, "com.android.lgesettings.Settings$BluetoothSettingsActivity"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 845
    const-string v3, "BluetoothEventManager"

    const-string v4, "LGSmartOneKeyEventHandler() - BluetoothSettingsActivity is topClass"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    const v3, 0x7f0815b4

    invoke-static {p1, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 850
    .end local v2           #topActivityName:Ljava/lang/String;
    :cond_3
    const-string v3, "com.lge.bluetooth.device.action.LG_SMART_ONEKEY_DEVICEDISCONNECTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 851
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$LGSmartOneKeyEventHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    const-string v4, "[BTUI] == action : LGBluetoothDevice.ACTION_LGSMARTONEKEY_DEVICEDISCONNECTED"

    #calls: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->BtUiLog(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1600(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;Ljava/lang/String;)V

    .line 852
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$LGSmartOneKeyEventHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v3}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$LGSmartOneKeyEventHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v4}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    invoke-virtual {v3, p3, v5}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->setLGSmartOneKeyconnstatus(Landroid/bluetooth/BluetoothDevice;I)V

    .line 853
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$LGSmartOneKeyEventHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v3}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->allOnekeyAddressChangeToDisconnectedStatus()V

    .line 855
    if-eqz v1, :cond_1

    .line 856
    invoke-virtual {v1}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->refresh()V

    goto :goto_0

    .line 858
    :cond_4
    const-string v3, "com.lge.bluetooth.device.action.LG_SMART_ONEKEY_REFRESHED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 859
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$LGSmartOneKeyEventHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    const-string v4, "[BTUI] == action : LGBluetoothDevice.ACTION_LGSMARTONEKEY_REFRESHED"

    #calls: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->BtUiLog(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1600(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;Ljava/lang/String;)V

    .line 861
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$LGSmartOneKeyEventHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v3}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$LGSmartOneKeyEventHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v4}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    sget-object v4, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->ONEKEY_SERVICE_UUID:Ljava/util/UUID;

    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$LGSmartOneKeyEventHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v5}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    sget-object v5, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->ONEKEY_CHAR_UUID:Ljava/util/UUID;

    invoke-virtual {v3, p3, v4, v5, v6}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->setIndication(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;Ljava/util/UUID;Z)Z

    .line 863
    if-eqz v1, :cond_1

    .line 864
    invoke-virtual {v1}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->refresh()V

    goto :goto_0

    .line 866
    :cond_5
    const-string v3, "com.lge.bluetooth.device.action.LG_SMART_ONEKEY_CONNECTFAIL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 867
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$LGSmartOneKeyEventHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    const-string v4, "[BTUI] == action : BluetoothDevice.ACTION_LGSMARTONEKEY_CONNECTFAIL"

    #calls: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->BtUiLog(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1600(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;Ljava/lang/String;)V

    .line 868
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$LGSmartOneKeyEventHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v3}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$LGSmartOneKeyEventHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v4}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    invoke-virtual {v3, p3, v5}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->setLGSmartOneKeyconnstatus(Landroid/bluetooth/BluetoothDevice;I)V

    .line 869
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$LGSmartOneKeyEventHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v3}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v3

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->setOnekeyDeviceAddressToList(Ljava/lang/String;Z)V

    .line 871
    if-eqz v1, :cond_1

    .line 872
    invoke-virtual {v1}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->refresh()V

    goto/16 :goto_0
.end method
