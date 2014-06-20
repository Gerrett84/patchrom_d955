.class Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "LGBluetoothHandsfreePickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment$1;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 67
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 69
    .local v1, newState:I
    const-string v4, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 70
    .local v2, oldState:I
    const-string v4, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 71
    if-eqz v2, :cond_0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    :cond_0
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 74
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment$1;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;

    invoke-virtual {v4}, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->finish()V

    .line 94
    :cond_1
    :goto_0
    return-void

    .line 77
    :cond_2
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 78
    const-string v4, "android.bluetooth.adapter.extra.STATE"

    const/high16 v5, -0x8000

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 79
    .local v3, state:I
    const/16 v4, 0xc

    if-ne v3, v4, :cond_1

    .line 80
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment$1;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->USE_AUTOSCAN:Z
    invoke-static {v4}, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->access$000(Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 81
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment$1;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;

    const-string v5, "[BTUI] STATE_ON => startScanning"

    #calls: Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->BtUiLog(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->access$100(Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;Ljava/lang/String;)V

    .line 82
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment$1;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;

    #calls: Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->startScanning()V
    invoke-static {v4}, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->access$200(Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;)V

    .line 83
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment$1;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;

    #setter for: Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->mStartScanOnResume:Z
    invoke-static {v4, v6}, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->access$302(Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;Z)Z

    goto :goto_0

    .line 87
    .end local v3           #state:I
    :cond_3
    const-string v4, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 88
    const-string v4, "state"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, state:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment$1;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[BTUI] ACTION_PHONE_STATE_CHANGED : state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->BtUiLog(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->access$100(Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;Ljava/lang/String;)V

    .line 90
    sget-object v4, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 91
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment$1;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;

    invoke-virtual {v4}, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->finish()V

    goto :goto_0
.end method
