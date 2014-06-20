.class Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager$AdapterStateChangedCallback$1;
.super Landroid/os/Handler;
.source "LocalBluetoothProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager$AdapterStateChangedCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager$AdapterStateChangedCallback;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager$AdapterStateChangedCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager$AdapterStateChangedCallback$1;->this$1:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager$AdapterStateChangedCallback;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 235
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 243
    :goto_0
    return-void

    .line 237
    :pswitch_0
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "MESSAGE_REGISTER_PROFILE register"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 235
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
