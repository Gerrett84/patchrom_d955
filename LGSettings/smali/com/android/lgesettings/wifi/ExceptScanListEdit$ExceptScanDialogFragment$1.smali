.class Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment$1;
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
    .line 390
    iput-object p1, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment$1;->this$1:Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment$1;->this$1:Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListEdit;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->finish()V

    .line 393
    return-void
.end method
