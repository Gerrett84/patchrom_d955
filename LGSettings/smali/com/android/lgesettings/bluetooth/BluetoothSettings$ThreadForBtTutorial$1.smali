.class Lcom/android/lgesettings/bluetooth/BluetoothSettings$ThreadForBtTutorial$1;
.super Landroid/os/Handler;
.source "BluetoothSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/bluetooth/BluetoothSettings$ThreadForBtTutorial;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/lgesettings/bluetooth/BluetoothSettings$ThreadForBtTutorial;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/bluetooth/BluetoothSettings$ThreadForBtTutorial;)V
    .locals 0
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings$ThreadForBtTutorial$1;->this$1:Lcom/android/lgesettings/bluetooth/BluetoothSettings$ThreadForBtTutorial;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 400
    iget v3, p1, Landroid/os/Message;->what:I

    if-nez v3, :cond_0

    .line 404
    :try_start_0
    const-string v3, "ThreadForBtTutorial"

    const-string v4, "Thread received a msg. try sleep 200ms"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const-wide/16 v3, 0xc8

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    :goto_0
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    const/4 v3, 0x6

    if-ge v1, v3, :cond_0

    .line 411
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings$ThreadForBtTutorial$1;->this$1:Lcom/android/lgesettings/bluetooth/BluetoothSettings$ThreadForBtTutorial;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothSettings$ThreadForBtTutorial;->mBluetoothSettings:Lcom/android/lgesettings/bluetooth/BluetoothSettings;
    invoke-static {v3}, Lcom/android/lgesettings/bluetooth/BluetoothSettings$ThreadForBtTutorial;->access$100(Lcom/android/lgesettings/bluetooth/BluetoothSettings$ThreadForBtTutorial;)Lcom/android/lgesettings/bluetooth/BluetoothSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 412
    const-string v3, "ThreadForBtTutorial"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isVisible() is true. send intent for the popup. tried : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.lge.bluetooth.action.SHOW_TUTORIAL_POPUP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 415
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "android.bluetooth.adapter.extra.STATE"

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings$ThreadForBtTutorial$1;->this$1:Lcom/android/lgesettings/bluetooth/BluetoothSettings$ThreadForBtTutorial;

    iget-object v4, v4, Lcom/android/lgesettings/bluetooth/BluetoothSettings$ThreadForBtTutorial;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothSettings;

    iget-object v4, v4, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v4}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 416
    const-string v3, "com.lge.bluetooth.extra.DISCOVERY_STATE"

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings$ThreadForBtTutorial$1;->this$1:Lcom/android/lgesettings/bluetooth/BluetoothSettings$ThreadForBtTutorial;

    iget-object v4, v4, Lcom/android/lgesettings/bluetooth/BluetoothSettings$ThreadForBtTutorial;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothSettings;

    iget-object v4, v4, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v4}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 418
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings$ThreadForBtTutorial$1;->this$1:Lcom/android/lgesettings/bluetooth/BluetoothSettings$ThreadForBtTutorial;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothSettings$ThreadForBtTutorial;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/lgesettings/bluetooth/BluetoothSettings$ThreadForBtTutorial;->access$200(Lcom/android/lgesettings/bluetooth/BluetoothSettings$ThreadForBtTutorial;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 437
    .end local v1           #i:I
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    return-void

    .line 406
    :catch_0
    move-exception v0

    .line 407
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 423
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #i:I
    :cond_1
    const-string v3, "ThreadForBtTutorial"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isVisible() is false : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const-wide/16 v3, 0x64

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 410
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 427
    :catch_1
    move-exception v0

    .line 428
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 429
    const-string v3, "ThreadForBtTutorial"

    const-string v4, "Exception happened."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
