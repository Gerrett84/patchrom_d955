.class Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment$2;
.super Ljava/lang/Object;
.source "ExceptScanListEdit.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment$2;->this$1:Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 378
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment$2;->this$1:Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;

    iget-object v1, v1, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, deviceName:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment$2;->this$1:Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;

    #calls: Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->setDeviceName(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->access$300(Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;Ljava/lang/String;)V

    .line 380
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment$2;->this$1:Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;

    iget-object v1, v1, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListEdit;

    invoke-virtual {v1}, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->checkSave()Z

    move-result v1

    if-nez v1, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment$2;->this$1:Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;

    iget-object v1, v1, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListEdit;

    invoke-virtual {v1}, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->doSave()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 385
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment$2;->this$1:Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;

    iget-object v1, v1, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListEdit;

    invoke-virtual {v1}, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->finish()V

    goto :goto_0
.end method
