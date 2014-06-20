.class Lcom/lge/autorun/Autorun$1;
.super Landroid/content/BroadcastReceiver;
.source "Autorun.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/autorun/Autorun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/autorun/Autorun;


# direct methods
.method constructor <init>(Lcom/lge/autorun/Autorun;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/lge/autorun/Autorun$1;->this$0:Lcom/lge/autorun/Autorun;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 149
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.lge.setup_wizard.AUTORUNON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/lge/autorun/Autorun$1;->this$0:Lcom/lge/autorun/Autorun;

    invoke-virtual {v1}, Lcom/lge/autorun/Autorun;->onSetupWizardEnd()V

    .line 161
    :goto_0
    return-void

    .line 153
    :cond_0
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    iget-object v1, p0, Lcom/lge/autorun/Autorun$1;->this$0:Lcom/lge/autorun/Autorun;

    const/4 v2, 0x1

    #setter for: Lcom/lge/autorun/Autorun;->mBootCompleted:Z
    invoke-static {v1, v2}, Lcom/lge/autorun/Autorun;->access$002(Lcom/lge/autorun/Autorun;Z)Z

    .line 155
    iget-object v1, p0, Lcom/lge/autorun/Autorun$1;->this$0:Lcom/lge/autorun/Autorun;

    iget-object v2, p0, Lcom/lge/autorun/Autorun$1;->this$0:Lcom/lge/autorun/Autorun;

    invoke-virtual {v2}, Lcom/lge/autorun/Autorun;->getIsSetupWizardRunning()Z

    move-result v2

    #setter for: Lcom/lge/autorun/Autorun;->mSetupWizardRunning:Z
    invoke-static {v1, v2}, Lcom/lge/autorun/Autorun;->access$102(Lcom/lge/autorun/Autorun;Z)Z

    .line 156
    iget-object v1, p0, Lcom/lge/autorun/Autorun$1;->this$0:Lcom/lge/autorun/Autorun;

    invoke-virtual {v1}, Lcom/lge/autorun/Autorun;->onBootComplete()V

    goto :goto_0

    .line 158
    :cond_1
    const-string v1, "AUTORUN"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AUTORUN] intent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is not treated"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
