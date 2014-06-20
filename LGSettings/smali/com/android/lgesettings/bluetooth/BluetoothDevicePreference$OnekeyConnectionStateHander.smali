.class Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$OnekeyConnectionStateHander;
.super Landroid/os/Handler;
.source "BluetoothDevicePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnekeyConnectionStateHander"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$OnekeyConnectionStateHander;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    .line 125
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 127
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$OnekeyConnectionStateHander;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$OnekeyConnectionStateHander;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mProfileManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;
    invoke-static {v3}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->access$200(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->getLGSmartOneKeyProfile()Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v3

    #setter for: Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v2, v3}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->access$102(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    .line 128
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$OnekeyConnectionStateHander;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$OnekeyConnectionStateHander;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v3}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->access$400(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$OnekeyConnectionStateHander;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;
    invoke-static {v4}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->access$000(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    #setter for: Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2, v3}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->access$302(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 130
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$OnekeyConnectionStateHander;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v2}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->access$100(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$OnekeyConnectionStateHander;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->access$300(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-nez v2, :cond_2

    .line 131
    :cond_0
    const-string v2, "BluetoothDevicePreference"

    const-string v3, "mLGSmartOneKeyDevice or remotedevice : null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_1
    :goto_0
    return-void

    .line 133
    :cond_2
    const-string v2, "BluetoothDevicePreference"

    const-string v3, "mLGSmartOneKeyDevice or remotedevice : not null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$OnekeyConnectionStateHander;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v2}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->access$100(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$OnekeyConnectionStateHander;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->access$300(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getStatusOfOnekeyAddressFromList(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 136
    .local v1, curOnekeyStatus:I
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$OnekeyConnectionStateHander;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v2}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->access$100(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$OnekeyConnectionStateHander;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->access$300(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getLGSmartOneKeyconnstatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 138
    .local v0, curOnekeyConnStatus:I
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$OnekeyConnectionStateHander;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v2}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->access$100(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$OnekeyConnectionStateHander;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v2}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->access$100(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 141
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$OnekeyConnectionStateHander;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v2}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->access$100(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$OnekeyConnectionStateHander;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->access$300(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$OnekeyConnectionStateHander;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v4}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->access$100(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    invoke-virtual {v2, v3, v6}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->setLGSmartOneKeyconnstatus(Landroid/bluetooth/BluetoothDevice;I)V

    .line 142
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$OnekeyConnectionStateHander;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v2}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->access$100(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->allOnekeyAddressChangeToDisconnectedStatus()V

    .line 143
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$OnekeyConnectionStateHander;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v2}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->access$100(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$OnekeyConnectionStateHander;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->access$300(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$OnekeyConnectionStateHander;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v4}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->access$100(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    sget-object v4, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->ONEKEY_SERVICE_UUID:Ljava/util/UUID;

    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$OnekeyConnectionStateHander;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v5}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->access$100(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    sget-object v5, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->ONEKEY_CHAR_UUID:Ljava/util/UUID;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->setIndication(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;Ljava/util/UUID;Z)Z

    .line 144
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$OnekeyConnectionStateHander;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v2}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->access$100(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$OnekeyConnectionStateHander;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->access$300(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->disconnect(Ljava/lang/String;)V

    .line 147
    :cond_3
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$OnekeyConnectionStateHander;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;
    invoke-static {v2}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->access$000(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 148
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$OnekeyConnectionStateHander;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;
    invoke-static {v2}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->access$000(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->refresh()V

    goto/16 :goto_0
.end method
