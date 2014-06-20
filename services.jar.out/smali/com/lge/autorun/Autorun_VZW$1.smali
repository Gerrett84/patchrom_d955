.class Lcom/lge/autorun/Autorun_VZW$1;
.super Landroid/content/BroadcastReceiver;
.source "Autorun_VZW.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/autorun/Autorun_VZW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/autorun/Autorun_VZW;


# direct methods
.method constructor <init>(Lcom/lge/autorun/Autorun_VZW;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/lge/autorun/Autorun_VZW$1;->this$0:Lcom/lge/autorun/Autorun_VZW;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    const-string v1, "reason"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "reason"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "lock"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/lge/autorun/Autorun_VZW$1;->this$0:Lcom/lge/autorun/Autorun_VZW;

    #calls: Lcom/lge/autorun/Autorun_VZW;->setSecureLockState(Z)V
    invoke-static {v1, v4}, Lcom/lge/autorun/Autorun_VZW;->access$000(Lcom/lge/autorun/Autorun_VZW;Z)V

    .line 53
    iget-object v1, p0, Lcom/lge/autorun/Autorun_VZW$1;->this$0:Lcom/lge/autorun/Autorun_VZW;

    invoke-virtual {v1}, Lcom/lge/autorun/Autorun_VZW;->getUsbUnPlugState()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/autorun/Autorun_VZW$1;->this$0:Lcom/lge/autorun/Autorun_VZW;

    #getter for: Lcom/lge/autorun/Autorun_VZW;->mSecureLocked:Z
    invoke-static {v1}, Lcom/lge/autorun/Autorun_VZW;->access$100(Lcom/lge/autorun/Autorun_VZW;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/lge/autorun/Autorun_VZW$1;->this$0:Lcom/lge/autorun/Autorun_VZW;

    #setter for: Lcom/lge/autorun/Autorun_VZW;->mAutorunDelayed:Z
    invoke-static {v1, v4}, Lcom/lge/autorun/Autorun_VZW;->access$202(Lcom/lge/autorun/Autorun_VZW;Z)Z

    .line 55
    const-string v1, "AUTORUN"

    const-string v2, "[AUTORUN] setCurrentFunction(charge_only,false)::onReceive when securelocked"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v1, p0, Lcom/lge/autorun/Autorun_VZW$1;->this$0:Lcom/lge/autorun/Autorun_VZW;

    const-string v2, "charge_only"

    invoke-virtual {v1, v2, v3}, Lcom/lge/autorun/Autorun_VZW;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/lge/autorun/Autorun_VZW$1;->this$0:Lcom/lge/autorun/Autorun_VZW;

    #getter for: Lcom/lge/autorun/Autorun_VZW;->mSecureLocked:Z
    invoke-static {v1}, Lcom/lge/autorun/Autorun_VZW;->access$100(Lcom/lge/autorun/Autorun_VZW;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/lge/autorun/Autorun_VZW$1;->this$0:Lcom/lge/autorun/Autorun_VZW;

    #setter for: Lcom/lge/autorun/Autorun_VZW;->mSecureLocked:Z
    invoke-static {v1, v3}, Lcom/lge/autorun/Autorun_VZW;->access$102(Lcom/lge/autorun/Autorun_VZW;Z)Z

    .line 62
    iget-object v1, p0, Lcom/lge/autorun/Autorun_VZW$1;->this$0:Lcom/lge/autorun/Autorun_VZW;

    #getter for: Lcom/lge/autorun/Autorun_VZW;->mAutorunDelayed:Z
    invoke-static {v1}, Lcom/lge/autorun/Autorun_VZW;->access$200(Lcom/lge/autorun/Autorun_VZW;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/lge/autorun/Autorun_VZW$1;->this$0:Lcom/lge/autorun/Autorun_VZW;

    #setter for: Lcom/lge/autorun/Autorun_VZW;->mAutorunDelayed:Z
    invoke-static {v1, v3}, Lcom/lge/autorun/Autorun_VZW;->access$202(Lcom/lge/autorun/Autorun_VZW;Z)Z

    .line 65
    iget-object v1, p0, Lcom/lge/autorun/Autorun_VZW$1;->this$0:Lcom/lge/autorun/Autorun_VZW;

    const-string v2, "cdrom_storage"

    invoke-virtual {v1, v2, v3}, Lcom/lge/autorun/Autorun_VZW;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 66
    iget-object v1, p0, Lcom/lge/autorun/Autorun_VZW$1;->this$0:Lcom/lge/autorun/Autorun_VZW;

    invoke-virtual {v1}, Lcom/lge/autorun/Autorun_VZW;->getUsbUnPlugState()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    const-string v1, "AUTORUN"

    const-string v2, "[AUTORUN] setCurrentFunction(cdrom_storage,false)::onReceive when lock released"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v1, p0, Lcom/lge/autorun/Autorun_VZW$1;->this$0:Lcom/lge/autorun/Autorun_VZW;

    const-string v2, "cdrom_storage"

    invoke-virtual {v1, v2, v3}, Lcom/lge/autorun/Autorun_VZW;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_0

    .line 70
    :cond_2
    const-string v1, "AUTORUN"

    const-string v2, "[AUTORUN] autorunStartTimer is called::onReceive when lock released"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v1, p0, Lcom/lge/autorun/Autorun_VZW$1;->this$0:Lcom/lge/autorun/Autorun_VZW;

    invoke-virtual {v1}, Lcom/lge/autorun/Autorun_VZW;->autorunStartTimer()V

    goto :goto_0
.end method
