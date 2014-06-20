.class public Lcom/android/lgesettings/accounts/AddAccountSettings;
.super Landroid/app/Activity;
.source "AddAccountSettings.java"


# static fields
.field public static isNullActivity:Z


# instance fields
.field private isEmailFinish:Z

.field private isFinishedNormally:Z

.field private isTriedLogin:Z

.field private mAddAccountCalled:Z

.field private mCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/lgesettings/accounts/AddAccountSettings;->isNullActivity:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 75
    iput-boolean v1, p0, Lcom/android/lgesettings/accounts/AddAccountSettings;->isTriedLogin:Z

    .line 76
    iput-boolean v1, p0, Lcom/android/lgesettings/accounts/AddAccountSettings;->isFinishedNormally:Z

    .line 78
    iput-boolean v1, p0, Lcom/android/lgesettings/accounts/AddAccountSettings;->isEmailFinish:Z

    .line 82
    new-instance v0, Lcom/android/lgesettings/accounts/AddAccountSettings$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/accounts/AddAccountSettings$1;-><init>(Lcom/android/lgesettings/accounts/AddAccountSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/accounts/AddAccountSettings;->mCallback:Landroid/accounts/AccountManagerCallback;

    .line 122
    iput-boolean v1, p0, Lcom/android/lgesettings/accounts/AddAccountSettings;->mAddAccountCalled:Z

    .line 290
    new-instance v0, Lcom/android/lgesettings/accounts/AddAccountSettings$2;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/accounts/AddAccountSettings$2;-><init>(Lcom/android/lgesettings/accounts/AddAccountSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/accounts/AddAccountSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/accounts/AddAccountSettings;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/lgesettings/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/lgesettings/accounts/AddAccountSettings;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/lgesettings/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/lgesettings/accounts/AddAccountSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/lgesettings/accounts/AddAccountSettings;->isFinishedNormally:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/lgesettings/accounts/AddAccountSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/lgesettings/accounts/AddAccountSettings;->isEmailFinish:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/lgesettings/accounts/AddAccountSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/lgesettings/accounts/AddAccountSettings;->isEmailFinish:Z

    return p1
.end method

.method private addAccount(Ljava/lang/String;)V
    .locals 9
    .parameter "accountType"

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 220
    iput-boolean v8, p0, Lcom/android/lgesettings/accounts/AddAccountSettings;->isTriedLogin:Z

    .line 221
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 222
    .local v4, addAccountOptions:Landroid/os/Bundle;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    .line 223
    const-string v0, "pendingIntent"

    iget-object v1, p0, Lcom/android/lgesettings/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 224
    const-string v0, "hasMultipleUsers"

    invoke-static {p0}, Lcom/android/lgesettings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 225
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v6, p0, Lcom/android/lgesettings/accounts/AddAccountSettings;->mCallback:Landroid/accounts/AccountManagerCallback;

    move-object v1, p1

    move-object v3, v2

    move-object v5, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 233
    iput-boolean v8, p0, Lcom/android/lgesettings/accounts/AddAccountSettings;->mAddAccountCalled:Z

    .line 234
    return-void
.end method

.method private selectReturnedIntent(Landroid/content/Intent;)Z
    .locals 5
    .parameter "data"

    .prologue
    const/4 v1, 0x1

    const/4 v4, -0x1

    .line 269
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 271
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NEXT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    const-string v2, "AccountSettings"

    const-string v3, "Next click"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v2, p0, Lcom/android/lgesettings/accounts/AddAccountSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/accounts/AddAccountSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 274
    const-string v2, "AccountSettings"

    const-string v3, "unregisterReceiver mReceiver"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.lge.setupwizard_flowcontroller.Next"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 276
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v4, v0}, Lcom/android/lgesettings/accounts/AddAccountSettings;->setResult(ILandroid/content/Intent;)V

    .line 277
    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/AddAccountSettings;->finish()V

    .line 287
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v1

    .line 279
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BACK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 280
    const-string v2, "AccountSettings"

    const-string v3, "Back click"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.lge.setupwizard_flowcontroller.Back"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 282
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v4, v0}, Lcom/android/lgesettings/accounts/AddAccountSettings;->setResult(ILandroid/content/Intent;)V

    .line 283
    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/AddAccountSettings;->finish()V

    goto :goto_0

    .line 287
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private selectStartActivity()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/AddAccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_0

    const-string v1, "SetupWizard"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    :goto_0
    const-string v1, "AccountSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSetupWizard : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    if-nez v0, :cond_1

    .line 247
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/lgesettings/accounts/ChooseAccountActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 262
    :goto_1
    return-object v0

    .line 239
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 249
    :cond_1
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/AddAccountSettings;->registerBroadcastReceiver()V

    .line 252
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/lgesettings/accounts/ChooseAccountActivitySetupWizard;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 254
    const-string v1, "SetupWizard"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 259
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/lgesettings/accounts/ChooseAccountActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 159
    packed-switch p1, :pswitch_data_0

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 161
    :pswitch_0
    if-nez p2, :cond_1

    .line 162
    invoke-virtual {p0, p2}, Lcom/android/lgesettings/accounts/AddAccountSettings;->setResult(I)V

    .line 163
    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/AddAccountSettings;->finish()V

    goto :goto_0

    .line 167
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 168
    invoke-direct {p0, p3}, Lcom/android/lgesettings/accounts/AddAccountSettings;->selectReturnedIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    :cond_2
    const-string v0, "selected_account"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/accounts/AddAccountSettings;->addAccount(Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/android/lgesettings/accounts/AddAccountSettings;->setResult(I)V

    .line 179
    iget-object v0, p0, Lcom/android/lgesettings/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_3

    .line 180
    iget-object v0, p0, Lcom/android/lgesettings/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    .line 183
    :cond_3
    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/AddAccountSettings;->finish()V

    goto :goto_0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 126
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 128
    if-eqz p1, :cond_0

    .line 129
    const-string v3, "AddAccountCalled"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/lgesettings/accounts/AddAccountSettings;->mAddAccountCalled:Z

    .line 130
    const-string v3, "AccountSettings"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "AccountSettings"

    const-string v4, "restored"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    iget-boolean v3, p0, Lcom/android/lgesettings/accounts/AddAccountSettings;->mAddAccountCalled:Z

    if-eqz v3, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/AddAccountSettings;->finish()V

    .line 155
    :goto_0
    return-void

    .line 138
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/AddAccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "authorities"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, authorities:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/AddAccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "account_types"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, accountTypes:[Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/lgesettings/accounts/AddAccountSettings;->selectStartActivity()Landroid/content/Intent;

    move-result-object v2

    .line 148
    .local v2, intent:Landroid/content/Intent;
    if-eqz v1, :cond_2

    .line 149
    const-string v3, "authorities"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    :cond_2
    if-eqz v0, :cond_3

    .line 152
    const-string v3, "account_types"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    :cond_3
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/lgesettings/accounts/AddAccountSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 195
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 196
    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/AddAccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 197
    .local v1, setupWizardExtras:Landroid/os/Bundle;
    if-eqz v1, :cond_1

    const-string v2, "SetupWizard"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, isSetupWizard:Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_2

    .line 201
    iget-boolean v2, p0, Lcom/android/lgesettings/accounts/AddAccountSettings;->isTriedLogin:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/lgesettings/accounts/AddAccountSettings;->isFinishedNormally:Z

    if-nez v2, :cond_0

    .line 202
    const-string v2, "hsmodel"

    const-string v3, "for proper finish"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/AddAccountSettings;->finish()V

    .line 218
    :cond_0
    :goto_1
    return-void

    .line 197
    .end local v0           #isSetupWizard:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 206
    .restart local v0       #isSetupWizard:Ljava/lang/String;
    :cond_2
    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    const-string v2, "AccountSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume() isSetupWizard : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    sget-boolean v2, Lcom/android/lgesettings/accounts/AddAccountSettings;->isNullActivity:Z

    if-eqz v2, :cond_3

    .line 209
    const-string v2, "AccountSettings"

    const-string v3, "isNullActivity true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/lgesettings/accounts/AddAccountSettings;->isNullActivity:Z

    .line 211
    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/AddAccountSettings;->finish()V

    .line 213
    :cond_3
    iget-boolean v2, p0, Lcom/android/lgesettings/accounts/AddAccountSettings;->isEmailFinish:Z

    if-eqz v2, :cond_0

    .line 214
    const-string v2, "AccountSettings"

    const-string v3, "onResume() onReceive finish"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/AddAccountSettings;->finish()V

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 189
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 190
    const-string v0, "AddAccountCalled"

    iget-boolean v1, p0, Lcom/android/lgesettings/accounts/AddAccountSettings;->mAddAccountCalled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 191
    const-string v0, "AccountSettings"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AccountSettings"

    const-string v1, "saved"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    return-void
.end method

.method public registerBroadcastReceiver()V
    .locals 3

    .prologue
    .line 304
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/accounts/AddAccountSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 305
    iget-object v0, p0, Lcom/android/lgesettings/accounts/AddAccountSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.lge.email"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/android/lgesettings/accounts/AddAccountSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/lgesettings/accounts/AddAccountSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/lgesettings/accounts/AddAccountSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 307
    const-string v0, "AccountSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onReceive] mReceiver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/accounts/AddAccountSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const-string v0, "AccountSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onReceive] mIntentFilter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/accounts/AddAccountSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return-void
.end method
