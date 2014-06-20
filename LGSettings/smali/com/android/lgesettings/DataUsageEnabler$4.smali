.class Lcom/android/lgesettings/DataUsageEnabler$4;
.super Ljava/lang/Object;
.source "DataUsageEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 436
    iput-object p1, p0, Lcom/android/lgesettings/DataUsageEnabler$4;->this$0:Lcom/android/lgesettings/DataUsageEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    .line 440
    invoke-static {}, Lcom/android/lgesettings/DataUsageEnabler;->access$300()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 441
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageEnabler$4;->this$0:Lcom/android/lgesettings/DataUsageEnabler;

    const/4 v1, 0x0

    #calls: Lcom/android/lgesettings/DataUsageEnabler;->setMobileDataEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/DataUsageEnabler;->access$400(Lcom/android/lgesettings/DataUsageEnabler;Z)V

    .line 445
    :goto_0
    return-void

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageEnabler$4;->this$0:Lcom/android/lgesettings/DataUsageEnabler;

    #calls: Lcom/android/lgesettings/DataUsageEnabler;->setMobileDataEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/DataUsageEnabler;->access$400(Lcom/android/lgesettings/DataUsageEnabler;Z)V

    goto :goto_0
.end method
