.class Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$11;
.super Ljava/lang/Object;
.source "LGBluetoothSigSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->updateScreen()V
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
    .line 306
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$11;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    .line 308
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$11;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;

    const-string v1, "[BTUI] [HID] Send Set_Report"

    #calls: Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->BtUiLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->access$000(Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$11;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->mConnectedDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->access$300(Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$11;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->mInputDevice:Landroid/bluetooth/BluetoothInputDevice;
    invoke-static {v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->access$400(Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;)Landroid/bluetooth/BluetoothInputDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$11;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->mConnectedDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->access$300(Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const-string v2, "setReport"

    invoke-virtual {v0, v1, v3, v2}, Landroid/bluetooth/BluetoothInputDevice;->setReport(Landroid/bluetooth/BluetoothDevice;BLjava/lang/String;)Z

    .line 312
    :cond_0
    return v3
.end method
