.class Lcom/android/lgesettings/CredentialStorage$ResetKeyStoreAndKeyChain;
.super Landroid/os/AsyncTask;
.source "CredentialStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/CredentialStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetKeyStoreAndKeyChain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/CredentialStorage;


# direct methods
.method private constructor <init>(Lcom/android/lgesettings/CredentialStorage;)V
    .locals 0
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/android/lgesettings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/lgesettings/CredentialStorage;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/lgesettings/CredentialStorage;Lcom/android/lgesettings/CredentialStorage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lcom/android/lgesettings/CredentialStorage$ResetKeyStoreAndKeyChain;-><init>(Lcom/android/lgesettings/CredentialStorage;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4
    .parameter "unused"

    .prologue
    const/4 v3, 0x0

    .line 333
    iget-object v2, p0, Lcom/android/lgesettings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/lgesettings/CredentialStorage;

    #getter for: Lcom/android/lgesettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;
    invoke-static {v2}, Lcom/android/lgesettings/CredentialStorage;->access$400(Lcom/android/lgesettings/CredentialStorage;)Landroid/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2}, Landroid/security/KeyStore;->reset()Z

    .line 336
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/lgesettings/CredentialStorage;

    invoke-static {v2}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 338
    .local v1, keyChainConnection:Landroid/security/KeyChain$KeyChainConnection;
    :try_start_1
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v2

    invoke-interface {v2}, Landroid/security/IKeyChainService;->reset()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 342
    :try_start_2
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 346
    .end local v1           #keyChainConnection:Landroid/security/KeyChain$KeyChainConnection;
    :goto_0
    return-object v2

    .line 339
    .restart local v1       #keyChainConnection:Landroid/security/KeyChain$KeyChainConnection;
    :catch_0
    move-exception v0

    .line 340
    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, 0x0

    :try_start_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    .line 342
    :try_start_4
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 344
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #keyChainConnection:Landroid/security/KeyChain$KeyChainConnection;
    :catch_1
    move-exception v0

    .line 345
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 346
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 342
    .end local v0           #e:Ljava/lang/InterruptedException;
    .restart local v1       #keyChainConnection:Landroid/security/KeyChain$KeyChainConnection;
    :catchall_0
    move-exception v2

    :try_start_5
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v2
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 329
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/CredentialStorage$ResetKeyStoreAndKeyChain;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "success"

    .prologue
    const/4 v2, 0x0

    .line 351
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/lgesettings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/lgesettings/CredentialStorage;

    const v1, 0x7f080726

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 358
    :goto_0
    iget-object v0, p0, Lcom/android/lgesettings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/lgesettings/CredentialStorage;

    invoke-virtual {v0}, Lcom/android/lgesettings/CredentialStorage;->finish()V

    .line 359
    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/lgesettings/CredentialStorage;

    const v1, 0x7f080727

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 329
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/CredentialStorage$ResetKeyStoreAndKeyChain;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
