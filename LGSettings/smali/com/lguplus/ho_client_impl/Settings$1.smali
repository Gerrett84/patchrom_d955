.class Lcom/lguplus/ho_client_impl/Settings$1;
.super Landroid/content/BroadcastReceiver;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lguplus/ho_client_impl/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lguplus/ho_client_impl/Settings;


# direct methods
.method constructor <init>(Lcom/lguplus/ho_client_impl/Settings;)V
    .locals 0
    .parameter

    .prologue
    .line 369
    iput-object p1, p0, Lcom/lguplus/ho_client_impl/Settings$1;->this$0:Lcom/lguplus/ho_client_impl/Settings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 372
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, action:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings, onReceive, action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lguplus/ho_client_impl/Settings;->logd(Ljava/lang/String;)V

    .line 374
    if-eqz p2, :cond_0

    const-string v2, "enable"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 375
    .local v1, enable:Z
    :cond_0
    const-string v2, "com.lguplus.ho_client_impl.action.nswo_switch_is_ready_to_enabled_or_disabled"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 376
    iget-object v2, p0, Lcom/lguplus/ho_client_impl/Settings$1;->this$0:Lcom/lguplus/ho_client_impl/Settings;

    iget-object v2, v2, Lcom/lguplus/ho_client_impl/Settings;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/lguplus/ho_client_impl/Settings$1;->this$0:Lcom/lguplus/ho_client_impl/Settings;

    iget-object v3, v3, Lcom/lguplus/ho_client_impl/Settings;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x2328

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 378
    :cond_1
    return-void
.end method
