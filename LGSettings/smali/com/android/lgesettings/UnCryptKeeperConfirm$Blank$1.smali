.class Lcom/android/lgesettings/UnCryptKeeperConfirm$Blank$1;
.super Ljava/lang/Object;
.source "UnCryptKeeperConfirm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/UnCryptKeeperConfirm$Blank;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/UnCryptKeeperConfirm$Blank;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/UnCryptKeeperConfirm$Blank;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/lgesettings/UnCryptKeeperConfirm$Blank$1;->this$0:Lcom/android/lgesettings/UnCryptKeeperConfirm$Blank;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 102
    const-string v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 103
    .local v3, service:Landroid/os/IBinder;
    if-nez v3, :cond_0

    .line 104
    const-string v4, "CryptKeeper"

    const-string v5, "Failed to find the mount service"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v4, p0, Lcom/android/lgesettings/UnCryptKeeperConfirm$Blank$1;->this$0:Lcom/android/lgesettings/UnCryptKeeperConfirm$Blank;

    invoke-virtual {v4}, Lcom/android/lgesettings/UnCryptKeeperConfirm$Blank;->finish()V

    .line 123
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    .line 111
    .local v2, mountService:Landroid/os/storage/IMountService;
    :try_start_0
    iget-object v4, p0, Lcom/android/lgesettings/UnCryptKeeperConfirm$Blank$1;->this$0:Lcom/android/lgesettings/UnCryptKeeperConfirm$Blank;

    invoke-virtual {v4}, Lcom/android/lgesettings/UnCryptKeeperConfirm$Blank;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 112
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 113
    const-string v4, "password"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\\\"

    const-string v6, "\\\\\\\\"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\\""

    const-string v6, "\\\\\\\""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/os/storage/IMountService;->unencryptStorage(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    .end local v0           #args:Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 120
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "CryptKeeper"

    const-string v5, "Error while encrypting..."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    iget-object v4, p0, Lcom/android/lgesettings/UnCryptKeeperConfirm$Blank$1;->this$0:Lcom/android/lgesettings/UnCryptKeeperConfirm$Blank;

    invoke-virtual {v4}, Lcom/android/lgesettings/UnCryptKeeperConfirm$Blank;->finish()V

    goto :goto_0

    .line 115
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #args:Landroid/os/Bundle;
    :cond_1
    :try_start_1
    const-string v4, "UnCryptKeeper"

    const-string v5, "There are no args"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v4, p0, Lcom/android/lgesettings/UnCryptKeeperConfirm$Blank$1;->this$0:Lcom/android/lgesettings/UnCryptKeeperConfirm$Blank;

    invoke-virtual {v4}, Lcom/android/lgesettings/UnCryptKeeperConfirm$Blank;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
