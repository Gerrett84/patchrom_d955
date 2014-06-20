.class public Lcom/android/lgesettings/DataRoamingOptionDialogResult;
.super Lcom/android/internal/app/AlertActivity;
.source "DataRoamingOptionDialogResult.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/DataRoamingOptionDialogResult$1;,
        Lcom/android/lgesettings/DataRoamingOptionDialogResult$ListenForCancel;
    }
.end annotation


# instance fields
.field private ACTION_MOBILE_DATA_ROAMING_OPTION_CANCEL:Ljava/lang/String;

.field private ACTION_MOBILE_DATA_ROAMING_OPTION_HPLMN:Ljava/lang/String;

.field private ACTION_MOBILE_DATA_ROAMING_OPTION_REQUEST:Ljava/lang/String;

.field private ACTION_MOBILE_DATA_ROAMING_STATE_CHANGE_REQUEST:Ljava/lang/String;

.field private DEBUG:Z

.field private REQUEST_ROAMING_OPTION:Ljava/lang/String;

.field private REQUEST_STATE:Ljava/lang/String;

.field private lastRoamingOption:I

.field private mIntent:Landroid/content/Intent;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mNetworkReceiver:Lcom/android/lgesettings/DataRoamingOptionDialogResult$ListenForCancel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lgesettings/DataRoamingOptionDialogResult;->DEBUG:Z

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/lgesettings/DataRoamingOptionDialogResult;->lastRoamingOption:I

    .line 72
    const-string v0, "android.intent.action.MOBILE_DATA_ROAMING_OPTION_REQUEST"

    iput-object v0, p0, Lcom/android/lgesettings/DataRoamingOptionDialogResult;->ACTION_MOBILE_DATA_ROAMING_OPTION_REQUEST:Ljava/lang/String;

    .line 73
    const-string v0, "android.intent.action.MOBILE_DATA_ROAMING_OPTION_CANCEL"

    iput-object v0, p0, Lcom/android/lgesettings/DataRoamingOptionDialogResult;->ACTION_MOBILE_DATA_ROAMING_OPTION_CANCEL:Ljava/lang/String;

    .line 74
    const-string v0, "android.intent.action.ENABLE_DATA_IN_HPLMN"

    iput-object v0, p0, Lcom/android/lgesettings/DataRoamingOptionDialogResult;->ACTION_MOBILE_DATA_ROAMING_OPTION_HPLMN:Ljava/lang/String;

    .line 75
    const-string v0, "requestRoamingOption"

    iput-object v0, p0, Lcom/android/lgesettings/DataRoamingOptionDialogResult;->REQUEST_ROAMING_OPTION:Ljava/lang/String;

    .line 77
    const-string v0, "android.intent.action.MOBILE_DATA_ROAMING_STATE_CHANGE_REQUEST"

    iput-object v0, p0, Lcom/android/lgesettings/DataRoamingOptionDialogResult;->ACTION_MOBILE_DATA_ROAMING_STATE_CHANGE_REQUEST:Ljava/lang/String;

    .line 78
    const-string v0, "requestState"

    iput-object v0, p0, Lcom/android/lgesettings/DataRoamingOptionDialogResult;->REQUEST_STATE:Ljava/lang/String;

    .line 171
    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/DataRoamingOptionDialogResult;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/lgesettings/DataRoamingOptionDialogResult;->quitActivity()V

    return-void
.end method

.method private onAuthorize()V
    .locals 2

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/lgesettings/DataRoamingOptionDialogResult;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LGE_data"

    const-string v1, "DataRoamingOptionDialogResult onAuthorize() : ACTION_MOBILE_DATA_ROAMING_OPTION_REQUEST"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    return-void
.end method

.method private onDecline()V
    .locals 3

    .prologue
    .line 133
    iget-boolean v1, p0, Lcom/android/lgesettings/DataRoamingOptionDialogResult;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "LGE_data"

    const-string v2, "DataRoamingOptionDialogResult onDecline() : ACTION_MOBILE_DATA_ROAMING_OPTION_REQUEST"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/lgesettings/DataRoamingOptionDialogResult;->ACTION_MOBILE_DATA_ROAMING_STATE_CHANGE_REQUEST:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .local v0, dataIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/lgesettings/DataRoamingOptionDialogResult;->REQUEST_STATE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DataRoamingOptionDialogResult;->sendBroadcast(Landroid/content/Intent;)V

    .line 146
    return-void
.end method

.method private quitActivity()V
    .locals 0

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/android/lgesettings/DataRoamingOptionDialogResult;->finish()V

    .line 169
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/android/lgesettings/DataRoamingOptionDialogResult;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LGE_data"

    const-string v1, "DataRoamingOptionDialogResult : onClick called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 159
    :goto_0
    return-void

    .line 152
    :pswitch_0
    invoke-direct {p0}, Lcom/android/lgesettings/DataRoamingOptionDialogResult;->onAuthorize()V

    goto :goto_0

    .line 156
    :pswitch_1
    invoke-direct {p0}, Lcom/android/lgesettings/DataRoamingOptionDialogResult;->onDecline()V

    goto :goto_0

    .line 150
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 85
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    iget-boolean v3, p0, Lcom/android/lgesettings/DataRoamingOptionDialogResult;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "LGE_data"

    const-string v4, "DataRoamingOptionDialogResult : onCreate started"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/DataRoamingOptionDialogResult;->getIntent()Landroid/content/Intent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/DataRoamingOptionDialogResult;->mIntent:Landroid/content/Intent;

    .line 91
    new-instance v3, Lcom/android/lgesettings/DataRoamingOptionDialogResult$ListenForCancel;

    invoke-direct {v3, p0, v6}, Lcom/android/lgesettings/DataRoamingOptionDialogResult$ListenForCancel;-><init>(Lcom/android/lgesettings/DataRoamingOptionDialogResult;Lcom/android/lgesettings/DataRoamingOptionDialogResult$1;)V

    iput-object v3, p0, Lcom/android/lgesettings/DataRoamingOptionDialogResult;->mNetworkReceiver:Lcom/android/lgesettings/DataRoamingOptionDialogResult$ListenForCancel;

    .line 92
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iput-object v3, p0, Lcom/android/lgesettings/DataRoamingOptionDialogResult;->mIntentFilter:Landroid/content/IntentFilter;

    .line 93
    iget-object v3, p0, Lcom/android/lgesettings/DataRoamingOptionDialogResult;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v4, p0, Lcom/android/lgesettings/DataRoamingOptionDialogResult;->ACTION_MOBILE_DATA_ROAMING_OPTION_CANCEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/lgesettings/DataRoamingOptionDialogResult;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/DataRoamingOptionDialogResult;->mNetworkReceiver:Lcom/android/lgesettings/DataRoamingOptionDialogResult$ListenForCancel;

    iget-object v5, p0, Lcom/android/lgesettings/DataRoamingOptionDialogResult;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 96
    iget-object v3, p0, Lcom/android/lgesettings/DataRoamingOptionDialogResult;->mIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/lgesettings/DataRoamingOptionDialogResult;->REQUEST_ROAMING_OPTION:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/lgesettings/DataRoamingOptionDialogResult;->lastRoamingOption:I

    .line 98
    iget-object v1, p0, Lcom/android/lgesettings/DataRoamingOptionDialogResult;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 99
    .local v1, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v3, 0x7f08010e

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/DataRoamingOptionDialogResult;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 100
    invoke-virtual {p0}, Lcom/android/lgesettings/DataRoamingOptionDialogResult;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0400cc

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 101
    .local v2, view:Landroid/view/View;
    const v3, 0x7f0a002f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 103
    .local v0, messageView:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/lgesettings/DataRoamingOptionDialogResult;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/DataRoamingOptionDialogResult;->ACTION_MOBILE_DATA_ROAMING_OPTION_REQUEST:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 104
    const v3, 0x7f080ee4

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/DataRoamingOptionDialogResult;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    :cond_1
    :goto_0
    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 112
    const v3, 0x7f08059d

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/DataRoamingOptionDialogResult;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 113
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 115
    invoke-virtual {p0}, Lcom/android/lgesettings/DataRoamingOptionDialogResult;->setupAlert()V

    .line 116
    iget-boolean v3, p0, Lcom/android/lgesettings/DataRoamingOptionDialogResult;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "LGE_data"

    const-string v4, "onCreate finished"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_2
    return-void

    .line 105
    :cond_3
    iget-object v3, p0, Lcom/android/lgesettings/DataRoamingOptionDialogResult;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/DataRoamingOptionDialogResult;->ACTION_MOBILE_DATA_ROAMING_OPTION_CANCEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 106
    const v3, 0x7f080ee5

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/DataRoamingOptionDialogResult;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 107
    :cond_4
    iget-object v3, p0, Lcom/android/lgesettings/DataRoamingOptionDialogResult;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/DataRoamingOptionDialogResult;->ACTION_MOBILE_DATA_ROAMING_OPTION_HPLMN:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 108
    const v3, 0x7f080ee6

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/DataRoamingOptionDialogResult;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/android/lgesettings/DataRoamingOptionDialogResult;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/DataRoamingOptionDialogResult;->mNetworkReceiver:Lcom/android/lgesettings/DataRoamingOptionDialogResult$ListenForCancel;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 163
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 164
    return-void
.end method
