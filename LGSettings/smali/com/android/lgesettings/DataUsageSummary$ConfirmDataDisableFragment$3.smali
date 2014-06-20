.class Lcom/android/lgesettings/DataUsageSummary$ConfirmDataDisableFragment$3;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/DataUsageSummary$ConfirmDataDisableFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/DataUsageSummary$ConfirmDataDisableFragment;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/DataUsageSummary$ConfirmDataDisableFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 2656
    iput-object p1, p0, Lcom/android/lgesettings/DataUsageSummary$ConfirmDataDisableFragment$3;->this$0:Lcom/android/lgesettings/DataUsageSummary$ConfirmDataDisableFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 2662
    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 2663
    iget-object v1, p0, Lcom/android/lgesettings/DataUsageSummary$ConfirmDataDisableFragment$3;->this$0:Lcom/android/lgesettings/DataUsageSummary$ConfirmDataDisableFragment;

    invoke-virtual {v1}, Lcom/android/lgesettings/DataUsageSummary$ConfirmDataDisableFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/DataUsageSummary;

    .line 2664
    .local v0, target:Lcom/android/lgesettings/DataUsageSummary;
    if-eqz v0, :cond_0

    .line 2666
    #calls: Lcom/android/lgesettings/DataUsageSummary;->setConfirmDialogShowed(Z)V
    invoke-static {v2}, Lcom/android/lgesettings/DataUsageSummary;->access$200(Z)V

    .line 2674
    #calls: Lcom/android/lgesettings/DataUsageSummary;->setPositiveResult(Z)V
    invoke-static {v2}, Lcom/android/lgesettings/DataUsageSummary;->access$3700(Z)V

    .line 2677
    .end local v0           #target:Lcom/android/lgesettings/DataUsageSummary;
    :cond_0
    return v2
.end method
