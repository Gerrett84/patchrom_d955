.class final Lcom/android/lgesettings/bluetooth/PanProfile$PanServiceListener;
.super Ljava/lang/Object;
.source "PanProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/bluetooth/PanProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PanServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/bluetooth/PanProfile;


# direct methods
.method private constructor <init>(Lcom/android/lgesettings/bluetooth/PanProfile;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/PanProfile$PanServiceListener;->this$0:Lcom/android/lgesettings/bluetooth/PanProfile;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/lgesettings/bluetooth/PanProfile;Lcom/android/lgesettings/bluetooth/PanProfile$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/lgesettings/bluetooth/PanProfile$PanServiceListener;-><init>(Lcom/android/lgesettings/bluetooth/PanProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 7
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 79
    invoke-static {}, Lcom/android/lgesettings/bluetooth/PanProfile;->access$000()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 80
    const-string v4, "PanProfile"

    const-string v5, "Bluetooth service connected"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/PanProfile$PanServiceListener;->this$0:Lcom/android/lgesettings/bluetooth/PanProfile;

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    .end local p2
    #setter for: Lcom/android/lgesettings/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;
    invoke-static {v4, p2}, Lcom/android/lgesettings/bluetooth/PanProfile;->access$102(Lcom/android/lgesettings/bluetooth/PanProfile;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    .line 85
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/PanProfile$PanServiceListener;->this$0:Lcom/android/lgesettings/bluetooth/PanProfile;

    #getter for: Lcom/android/lgesettings/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;
    invoke-static {v4}, Lcom/android/lgesettings/bluetooth/PanProfile;->access$100(Lcom/android/lgesettings/bluetooth/PanProfile;)Landroid/bluetooth/BluetoothPan;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    .line 86
    .local v2, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 87
    const-string v4, "PanProfile"

    const-string v5, "Update Connection Status"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 91
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 92
    .local v0, connectedDevice:Landroid/bluetooth/BluetoothDevice;
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/PanProfile$PanServiceListener;->this$0:Lcom/android/lgesettings/bluetooth/PanProfile;

    #getter for: Lcom/android/lgesettings/bluetooth/PanProfile;->mDeviceManager:Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v4}, Lcom/android/lgesettings/bluetooth/PanProfile;->access$200(Lcom/android/lgesettings/bluetooth/PanProfile;)Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 94
    .local v1, device:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;
    if-nez v1, :cond_1

    .line 95
    const-string v4, "PanProfile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PanProfile found new device: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/PanProfile$PanServiceListener;->this$0:Lcom/android/lgesettings/bluetooth/PanProfile;

    #getter for: Lcom/android/lgesettings/bluetooth/PanProfile;->mDeviceManager:Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v4}, Lcom/android/lgesettings/bluetooth/PanProfile;->access$200(Lcom/android/lgesettings/bluetooth/PanProfile;)Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/PanProfile$PanServiceListener;->this$0:Lcom/android/lgesettings/bluetooth/PanProfile;

    #getter for: Lcom/android/lgesettings/bluetooth/PanProfile;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;
    invoke-static {v5}, Lcom/android/lgesettings/bluetooth/PanProfile;->access$300(Lcom/android/lgesettings/bluetooth/PanProfile;)Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/PanProfile$PanServiceListener;->this$0:Lcom/android/lgesettings/bluetooth/PanProfile;

    #getter for: Lcom/android/lgesettings/bluetooth/PanProfile;->mProfileManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;
    invoke-static {v6}, Lcom/android/lgesettings/bluetooth/PanProfile;->access$400(Lcom/android/lgesettings/bluetooth/PanProfile;)Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v0}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 99
    :cond_1
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/PanProfile$PanServiceListener;->this$0:Lcom/android/lgesettings/bluetooth/PanProfile;

    const/4 v5, 0x2

    invoke-virtual {v1, v4, v5}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;I)V

    .line 89
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 105
    .end local v0           #connectedDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #device:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;
    .end local v3           #i:I
    :cond_2
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/PanProfile$PanServiceListener;->this$0:Lcom/android/lgesettings/bluetooth/PanProfile;

    const/4 v5, 0x1

    #setter for: Lcom/android/lgesettings/bluetooth/PanProfile;->mIsProfileReady:Z
    invoke-static {v4, v5}, Lcom/android/lgesettings/bluetooth/PanProfile;->access$502(Lcom/android/lgesettings/bluetooth/PanProfile;Z)Z

    .line 106
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 109
    invoke-static {}, Lcom/android/lgesettings/bluetooth/PanProfile;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const-string v0, "PanProfile"

    const-string v1, "Bluetooth service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/PanProfile$PanServiceListener;->this$0:Lcom/android/lgesettings/bluetooth/PanProfile;

    const/4 v1, 0x0

    #setter for: Lcom/android/lgesettings/bluetooth/PanProfile;->mIsProfileReady:Z
    invoke-static {v0, v1}, Lcom/android/lgesettings/bluetooth/PanProfile;->access$502(Lcom/android/lgesettings/bluetooth/PanProfile;Z)Z

    .line 114
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/PanProfile$PanServiceListener;->this$0:Lcom/android/lgesettings/bluetooth/PanProfile;

    const/4 v1, 0x0

    #setter for: Lcom/android/lgesettings/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;
    invoke-static {v0, v1}, Lcom/android/lgesettings/bluetooth/PanProfile;->access$102(Lcom/android/lgesettings/bluetooth/PanProfile;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    .line 116
    return-void
.end method
