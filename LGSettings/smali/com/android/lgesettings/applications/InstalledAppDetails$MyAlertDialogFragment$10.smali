.class Lcom/android/lgesettings/applications/InstalledAppDetails$MyAlertDialogFragment$10;
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
    .line 1395
    iput-object p1, p0, Lcom/android/lgesettings/applications/InstalledAppDetails$MyAlertDialogFragment$10;->this$0:Lcom/android/lgesettings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails$MyAlertDialogFragment$10;->this$0:Lcom/android/lgesettings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/lgesettings/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/android/lgesettings/applications/InstalledAppDetails;

    move-result-object v0

    const/4 v1, 0x1

    #setter for: Lcom/android/lgesettings/applications/InstalledAppDetails;->notUserChange:Z
    invoke-static {v0, v1}, Lcom/android/lgesettings/applications/InstalledAppDetails;->access$502(Lcom/android/lgesettings/applications/InstalledAppDetails;Z)Z

    .line 1399
    iget-object v0, p0, Lcom/android/lgesettings/applications/InstalledAppDetails$MyAlertDialogFragment$10;->this$0:Lcom/android/lgesettings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/lgesettings/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/android/lgesettings/applications/InstalledAppDetails;

    move-result-object v0

    const/4 v1, 0x0

    #calls: Lcom/android/lgesettings/applications/InstalledAppDetails;->setNotificationsEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/applications/InstalledAppDetails;->access$1300(Lcom/android/lgesettings/applications/InstalledAppDetails;Z)V

    .line 1400
    return-void
.end method
