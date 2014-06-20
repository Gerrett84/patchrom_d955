.class Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$3;
.super Ljava/lang/Object;
.source "LGBluetoothDutSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->createDutDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 485
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$3;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;

    iput p2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$3;->val$state:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 487
    packed-switch p2, :pswitch_data_0

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 489
    :pswitch_0
    iget v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$3;->val$state:I

    if-nez v0, :cond_1

    .line 490
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$3;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;

    invoke-static {}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->access$400()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->onPleaseWaitDialog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->access$500(Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$3;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->access$200(Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$3;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->access$200(Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 492
    :cond_1
    iget v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$3;->val$state:I

    if-gez v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$3;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;

    const-string v1, "Check DUT state !!!"

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->BtUiDisplayToast(Ljava/lang/String;)V

    goto :goto_0

    .line 497
    :pswitch_1
    iget v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$3;->val$state:I

    if-lez v0, :cond_2

    .line 498
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$3;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;

    #calls: Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->onExitDUTMode()V
    invoke-static {v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->access$600(Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;)V

    goto :goto_0

    .line 499
    :cond_2
    iget v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$3;->val$state:I

    if-gez v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$3;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;

    const-string v1, "Check DUT state !!!"

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->BtUiDisplayToast(Ljava/lang/String;)V

    goto :goto_0

    .line 487
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
