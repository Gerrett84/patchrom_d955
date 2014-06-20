.class Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "LGBluetoothHiddenSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment$1;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    const/high16 v3, -0x8000

    .line 148
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment$1;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;

    const-string v2, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mPrevState:I
    invoke-static {v1, v2}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->access$002(Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;I)I

    .line 151
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment$1;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;

    const-string v2, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mNewState:I
    invoke-static {v1, v2}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->access$102(Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;I)I

    .line 153
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment$1;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mOnOffTest:Z
    invoke-static {v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->access$200(Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment$1;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;

    invoke-virtual {v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->handleBTOnOffTest()V

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment$1;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mDoTurnOn:Z
    invoke-static {v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->access$300(Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment$1;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mNewState:I
    invoke-static {v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->access$100(Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;)I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 158
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment$1;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;

    #setter for: Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mDoTurnOn:Z
    invoke-static {v1, v4}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->access$302(Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;Z)Z

    .line 159
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment$1;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->access$400(Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 162
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment$1;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;

    #setter for: Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mIsSspDebug:Z
    invoke-static {v1, v4}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->access$502(Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;Z)Z

    .line 164
    :cond_2
    return-void
.end method
