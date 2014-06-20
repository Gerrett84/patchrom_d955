.class Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$13;
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
    .line 342
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$13;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    .line 344
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$13;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;

    const-string v2, "[BTUI] [SAP] disconnect (Immediate)"

    #calls: Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->BtUiLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->access$000(Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;Ljava/lang/String;)V

    .line 345
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.bluetooth.sap.ACTION_SAP_DISCONNECT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 346
    .local v0, sapRespIntent:Landroid/content/Intent;
    const-string v1, "type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 347
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$13;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;

    invoke-virtual {v1, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 348
    return v3
.end method
