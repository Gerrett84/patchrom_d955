.class Lcom/android/lgesettings/bluetooth/BluetoothEventManager$DockEventHandler;
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
    name = "DockEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)V
    .locals 0
    .parameter

    .prologue
    .line 711
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$DockEventHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;Lcom/android/lgesettings/bluetooth/BluetoothEventManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 711
    invoke-direct {p0, p1}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$DockEventHandler;-><init>(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .parameter "context"
    .parameter "intent"
    .parameter "device"

    .prologue
    .line 714
    const/4 v0, 0x1

    .line 715
    .local v0, anythingButUnDocked:I
    const-string v3, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 716
    .local v2, state:I
    if-nez v2, :cond_0

    .line 717
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    .line 718
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$DockEventHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v3}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 719
    .local v1, cachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;
    if-eqz v1, :cond_0

    .line 720
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->setVisible(Z)V

    .line 724
    .end local v1           #cachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;
    :cond_0
    return-void
.end method
