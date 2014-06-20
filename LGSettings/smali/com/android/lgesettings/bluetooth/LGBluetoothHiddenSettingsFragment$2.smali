.class Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment$2;
.super Ljava/lang/Object;
.source "LGBluetoothHiddenSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->onCheckboxResult(Ljava/lang/String;)V
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
    .line 571
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment$2;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 573
    if-nez p2, :cond_2

    .line 574
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment$2;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden9:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;
    invoke-static {v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->access$600(Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;)Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    move-result-object v0

    const-string v1, "Internal memory"

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 575
    const-string v0, "persist.service.btui.opp_save"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 581
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment$2;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->access$400(Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 582
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment$2;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->access$400(Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 584
    :cond_1
    return-void

    .line 576
    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment$2;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden9:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;
    invoke-static {v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->access$600(Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;)Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    move-result-object v0

    const-string v1, "External SDcard"

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 578
    const-string v0, "persist.service.btui.opp_save"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
