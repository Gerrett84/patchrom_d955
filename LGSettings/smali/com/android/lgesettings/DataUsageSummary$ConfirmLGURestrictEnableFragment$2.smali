.class Lcom/android/lgesettings/DataUsageSummary$ConfirmLGURestrictEnableFragment$2;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/DataUsageSummary$ConfirmLGURestrictEnableFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/DataUsageSummary$ConfirmLGURestrictEnableFragment;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/DataUsageSummary$ConfirmLGURestrictEnableFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 3522
    iput-object p1, p0, Lcom/android/lgesettings/DataUsageSummary$ConfirmLGURestrictEnableFragment$2;->this$0:Lcom/android/lgesettings/DataUsageSummary$ConfirmLGURestrictEnableFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 3524
    iget-object v1, p0, Lcom/android/lgesettings/DataUsageSummary$ConfirmLGURestrictEnableFragment$2;->this$0:Lcom/android/lgesettings/DataUsageSummary$ConfirmLGURestrictEnableFragment;

    invoke-virtual {v1}, Lcom/android/lgesettings/DataUsageSummary$ConfirmLGURestrictEnableFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/DataUsageSummary;

    .line 3526
    .local v0, target:Lcom/android/lgesettings/DataUsageSummary;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/DataUsageSummary;->setRestrictBackground(Z)V

    .line 3527
    return-void
.end method
