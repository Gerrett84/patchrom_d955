.class public Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;
.super Landroid/app/Activity;
.source "WifiSettingsForSetupWizardXL.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final MLGESKTCM:Z

.field private static final mLgeKtCm:Z

.field private static final sNetworkStateMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Landroid/net/NetworkInfo$DetailedState;",
            "Landroid/net/NetworkInfo$DetailedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field OPERATOR_KT:Z

.field OPERATOR_KT_CM:Z

.field OPERATOR_SKT:Z

.field OPERATOR_SKT_CM:Z

.field private mAddNetworkButton:Landroid/widget/Button;

.field private mBackButton:Landroid/widget/Button;

.field private mBottomPadding:Landroid/view/View;

.field private mConnectButton:Landroid/widget/Button;

.field private mConnectingStatusLayout:Landroid/view/View;

.field private mConnectingStatusView:Landroid/widget/TextView;

.field private mContentPadding:Landroid/view/View;

.field private mEditingTitle:Ljava/lang/CharSequence;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mNetworkName:Ljava/lang/CharSequence;

.field private mPreviousNetworkState:Landroid/net/NetworkInfo$DetailedState;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRefreshButton:Landroid/widget/Button;

.field private mScreenState:I

.field private mSetupWrizadr_True:Z

.field private mSkipOrNextButton:Landroid/widget/Button;

.field private mTitleView:Landroid/widget/TextView;

.field private mTopDividerNoProgress:Landroid/view/View;

.field private mTopPadding:Landroid/view/View;

.field private mWifiConfig:Lcom/android/lgesettings/wifi/WifiConfigUiForSetupWizardXL;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

.field private mWifiSettingsFragmentLayout:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 66
    new-instance v0, Ljava/util/EnumMap;

    const-class v3, Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {v0, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    .line 70
    sget-object v0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v3, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v3, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v3, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v3, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v3, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v3, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v3, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v3, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v3, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v3, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v0, "wifi.lge.kt.cm"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mLgeKtCm:Z

    .line 156
    const-string v0, "wlan.lge.skt.cm"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SKT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    sput-boolean v1, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->MLGESKTCM:Z

    return-void

    :cond_0
    move v0, v2

    .line 153
    goto :goto_0

    :cond_1
    move v1, v2

    .line 156
    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    .line 131
    iput v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 143
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mPreviousNetworkState:Landroid/net/NetworkInfo$DetailedState;

    .line 146
    const-string v0, "SKT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->OPERATOR_SKT:Z

    .line 147
    iput-boolean v3, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->OPERATOR_SKT_CM:Z

    .line 148
    const-string v0, "KT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->OPERATOR_KT:Z

    .line 149
    iput-boolean v3, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->OPERATOR_KT_CM:Z

    .line 150
    iput-boolean v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mSetupWrizadr_True:Z

    return-void
.end method

.method private hideSoftwareKeyboard()V
    .locals 4

    .prologue
    .line 305
    const-string v1, "WifiSetupWizard"

    const-string v2, "Hiding software keyboard."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 307
    .local v0, focusedView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 308
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 310
    :cond_0
    return-void
.end method

.method private initViews()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 222
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 224
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "firstRun"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    const v2, 0x7f0a0095

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 226
    .local v1, layoutRoot:Landroid/view/View;
    const/high16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 228
    .end local v1           #layoutRoot:Landroid/view/View;
    :cond_0
    const-string v2, "extra_prefs_landscape_lock"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 229
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->setRequestedOrientation(I)V

    .line 231
    :cond_1
    const-string v2, "extra_prefs_portrait_lock"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 232
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->setRequestedOrientation(I)V

    .line 235
    :cond_2
    const v2, 0x7f0a0411

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    .line 236
    const v2, 0x7f0a0412

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    .line 237
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 238
    const v2, 0x7f0a0413

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mTopDividerNoProgress:Landroid/view/View;

    .line 239
    const v2, 0x7f0a041d

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mBottomPadding:Landroid/view/View;

    .line 241
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 242
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 243
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mTopDividerNoProgress:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 245
    const v2, 0x7f0a041f

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    .line 246
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    const v2, 0x7f0a0423

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    .line 248
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    const v2, 0x7f0a0422

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    .line 250
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    const v2, 0x7f0a0421

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    .line 252
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    const v2, 0x7f0a0420

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    .line 254
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    const v2, 0x7f0a0410

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mTopPadding:Landroid/view/View;

    .line 257
    const v2, 0x7f0a0416

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mContentPadding:Landroid/view/View;

    .line 259
    const v2, 0x7f0a0417

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    .line 260
    const v2, 0x7f0a041a

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusLayout:Landroid/view/View;

    .line 261
    const v2, 0x7f0a041b

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusView:Landroid/widget/TextView;

    .line 262
    return-void
.end method

.method private onAddNetworkButtonPressed()V
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiSettings;->onAddNetworkPressed()V

    .line 474
    return-void
.end method

.method private onBackButtonPressed()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 638
    iget v4, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    if-eq v4, v11, :cond_0

    iget v4, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 639
    :cond_0
    const-string v4, "WifiSetupWizard"

    const-string v5, "Back button pressed after connect action."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    iput v8, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 644
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->restoreFirstVisibilityState()V

    .line 646
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 647
    invoke-virtual {p0, v8}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->changeNextButtonState(Z)V

    .line 651
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->showScanningState()V

    .line 655
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 656
    .local v1, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 658
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    const-string v4, "WifiSetupWizard"

    const-string v5, "forgeting Wi-Fi network \"%s\" (id: %d)"

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v7, v6, v8

    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    new-instance v6, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL$1;

    invoke-direct {v6, p0}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL$1;-><init>(Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;)V

    invoke-virtual {v4, v5, v6}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 670
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_1
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 671
    invoke-direct {p0, v9}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->refreshAccessPoints(Z)V

    .line 686
    .end local v1           #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :goto_1
    invoke-virtual {p0, v8}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 687
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusLayout:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 688
    const v4, 0x7f0a0419

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 689
    .local v3, parent:Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 690
    invoke-virtual {v3, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 691
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/lgesettings/wifi/WifiConfigUiForSetupWizardXL;

    .line 692
    return-void

    .line 673
    .end local v3           #parent:Landroid/view/ViewGroup;
    :cond_2
    iput v8, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 674
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-virtual {v4}, Lcom/android/lgesettings/wifi/WifiSettings;->resumeWifiScan()V

    .line 676
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->restoreFirstVisibilityState()V

    .line 678
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 679
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 680
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 681
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->showDisconnectedProgressBar()V

    .line 682
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 683
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mBottomPadding:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private onEapNetworkSelected()V
    .locals 2

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 596
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    const v1, 0x7f08075b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 597
    return-void
.end method

.method private refreshAccessPoints(Z)V
    .locals 1
    .parameter "disconnectNetwork"

    .prologue
    .line 731
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->showScanningState()V

    .line 733
    if-eqz p1, :cond_0

    .line 734
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiSettings;->refreshAccessPoints()V

    .line 738
    return-void
.end method

.method private restoreFirstVisibilityState()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 265
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->showDefaultTitle()V

    .line 266
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 271
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 272
    return-void
.end method

.method private showConnectingProgressBar()V
    .locals 2

    .prologue
    .line 810
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->showTopDividerWithProgressBar()V

    .line 811
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 812
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 813
    return-void
.end method

.method private showConnectingState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 369
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 371
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mEditingTitle:Ljava/lang/CharSequence;

    .line 374
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->showConnectingTitle()V

    .line 375
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->showConnectingProgressBar()V

    .line 377
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 378
    return-void
.end method

.method private showConnectingTitle()V
    .locals 5

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/lgesettings/wifi/WifiConfigUiForSetupWizardXL;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/lgesettings/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/lgesettings/wifi/WifiConfigController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/lgesettings/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/lgesettings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 431
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/lgesettings/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/lgesettings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    .line 437
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f080753

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    return-void

    .line 433
    :cond_1
    const-string v0, "WifiSetupWizard"

    const-string v1, "Unexpected null found (WifiController or WifiConfig is null). Ignore them."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showDefaultTitle()V
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f080751

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    return-void
.end method

.method private showDisconnectedProgressBar()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 786
    iget v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    if-nez v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 788
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 789
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mTopDividerNoProgress:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 796
    :goto_0
    return-void

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 792
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 793
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 794
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mTopDividerNoProgress:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showScanningProgressBar()V
    .locals 2

    .prologue
    .line 802
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->showTopDividerWithProgressBar()V

    .line 803
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 804
    return-void
.end method

.method private showScanningState()V
    .locals 2

    .prologue
    .line 467
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 468
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 469
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->showScanningProgressBar()V

    .line 470
    return-void
.end method

.method private showTopDividerWithProgressBar()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 461
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 462
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mTopDividerNoProgress:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 463
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mBottomPadding:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 464
    return-void
.end method


# virtual methods
.method changeNextButtonState(Z)V
    .locals 2
    .parameter "connected"

    .prologue
    .line 698
    if-eqz p1, :cond_0

    .line 699
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    const v1, 0x7f08075a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 703
    :goto_0
    return-void

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    const v1, 0x7f080759

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method initSecurityFields(Landroid/view/View;I)Z
    .locals 6
    .parameter "view"
    .parameter "accessPointSecurity"

    .prologue
    const v5, 0x7f0a03a8

    const v4, 0x7f0a03a7

    const/4 v1, 0x1

    const/16 v3, 0x8

    const/4 v0, 0x0

    .line 548
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 549
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 550
    const v2, 0x7f0a03aa

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 551
    const v2, 0x7f0a03ab

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 553
    const/4 v2, 0x3

    if-ne p2, v2, :cond_1

    .line 554
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 555
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->hideSoftwareKeyboard()V

    .line 560
    const v1, 0x7f0a03a9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 561
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 566
    :goto_0
    const v1, 0x7f0a03ac

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 567
    const v1, 0x7f0a03aa

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 568
    const v1, 0x7f0a03ab

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 569
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->onEapNetworkSelected()V

    .line 591
    :goto_1
    return v0

    .line 564
    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 575
    :cond_1
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 576
    invoke-virtual {p0, v3}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 581
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/lgesettings/wifi/WifiConfigUiForSetupWizardXL;

    if-eqz v0, :cond_3

    .line 582
    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    if-ne p2, v1, :cond_4

    .line 584
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/lgesettings/wifi/WifiConfigUiForSetupWizardXL;

    const v2, 0x7f0a0384

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/wifi/WifiConfigUiForSetupWizardXL;->requestFocusAndShowKeyboard(I)V

    :cond_3
    :goto_2
    move v0, v1

    .line 591
    goto :goto_1

    .line 586
    :cond_4
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/lgesettings/wifi/WifiConfigUiForSetupWizardXL;

    const v2, 0x7f0a0104

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/wifi/WifiConfigUiForSetupWizardXL;->requestFocusAndShowKeyboard(I)V

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    .line 276
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->hideSoftwareKeyboard()V

    .line 277
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 278
    const-string v0, "WifiSetupWizard"

    const-string v1, "AddNetwork button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->onAddNetworkButtonPressed()V

    .line 302
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 280
    .restart local p1
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 281
    const-string v0, "WifiSetupWizard"

    const-string v1, "Refresh button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-direct {p0, v2}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->refreshAccessPoints(Z)V

    goto :goto_0

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 284
    const-string v0, "WifiSetupWizard"

    const-string v1, "Skip/Next button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const v0, 0x7f080759

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast p1, Landroid/widget/Button;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 288
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 290
    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->setResult(I)V

    .line 294
    :goto_1
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->finish()V

    goto :goto_0

    .line 292
    :cond_3
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->setResult(I)V

    goto :goto_1

    .line 295
    .restart local p1
    :cond_4
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_5

    .line 296
    const-string v0, "WifiSetupWizard"

    const-string v1, "Connect button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->onConnectButtonPressed()V

    goto :goto_0

    .line 298
    :cond_5
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 299
    const-string v0, "WifiSetupWizard"

    const-string v1, "Back button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->onBackButtonPressed()V

    goto :goto_0
.end method

.method onConnectButtonPressed()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 608
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 610
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/lgesettings/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v2}, Lcom/android/lgesettings/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/lgesettings/wifi/WifiConfigController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/wifi/WifiSettings;->submit(Lcom/android/lgesettings/wifi/WifiConfigController;)V

    .line 618
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->showConnectingState()V

    .line 621
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 622
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    const v2, 0x7f08075b

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 624
    const v1, 0x7f0a0419

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 625
    .local v0, parent:Landroid/view/ViewGroup;
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 626
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 627
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusView:Landroid/widget/TextView;

    const v2, 0x7f08076b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 629
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 630
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 631
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 632
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 633
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 634
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 161
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 163
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.LGSetupWizard"

    const-string v5, "com.android.LGSetupWizard.SetupFlowController"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .local v3, name:Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    .line 167
    .local v0, componentEnableSetupWizard:I
    sget-boolean v4, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mLgeKtCm:Z

    if-eqz v4, :cond_0

    .line 168
    iput-boolean v6, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->OPERATOR_KT_CM:Z

    .line 172
    :cond_0
    sget-boolean v4, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->MLGESKTCM:Z

    if-eqz v4, :cond_1

    .line 173
    iput-boolean v6, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->OPERATOR_SKT_CM:Z

    .line 175
    :cond_1
    const-string v4, "WifiSetupWizard"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ************** setupwizard Model ==== "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ro.product.device"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    if-nez v0, :cond_2

    .line 179
    iput-boolean v7, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mSetupWrizadr_True:Z

    .line 183
    :cond_2
    iget-boolean v4, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->OPERATOR_SKT:Z

    if-ne v4, v7, :cond_3

    iget-boolean v4, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->OPERATOR_SKT_CM:Z

    if-eq v4, v7, :cond_4

    :cond_3
    iget-boolean v4, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->OPERATOR_KT:Z

    if-ne v4, v7, :cond_6

    iget-boolean v4, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->OPERATOR_KT_CM:Z

    if-ne v4, v7, :cond_6

    :cond_4
    iget-boolean v4, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mSetupWrizadr_True:Z

    if-nez v4, :cond_6

    .line 184
    const/4 v1, 0x0

    .line 185
    .local v1, exceptCheckStr:Ljava/lang/String;
    const/4 v2, 0x0

    .line 187
    .local v2, exceptCheckVal:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "LG_WIFI_IN"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "LG_WIFI"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 190
    :goto_0
    const-string v4, "WifiSetupWizard"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LG_WIFI_IN : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", LG_WIFI : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-static {}, Lcom/android/lgesettings/wifi/WifiCarrierCmIntent;->initWiFiCM()V

    .line 193
    const-string v4, "lg_wifi_into"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x47

    if-eq v2, v4, :cond_6

    :cond_5
    const-string v4, "lg_wifi_setup"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x49

    if-ne v2, v4, :cond_7

    .line 202
    .end local v1           #exceptCheckStr:Ljava/lang/String;
    .end local v2           #exceptCheckVal:I
    :cond_6
    invoke-virtual {p0, v7}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->requestWindowFeature(I)Z

    .line 203
    const v4, 0x7f0401bd

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->setContentView(I)V

    .line 205
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    iput-object v4, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 208
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 210
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f0a0418

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/android/lgesettings/wifi/WifiSettings;

    iput-object v4, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/lgesettings/wifi/WifiSettings;

    .line 212
    const-string v4, "input_method"

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    iput-object v4, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 214
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->initViews()V

    .line 218
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->showScanningState()V

    .line 219
    :goto_1
    return-void

    .line 197
    .restart local v1       #exceptCheckStr:Ljava/lang/String;
    .restart local v2       #exceptCheckVal:I
    :cond_7
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/lgesettings/wifi/WifiCarrierCmIntent;->carrierWiFiCM(Landroid/content/Context;Landroid/content/pm/PackageManager;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_1

    .line 189
    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method

.method setPaddingVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 779
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mTopPadding:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 780
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->mContentPadding:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 781
    return-void
.end method
