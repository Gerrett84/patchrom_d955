.class Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$8;
.super Ljava/lang/Object;
.source "LGBluetoothDutSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->closeDUTModeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 581
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$8;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$8;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mDutDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->access$800(Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$8;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mDutDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->access$800(Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 585
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$8;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mDutDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->access$802(Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 587
    :cond_0
    return-void
.end method
