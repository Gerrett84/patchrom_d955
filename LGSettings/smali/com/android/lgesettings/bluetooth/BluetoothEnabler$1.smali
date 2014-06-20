.class Lcom/android/lgesettings/bluetooth/BluetoothEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/bluetooth/BluetoothEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/bluetooth/BluetoothEnabler;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/bluetooth/BluetoothEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler$1;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.lge.bluetooth.action.UPDATE_CONNECT_DEV_NAME"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler$1;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEnabler;

    const/16 v3, 0xc

    #calls: Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->setSummary(I)V
    invoke-static {v2, v3}, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->access$000(Lcom/android/lgesettings/bluetooth/BluetoothEnabler;I)V

    .line 80
    :goto_0
    return-void

    .line 72
    :cond_0
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x8000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 73
    .local v1, state:I
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothEnabler$1;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothEnabler;

    invoke-virtual {v2, v1}, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->handleStateChanged(I)V

    goto :goto_0
.end method
