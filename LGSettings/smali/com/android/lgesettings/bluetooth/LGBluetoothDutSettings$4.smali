.class Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$4;
.super Ljava/lang/Object;
.source "LGBluetoothDutSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->onPleaseWaitDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;

.field final synthetic val$progressMsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 516
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$4;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;

    iput-object p2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$4;->val$progressMsg:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$4;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mWaitDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->access$700(Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$4;->val$progressMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$4;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mWaitDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->access$700(Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 520
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$4;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mWaitDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->access$700(Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 521
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$4;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mWaitDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->access$700(Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 522
    return-void
.end method
