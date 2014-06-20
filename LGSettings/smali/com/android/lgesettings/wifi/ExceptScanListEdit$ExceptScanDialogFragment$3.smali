.class Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment$3;
.super Ljava/lang/Object;
.source "ExceptScanListEdit.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 397
    iput-object p1, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment$3;->this$1:Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 400
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 401
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 402
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment$3;->this$1:Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/ExceptScanListEdit$ExceptScanDialogFragment;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListEdit;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/ExceptScanListEdit;->finish()V

    .line 404
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
