.class Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager$AdapterStateChangedCallback;
.super Ljava/lang/Object;
.source "LocalBluetoothProfileManager.java"

# interfaces
.implements Lcom/android/lgesettings/bluetooth/BluetoothCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterStateChangedCallback"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field final mManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

.field final mProfile:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

.field final synthetic this$0:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;)V
    .locals 1
    .parameter
    .parameter "profile"
    .parameter "manager"

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager$AdapterStateChangedCallback;->this$0:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 232
    new-instance v0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager$AdapterStateChangedCallback$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager$AdapterStateChangedCallback$1;-><init>(Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager$AdapterStateChangedCallback;)V

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager$AdapterStateChangedCallback;->mHandler:Landroid/os/Handler;

    .line 228
    iput-object p2, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager$AdapterStateChangedCallback;->mProfile:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    .line 229
    iput-object p3, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager$AdapterStateChangedCallback;->mManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    .line 230
    return-void
.end method


# virtual methods
.method public onBluetoothStateChanged(I)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    .line 246
    const/16 v1, 0xd

    if-ne p1, v1, :cond_1

    .line 247
    const-string v1, "LocalBluetoothProfileManager"

    const-string v2, "AdapterStateChangedHandler onReceive()... ==> STATE_TURNING_OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager$AdapterStateChangedCallback;->mProfile:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    invoke-virtual {v1}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->unregisterApp()V

    .line 249
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager$AdapterStateChangedCallback;->this$0:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    #getter for: Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mLGSmartOneKeyProfile:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v1}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->access$000(Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 250
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager$AdapterStateChangedCallback;->this$0:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    #getter for: Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mLGSmartOneKeyProfile:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v1}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->access$000(Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->allOnekeyAddressChangeToDisconnectedStatus()V

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    const/16 v1, 0xc

    if-ne p1, v1, :cond_0

    .line 254
    const-string v1, "LocalBluetoothProfileManager"

    const-string v2, "AdapterStateChangedHandler onReceive()... ==> STATE_ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager$AdapterStateChangedCallback;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2, v3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 256
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager$AdapterStateChangedCallback;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 257
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager$AdapterStateChangedCallback;->this$0:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    #getter for: Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mLGSmartOneKeyProfile:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v1}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->access$000(Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager$AdapterStateChangedCallback;->this$0:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    #getter for: Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->mLGSmartOneKeyProfile:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v1}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->access$000(Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->allOnekeyAddressChangeToDisconnectedStatus()V

    goto :goto_0
.end method

.method public onDeviceAdded(Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;)V
    .locals 0
    .parameter "cachedDevice"

    .prologue
    .line 263
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;I)V
    .locals 0
    .parameter "cachedDevice"
    .parameter "bondState"

    .prologue
    .line 265
    return-void
.end method

.method public onDeviceDeleted(Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;)V
    .locals 0
    .parameter "cachedDevice"

    .prologue
    .line 264
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 0
    .parameter "started"

    .prologue
    .line 262
    return-void
.end method
