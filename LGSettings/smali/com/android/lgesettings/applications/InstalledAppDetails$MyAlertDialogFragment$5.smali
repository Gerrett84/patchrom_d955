.class Lcom/android/lgesettings/applications/InstalledAppDetails$MyAlertDialogFragment$5;
.super Ljava/lang/Object;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/applications/InstalledAppDetails$MyAlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/applications/InstalledAppDetails$MyAlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/applications/InstalledAppDetails$MyAlertDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1326
    iput-object p1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails$MyAlertDialogFragment$5;->this$0:Lcom/android/lgesettings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x0

    .line 1328
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails$MyAlertDialogFragment$5;->this$0:Lcom/android/lgesettings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/lgesettings/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/android/lgesettings/applications/InstalledAppDetails;

    move-result-object v0

    #getter for: Lcom/android/lgesettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/lgesettings/applications/InstalledAppDetails;->access$900(Lcom/android/lgesettings/applications/InstalledAppDetails;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1330
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails$MyAlertDialogFragment$5;->this$0:Lcom/android/lgesettings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/lgesettings/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/android/lgesettings/applications/InstalledAppDetails;

    move-result-object v0

    #calls: Lcom/android/lgesettings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V
    invoke-static {v0, v1, v1}, Lcom/android/lgesettings/applications/InstalledAppDetails;->access$800(Lcom/android/lgesettings/applications/InstalledAppDetails;ZZ)V

    .line 1331
    return-void
.end method
