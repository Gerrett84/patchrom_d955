.class Lcom/android/lgesettings/CryptKeeper$ValidationTask;
.super Landroid/os/AsyncTask;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValidationTask"
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
.field final synthetic this$0:Lcom/android/lgesettings/CryptKeeper;


# direct methods
.method private constructor <init>(Lcom/android/lgesettings/CryptKeeper;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/lgesettings/CryptKeeper$ValidationTask;->this$0:Lcom/android/lgesettings/CryptKeeper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/lgesettings/CryptKeeper;Lcom/android/lgesettings/CryptKeeper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/android/lgesettings/CryptKeeper$ValidationTask;-><init>(Lcom/android/lgesettings/CryptKeeper;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 7
    .parameter "params"

    .prologue
    const/4 v5, 0x1

    .line 197
    iget-object v4, p0, Lcom/android/lgesettings/CryptKeeper$ValidationTask;->this$0:Lcom/android/lgesettings/CryptKeeper;

    #calls: Lcom/android/lgesettings/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;
    invoke-static {v4}, Lcom/android/lgesettings/CryptKeeper;->access$000(Lcom/android/lgesettings/CryptKeeper;)Landroid/os/storage/IMountService;

    move-result-object v2

    .line 199
    .local v2, service:Landroid/os/storage/IMountService;
    :try_start_0
    const-string v4, "CryptKeeper"

    const-string v6, "Validating encryption state."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-interface {v2}, Landroid/os/storage/IMountService;->getEncryptionState()I

    move-result v3

    .line 201
    .local v3, state:I
    if-ne v3, v5, :cond_0

    .line 202
    const-string v4, "CryptKeeper"

    const-string v6, "Unexpectedly in CryptKeeper even though there is no encryption."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 213
    .end local v3           #state:I
    :goto_0
    return-object v4

    .line 205
    .restart local v3       #state:I
    :cond_0
    if-nez v3, :cond_1

    move v4, v5

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 206
    .end local v3           #state:I
    :catch_0
    move-exception v0

    .line 207
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "CryptKeeper"

    const-string v6, "Unable to get encryption state properly"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    .line 211
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 212
    .local v1, npe:Ljava/lang/NullPointerException;
    const-string v4, "CryptKeeper"

    const-string v6, "NullPointerException"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 194
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/CryptKeeper$ValidationTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, 0x1

    .line 220
    iget-object v0, p0, Lcom/android/lgesettings/CryptKeeper$ValidationTask;->this$0:Lcom/android/lgesettings/CryptKeeper;

    #setter for: Lcom/android/lgesettings/CryptKeeper;->mValidationComplete:Z
    invoke-static {v0, v2}, Lcom/android/lgesettings/CryptKeeper;->access$402(Lcom/android/lgesettings/CryptKeeper;Z)Z

    .line 221
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    const-string v0, "CryptKeeper"

    const-string v1, "Incomplete, or corrupted encryption detected. Prompting user to wipe."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lcom/android/lgesettings/CryptKeeper$ValidationTask;->this$0:Lcom/android/lgesettings/CryptKeeper;

    #setter for: Lcom/android/lgesettings/CryptKeeper;->mEncryptionGoneBad:Z
    invoke-static {v0, v2}, Lcom/android/lgesettings/CryptKeeper;->access$502(Lcom/android/lgesettings/CryptKeeper;Z)Z

    .line 227
    :goto_0
    iget-object v0, p0, Lcom/android/lgesettings/CryptKeeper$ValidationTask;->this$0:Lcom/android/lgesettings/CryptKeeper;

    #calls: Lcom/android/lgesettings/CryptKeeper;->setupUi()V
    invoke-static {v0}, Lcom/android/lgesettings/CryptKeeper;->access$600(Lcom/android/lgesettings/CryptKeeper;)V

    .line 228
    return-void

    .line 225
    :cond_0
    const-string v0, "CryptKeeper"

    const-string v1, "Encryption state validated. Proceeding to configure UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 194
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/CryptKeeper$ValidationTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
