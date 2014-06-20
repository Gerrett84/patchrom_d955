.class Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$2;
.super Landroid/os/Handler;
.source "LGBluetoothDutSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$2;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 135
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$2;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;

    monitor-enter v1

    .line 136
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 154
    :goto_0
    monitor-exit v1

    .line 155
    return-void

    .line 138
    :pswitch_0
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$2;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->access$200(Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 139
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$2;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;

    #calls: Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->onEnterDUTMode()V
    invoke-static {v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->access$300(Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;)V

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 143
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$2;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->access$200(Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 144
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$2;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->le_rx_auto_test()V

    goto :goto_0

    .line 147
    :pswitch_2
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$2;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->access$200(Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 148
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$2;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->le_rx_auto_test()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
