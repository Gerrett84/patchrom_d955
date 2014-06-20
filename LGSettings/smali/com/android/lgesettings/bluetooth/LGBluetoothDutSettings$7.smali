.class Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$7;
.super Ljava/lang/Object;
.source "LGBluetoothDutSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$7;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;

    #calls: Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->onExitDUTMode()V
    invoke-static {v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->access$600(Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;)V

    .line 549
    return-void
.end method
