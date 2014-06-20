.class public final Lcom/android/lgesettings/CredentialStorage;
.super Landroid/app/Activity;
.source "CredentialStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/CredentialStorage$1;,
        Lcom/android/lgesettings/CredentialStorage$UnlockDialog;,
        Lcom/android/lgesettings/CredentialStorage$ConfigureKeyGuardDialog;,
        Lcom/android/lgesettings/CredentialStorage$ResetKeyStoreAndKeyChain;,
        Lcom/android/lgesettings/CredentialStorage$ResetDialog;
    }
.end annotation


# instance fields
.field private is_selected:Z

.field private mInstallBundle:Landroid/os/Bundle;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mRetriesRemaining:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 95
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/lgesettings/CredentialStorage;->mRetriesRemaining:I

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/CredentialStorage;->is_selected:Z

    .line 441
    return-void
.end method

.method static synthetic access$400(Lcom/android/lgesettings/CredentialStorage;)Landroid/security/KeyStore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/lgesettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/lgesettings/CredentialStorage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/lgesettings/CredentialStorage;->is_selected:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/lgesettings/CredentialStorage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/android/lgesettings/CredentialStorage;->mRetriesRemaining:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/lgesettings/CredentialStorage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/android/lgesettings/CredentialStorage;->mRetriesRemaining:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/lgesettings/CredentialStorage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/lgesettings/CredentialStorage;->ensureKeyGuard()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/lgesettings/CredentialStorage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/lgesettings/CredentialStorage;->handleUnlockOrInstall()V

    return-void
.end method

.method private checkKeyGuardQuality()Z
    .locals 2

    .prologue
    .line 197
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v0

    .line 198
    .local v0, quality:I
    const/high16 v1, 0x1

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private confirmKeyGuard()Z
    .locals 6

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/android/lgesettings/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 406
    .local v1, res:Landroid/content/res/Resources;
    new-instance v2, Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const/4 v3, 0x1

    const v4, 0x7f08071c

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const v5, 0x7f08071d

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 410
    .local v0, launched:Z
    return v0
.end method

.method private ensureKeyGuard()V
    .locals 2

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/android/lgesettings/CredentialStorage;->checkKeyGuardQuality()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/lgesettings/CredentialStorage;->is_selected:Z

    if-nez v0, :cond_1

    .line 176
    new-instance v0, Lcom/android/lgesettings/CredentialStorage$ConfigureKeyGuardDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/lgesettings/CredentialStorage$ConfigureKeyGuardDialog;-><init>(Lcom/android/lgesettings/CredentialStorage;Lcom/android/lgesettings/CredentialStorage$1;)V

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    iget-boolean v0, p0, Lcom/android/lgesettings/CredentialStorage;->is_selected:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/CredentialStorage;->is_selected:Z

    .line 186
    :cond_2
    invoke-direct {p0}, Lcom/android/lgesettings/CredentialStorage;->confirmKeyGuard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/android/lgesettings/CredentialStorage;->finish()V

    goto :goto_0
.end method

.method private handleUnlockOrInstall()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 143
    invoke-virtual {p0}, Lcom/android/lgesettings/CredentialStorage;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    :goto_0
    return-void

    .line 146
    :cond_0
    sget-object v0, Lcom/android/lgesettings/CredentialStorage$1;->$SwitchMap$android$security$KeyStore$State:[I

    iget-object v1, p0, Lcom/android/lgesettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/KeyStore$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 148
    :pswitch_0
    invoke-direct {p0}, Lcom/android/lgesettings/CredentialStorage;->ensureKeyGuard()V

    goto :goto_0

    .line 152
    :pswitch_1
    new-instance v0, Lcom/android/lgesettings/CredentialStorage$UnlockDialog;

    invoke-direct {v0, p0, v2}, Lcom/android/lgesettings/CredentialStorage$UnlockDialog;-><init>(Lcom/android/lgesettings/CredentialStorage;Lcom/android/lgesettings/CredentialStorage$1;)V

    goto :goto_0

    .line 156
    :pswitch_2
    invoke-direct {p0}, Lcom/android/lgesettings/CredentialStorage;->checkKeyGuardQuality()Z

    move-result v0

    if-nez v0, :cond_1

    .line 157
    new-instance v0, Lcom/android/lgesettings/CredentialStorage$ConfigureKeyGuardDialog;

    invoke-direct {v0, p0, v2}, Lcom/android/lgesettings/CredentialStorage$ConfigureKeyGuardDialog;-><init>(Lcom/android/lgesettings/CredentialStorage;Lcom/android/lgesettings/CredentialStorage$1;)V

    goto :goto_0

    .line 160
    :cond_1
    invoke-direct {p0}, Lcom/android/lgesettings/CredentialStorage;->installIfAvailable()V

    .line 161
    invoke-virtual {p0}, Lcom/android/lgesettings/CredentialStorage;->finish()V

    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private installIfAvailable()V
    .locals 11

    .prologue
    .line 205
    iget-object v8, p0, Lcom/android/lgesettings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/lgesettings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    invoke-virtual {v8}, Landroid/os/Bundle;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/lgesettings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    .line 207
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/lgesettings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    .line 209
    const-string v8, "user_private_key_name"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 210
    const-string v8, "user_private_key_name"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 211
    .local v5, key:Ljava/lang/String;
    const-string v8, "user_private_key_data"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 213
    .local v7, value:[B
    iget-object v8, p0, Lcom/android/lgesettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v8, v5, v7}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[B)Z

    move-result v8

    if-nez v8, :cond_1

    .line 214
    const-string v8, "CredentialStorage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to install "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v5           #key:Ljava/lang/String;
    .end local v7           #value:[B
    :cond_0
    :goto_0
    return-void

    .line 219
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_1
    const-string v8, "user_certificate_name"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 220
    const-string v8, "user_certificate_name"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 221
    .local v4, certName:Ljava/lang/String;
    const-string v8, "user_certificate_data"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 223
    .local v3, certData:[B
    iget-object v8, p0, Lcom/android/lgesettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v8, v4, v3}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    move-result v8

    if-nez v8, :cond_2

    .line 224
    const-string v8, "CredentialStorage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to install "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 229
    .end local v3           #certData:[B
    .end local v4           #certName:Ljava/lang/String;
    :cond_2
    const-string v8, "ca_certificates_name"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 230
    const-string v8, "ca_certificates_name"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, caListName:Ljava/lang/String;
    const-string v8, "ca_certificates_data"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 233
    .local v1, caListData:[B
    iget-object v8, p0, Lcom/android/lgesettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v8, v2, v1}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    move-result v8

    if-nez v8, :cond_3

    .line 234
    const-string v8, "CredentialStorage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to install "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 240
    .end local v1           #caListData:[B
    .end local v2           #caListName:Ljava/lang/String;
    :cond_3
    const-string v8, "AUTHENTEC_VPN_PRIV_KEY_NAME"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 241
    const-string v8, "AUTHENTEC_VPN_PRIV_KEY_NAME"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 242
    .local v6, name:Ljava/lang/String;
    const-string v8, "AUTHENTEC_VPN_PRIV_KEY_DATA"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 244
    .restart local v7       #value:[B
    iget-object v8, p0, Lcom/android/lgesettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v8, v6, v7}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    move-result v8

    if-nez v8, :cond_4

    .line 245
    const-string v8, "CredentialStorage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to install "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 251
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #value:[B
    :cond_4
    const-string v8, "AUTHENTEC_VPN_DN_NAME"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 252
    const-string v8, "AUTHENTEC_VPN_DN_NAME"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 253
    .restart local v6       #name:Ljava/lang/String;
    const-string v8, "AUTHENTEC_VPN_DN_DATA"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 255
    .restart local v7       #value:[B
    iget-object v8, p0, Lcom/android/lgesettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v8, v6, v7}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    move-result v8

    if-nez v8, :cond_5

    .line 256
    const-string v8, "CredentialStorage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to install "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 262
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #value:[B
    :cond_5
    const-string v8, "wapi_ca_certificates_name"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 263
    const-string v8, "wapi_ca_certificates_name"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 264
    .restart local v2       #caListName:Ljava/lang/String;
    const-string v8, "wapi_ca_certificates_data"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 265
    .restart local v1       #caListData:[B
    const-string v8, "CredentialStorage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Credentials.EXTRA_WAPI_AS_CERTIFICATES_DATA ==> mKeyStore.importKey :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v8, p0, Lcom/android/lgesettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v8, v2, v1}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    move-result v8

    if-nez v8, :cond_7

    .line 267
    const-string v8, "CredentialStorage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "############ Failed to install "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 273
    .end local v1           #caListData:[B
    .end local v2           #caListName:Ljava/lang/String;
    :cond_6
    const-string v8, "CredentialStorage"

    const-string v9, " not not not Credentials.EXTRA_WAPI_AS_CERTIFICATES_NAME\n"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_7
    const-string v8, "wapi_user_certificate_name"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 275
    const-string v8, "wapi_user_certificate_name"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 276
    .restart local v2       #caListName:Ljava/lang/String;
    const-string v8, "wapi_user_certificate_data"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 277
    .restart local v1       #caListData:[B
    const-string v8, "CredentialStorage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Credentials.EXTRA_WAPI_USER_CERTIFICATES_DATA ==> mKeyStore.importKey :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v8, p0, Lcom/android/lgesettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v8, v2, v1}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    move-result v8

    if-nez v8, :cond_9

    .line 279
    const-string v8, "CredentialStorage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "@@@@@@@@@@@@@@@@@ Failed to install "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 285
    .end local v1           #caListData:[B
    .end local v2           #caListName:Ljava/lang/String;
    :cond_8
    const-string v8, "CredentialStorage"

    const-string v9, " not not not Credentials.EXTRA_WAPI_USER_CERTIFICATES_NAME\n"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_9
    const/4 v8, -0x1

    invoke-virtual {p0, v8}, Lcom/android/lgesettings/CredentialStorage;->setResult(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 415
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 420
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 421
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 422
    const-string v1, "password"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, password:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 425
    iget-object v1, p0, Lcom/android/lgesettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    .line 433
    .end local v0           #password:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/CredentialStorage;->finish()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 114
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 116
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    const-string v2, "CredentialStorage"

    const-string v3, "Cannot install to CredentialStorage as non-primary user"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {p0}, Lcom/android/lgesettings/CredentialStorage;->finish()V

    .line 135
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/CredentialStorage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 123
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.android.credentials.RESET"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 126
    new-instance v2, Lcom/android/lgesettings/CredentialStorage$ResetDialog;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/lgesettings/CredentialStorage$ResetDialog;-><init>(Lcom/android/lgesettings/CredentialStorage;Lcom/android/lgesettings/CredentialStorage$1;)V

    goto :goto_0

    .line 128
    :cond_1
    const-string v2, "com.android.credentials.INSTALL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "com.android.certinstaller"

    invoke-virtual {p0}, Lcom/android/lgesettings/CredentialStorage;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 130
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    .line 133
    :cond_2
    invoke-direct {p0}, Lcom/android/lgesettings/CredentialStorage;->handleUnlockOrInstall()V

    goto :goto_0
.end method
