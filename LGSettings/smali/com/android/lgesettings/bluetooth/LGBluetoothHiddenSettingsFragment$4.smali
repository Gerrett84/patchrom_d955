.class Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment$4;
.super Ljava/lang/Object;
.source "LGBluetoothHiddenSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->onOnOffTestDialog()V
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
    .line 663
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment$4;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment$4;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;

    const-string v1, "[BTUI] ### OnOff Test : onCancel()... STOP test"

    #calls: Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->BtUiLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->access$700(Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;Ljava/lang/String;)V

    .line 666
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment$4;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;

    const/4 v1, 0x0

    #setter for: Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mOnOffTest:Z
    invoke-static {v0, v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->access$202(Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;Z)Z

    .line 667
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment$4;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;

    #calls: Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->closeOnOffTestDialog()V
    invoke-static {v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->access$800(Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;)V

    .line 668
    return-void
.end method
