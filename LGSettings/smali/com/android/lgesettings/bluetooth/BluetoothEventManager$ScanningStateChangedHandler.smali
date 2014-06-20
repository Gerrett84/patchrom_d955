.class Lcom/android/lgesettings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;
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
    name = "ScanningStateChangedHandler"
.end annotation


# instance fields
.field private final mStarted:Z

.field final synthetic this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;Z)V
    .locals 0
    .parameter
    .parameter "started"

    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput-boolean p2, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->mStarted:Z

    .line 271
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .parameter "context"
    .parameter "intent"
    .parameter "device"

    .prologue
    .line 273
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BTUI] onReceive()... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->BtUiLog(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1600(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;Ljava/lang/String;)V

    .line 274
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;
    invoke-static {v2}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1500(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v3

    monitor-enter v3

    .line 275
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;
    invoke-static {v2}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1500(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/bluetooth/BluetoothCallback;

    .line 276
    .local v0, callback:Lcom/android/lgesettings/bluetooth/BluetoothCallback;
    iget-boolean v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->mStarted:Z

    invoke-interface {v0, v2}, Lcom/android/lgesettings/bluetooth/BluetoothCallback;->onScanningStateChanged(Z)V

    goto :goto_0

    .line 278
    .end local v0           #callback:Lcom/android/lgesettings/bluetooth/BluetoothCallback;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v2}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/lgesettings/bluetooth/BluetoothEventManager;)Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->mStarted:Z

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;->onScanningStateChanged(Z)V

    .line 280
    invoke-static {p1}, Lcom/android/lgesettings/bluetooth/LocalBluetoothPreferences;->persistDiscoveringTimestamp(Landroid/content/Context;)V

    .line 281
    return-void
.end method
