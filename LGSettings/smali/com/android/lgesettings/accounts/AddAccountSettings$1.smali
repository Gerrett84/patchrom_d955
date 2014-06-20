.class Lcom/android/lgesettings/accounts/AddAccountSettings$1;
.super Ljava/lang/Object;
.source "AddAccountSettings.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/accounts/AddAccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/accounts/AddAccountSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/accounts/AddAccountSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/lgesettings/accounts/AddAccountSettings$1;->this$0:Lcom/android/lgesettings/accounts/AddAccountSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    const/4 v8, 0x1

    .line 84
    const/4 v2, 0x1

    .line 86
    .local v2, done:Z
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 88
    .local v1, bundle:Landroid/os/Bundle;
    const-string v5, "intent"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 89
    .local v4, intent:Landroid/content/Intent;
    if-eqz v4, :cond_3

    .line 90
    const/4 v2, 0x0

    .line 91
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 92
    .local v0, addAccountOptions:Landroid/os/Bundle;
    const-string v5, "pendingIntent"

    iget-object v6, p0, Lcom/android/lgesettings/accounts/AddAccountSettings$1;->this$0:Lcom/android/lgesettings/accounts/AddAccountSettings;

    #getter for: Lcom/android/lgesettings/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;
    invoke-static {v6}, Lcom/android/lgesettings/accounts/AddAccountSettings;->access$000(Lcom/android/lgesettings/accounts/AddAccountSettings;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 93
    const-string v5, "hasMultipleUsers"

    iget-object v6, p0, Lcom/android/lgesettings/accounts/AddAccountSettings$1;->this$0:Lcom/android/lgesettings/accounts/AddAccountSettings;

    invoke-static {v6}, Lcom/android/lgesettings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 95
    invoke-virtual {v4, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 96
    iget-object v5, p0, Lcom/android/lgesettings/accounts/AddAccountSettings$1;->this$0:Lcom/android/lgesettings/accounts/AddAccountSettings;

    const/4 v6, 0x2

    invoke-virtual {v5, v4, v6}, Lcom/android/lgesettings/accounts/AddAccountSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 105
    .end local v0           #addAccountOptions:Landroid/os/Bundle;
    :cond_0
    :goto_0
    const-string v5, "AccountSettings"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "AccountSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "account added: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    .line 113
    :cond_1
    if-eqz v2, :cond_2

    .line 114
    iget-object v5, p0, Lcom/android/lgesettings/accounts/AddAccountSettings$1;->this$0:Lcom/android/lgesettings/accounts/AddAccountSettings;

    invoke-virtual {v5}, Lcom/android/lgesettings/accounts/AddAccountSettings;->finish()V

    .line 115
    iget-object v5, p0, Lcom/android/lgesettings/accounts/AddAccountSettings$1;->this$0:Lcom/android/lgesettings/accounts/AddAccountSettings;

    #setter for: Lcom/android/lgesettings/accounts/AddAccountSettings;->isFinishedNormally:Z
    invoke-static {v5, v8}, Lcom/android/lgesettings/accounts/AddAccountSettings;->access$102(Lcom/android/lgesettings/accounts/AddAccountSettings;Z)Z

    .line 116
    const-string v5, "hsmodel"

    const-string v6, "call back finished"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v4           #intent:Landroid/content/Intent;
    :cond_2
    :goto_1
    return-void

    .line 98
    .restart local v1       #bundle:Landroid/os/Bundle;
    .restart local v4       #intent:Landroid/content/Intent;
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/android/lgesettings/accounts/AddAccountSettings$1;->this$0:Lcom/android/lgesettings/accounts/AddAccountSettings;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/android/lgesettings/accounts/AddAccountSettings;->setResult(I)V

    .line 99
    iget-object v5, p0, Lcom/android/lgesettings/accounts/AddAccountSettings$1;->this$0:Lcom/android/lgesettings/accounts/AddAccountSettings;

    #getter for: Lcom/android/lgesettings/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;
    invoke-static {v5}, Lcom/android/lgesettings/accounts/AddAccountSettings;->access$000(Lcom/android/lgesettings/accounts/AddAccountSettings;)Landroid/app/PendingIntent;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 100
    iget-object v5, p0, Lcom/android/lgesettings/accounts/AddAccountSettings$1;->this$0:Lcom/android/lgesettings/accounts/AddAccountSettings;

    #getter for: Lcom/android/lgesettings/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;
    invoke-static {v5}, Lcom/android/lgesettings/accounts/AddAccountSettings;->access$000(Lcom/android/lgesettings/accounts/AddAccountSettings;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/PendingIntent;->cancel()V

    .line 101
    iget-object v5, p0, Lcom/android/lgesettings/accounts/AddAccountSettings$1;->this$0:Lcom/android/lgesettings/accounts/AddAccountSettings;

    const/4 v6, 0x0

    #setter for: Lcom/android/lgesettings/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;
    invoke-static {v5, v6}, Lcom/android/lgesettings/accounts/AddAccountSettings;->access$002(Lcom/android/lgesettings/accounts/AddAccountSettings;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 106
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v4           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 107
    .local v3, e:Landroid/accounts/OperationCanceledException;
    :try_start_2
    const-string v5, "AccountSettings"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "AccountSettings"

    const-string v6, "addAccount was canceled"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    :cond_4
    if-eqz v2, :cond_2

    .line 114
    iget-object v5, p0, Lcom/android/lgesettings/accounts/AddAccountSettings$1;->this$0:Lcom/android/lgesettings/accounts/AddAccountSettings;

    invoke-virtual {v5}, Lcom/android/lgesettings/accounts/AddAccountSettings;->finish()V

    .line 115
    iget-object v5, p0, Lcom/android/lgesettings/accounts/AddAccountSettings$1;->this$0:Lcom/android/lgesettings/accounts/AddAccountSettings;

    #setter for: Lcom/android/lgesettings/accounts/AddAccountSettings;->isFinishedNormally:Z
    invoke-static {v5, v8}, Lcom/android/lgesettings/accounts/AddAccountSettings;->access$102(Lcom/android/lgesettings/accounts/AddAccountSettings;Z)Z

    .line 116
    const-string v5, "hsmodel"

    const-string v6, "call back finished"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 108
    .end local v3           #e:Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v3

    .line 109
    .local v3, e:Ljava/io/IOException;
    :try_start_3
    const-string v5, "AccountSettings"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "AccountSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addAccount failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 113
    :cond_5
    if-eqz v2, :cond_2

    .line 114
    iget-object v5, p0, Lcom/android/lgesettings/accounts/AddAccountSettings$1;->this$0:Lcom/android/lgesettings/accounts/AddAccountSettings;

    invoke-virtual {v5}, Lcom/android/lgesettings/accounts/AddAccountSettings;->finish()V

    .line 115
    iget-object v5, p0, Lcom/android/lgesettings/accounts/AddAccountSettings$1;->this$0:Lcom/android/lgesettings/accounts/AddAccountSettings;

    #setter for: Lcom/android/lgesettings/accounts/AddAccountSettings;->isFinishedNormally:Z
    invoke-static {v5, v8}, Lcom/android/lgesettings/accounts/AddAccountSettings;->access$102(Lcom/android/lgesettings/accounts/AddAccountSettings;Z)Z

    .line 116
    const-string v5, "hsmodel"

    const-string v6, "call back finished"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 110
    .end local v3           #e:Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 111
    .local v3, e:Landroid/accounts/AuthenticatorException;
    :try_start_4
    const-string v5, "AccountSettings"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "AccountSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addAccount failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 113
    :cond_6
    if-eqz v2, :cond_2

    .line 114
    iget-object v5, p0, Lcom/android/lgesettings/accounts/AddAccountSettings$1;->this$0:Lcom/android/lgesettings/accounts/AddAccountSettings;

    invoke-virtual {v5}, Lcom/android/lgesettings/accounts/AddAccountSettings;->finish()V

    .line 115
    iget-object v5, p0, Lcom/android/lgesettings/accounts/AddAccountSettings$1;->this$0:Lcom/android/lgesettings/accounts/AddAccountSettings;

    #setter for: Lcom/android/lgesettings/accounts/AddAccountSettings;->isFinishedNormally:Z
    invoke-static {v5, v8}, Lcom/android/lgesettings/accounts/AddAccountSettings;->access$102(Lcom/android/lgesettings/accounts/AddAccountSettings;Z)Z

    .line 116
    const-string v5, "hsmodel"

    const-string v6, "call back finished"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 113
    .end local v3           #e:Landroid/accounts/AuthenticatorException;
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_7

    .line 114
    iget-object v6, p0, Lcom/android/lgesettings/accounts/AddAccountSettings$1;->this$0:Lcom/android/lgesettings/accounts/AddAccountSettings;

    invoke-virtual {v6}, Lcom/android/lgesettings/accounts/AddAccountSettings;->finish()V

    .line 115
    iget-object v6, p0, Lcom/android/lgesettings/accounts/AddAccountSettings$1;->this$0:Lcom/android/lgesettings/accounts/AddAccountSettings;

    #setter for: Lcom/android/lgesettings/accounts/AddAccountSettings;->isFinishedNormally:Z
    invoke-static {v6, v8}, Lcom/android/lgesettings/accounts/AddAccountSettings;->access$102(Lcom/android/lgesettings/accounts/AddAccountSettings;Z)Z

    .line 116
    const-string v6, "hsmodel"

    const-string v7, "call back finished"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    throw v5
.end method
