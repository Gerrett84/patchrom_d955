.class Lcom/android/lgesettings/bluetooth/LGBluetoothSapDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "LGBluetoothSapDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/bluetooth/LGBluetoothSapDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothSapDialog;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/bluetooth/LGBluetoothSapDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothSapDialog$1;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothSapDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, action:Ljava/lang/String;
    const-string v3, "LGBluetoothSapDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BTUI] onReceive : action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const-string v3, "com.lge.bluetooth.sap.CONNECTION_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    const-string v3, "android.bluetooth.profile.extra.STATE"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 49
    .local v2, nState:I
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 50
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    if-nez v2, :cond_0

    .line 51
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothSapDialog$1;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothSapDialog;

    invoke-virtual {v3}, Lcom/android/lgesettings/bluetooth/LGBluetoothSapDialog;->dismiss()V

    .line 54
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #nState:I
    :cond_0
    return-void
.end method
