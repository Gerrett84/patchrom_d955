.class Lcom/android/lgesettings/bluetooth/BluetoothEventManager$NameChangedHandler;
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
    name = "NameChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)V
    .locals 0
    .parameter

    .prologue
    .line 398
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$NameChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;Lcom/android/lgesettings/bluetooth/BluetoothEventManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 398
    invoke-direct {p0, p1}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$NameChangedHandler;-><init>(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .parameter "context"
    .parameter "intent"
    .parameter "device"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$NameChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BTUI] onReceive()... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->BtUiLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1600(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$NameChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v0}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;->onDeviceNameUpdated(Landroid/bluetooth/BluetoothDevice;)V

    .line 403
    return-void
.end method
