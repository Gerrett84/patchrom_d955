.class Lcom/android/lgesettings/wifi/ExceptScanListEdit$1;
.super Ljava/lang/Object;
.source "ExceptScanListEdit.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/ExceptScanListEdit;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/ExceptScanListEdit;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/ExceptScanListEdit;)V
    .locals 0
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$1;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListEdit;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$1;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListEdit;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already exist mAlertDialog is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$1;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListEdit;

    #getter for: Lcom/android/lgesettings/wifi/ExceptScanListEdit;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->access$000(Lcom/android/lgesettings/wifi/ExceptScanListEdit;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/lgesettings/wifi/ExceptScanListEdit;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->access$100(Lcom/android/lgesettings/wifi/ExceptScanListEdit;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$1;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListEdit;

    #getter for: Lcom/android/lgesettings/wifi/ExceptScanListEdit;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->access$000(Lcom/android/lgesettings/wifi/ExceptScanListEdit;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$1;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListEdit;

    #getter for: Lcom/android/lgesettings/wifi/ExceptScanListEdit;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->access$000(Lcom/android/lgesettings/wifi/ExceptScanListEdit;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 271
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$1;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListEdit;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->finish()V

    goto :goto_0
.end method
