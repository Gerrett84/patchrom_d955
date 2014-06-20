.class Lcom/android/lgesettings/accounts/AddAccountSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "AddAccountSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/accounts/AddAccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/accounts/AddAccountSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/accounts/AddAccountSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/lgesettings/accounts/AddAccountSettings$2;->this$0:Lcom/android/lgesettings/accounts/AddAccountSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 293
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.lge.email"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/lgesettings/accounts/AddAccountSettings$2;->this$0:Lcom/android/lgesettings/accounts/AddAccountSettings;

    const/4 v1, 0x1

    #setter for: Lcom/android/lgesettings/accounts/AddAccountSettings;->isEmailFinish:Z
    invoke-static {v0, v1}, Lcom/android/lgesettings/accounts/AddAccountSettings;->access$202(Lcom/android/lgesettings/accounts/AddAccountSettings;Z)Z

    .line 295
    const-string v0, "AccountSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onReceive] isEmailFinish : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/accounts/AddAccountSettings$2;->this$0:Lcom/android/lgesettings/accounts/AddAccountSettings;

    #getter for: Lcom/android/lgesettings/accounts/AddAccountSettings;->isEmailFinish:Z
    invoke-static {v2}, Lcom/android/lgesettings/accounts/AddAccountSettings;->access$200(Lcom/android/lgesettings/accounts/AddAccountSettings;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/accounts/AddAccountSettings$2;->this$0:Lcom/android/lgesettings/accounts/AddAccountSettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/lgesettings/accounts/AddAccountSettings;->isEmailFinish:Z
    invoke-static {v0, v1}, Lcom/android/lgesettings/accounts/AddAccountSettings;->access$202(Lcom/android/lgesettings/accounts/AddAccountSettings;Z)Z

    .line 298
    const-string v0, "AccountSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onReceive] isEmailFinish : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/accounts/AddAccountSettings$2;->this$0:Lcom/android/lgesettings/accounts/AddAccountSettings;

    #getter for: Lcom/android/lgesettings/accounts/AddAccountSettings;->isEmailFinish:Z
    invoke-static {v2}, Lcom/android/lgesettings/accounts/AddAccountSettings;->access$200(Lcom/android/lgesettings/accounts/AddAccountSettings;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
