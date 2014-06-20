.class Lcom/android/lgesettings/DataUsageSummary$ConfirmDataEnableFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/DataUsageSummary$ConfirmDataEnableFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/DataUsageSummary$ConfirmDataEnableFragment;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/DataUsageSummary$ConfirmDataEnableFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 2757
    iput-object p1, p0, Lcom/android/lgesettings/DataUsageSummary$ConfirmDataEnableFragment$1;->this$0:Lcom/android/lgesettings/DataUsageSummary$ConfirmDataEnableFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 2759
    iget-object v1, p0, Lcom/android/lgesettings/DataUsageSummary$ConfirmDataEnableFragment$1;->this$0:Lcom/android/lgesettings/DataUsageSummary$ConfirmDataEnableFragment;

    invoke-virtual {v1}, Lcom/android/lgesettings/DataUsageSummary$ConfirmDataEnableFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/DataUsageSummary;

    .line 2760
    .local v0, target:Lcom/android/lgesettings/DataUsageSummary;
    if-eqz v0, :cond_0

    .line 2762
    #calls: Lcom/android/lgesettings/DataUsageSummary;->setMobileDataEnabled(Z)V
    invoke-static {v0, v2}, Lcom/android/lgesettings/DataUsageSummary;->access$1000(Lcom/android/lgesettings/DataUsageSummary;Z)V

    .line 2763
    #calls: Lcom/android/lgesettings/DataUsageSummary;->setPositiveResult(Z)V
    invoke-static {v2}, Lcom/android/lgesettings/DataUsageSummary;->access$3700(Z)V

    .line 2765
    :cond_0
    return-void
.end method
