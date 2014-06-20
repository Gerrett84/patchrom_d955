.class final Lcom/android/lgesettings/bluetooth/LGBluetoothUtils$1;
.super Landroid/os/Handler;
.source "LGBluetoothUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 80
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 89
    :goto_0
    return-void

    .line 82
    :pswitch_0
    invoke-static {v4}, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->access$002(Z)Z

    .line 83
    invoke-static {}, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->access$100()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->access$300()I

    move-result v2

    invoke-static {}, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->access$400()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->showError(Landroid/content/Context;Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    .line 84
    invoke-static {}, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->access$500()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
