.class Lcom/android/lgesettings/DataUsageSummary$ConfirmDataRoamingFragment$2;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/DataUsageSummary$ConfirmDataRoamingFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/DataUsageSummary$ConfirmDataRoamingFragment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/DataUsageSummary$ConfirmDataRoamingFragment;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2890
    iput-object p1, p0, Lcom/android/lgesettings/DataUsageSummary$ConfirmDataRoamingFragment$2;->this$0:Lcom/android/lgesettings/DataUsageSummary$ConfirmDataRoamingFragment;

    iput-object p2, p0, Lcom/android/lgesettings/DataUsageSummary$ConfirmDataRoamingFragment$2;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2893
    iget-object v1, p0, Lcom/android/lgesettings/DataUsageSummary$ConfirmDataRoamingFragment$2;->this$0:Lcom/android/lgesettings/DataUsageSummary$ConfirmDataRoamingFragment;

    invoke-virtual {v1}, Lcom/android/lgesettings/DataUsageSummary$ConfirmDataRoamingFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/DataUsageSummary;

    .line 2894
    .local v0, target:Lcom/android/lgesettings/DataUsageSummary;
    if-eqz v0, :cond_0

    .line 2895
    const/4 v1, 0x1

    #calls: Lcom/android/lgesettings/DataUsageSummary;->setDataRoaming(Z)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/DataUsageSummary;->access$3900(Lcom/android/lgesettings/DataUsageSummary;Z)V

    .line 2897
    iget-object v1, p0, Lcom/android/lgesettings/DataUsageSummary$ConfirmDataRoamingFragment$2;->val$context:Landroid/content/Context;

    const v2, 0x7f080f4f

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2901
    :cond_0
    return-void
.end method
