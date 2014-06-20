.class Lcom/android/lgesettings/DataUsageEnabler$6;
.super Ljava/lang/Object;
.source "DataUsageEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/DataUsageEnabler;->showDataEnablerDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/DataUsageEnabler;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/DataUsageEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 459
    iput-object p1, p0, Lcom/android/lgesettings/DataUsageEnabler$6;->this$0:Lcom/android/lgesettings/DataUsageEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    const/4 v1, 0x1

    .line 463
    invoke-static {}, Lcom/android/lgesettings/DataUsageEnabler;->access$300()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 464
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageEnabler$6;->this$0:Lcom/android/lgesettings/DataUsageEnabler;

    #calls: Lcom/android/lgesettings/DataUsageEnabler;->setMobileDataEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/DataUsageEnabler;->access$400(Lcom/android/lgesettings/DataUsageEnabler;Z)V

    .line 468
    :goto_0
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageEnabler$6;->this$0:Lcom/android/lgesettings/DataUsageEnabler;

    iget-object v0, v0, Lcom/android/lgesettings/DataUsageEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 469
    return-void

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageEnabler$6;->this$0:Lcom/android/lgesettings/DataUsageEnabler;

    const/4 v1, 0x0

    #calls: Lcom/android/lgesettings/DataUsageEnabler;->setMobileDataEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/DataUsageEnabler;->access$400(Lcom/android/lgesettings/DataUsageEnabler;Z)V

    goto :goto_0
.end method
