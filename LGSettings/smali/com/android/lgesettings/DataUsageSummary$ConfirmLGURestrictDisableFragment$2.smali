.class Lcom/android/lgesettings/DataUsageSummary$ConfirmLGURestrictDisableFragment$2;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/DataUsageSummary$ConfirmLGURestrictDisableFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/DataUsageSummary$ConfirmLGURestrictDisableFragment;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/DataUsageSummary$ConfirmLGURestrictDisableFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 3471
    iput-object p1, p0, Lcom/android/lgesettings/DataUsageSummary$ConfirmLGURestrictDisableFragment$2;->this$0:Lcom/android/lgesettings/DataUsageSummary$ConfirmLGURestrictDisableFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 3473
    iget-object v1, p0, Lcom/android/lgesettings/DataUsageSummary$ConfirmLGURestrictDisableFragment$2;->this$0:Lcom/android/lgesettings/DataUsageSummary$ConfirmLGURestrictDisableFragment;

    invoke-virtual {v1}, Lcom/android/lgesettings/DataUsageSummary$ConfirmLGURestrictDisableFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/DataUsageSummary;

    .line 3475
    .local v0, target:Lcom/android/lgesettings/DataUsageSummary;
    iget-object v1, p0, Lcom/android/lgesettings/DataUsageSummary$ConfirmLGURestrictDisableFragment$2;->this$0:Lcom/android/lgesettings/DataUsageSummary$ConfirmLGURestrictDisableFragment;

    invoke-virtual {v1}, Lcom/android/lgesettings/DataUsageSummary$ConfirmLGURestrictDisableFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f080f52

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 3476
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/DataUsageSummary;->setRestrictBackground(Z)V

    .line 3477
    return-void
.end method
