.class Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "LGBluetoothSigSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$1;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 75
    :cond_0
    const-string v2, "android.bluetooth.profile.extra.STATE"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 76
    .local v1, newState:I
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$1;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BTUI] onReceive() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->BtUiLog(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->access$000(Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;Ljava/lang/String;)V

    .line 77
    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    if-nez v1, :cond_2

    .line 79
    :cond_1
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$1;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;

    #calls: Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->updateScreen()V
    invoke-static {v2}, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->access$100(Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;)V

    .line 82
    .end local v1           #newState:I
    :cond_2
    return-void
.end method
