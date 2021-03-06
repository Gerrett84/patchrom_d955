.class public Lcom/android/lgesettings/wifi/WpsDialog;
.super Landroid/app/AlertDialog;
.source "WpsDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/wifi/WpsDialog$5;,
        Lcom/android/lgesettings/wifi/WpsDialog$DialogState;
    }
.end annotation


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field mDialogState:Lcom/android/lgesettings/wifi/WpsDialog$DialogState;

.field private final mFilter:Landroid/content/IntentFilter;

.field private mHandler:Landroid/os/Handler;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTextView:Landroid/widget/TextView;

.field private mTimeoutBar:Landroid/widget/ProgressBar;

.field private mTimer:Ljava/util/Timer;

.field private mView:Landroid/view/View;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWpsListener:Landroid/net/wifi/WifiManager$WpsListener;

.field private mWpsSetup:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "wpsSetup"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mHandler:Landroid/os/Handler;

    .line 76
    sget-object v0, Lcom/android/lgesettings/wifi/WpsDialog$DialogState;->WPS_INIT:Lcom/android/lgesettings/wifi/WpsDialog$DialogState;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mDialogState:Lcom/android/lgesettings/wifi/WpsDialog$DialogState;

    .line 80
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    .line 81
    iput p2, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mWpsSetup:I

    .line 121
    new-instance v0, Lcom/android/lgesettings/wifi/WpsDialog$1WpsListener;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/wifi/WpsDialog$1WpsListener;-><init>(Lcom/android/lgesettings/wifi/WpsDialog;)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mWpsListener:Landroid/net/wifi/WifiManager$WpsListener;

    .line 124
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mFilter:Landroid/content/IntentFilter;

    .line 125
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    new-instance v0, Lcom/android/lgesettings/wifi/WpsDialog$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/wifi/WpsDialog$1;-><init>(Lcom/android/lgesettings/wifi/WpsDialog;)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/wifi/WpsDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/wifi/WpsDialog;Lcom/android/lgesettings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/lgesettings/wifi/WpsDialog;->updateDialog(Lcom/android/lgesettings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/lgesettings/wifi/WpsDialog;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/lgesettings/wifi/WpsDialog;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/lgesettings/wifi/WpsDialog;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mTimeoutBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/lgesettings/wifi/WpsDialog;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/lgesettings/wifi/WpsDialog;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/lgesettings/wifi/WpsDialog;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/lgesettings/wifi/WpsDialog;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/lgesettings/wifi/WpsDialog;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/lgesettings/wifi/WpsDialog;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 255
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 257
    const-string v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 259
    .local v1, info:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    .line 260
    .local v3, state:Landroid/net/NetworkInfo$DetailedState;
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v5, :cond_0

    iget-object v5, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mDialogState:Lcom/android/lgesettings/wifi/WpsDialog$DialogState;

    sget-object v6, Lcom/android/lgesettings/wifi/WpsDialog$DialogState;->WPS_COMPLETE:Lcom/android/lgesettings/wifi/WpsDialog$DialogState;

    if-ne v5, v6, :cond_0

    .line 264
    const-string v5, "wifiInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiInfo;

    .line 265
    .local v4, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v4, :cond_0

    .line 266
    iget-object v5, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f0802b3

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 268
    .local v2, msg:Ljava/lang/String;
    sget-object v5, Lcom/android/lgesettings/wifi/WpsDialog$DialogState;->CONNECTED:Lcom/android/lgesettings/wifi/WpsDialog$DialogState;

    invoke-direct {p0, v5, v2}, Lcom/android/lgesettings/wifi/WpsDialog;->updateDialog(Lcom/android/lgesettings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    .line 272
    .end local v1           #info:Landroid/net/NetworkInfo;
    .end local v2           #msg:Ljava/lang/String;
    .end local v3           #state:Landroid/net/NetworkInfo$DetailedState;
    .end local v4           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_0
    return-void
.end method

.method private updateDialog(Lcom/android/lgesettings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    .locals 2
    .parameter "state"
    .parameter "msg"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mDialogState:Lcom/android/lgesettings/wifi/WpsDialog$DialogState;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WpsDialog$DialogState;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/lgesettings/wifi/WpsDialog$DialogState;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 252
    :goto_0
    return-void

    .line 226
    :cond_0
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mDialogState:Lcom/android/lgesettings/wifi/WpsDialog$DialogState;

    .line 228
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/lgesettings/wifi/WpsDialog$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/lgesettings/wifi/WpsDialog$4;-><init>(Lcom/android/lgesettings/wifi/WpsDialog;Lcom/android/lgesettings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WpsDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0401c2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mView:Landroid/view/View;

    .line 144
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a0438

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mTextView:Landroid/widget/TextView;

    .line 145
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f0802af

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 147
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a0439

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mTimeoutBar:Landroid/widget/ProgressBar;

    .line 148
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mTimeoutBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 149
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mTimeoutBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 151
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a043a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mProgressBar:Landroid/widget/ProgressBar;

    .line 152
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a043b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mButton:Landroid/widget/Button;

    .line 155
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mButton:Landroid/widget/Button;

    const v1, 0x7f0802e8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 156
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/lgesettings/wifi/WpsDialog$2;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/wifi/WpsDialog$2;-><init>(Lcom/android/lgesettings/wifi/WpsDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 165
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/WpsDialog;->setView(Landroid/view/View;)V

    .line 166
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 167
    return-void
.end method

.method protected onStart()V
    .locals 7

    .prologue
    const-wide/16 v2, 0x3e8

    .line 174
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mTimer:Ljava/util/Timer;

    .line 175
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/lgesettings/wifi/WpsDialog$3;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/wifi/WpsDialog$3;-><init>(Lcom/android/lgesettings/wifi/WpsDialog;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 188
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 190
    new-instance v6, Landroid/net/wifi/WpsInfo;

    invoke-direct {v6}, Landroid/net/wifi/WpsInfo;-><init>()V

    .line 191
    .local v6, wpsConfig:Landroid/net/wifi/WpsInfo;
    iget v0, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mWpsSetup:I

    iput v0, v6, Landroid/net/wifi/WpsInfo;->setup:I

    .line 192
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mWpsListener:Landroid/net/wifi/WifiManager$WpsListener;

    invoke-virtual {v0, v6, v1}, Landroid/net/wifi/WifiManager;->startWps(Landroid/net/wifi/WpsInfo;Landroid/net/wifi/WifiManager$WpsListener;)V

    .line 195
    const-string v0, "LGU"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lgu.wifiapi.WifiSettings.CONNECT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 198
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 202
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mDialogState:Lcom/android/lgesettings/wifi/WpsDialog$DialogState;

    sget-object v1, Lcom/android/lgesettings/wifi/WpsDialog$DialogState;->WPS_COMPLETE:Lcom/android/lgesettings/wifi/WpsDialog$DialogState;

    if-eq v0, v1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->cancelWps(Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 206
    const-string v0, "LGU"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lgu.wifiapi.WifiSettings.CANCEL_CONNECT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 213
    iput-object v3, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    .line 217
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WpsDialog;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 219
    :cond_2
    return-void
.end method

.method public setCancelable(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 137
    return-void
.end method
