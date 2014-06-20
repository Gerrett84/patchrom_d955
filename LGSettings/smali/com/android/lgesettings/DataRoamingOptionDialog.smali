.class public Lcom/android/lgesettings/DataRoamingOptionDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "DataRoamingOptionDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/DataRoamingOptionDialog$ListenForCancel;
    }
.end annotation


# static fields
.field private static disableRoamingPopup:I


# instance fields
.field private ACTION_MOBILE_DATA_IS_ON_RESPONSE:Ljava/lang/String;

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

.field private mNetworkReceiver:Lcom/android/lgesettings/DataRoamingOptionDialog$ListenForCancel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lgesettings/DataRoamingOptionDialog;->DEBUG:Z

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/lgesettings/DataRoamingOptionDialog;->lastRoamingOption:I

    .line 75
    const-string v0, "android.intent.action.MOBILE_DATA_ROAMING_OPTION_REQUEST"

    iput-object v0, p0, Lcom/android/lgesettings/DataRoamingOptionDialog;->ACTION_MOBILE_DATA_ROAMING_OPTION_REQUEST:Ljava/lang/String;

    .line 76
    const-string v0, "android.intent.action.MOBILE_DATA_ROAMING_OPTION_CANCEL"

    iput-object v0, p0, Lcom/android/lgesettings/DataRoamingOptionDialog;->ACTION_MOBILE_DATA_ROAMING_OPTION_CANCEL:Ljava/lang/String;

    .line 77
    const-string v0, "android.intent.action.ENABLE_DATA_IN_HPLMN"

    iput-object v0, p0, Lcom/android/lgesettings/DataRoamingOptionDialog;->ACTION_MOBILE_DATA_ROAMING_OPTION_HPLMN:Ljava/lang/String;

    .line 78
    const-string v0, "requestRoamingOption"

    iput-object v0, p0, Lcom/android/lgesettings/DataRoamingOptionDialog;->REQUEST_ROAMING_OPTION:Ljava/lang/String;

    .line 80
    const-string v0, "android.intent.action.MOBILE_DATA_ROAMING_STATE_CHANGE_REQUEST"

    iput-object v0, p0, Lcom/android/lgesettings/DataRoamingOptionDialog;->ACTION_MOBILE_DATA_ROAMING_STATE_CHANGE_REQUEST:Ljava/lang/String;

    .line 82
    const-string v0, "android.intent.action.MOBILE_DATA_IS_ON_RESPONSE"

    iput-object v0, p0, Lcom/android/lgesettings/DataRoamingOptionDialog;->ACTION_MOBILE_DATA_IS_ON_RESPONSE:Ljava/lang/String;

    .line 84
    const-string v0, "requestState"

    iput-object v0, p0, Lcom/android/lgesettings/DataRoamingOptionDialog;->REQUEST_STATE:Ljava/lang/String;

    .line 232
    return-void
.end method

.method static synthetic access$102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    sput p0, Lcom/android/lgesettings/DataRoamingOptionDialog;->disableRoamingPopup:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/DataRoamingOptionDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/lgesettings/DataRoamingOptionDialog;->quitActivity()V

    return-void
.end method

.method private onAuthorize()V
    .locals 3

    .prologue
    .line 169
    iget-boolean v1, p0, Lcom/android/lgesettings/DataRoamingOptionDialog;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 170
    const-string v1, "LGE_data"

    const-string v2, "onAuthorize called"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/DataRoamingOptionDialog;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/DataRoamingOptionDialog;->ACTION_MOBILE_DATA_ROAMING_OPTION_REQUEST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 174
    iget-boolean v1, p0, Lcom/android/lgesettings/DataRoamingOptionDialog;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "LGE_data"

    const-string v2, "onAuthorize called : ACTION_MOBILE_DATA_ROAMING_OPTION_REQUEST"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/DataRoamingOptionDialog;->ACTION_MOBILE_DATA_ROAMING_OPTION_REQUEST:Ljava/lang/String;

    iget v2, p0, Lcom/android/lgesettings/DataRoamingOptionDialog;->lastRoamingOption:I

    invoke-virtual {p0, v1, v2}, Lcom/android/lgesettings/DataRoamingOptionDialog;->onConnectNetworkSelect(Ljava/lang/String;I)V

    .line 178
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/lgesettings/DataRoamingOptionDialog;->ACTION_MOBILE_DATA_ROAMING_STATE_CHANGE_REQUEST:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    .local v0, dataIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/lgesettings/DataRoamingOptionDialog;->REQUEST_STATE:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 180
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DataRoamingOptionDialog;->sendBroadcast(Landroid/content/Intent;)V

    .line 190
    .end local v0           #dataIntent:Landroid/content/Intent;
    :cond_2
    :goto_0
    return-void

    .line 182
    :cond_3
    iget-object v1, p0, Lcom/android/lgesettings/DataRoamingOptionDialog;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/DataRoamingOptionDialog;->ACTION_MOBILE_DATA_ROAMING_OPTION_HPLMN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 183
    iget-boolean v1, p0, Lcom/android/lgesettings/DataRoamingOptionDialog;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 184
    const-string v1, "LGE_data"

    const-string v2, "getAction: ACTION_MOBILE_DATA_ROAMING_OPTION_HPLMN"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/lgesettings/DataRoamingOptionDialog;->ACTION_MOBILE_DATA_IS_ON_RESPONSE:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    .restart local v0       #dataIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DataRoamingOptionDialog;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private onDecline()V
    .locals 3

    .prologue
    .line 193
    iget-boolean v1, p0, Lcom/android/lgesettings/DataRoamingOptionDialog;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 194
    const-string v1, "LGE_data"

    const-string v2, "onDecline called : ACTION_MOBILE_DATA_ROAMING_OPTION_CANCEL"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/DataRoamingOptionDialog;->ACTION_MOBILE_DATA_ROAMING_OPTION_CANCEL:Ljava/lang/String;

    iget v2, p0, Lcom/android/lgesettings/DataRoamingOptionDialog;->lastRoamingOption:I

    invoke-virtual {p0, v1, v2}, Lcom/android/lgesettings/DataRoamingOptionDialog;->onConnectNetworkSelect(Ljava/lang/String;I)V

    .line 199
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/lgesettings/DataRoamingOptionDialog;->ACTION_MOBILE_DATA_ROAMING_STATE_CHANGE_REQUEST:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, dataIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/lgesettings/DataRoamingOptionDialog;->REQUEST_STATE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 201
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DataRoamingOptionDialog;->sendBroadcast(Landroid/content/Intent;)V

    .line 202
    return-void
.end method

.method private quitActivity()V
    .locals 0

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/android/lgesettings/DataRoamingOptionDialog;->finish()V

    .line 230
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/android/lgesettings/DataRoamingOptionDialog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 206
    const-string v0, "LGE_data"

    const-string v1, "onClick called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 220
    :goto_0
    return-void

    .line 211
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/lgesettings/DataRoamingOptionDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "Data_Auto_On_Popup_Hplmn"

    sget v2, Lcom/android/lgesettings/DataRoamingOptionDialog;->disableRoamingPopup:I

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 213
    invoke-direct {p0}, Lcom/android/lgesettings/DataRoamingOptionDialog;->onAuthorize()V

    goto :goto_0

    .line 217
    :pswitch_1
    invoke-direct {p0}, Lcom/android/lgesettings/DataRoamingOptionDialog;->onDecline()V

    goto :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConnectNetworkSelect(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 242
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 243
    const-class v1, Lcom/android/lgesettings/DataRoamingOptionDialogResult;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 244
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    iget-object v1, p0, Lcom/android/lgesettings/DataRoamingOptionDialog;->REQUEST_ROAMING_OPTION:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 246
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 248
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DataRoamingOptionDialog;->startActivity(Landroid/content/Intent;)V

    .line 249
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const v9, 0x7f0400cc

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 92
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    iget-boolean v4, p0, Lcom/android/lgesettings/DataRoamingOptionDialog;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 95
    const-string v4, "LGE_data"

    const-string v5, "onCreate started"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/DataRoamingOptionDialog;->getIntent()Landroid/content/Intent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/lgesettings/DataRoamingOptionDialog;->mIntent:Landroid/content/Intent;

    .line 104
    new-instance v4, Lcom/android/lgesettings/DataRoamingOptionDialog$ListenForCancel;

    invoke-direct {v4, p0, v8}, Lcom/android/lgesettings/DataRoamingOptionDialog$ListenForCancel;-><init>(Lcom/android/lgesettings/DataRoamingOptionDialog;Lcom/android/lgesettings/DataRoamingOptionDialog$1;)V

    iput-object v4, p0, Lcom/android/lgesettings/DataRoamingOptionDialog;->mNetworkReceiver:Lcom/android/lgesettings/DataRoamingOptionDialog$ListenForCancel;

    .line 105
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    iput-object v4, p0, Lcom/android/lgesettings/DataRoamingOptionDialog;->mIntentFilter:Landroid/content/IntentFilter;

    .line 106
    iget-object v4, p0, Lcom/android/lgesettings/DataRoamingOptionDialog;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v5, p0, Lcom/android/lgesettings/DataRoamingOptionDialog;->ACTION_MOBILE_DATA_ROAMING_OPTION_CANCEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/lgesettings/DataRoamingOptionDialog;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/DataRoamingOptionDialog;->mNetworkReceiver:Lcom/android/lgesettings/DataRoamingOptionDialog$ListenForCancel;

    iget-object v6, p0, Lcom/android/lgesettings/DataRoamingOptionDialog;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 109
    iget-object v2, p0, Lcom/android/lgesettings/DataRoamingOptionDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 111
    .local v2, p:Lcom/android/internal/app/AlertController$AlertParams;
    if-eqz v2, :cond_2

    .line 113
    iget-object v4, p0, Lcom/android/lgesettings/DataRoamingOptionDialog;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/DataRoamingOptionDialog;->ACTION_MOBILE_DATA_ROAMING_OPTION_REQUEST:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 114
    const-string v4, "LGE_data"

    const-string v5, "DataRoamingOptionDialog : ACTION_MOBILE_DATA_ROAMING_OPTION_REQUEST"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v4, p0, Lcom/android/lgesettings/DataRoamingOptionDialog;->mIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/lgesettings/DataRoamingOptionDialog;->REQUEST_ROAMING_OPTION:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/lgesettings/DataRoamingOptionDialog;->lastRoamingOption:I

    .line 118
    const v4, 0x7f08010e

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/DataRoamingOptionDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 119
    invoke-virtual {p0}, Lcom/android/lgesettings/DataRoamingOptionDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v4, v9, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 120
    .local v3, view:Landroid/view/View;
    const v4, 0x7f0a002f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 121
    .local v1, messageView:Landroid/widget/TextView;
    const v4, 0x7f080ee3

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/DataRoamingOptionDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 124
    const v4, 0x7f080015

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/DataRoamingOptionDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 125
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 126
    const v4, 0x7f080016

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/DataRoamingOptionDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 127
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 161
    .end local v1           #messageView:Landroid/widget/TextView;
    .end local v3           #view:Landroid/view/View;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/lgesettings/DataRoamingOptionDialog;->setupAlert()V

    .line 163
    :cond_2
    iget-boolean v4, p0, Lcom/android/lgesettings/DataRoamingOptionDialog;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 164
    const-string v4, "LGE_data"

    const-string v5, "onCreate finished"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_3
    return-void

    .line 129
    :cond_4
    iget-object v4, p0, Lcom/android/lgesettings/DataRoamingOptionDialog;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/DataRoamingOptionDialog;->ACTION_MOBILE_DATA_ROAMING_OPTION_HPLMN:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 130
    const-string v4, "LGE_data"

    const-string v5, "DataRoamingOptionDialog : ACTION_MOBILE_DATA_ROAMING_OPTION_HPLMN"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v4, p0, Lcom/android/lgesettings/DataRoamingOptionDialog;->mIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/lgesettings/DataRoamingOptionDialog;->REQUEST_ROAMING_OPTION:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/lgesettings/DataRoamingOptionDialog;->lastRoamingOption:I

    .line 135
    invoke-virtual {p0}, Lcom/android/lgesettings/DataRoamingOptionDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v4, v9, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 136
    .restart local v3       #view:Landroid/view/View;
    const v4, 0x7f0a01ba

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 137
    .restart local v1       #messageView:Landroid/widget/TextView;
    const v4, 0x7f0a01bb

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 138
    .local v0, cb:Landroid/widget/CheckBox;
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 139
    sput v7, Lcom/android/lgesettings/DataRoamingOptionDialog;->disableRoamingPopup:I

    .line 141
    new-instance v4, Lcom/android/lgesettings/DataRoamingOptionDialog$1;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/DataRoamingOptionDialog$1;-><init>(Lcom/android/lgesettings/DataRoamingOptionDialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 153
    const v4, 0x7f080ee6

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/DataRoamingOptionDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 156
    const v4, 0x7f08059d

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/DataRoamingOptionDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 157
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/android/lgesettings/DataRoamingOptionDialog;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/DataRoamingOptionDialog;->mNetworkReceiver:Lcom/android/lgesettings/DataRoamingOptionDialog$ListenForCancel;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 224
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 225
    return-void
.end method
