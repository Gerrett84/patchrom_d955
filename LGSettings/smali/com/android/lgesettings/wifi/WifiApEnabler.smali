.class public Lcom/android/lgesettings/wifi/WifiApEnabler;
.super Ljava/lang/Object;
.source "WifiApEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/wifi/WifiApEnabler$Utf8ByteLengthFilter;
    }
.end annotation


# static fields
.field private static mDoNotShowAgain:Z

.field private static mInit:Z

.field private static mTimerSoftApOn:Z

.field private static mUpsellSoftApOn:Z


# instance fields
.field private final REQUEST_FIRST_TIME_USE:I

.field alertDialogHandler:Landroid/content/DialogInterface$OnClickListener;

.field alertDialogHandlerATT:Landroid/content/DialogInterface$OnClickListener;

.field private alertDialogView:Landroid/view/View;

.field private loopCounting:I

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private mAlertDialogView:Landroid/view/View;

.field private mAttentionView:Landroid/webkit/WebView;

.field private final mCheckBox:Landroid/preference/CheckBoxPreference;

.field mCm:Landroid/net/ConnectivityManager;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDelayedApEnabled:Z

.field private mDialog:Lcom/android/lgesettings/wifi/WifiApDialog;

.field private mHandler:Landroid/os/Handler;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mIsNoSimAlert:Z

.field private mIscheckedTethering:Z

.field private final mOriginalSummary:Ljava/lang/CharSequence;

.field private mPassword:Landroid/widget/EditText;

.field private mProvisionApp:[Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSimEnabled:Z

.field private final mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mStateMachineEvent:Z

.field private mSwitch:Landroid/widget/Switch;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTimer:Ljava/util/Timer;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;

.field pwDialogHandler:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 145
    sput-boolean v0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mInit:Z

    .line 146
    sput-boolean v0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mDoNotShowAgain:Z

    .line 158
    sput-boolean v0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mTimerSoftApOn:Z

    .line 159
    sput-boolean v0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mUpsellSoftApOn:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V
    .locals 3
    .parameter "context"
    .parameter "checkBox"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 108
    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 115
    iput-boolean v2, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mDelayedApEnabled:Z

    .line 154
    iput-boolean v2, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mIscheckedTethering:Z

    .line 176
    iput-boolean v2, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mIsNoSimAlert:Z

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSimEnabled:Z

    .line 183
    const/16 v0, 0x372

    iput v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->REQUEST_FIRST_TIME_USE:I

    .line 190
    new-instance v0, Lcom/android/lgesettings/wifi/WifiApEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/wifi/WifiApEnabler$1;-><init>(Lcom/android/lgesettings/wifi/WifiApEnabler;)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 501
    new-instance v0, Lcom/android/lgesettings/wifi/WifiApEnabler$5;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/wifi/WifiApEnabler$5;-><init>(Lcom/android/lgesettings/wifi/WifiApEnabler;)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->alertDialogHandlerATT:Landroid/content/DialogInterface$OnClickListener;

    .line 1294
    new-instance v0, Lcom/android/lgesettings/wifi/WifiApEnabler$12;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/wifi/WifiApEnabler$12;-><init>(Lcom/android/lgesettings/wifi/WifiApEnabler;)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->pwDialogHandler:Landroid/content/DialogInterface$OnClickListener;

    .line 1323
    new-instance v0, Lcom/android/lgesettings/wifi/WifiApEnabler$13;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/wifi/WifiApEnabler$13;-><init>(Lcom/android/lgesettings/wifi/WifiApEnabler;)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->alertDialogHandler:Landroid/content/DialogInterface$OnClickListener;

    .line 1835
    new-instance v0, Lcom/android/lgesettings/wifi/WifiApEnabler$20;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/wifi/WifiApEnabler$20;-><init>(Lcom/android/lgesettings/wifi/WifiApEnabler;)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    .line 322
    const-string v0, "WifiApEnabler"

    const-string v1, "WifiApEnabler overlay checkBox***"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    .line 324
    iput-object p2, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    .line 325
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    .line 326
    invoke-virtual {p2, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 328
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 329
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    .line 331
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .line 333
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 334
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 341
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.lge.upsell.Upsell.UPSELL_CHECK_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.lge.upsell.Upsell.UPSELL_CHECK_FAIL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.lge.upsell.Upsell.UPSELL_STOP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.lge.upsell.Upsell.HELP_VAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 352
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 354
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 8
    .parameter "context"
    .parameter "switch_"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object v5, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 108
    iput-object v5, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 115
    iput-boolean v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mDelayedApEnabled:Z

    .line 154
    iput-boolean v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mIscheckedTethering:Z

    .line 176
    iput-boolean v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mIsNoSimAlert:Z

    .line 177
    iput-boolean v7, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSimEnabled:Z

    .line 183
    const/16 v4, 0x372

    iput v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->REQUEST_FIRST_TIME_USE:I

    .line 190
    new-instance v4, Lcom/android/lgesettings/wifi/WifiApEnabler$1;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/wifi/WifiApEnabler$1;-><init>(Lcom/android/lgesettings/wifi/WifiApEnabler;)V

    iput-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 501
    new-instance v4, Lcom/android/lgesettings/wifi/WifiApEnabler$5;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/wifi/WifiApEnabler$5;-><init>(Lcom/android/lgesettings/wifi/WifiApEnabler;)V

    iput-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->alertDialogHandlerATT:Landroid/content/DialogInterface$OnClickListener;

    .line 1294
    new-instance v4, Lcom/android/lgesettings/wifi/WifiApEnabler$12;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/wifi/WifiApEnabler$12;-><init>(Lcom/android/lgesettings/wifi/WifiApEnabler;)V

    iput-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->pwDialogHandler:Landroid/content/DialogInterface$OnClickListener;

    .line 1323
    new-instance v4, Lcom/android/lgesettings/wifi/WifiApEnabler$13;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/wifi/WifiApEnabler$13;-><init>(Lcom/android/lgesettings/wifi/WifiApEnabler;)V

    iput-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->alertDialogHandler:Landroid/content/DialogInterface$OnClickListener;

    .line 1835
    new-instance v4, Lcom/android/lgesettings/wifi/WifiApEnabler$20;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/wifi/WifiApEnabler$20;-><init>(Lcom/android/lgesettings/wifi/WifiApEnabler;)V

    iput-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    .line 360
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    .line 361
    iput-object p2, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    .line 363
    iput-object v5, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    .line 364
    iput-object v5, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    .line 367
    const-string v4, "wifi"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    iput-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 368
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    iput-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    .line 370
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .line 372
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 373
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v5, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 374
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 376
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 379
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ATT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v4

    const-string v5, "US"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 380
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v5, "com.android.lgesettings.EntitlementCheckService.WIFI_ENTITLEMENT_CHECK_OK"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 381
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v5, "com.android.lgesettings.EntitlementCheckService.WIFI_ENTITLEMENT_CHECK_FAILURE"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 385
    :cond_0
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TMO"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v4

    const-string v5, "US"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 386
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v5, "com.lge.upsell.Upsell.UPSELL_CHECK_SUCCESS"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 387
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v5, "com.lge.upsell.Upsell.UPSELL_CHECK_FAIL"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 388
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v5, "com.lge.upsell.Upsell.UPSELL_STOP"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 389
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v5, "com.lge.upsell.Upsell.HELP_VAL"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 395
    :cond_1
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    iput-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 396
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 400
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const-string v5, "FIRST_FLAG"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 402
    .local v2, pref_ff:Landroid/content/SharedPreferences;
    const-string v4, "f_flag"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 403
    .local v0, flag_ff:Z
    if-ne v0, v7, :cond_2

    .line 404
    sput-boolean v7, Lcom/android/lgesettings/wifi/WifiApEnabler;->mInit:Z

    .line 409
    :goto_0
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const-string v5, "NOT_SHOW"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 411
    .local v3, pref_ns:Landroid/content/SharedPreferences;
    const-string v4, "not_show"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 412
    .local v1, flag_ns:Z
    if-ne v1, v7, :cond_3

    .line 413
    sput-boolean v7, Lcom/android/lgesettings/wifi/WifiApEnabler;->mDoNotShowAgain:Z

    .line 419
    :goto_1
    return-void

    .line 406
    .end local v1           #flag_ns:Z
    .end local v3           #pref_ns:Landroid/content/SharedPreferences;
    :cond_2
    sput-boolean v6, Lcom/android/lgesettings/wifi/WifiApEnabler;->mInit:Z

    goto :goto_0

    .line 415
    .restart local v1       #flag_ns:Z
    .restart local v3       #pref_ns:Landroid/content/SharedPreferences;
    :cond_3
    sput-boolean v6, Lcom/android/lgesettings/wifi/WifiApEnabler;->mDoNotShowAgain:Z

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/lgesettings/wifi/WifiApEnabler;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/lgesettings/wifi/WifiApEnabler;->setSwitchChecked(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/lgesettings/wifi/WifiApEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiApEnabler;->createHotspotWarningPopupForATT()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/lgesettings/wifi/WifiApEnabler;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/lgesettings/wifi/WifiApEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiApEnabler;->startProvisioningIfNecessary()V

    return-void
.end method

.method static synthetic access$1402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    sput-boolean p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mDoNotShowAgain:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/lgesettings/wifi/WifiApEnabler;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/lgesettings/wifi/WifiApEnabler;->isTmusSimCard(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/lgesettings/wifi/WifiApEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiApEnabler;->setUpsellTimer()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/lgesettings/wifi/WifiApEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiApEnabler;->startUpsell()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/lgesettings/wifi/WifiApEnabler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiApEnabler;->getbFirstTimeUse()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/lgesettings/wifi/WifiApEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiApEnabler;->updateTetherEnable()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/lgesettings/wifi/WifiApEnabler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->loopCounting:I

    return v0
.end method

.method static synthetic access$2102(Lcom/android/lgesettings/wifi/WifiApEnabler;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput p1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->loopCounting:I

    return p1
.end method

.method static synthetic access$2108(Lcom/android/lgesettings/wifi/WifiApEnabler;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->loopCounting:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->loopCounting:I

    return v0
.end method

.method static synthetic access$2202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    sput-boolean p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mTimerSoftApOn:Z

    return p0
.end method

.method static synthetic access$2300(Lcom/android/lgesettings/wifi/WifiApEnabler;)Ljava/util/Timer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    sput-boolean p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mUpsellSoftApOn:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/lgesettings/wifi/WifiApEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/lgesettings/wifi/WifiApEnabler;->setbFirstTimeUse(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/lgesettings/wifi/WifiApEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/lgesettings/wifi/WifiApEnabler;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/lgesettings/wifi/WifiApEnabler;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/android/lgesettings/wifi/WifiApEnabler;->updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/lgesettings/wifi/WifiApEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiApEnabler;->enableWifiSwitch()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/lgesettings/wifi/WifiApEnabler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mDelayedApEnabled:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/lgesettings/wifi/WifiApEnabler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mDelayedApEnabled:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/lgesettings/wifi/WifiApEnabler;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p1
.end method

.method private checkFormValid(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1504
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    move v1, v0

    .line 1506
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1507
    const-string v3, "[\\uAC00-\\uD7A3\\u1100-\\u11F9\\u3131-\\u318E]"

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v3

    .line 1510
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    if-eqz v3, :cond_1

    .line 1511
    const/4 v0, 0x1

    .line 1514
    :cond_0
    return v0

    .line 1506
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static checkLGU()Z
    .locals 2

    .prologue
    .line 2267
    const-string v0, "LGU"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2268
    const/4 v0, 0x0

    .line 2271
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private createHotspotWarningPopupForATT()V
    .locals 10

    .prologue
    const v9, 0x7f08136b

    const v8, 0x7f080016

    const v7, 0x7f080015

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 534
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 536
    .local v0, cr:Landroid/content/ContentResolver;
    sget-boolean v3, Lcom/android/lgesettings/wifi/WifiApEnabler;->mDoNotShowAgain:Z

    if-nez v3, :cond_3

    .line 537
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v3}, Lcom/android/lgesettings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    .line 538
    .local v2, secureIndex:I
    if-eq v2, v6, :cond_0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 539
    :cond_0
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 541
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f040196

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mAlertDialogView:Landroid/view/View;

    .line 542
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mAlertDialogView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/lgesettings/wifi/WifiApEnabler$6;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/wifi/WifiApEnabler$6;-><init>(Lcom/android/lgesettings/wifi/WifiApEnabler;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->alertDialogHandlerATT:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->alertDialogHandlerATT:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v8, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 564
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mAlertDialogView:Landroid/view/View;

    const v4, 0x7f0a0384

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mPassword:Landroid/widget/EditText;

    .line 565
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_1

    .line 566
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mPassword:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 569
    :cond_1
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mPassword:Landroid/widget/EditText;

    const/16 v4, 0x90

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 570
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mAlertDialogView:Landroid/view/View;

    const v4, 0x7f0a0397

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 572
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mAlertDialogView:Landroid/view/View;

    const v4, 0x7f0a0397

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 573
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mAlertDialogView:Landroid/view/View;

    const v4, 0x7f0a002e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 577
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    .line 579
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 580
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 619
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #secureIndex:I
    :goto_0
    return-void

    .line 582
    .restart local v2       #secureIndex:I
    :cond_2
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 584
    .restart local v1       #inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f040197

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mAlertDialogView:Landroid/view/View;

    .line 586
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1010355

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mAlertDialogView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/lgesettings/wifi/WifiApEnabler$7;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/wifi/WifiApEnabler$7;-><init>(Lcom/android/lgesettings/wifi/WifiApEnabler;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->alertDialogHandlerATT:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->alertDialogHandlerATT:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v8, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 612
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mAlertDialogView:Landroid/view/View;

    const v4, 0x7f0a002e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 613
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    .line 614
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 617
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #secureIndex:I
    :cond_3
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiApEnabler;->startProvisioningIfNecessary()V

    goto :goto_0
.end method

.method private createWifiOffWarningDialogForATT()V
    .locals 7

    .prologue
    .line 464
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 466
    .local v1, cr:Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    .line 467
    .local v3, wifiState:I
    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 468
    :cond_0
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 469
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f040199

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mAlertDialogView:Landroid/view/View;

    .line 471
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x1010355

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0816cc

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mAlertDialogView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f080015

    new-instance v6, Lcom/android/lgesettings/wifi/WifiApEnabler$4;

    invoke-direct {v6, p0}, Lcom/android/lgesettings/wifi/WifiApEnabler$4;-><init>(Lcom/android/lgesettings/wifi/WifiApEnabler;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f080016

    new-instance v6, Lcom/android/lgesettings/wifi/WifiApEnabler$3;

    invoke-direct {v6, p0}, Lcom/android/lgesettings/wifi/WifiApEnabler$3;-><init>(Lcom/android/lgesettings/wifi/WifiApEnabler;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/lgesettings/wifi/WifiApEnabler$2;

    invoke-direct {v5, p0}, Lcom/android/lgesettings/wifi/WifiApEnabler$2;-><init>(Lcom/android/lgesettings/wifi/WifiApEnabler;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 495
    .local v0, altDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 499
    .end local v0           #altDialog:Landroid/app/AlertDialog;
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    :goto_0
    return-void

    .line 497
    :cond_1
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiApEnabler;->createHotspotWarningPopupForATT()V

    goto :goto_0
.end method

.method private enableWifiSwitch()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 860
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 863
    .local v1, isAirplaneMode:Z
    :goto_0
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TMO"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v4

    const-string v5, "US"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 865
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 866
    .local v0, currentSimStatus:I
    const/4 v4, 0x5

    if-eq v0, v4, :cond_3

    .line 868
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 893
    .end local v0           #currentSimStatus:I
    :goto_1
    sget-boolean v4, Lcom/android/lgesettings/lgesetting/Config/Config;->THREELM_MDM:Z

    if-eqz v4, :cond_0

    .line 894
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tethering_blocked"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 897
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 898
    invoke-direct {p0, v3}, Lcom/android/lgesettings/wifi/WifiApEnabler;->setSwitchChecked(Z)V

    .line 904
    :cond_0
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v2, :cond_1

    .line 905
    invoke-static {}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->getInstance()Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->setWifiApEnablerMenu(Landroid/widget/Switch;)Z

    .line 908
    :cond_1
    return-void

    .end local v1           #isAirplaneMode:Z
    :cond_2
    move v1, v3

    .line 860
    goto :goto_0

    .line 871
    .restart local v0       #currentSimStatus:I
    .restart local v1       #isAirplaneMode:Z
    :cond_3
    if-nez v1, :cond_4

    .line 873
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_1

    .line 877
    :cond_4
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_1

    .line 883
    .end local v0           #currentSimStatus:I
    :cond_5
    if-nez v1, :cond_6

    .line 885
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_1

    .line 889
    :cond_6
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_1
.end method

.method private enableWifiSwitchDuringUpsell()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 780
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    move v1, v2

    .line 783
    .local v1, isAirplaneMode:Z
    :goto_0
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TMO"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v4

    const-string v5, "US"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 785
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 786
    .local v0, currentSimStatus:I
    const/4 v4, 0x5

    if-eq v0, v4, :cond_4

    .line 788
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 802
    .end local v0           #currentSimStatus:I
    :cond_0
    :goto_1
    sget-boolean v4, Lcom/android/lgesettings/lgesetting/Config/Config;->THREELM_MDM:Z

    if-eqz v4, :cond_1

    .line 803
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tethering_blocked"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    .line 806
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 807
    invoke-direct {p0, v3}, Lcom/android/lgesettings/wifi/WifiApEnabler;->setSwitchChecked(Z)V

    .line 813
    :cond_1
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v2, :cond_2

    .line 814
    invoke-static {}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->getInstance()Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->setWifiApEnablerMenu(Landroid/widget/Switch;)Z

    .line 817
    :cond_2
    return-void

    .end local v1           #isAirplaneMode:Z
    :cond_3
    move v1, v3

    .line 780
    goto :goto_0

    .line 791
    .restart local v0       #currentSimStatus:I
    .restart local v1       #isAirplaneMode:Z
    :cond_4
    if-nez v1, :cond_5

    .line 793
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_1

    .line 797
    :cond_5
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_1
.end method

.method private getSettingInt(Ljava/lang/String;I)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2121
    const-string v0, "WifiApEnabler"

    const-string v1, "CSC_A getSettingInt"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const-string v1, "first_time_use_Settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2123
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getbFirstTimeUse()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2104
    const-string v1, "wifi_help_ask"

    invoke-direct {p0, v1, v0}, Lcom/android/lgesettings/wifi/WifiApEnabler;->getSettingInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 2112
    :goto_0
    const-string v1, "WifiApEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getbFirstTimeUse() return = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    return v0

    .line 2110
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleWifiApStateChanged(I)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 706
    packed-switch p1, :pswitch_data_0

    .line 763
    invoke-direct {p0, v3}, Lcom/android/lgesettings/wifi/WifiApEnabler;->setSwitchChecked(Z)V

    .line 764
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiApEnabler;->enableWifiSwitch()V

    .line 767
    :goto_0
    return-void

    .line 710
    :pswitch_0
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "US"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TMO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 711
    sput-boolean v3, Lcom/android/lgesettings/wifi/WifiApEnabler;->mUpsellSoftApOn:Z

    .line 713
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 723
    :pswitch_1
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "US"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TMO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 724
    sput-boolean v3, Lcom/android/lgesettings/wifi/WifiApEnabler;->mUpsellSoftApOn:Z

    .line 726
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/lgesettings/wifi/WifiApEnabler;->setSwitchChecked(Z)V

    .line 727
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 730
    :pswitch_2
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "US"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TMO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 731
    sput-boolean v3, Lcom/android/lgesettings/wifi/WifiApEnabler;->mUpsellSoftApOn:Z

    .line 735
    :cond_2
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 741
    :pswitch_3
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "US"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TMO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 742
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 743
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "upsell_svc_started"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_3

    .line 744
    const-string v1, "upsell_check_ongoing"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 746
    :cond_3
    sget-boolean v1, Lcom/android/lgesettings/wifi/WifiApEnabler;->mTimerSoftApOn:Z

    if-nez v1, :cond_4

    const-string v1, "upsell_check_ongoing"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_5

    .line 748
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/lgesettings/wifi/WifiApEnabler;->setSwitchChecked(Z)V

    .line 749
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiApEnabler;->enableWifiSwitchDuringUpsell()V

    goto/16 :goto_0

    .line 751
    :cond_5
    invoke-direct {p0, v3}, Lcom/android/lgesettings/wifi/WifiApEnabler;->setSwitchChecked(Z)V

    .line 752
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiApEnabler;->enableWifiSwitch()V

    goto/16 :goto_0

    .line 755
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_6
    invoke-direct {p0, v3}, Lcom/android/lgesettings/wifi/WifiApEnabler;->setSwitchChecked(Z)V

    .line 756
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiApEnabler;->enableWifiSwitch()V

    goto/16 :goto_0

    .line 706
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isTmusSimCard(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2174
    if-nez p1, :cond_0

    .line 2188
    :goto_0
    return v0

    .line 2179
    :cond_0
    const-string v1, "00101"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "310160"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "310200"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "310210"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "310220"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "310230"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "310240"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "310250"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "310260"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "310270"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "310300"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "310310"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "310490"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "310530"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "310580"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "310590"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "310640"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "310660"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "310800"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2184
    :cond_1
    const-string v0, "WifiApEnabler"

    const-string v1, "TMUS SIM CARD inserted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 2187
    :cond_2
    const-string v1, "WifiApEnabler"

    const-string v2, "NON TMUS SIM CARD inserted"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private setSettingInt(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2127
    const-string v0, "WifiApEnabler"

    const-string v1, "CSC_A setSettingInt"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2128
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const-string v1, "first_time_use_Settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2129
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2130
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2131
    return-void
.end method

.method private setSwitchChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 771
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 772
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mStateMachineEvent:Z

    .line 773
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 774
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mStateMachineEvent:Z

    .line 776
    :cond_0
    return-void
.end method

.method private setUpsellTimer()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x1f4

    const/4 v4, 0x1

    .line 1904
    const-string v0, "WifiApEnabler"

    const-string v1, "setUpsellTimer( )"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->loopCounting:I

    .line 1906
    sput-boolean v4, Lcom/android/lgesettings/wifi/WifiApEnabler;->mTimerSoftApOn:Z

    .line 1908
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mHandler:Landroid/os/Handler;

    .line 1909
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1910
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1911
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mTimer:Ljava/util/Timer;

    .line 1913
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0, v4}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mTimer:Ljava/util/Timer;

    .line 1914
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/lgesettings/wifi/WifiApEnabler$22;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/wifi/WifiApEnabler$22;-><init>(Lcom/android/lgesettings/wifi/WifiApEnabler;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 1962
    return-void
.end method

.method private setbFirstTimeUse(I)V
    .locals 1
    .parameter

    .prologue
    .line 2117
    const-string v0, "wifi_help_ask"

    invoke-direct {p0, v0, p1}, Lcom/android/lgesettings/wifi/WifiApEnabler;->setSettingInt(Ljava/lang/String;I)V

    .line 2118
    return-void
.end method

.method private startProvisioningIfNecessary()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1462
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiApEnabler;->isProvisioningNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1463
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1466
    const-string v0, "US"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ATT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1467
    const-string v0, "WifiApEnabler"

    const-string v2, "[TetherSettings] Make Intent for Entitlement"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    const-string v0, "Tether_Type"

    const-string v2, "WIFI"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1472
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mProvisionApp:[Ljava/lang/String;

    aget-object v0, v0, v4

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mProvisionApp:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1473
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1477
    :goto_0
    return-void

    .line 1475
    :cond_1
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiApEnabler;->startTethering()V

    goto :goto_0
.end method

.method private startTethering()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1480
    const-string v0, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1481
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiApEnabler;->CreateWarningDialogForDCM()Z

    .line 1498
    :goto_0
    return-void

    .line 1484
    :cond_0
    const-string v0, "KDDI"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1485
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "TETHER_POPUP_KDDI"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1486
    const-string v1, "WifiApEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[KDDI] show again : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    if-nez v0, :cond_1

    .line 1488
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiApEnabler;->CreateWarningDialogForKDDI()V

    goto :goto_0

    .line 1491
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/lgesettings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    goto :goto_0

    .line 1496
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/lgesettings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    goto :goto_0
.end method

.method private startUpsell()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 2079
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2081
    const-string v1, "upsell_svc_started"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 2082
    const-string v1, "upsell_check_ongoing"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2085
    :cond_0
    const-string v1, "upsell_check_ongoing"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 2086
    const-string v0, "WifiApEnabler"

    const-string v1, "WifiApEnabler::Skip launch Upsell check"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    :goto_0
    return-void

    .line 2090
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2091
    const-string v2, "Tethering_Type"

    const-string v3, "Wifi"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2092
    const-string v2, "com.lge.upsell"

    const-string v3, "com.lge.upsell.DataService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2093
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2094
    const-string v1, "upsell_check_ongoing"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2095
    const-string v0, "WifiApEnabler"

    const-string v1, "WifiApEnabler::Start Upsell check"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateTetherEnable()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1846
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->getInstance()Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->setWifiApEnablerMenu(Landroid/widget/Switch;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1848
    const-string v0, "WifiApEnabler"

    const-string v1, "LGMDM Block Hotspot : updateTetherEnable()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    :goto_0
    return-void

    .line 1852
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    .line 1853
    const/4 v3, 0x5

    if-eq v2, v3, :cond_5

    .line 1854
    iput-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSimEnabled:Z

    .line 1856
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v4, "US"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TMO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1857
    iput-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mIsNoSimAlert:Z

    .line 1860
    :cond_1
    iget-boolean v3, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mIsNoSimAlert:Z

    if-nez v3, :cond_2

    .line 1863
    iput-boolean v1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mIsNoSimAlert:Z

    .line 1864
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v3, "US"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TMO"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1865
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0804ed

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f0804ee

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f0804ef

    new-instance v4, Lcom/android/lgesettings/wifi/WifiApEnabler$21;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/wifi/WifiApEnabler$21;-><init>(Lcom/android/lgesettings/wifi/WifiApEnabler;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1873
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1879
    :cond_2
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v3, "US"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TMO"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1880
    :cond_3
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_4

    .line 1881
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 1885
    :cond_4
    const-string v0, "WifiApEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentSimStatus : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    const-string v0, "WifiApEnabler"

    const-string v1, "TelephonyManager.SIM_STATE_READY : 5"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    const-string v0, "WifiApEnabler"

    const-string v1, "Tether : false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1890
    :cond_5
    iput-boolean v1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSimEnabled:Z

    .line 1892
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_6

    move v0, v1

    .line 1893
    :cond_6
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v2, :cond_7

    if-nez v0, :cond_7

    .line 1895
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 1899
    :cond_7
    const-string v0, "WifiApEnabler"

    const-string v1, "Tether : true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 13
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    .line 681
    const/4 v11, 0x0

    .line 682
    .local v11, wifiTethered:Z
    const/4 v10, 0x0

    .line 684
    .local v10, wifiErrored:Z
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/Object;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v0           #arr$:[Ljava/lang/Object;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v6, v0, v3

    .local v6, o:Ljava/lang/Object;
    move-object v8, v6

    .line 685
    check-cast v8, Ljava/lang/String;

    .line 686
    .local v8, s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v7, v1, v2

    .line 687
    .local v7, regex:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v11, 0x1

    .line 686
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 684
    .end local v7           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_0

    .line 690
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v5           #len$:I
    .end local v6           #o:Ljava/lang/Object;
    .end local v8           #s:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p3

    .restart local v0       #arr$:[Ljava/lang/Object;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    move v3, v2

    .end local v0           #arr$:[Ljava/lang/Object;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .restart local v3       #i$:I
    :goto_2
    if-ge v3, v4, :cond_5

    aget-object v6, v0, v3

    .restart local v6       #o:Ljava/lang/Object;
    move-object v8, v6

    .line 691
    check-cast v8, Ljava/lang/String;

    .line 692
    .restart local v8       #s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v5, v1

    .restart local v5       #len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_3
    if-ge v2, v5, :cond_4

    aget-object v7, v1, v2

    .line 693
    .restart local v7       #regex:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v10, 0x1

    .line 692
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 690
    .end local v7           #regex:Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_2

    .line 697
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v5           #len$:I
    .end local v6           #o:Ljava/lang/Object;
    .end local v8           #s:Ljava/lang/String;
    :cond_5
    if-eqz v11, :cond_7

    .line 698
    iget-object v12, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    .line 699
    .local v9, wifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0, v9}, Lcom/android/lgesettings/wifi/WifiApEnabler;->updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V

    .line 703
    .end local v9           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_6
    :goto_4
    return-void

    .line 700
    :cond_7
    if-eqz v10, :cond_6

    goto :goto_4
.end method

.method private validate()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1229
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 1232
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mPassword:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mPassword:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 1238
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1239
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1247
    :cond_2
    :goto_0
    return-void

    .line 1242
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1243
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected CreateWarningDialogForDCM()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 1607
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 1609
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    .line 1610
    const-string v0, "html/%y%z/tether_attention_%x.html"

    const-string v1, "%y"

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1611
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1612
    const-string v0, "html/%y%z/tether_attention_%x.html"

    const-string v1, "%y"

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1613
    const-string v1, "%z"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1614
    const-string v1, "%x"

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1622
    :goto_0
    const/4 v1, 0x1

    .line 1623
    const/4 v5, 0x0

    .line 1626
    :try_start_0
    invoke-virtual {v4, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1630
    if-eqz v0, :cond_7

    .line 1632
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    .line 1638
    :goto_1
    const-string v1, "file:///android_asset/html/%y%z/tether_attention_%x.html"

    const-string v4, "%y"

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1639
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v4, "JP"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1640
    const-string v1, "file:///android_asset/html/%y%z/tether_attention_%x.html"

    const-string v4, "%y"

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1641
    const-string v4, "%z"

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1642
    const-string v1, "%x"

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1651
    :goto_3
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1653
    const v3, 0x7f040164

    invoke-virtual {v0, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->alertDialogView:Landroid/view/View;

    .line 1654
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->alertDialogView:Landroid/view/View;

    const v3, 0x7f0a030a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mAttentionView:Landroid/webkit/WebView;

    .line 1655
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mAttentionView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1658
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mAttentionView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 1659
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mAttentionView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 1660
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mAttentionView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1663
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1664
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1665
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 1666
    const v1, 0x7f08031d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1667
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->alertDialogView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1668
    new-instance v1, Lcom/android/lgesettings/wifi/WifiApEnabler$14;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/wifi/WifiApEnabler$14;-><init>(Lcom/android/lgesettings/wifi/WifiApEnabler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1686
    const v1, 0x7f08031e

    new-instance v3, Lcom/android/lgesettings/wifi/WifiApEnabler$15;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/wifi/WifiApEnabler$15;-><init>(Lcom/android/lgesettings/wifi/WifiApEnabler;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1694
    const v1, 0x7f08031f

    new-instance v3, Lcom/android/lgesettings/wifi/WifiApEnabler$16;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/wifi/WifiApEnabler$16;-><init>(Lcom/android/lgesettings/wifi/WifiApEnabler;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1706
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1707
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1709
    return v2

    .line 1618
    :cond_1
    const-string v0, "html/%y%z/tether_attention_%x.html"

    const-string v1, "%y"

    const-string v5, "en"

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1619
    const-string v1, "%z"

    const-string v5, "_us"

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1620
    const-string v1, "%x"

    const-string v5, "en"

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1633
    :catch_0
    move-exception v0

    move v0, v1

    .line 1634
    goto/16 :goto_1

    .line 1627
    :catch_1
    move-exception v0

    .line 1630
    if-eqz v7, :cond_6

    .line 1632
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move v0, v2

    .line 1634
    goto/16 :goto_1

    .line 1633
    :catch_2
    move-exception v0

    move v0, v2

    .line 1634
    goto/16 :goto_1

    .line 1630
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 1632
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1634
    :cond_2
    :goto_4
    throw v0

    .line 1641
    :cond_3
    const-string v0, ""

    goto/16 :goto_2

    .line 1646
    :cond_4
    const-string v1, "file:///android_asset/html/%y%z/tether_attention_%x.html"

    const-string v3, "%y"

    const-string v4, "en"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1647
    const-string v3, "%z"

    if-eqz v0, :cond_5

    const-string v0, "_us"

    :goto_5
    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1648
    const-string v1, "%x"

    const-string v3, "en"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_3

    .line 1647
    :cond_5
    const-string v0, ""

    goto :goto_5

    .line 1633
    :catch_3
    move-exception v1

    goto :goto_4

    :cond_6
    move v0, v2

    goto/16 :goto_1

    :cond_7
    move v0, v1

    goto/16 :goto_1
.end method

.method protected CreateWarningDialogForKDDI()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1716
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1717
    const v1, 0x7f040165

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->alertDialogView:Landroid/view/View;

    .line 1718
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->alertDialogView:Landroid/view/View;

    const v1, 0x7f0a030c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1719
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->alertDialogView:Landroid/view/View;

    const v2, 0x7f0a030b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1720
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1721
    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1722
    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 1723
    const v3, 0x7f080ffe

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1724
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->alertDialogView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1725
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " <a href=\'https://cs.kddi.com/smt_i/te/\'>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f081000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</a>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1727
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f081002

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    .line 1728
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1729
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1730
    new-instance v1, Lcom/android/lgesettings/wifi/WifiApEnabler$17;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/wifi/WifiApEnabler$17;-><init>(Lcom/android/lgesettings/wifi/WifiApEnabler;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1743
    const v1, 0x7f081004

    new-instance v3, Lcom/android/lgesettings/wifi/WifiApEnabler$18;

    invoke-direct {v3, p0, v0}, Lcom/android/lgesettings/wifi/WifiApEnabler$18;-><init>(Lcom/android/lgesettings/wifi/WifiApEnabler;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1754
    const v0, 0x7f081003

    new-instance v1, Lcom/android/lgesettings/wifi/WifiApEnabler$19;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/wifi/WifiApEnabler$19;-><init>(Lcom/android/lgesettings/wifi/WifiApEnabler;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1761
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1762
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1764
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1250
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1251
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1252
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    .line 1254
    const-string v1, "KR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1255
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1256
    sget-boolean v0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mDoNotShowAgain:Z

    if-nez v0, :cond_0

    .line 1257
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/wifi/WifiApEnabler;->checkFormValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1260
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080d28

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1263
    sput-boolean v4, Lcom/android/lgesettings/wifi/WifiApEnabler;->mDoNotShowAgain:Z

    .line 1272
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiApEnabler;->validate()V

    .line 1273
    return-void

    .line 1267
    :cond_1
    sget-boolean v0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mDoNotShowAgain:Z

    if-ne v0, v4, :cond_0

    .line 1268
    sput-boolean v3, Lcom/android/lgesettings/wifi/WifiApEnabler;->mDoNotShowAgain:Z

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1277
    return-void
.end method

.method public checkProvWithUpsell()V
    .locals 9

    .prologue
    const v8, 0x7f0816ae

    const/4 v7, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1967
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->getInstance()Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;

    move-result-object v0

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->setWifiApEnablerMenu(Landroid/widget/Switch;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1969
    const-string v0, "WifiApEnabler"

    const-string v1, "LGMDM Block Hotspot : checkProvWithUpsell()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    :cond_0
    :goto_0
    return-void

    .line 1973
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    .line 1977
    if-ne v3, v7, :cond_2

    .line 1978
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 1980
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1981
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1982
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiApEnabler;->showNotavailableDataNetworkPopup()V

    .line 1983
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 1985
    sput-boolean v2, Lcom/android/lgesettings/wifi/WifiApEnabler;->mInit:Z

    .line 1986
    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/WifiApEnabler;->setFirstFlagPreference(Z)V

    goto :goto_0

    .line 1993
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 1996
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v4

    .line 1997
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1998
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "airplane_mode_on"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 2001
    :goto_1
    if-eqz v0, :cond_5

    .line 2002
    const-string v0, "WifiApEnabler"

    const-string v1, " Start AP Check : already AP Airplain Mode "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    invoke-direct {p0, v2}, Lcom/android/lgesettings/wifi/WifiApEnabler;->setSwitchChecked(Z)V

    .line 2004
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 1998
    goto :goto_1

    .line 2009
    :cond_5
    const/16 v0, 0xd

    if-ne v4, v0, :cond_6

    .line 2010
    const-string v0, "WifiApEnabler"

    const-string v2, " Start AP Check : alrey AP enabled "

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    invoke-direct {p0, v1}, Lcom/android/lgesettings/wifi/WifiApEnabler;->setSwitchChecked(Z)V

    .line 2012
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 2014
    :cond_6
    const-string v0, "WifiApEnabler"

    const-string v4, " Start AP Check : now start AP enable "

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    invoke-direct {p0, v5}, Lcom/android/lgesettings/wifi/WifiApEnabler;->isTmusSimCard(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2016
    if-ne v3, v7, :cond_7

    .line 2018
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v8, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2019
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 2020
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2021
    const-string v2, "wifi_saved_state"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2022
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiApEnabler;->setUpsellTimer()V

    goto/16 :goto_0

    .line 2024
    :cond_7
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiApEnabler;->startUpsell()V

    goto/16 :goto_0

    .line 2028
    :cond_8
    if-ne v3, v7, :cond_9

    .line 2029
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v8, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2031
    :cond_9
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    .line 2032
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiApEnabler;->getbFirstTimeUse()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2034
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2035
    const-string v0, "select"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2036
    const-string v0, "com.lge.upsell"

    const-string v1, "com.lge.upsell.FirstTimeUse"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2037
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/16 v1, 0x372

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method

.method isProvisioningNeeded()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1444
    const-string v2, "US"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "ATT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1445
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tether_entitlement_check_state"

    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_1

    .line 1446
    const-string v1, "WifiApEnabler"

    const-string v2, "[TetherSettings] Need to provision for AT&T"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    :cond_0
    :goto_0
    return v0

    .line 1449
    :cond_1
    const-string v0, "WifiApEnabler"

    const-string v2, "[TetherSettings] Provisioning for AT&T is already done"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1450
    goto :goto_0

    .line 1455
    :cond_2
    const-string v2, "net.tethering.noprovisioning"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 1456
    goto :goto_0

    .line 1458
    :cond_3
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mProvisionApp:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 13
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const v12, 0x7f0a0397

    const/4 v9, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 996
    iget-boolean v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mStateMachineEvent:Z

    if-eqz v6, :cond_0

    .line 1225
    :goto_0
    return-void

    .line 1000
    :cond_0
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    iput-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1001
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v6}, Lcom/android/lgesettings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v5

    .line 1003
    .local v5, secureIndex:I
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v6

    const-string v7, "US"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ATT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1004
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09009e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mProvisionApp:[Ljava/lang/String;

    .line 1012
    :goto_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1014
    .local v1, enable:Z
    const-string v6, "WifiApEnabler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCheckedChanged(), enable = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v6

    const-string v7, "US"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    const-string v7, "TMO"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1018
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 1019
    .local v0, currentSimStatus:I
    const/4 v6, 0x5

    if-eq v0, v6, :cond_2

    .line 1020
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiApEnabler;->updateTetherEnable()V

    .line 1021
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiApEnabler;->enableWifiSwitch()V

    goto :goto_0

    .line 1006
    .end local v0           #currentSimStatus:I
    .end local v1           #enable:Z
    :cond_1
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1070025

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mProvisionApp:[Ljava/lang/String;

    goto :goto_1

    .line 1024
    .restart local v0       #currentSimStatus:I
    .restart local v1       #enable:Z
    :cond_2
    if-eqz v1, :cond_6

    .line 1025
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const-string v7, "FIRST_FLAG"

    invoke-virtual {v6, v7, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1026
    .local v4, pref_ff:Landroid/content/SharedPreferences;
    const-string v6, "f_flag"

    invoke-interface {v4, v6, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1027
    .local v2, flag_ff:Z
    if-ne v2, v11, :cond_3

    .line 1028
    sput-boolean v11, Lcom/android/lgesettings/wifi/WifiApEnabler;->mInit:Z

    .line 1032
    :goto_2
    const-string v6, "WifiApEnabler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCheckedChanged(), mInit = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/android/lgesettings/wifi/WifiApEnabler;->mInit:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v6, :cond_4

    if-ne v1, v11, :cond_4

    sget-boolean v6, Lcom/android/lgesettings/wifi/WifiApEnabler;->mInit:Z

    if-eqz v6, :cond_4

    .line 1034
    const-string v6, "WifiApEnabler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "showDialog()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    iput-boolean v11, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mIscheckedTethering:Z

    .line 1037
    new-instance v6, Lcom/android/lgesettings/wifi/WifiApDialog;

    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v6, v7, p0, v8}, Lcom/android/lgesettings/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mDialog:Lcom/android/lgesettings/wifi/WifiApDialog;

    .line 1039
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mDialog:Lcom/android/lgesettings/wifi/WifiApDialog;

    invoke-virtual {v6}, Lcom/android/lgesettings/wifi/WifiApDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x15

    invoke-virtual {v6, v7}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1043
    invoke-direct {p0, v10}, Lcom/android/lgesettings/wifi/WifiApEnabler;->setSwitchChecked(Z)V

    .line 1044
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mDialog:Lcom/android/lgesettings/wifi/WifiApDialog;

    invoke-virtual {v6}, Lcom/android/lgesettings/wifi/WifiApDialog;->show()V

    goto/16 :goto_0

    .line 1030
    :cond_3
    sput-boolean v10, Lcom/android/lgesettings/wifi/WifiApEnabler;->mInit:Z

    goto :goto_2

    .line 1045
    :cond_4
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v6, :cond_5

    if-ne v1, v11, :cond_5

    sget-boolean v6, Lcom/android/lgesettings/wifi/WifiApEnabler;->mInit:Z

    if-nez v6, :cond_5

    .line 1046
    const-string v6, "WifiApEnabler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "checkProvWithUpsell()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiApEnabler;->checkProvWithUpsell()V

    goto/16 :goto_0

    .line 1049
    :cond_5
    const-string v6, "WifiApEnabler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "startUpsell()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiApEnabler;->startUpsell()V

    goto/16 :goto_0

    .line 1053
    .end local v2           #flag_ff:Z
    .end local v4           #pref_ff:Landroid/content/SharedPreferences;
    :cond_6
    invoke-virtual {p0, v10}, Lcom/android/lgesettings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    goto/16 :goto_0

    .line 1058
    .end local v0           #currentSimStatus:I
    :cond_7
    if-eqz v1, :cond_12

    .line 1059
    const-string v6, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "KDDI"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1062
    :cond_8
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiApEnabler;->startProvisioningIfNecessary()V

    goto/16 :goto_0

    .line 1063
    :cond_9
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ATT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v6

    const-string v7, "US"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1064
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiApEnabler;->createWifiOffWarningDialogForATT()V

    goto/16 :goto_0

    .line 1068
    :cond_a
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const-string v7, "FIRST_FLAG"

    invoke-virtual {v6, v7, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1070
    .restart local v4       #pref_ff:Landroid/content/SharedPreferences;
    const-string v6, "f_flag"

    invoke-interface {v4, v6, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    sput-boolean v6, Lcom/android/lgesettings/wifi/WifiApEnabler;->mInit:Z

    .line 1072
    sget-boolean v6, Lcom/android/lgesettings/wifi/WifiApEnabler;->mInit:Z

    if-eqz v6, :cond_f

    if-eq v5, v11, :cond_b

    const/4 v6, 0x2

    if-ne v5, v6, :cond_f

    .line 1074
    :cond_b
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 1076
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f0401b9

    invoke-virtual {v3, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mAlertDialogView:Landroid/view/View;

    .line 1078
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f081646

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mAlertDialogView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/lgesettings/wifi/WifiApEnabler$9;

    invoke-direct {v7, p0}, Lcom/android/lgesettings/wifi/WifiApEnabler$9;-><init>(Lcom/android/lgesettings/wifi/WifiApEnabler;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0802e6

    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->pwDialogHandler:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0802e8

    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->pwDialogHandler:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    iput-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 1103
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mAlertDialogView:Landroid/view/View;

    const v7, 0x7f0a0384

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mPassword:Landroid/widget/EditText;

    .line 1107
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mPassword:Landroid/widget/EditText;

    new-array v7, v11, [Landroid/text/InputFilter;

    new-instance v8, Lcom/android/lgesettings/wifi/WifiApEnabler$Utf8ByteLengthFilter;

    const/16 v9, 0x3f

    invoke-direct {v8, p0, v9}, Lcom/android/lgesettings/wifi/WifiApEnabler$Utf8ByteLengthFilter;-><init>(Lcom/android/lgesettings/wifi/WifiApEnabler;I)V

    aput-object v8, v7, v10

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1112
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    const-string v7, "TEL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AU"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1113
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mPassword:Landroid/widget/EditText;

    const/16 v7, 0x12

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 1117
    :cond_c
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ATT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v6

    const-string v7, "US"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1118
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v6, :cond_d

    .line 1119
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mPassword:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v7, v7, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1123
    :cond_d
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mAlertDialogView:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1129
    :cond_e
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v6, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1130
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mAlertDialogView:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1133
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    .line 1138
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 1142
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lcom/android/lgesettings/wifi/WifiApEnabler$10;

    invoke-direct {v7, p0}, Lcom/android/lgesettings/wifi/WifiApEnabler$10;-><init>(Lcom/android/lgesettings/wifi/WifiApEnabler;)V

    const-wide/16 v8, 0x96

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1156
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1158
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    :cond_f
    sget-boolean v6, Lcom/android/lgesettings/wifi/WifiApEnabler;->mDoNotShowAgain:Z

    if-nez v6, :cond_11

    .line 1162
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 1166
    .restart local v3       #inflater:Landroid/view/LayoutInflater;
    const-string v6, "ORG"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v6}, Lcom/android/lgesettings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v6

    if-nez v6, :cond_10

    .line 1167
    const v6, 0x7f040198

    invoke-virtual {v3, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mAlertDialogView:Landroid/view/View;

    .line 1172
    :goto_3
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f081647

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x1010355

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mAlertDialogView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/lgesettings/wifi/WifiApEnabler$11;

    invoke-direct {v7, p0}, Lcom/android/lgesettings/wifi/WifiApEnabler$11;-><init>(Lcom/android/lgesettings/wifi/WifiApEnabler;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f080015

    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->alertDialogHandler:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f080016

    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->alertDialogHandler:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    iput-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 1210
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mAlertDialogView:Landroid/view/View;

    const v7, 0x7f0a002e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1213
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    .line 1214
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1169
    :cond_10
    const v6, 0x7f040195

    invoke-virtual {v3, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mAlertDialogView:Landroid/view/View;

    goto :goto_3

    .line 1216
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    :cond_11
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiApEnabler;->startProvisioningIfNecessary()V

    goto/16 :goto_0

    .line 1222
    .end local v4           #pref_ff:Landroid/content/SharedPreferences;
    :cond_12
    invoke-virtual {p0, v10}, Lcom/android/lgesettings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    goto/16 :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1568
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 1569
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mDialog:Lcom/android/lgesettings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiApDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1570
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mDialog:Lcom/android/lgesettings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiApDialog;->isNewConfig()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1578
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 1579
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1580
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1584
    :goto_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/android/lgesettings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    .line 1587
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1588
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mIscheckedTethering:Z

    sput-boolean v0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mInit:Z

    if-eqz v0, :cond_0

    .line 1589
    const-string v0, "WifiApEnabler"

    const-string v1, "[TetherSettings]    checkProvWithUpsell( ) "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1591
    const-string v1, "com.lge.settings.WifiApEnabler.UpdateTethering"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1592
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1593
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiApEnabler;->checkProvWithUpsell()V

    .line 1597
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiApEnabler;->setInitFalse()V

    .line 1601
    :cond_1
    return-void

    .line 1582
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x2

    const/4 v0, 0x0

    .line 1518
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a0397

    if-ne v1, v2, :cond_4

    .line 1519
    const-string v1, "WifiApEnabler"

    const-string v2, "[YHD] onClick1(View view) : SHOW_DIALOG "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    const-string v1, "ro.build.target_country"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AU"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TEL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1522
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mPassword:Landroid/widget/EditText;

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    or-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 1534
    :goto_1
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1564
    :cond_0
    :goto_2
    return-void

    .line 1522
    :cond_1
    const/16 v0, 0x10

    goto :goto_0

    .line 1529
    :cond_2
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mPassword:Landroid/widget/EditText;

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x90

    :goto_3
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_1

    :cond_3
    const/16 v0, 0x80

    goto :goto_3

    .line 1537
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a002e

    if-ne v1, v2, :cond_0

    .line 1538
    const-string v1, "WifiApEnabler"

    const-string v2, "[YHD] onClick1(View view) : DO_NOT_SHOW_AGAIN "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1540
    sput-boolean v4, Lcom/android/lgesettings/wifi/WifiApEnabler;->mDoNotShowAgain:Z

    .line 1541
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const-string v2, "NOT_SHOW"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1543
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1544
    const-string v2, "not_show"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1545
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1547
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1548
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1562
    :cond_5
    :goto_4
    const-string v0, "WifiApEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[YHD] mDoNotShowAgain = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/lgesettings/wifi/WifiApEnabler;->mDoNotShowAgain:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1551
    :cond_6
    sput-boolean v0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mDoNotShowAgain:Z

    .line 1552
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const-string v2, "NOT_SHOW"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1554
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1555
    const-string v2, "not_show"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1556
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1558
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1559
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_4
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 1281
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 433
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 434
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 424
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiApEnabler;->resume_switch()V

    .line 427
    :cond_0
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiApEnabler;->enableWifiSwitch()V

    .line 428
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 429
    return-void
.end method

.method public resume_switch()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 820
    const-string v6, "WifiApEnabler"

    const-string v7, "resume_switch()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v3

    .line 823
    .local v3, wifiApState:I
    const/16 v6, 0xd

    if-ne v3, v6, :cond_2

    move v2, v4

    .line 824
    .local v2, isEnabled:Z
    :goto_0
    const/16 v6, 0xb

    if-ne v3, v6, :cond_3

    move v1, v4

    .line 825
    .local v1, isDisabled:Z
    :goto_1
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 827
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v6, "upsell_svc_started"

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_0

    .line 828
    const-string v6, "upsell_check_ongoing"

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 831
    :cond_0
    sget-boolean v6, Lcom/android/lgesettings/wifi/WifiApEnabler;->mTimerSoftApOn:Z

    if-nez v6, :cond_1

    const-string v6, "upsell_check_ongoing"

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_4

    .line 833
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/lgesettings/wifi/WifiApEnabler;->setSwitchChecked(Z)V

    .line 854
    :goto_2
    return-void

    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #isDisabled:Z
    .end local v2           #isEnabled:Z
    :cond_2
    move v2, v5

    .line 823
    goto :goto_0

    .restart local v2       #isEnabled:Z
    :cond_3
    move v1, v5

    .line 824
    goto :goto_1

    .line 835
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v1       #isDisabled:Z
    :cond_4
    packed-switch v3, :pswitch_data_0

    .line 844
    const-string v6, "WifiApEnabler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSwitch(), wifiApState = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    const-string v6, "WifiApEnabler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSwitch(), mUpsellSoftApOn = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/android/lgesettings/wifi/WifiApEnabler;->mUpsellSoftApOn:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    sget-boolean v6, Lcom/android/lgesettings/wifi/WifiApEnabler;->mUpsellSoftApOn:Z

    if-eqz v6, :cond_5

    .line 847
    invoke-direct {p0, v4}, Lcom/android/lgesettings/wifi/WifiApEnabler;->setSwitchChecked(Z)V

    goto :goto_2

    .line 838
    :pswitch_0
    invoke-direct {p0, v4}, Lcom/android/lgesettings/wifi/WifiApEnabler;->setSwitchChecked(Z)V

    goto :goto_2

    .line 841
    :pswitch_1
    invoke-direct {p0, v4}, Lcom/android/lgesettings/wifi/WifiApEnabler;->setSwitchChecked(Z)V

    goto :goto_2

    .line 849
    :cond_5
    invoke-direct {p0, v5}, Lcom/android/lgesettings/wifi/WifiApEnabler;->setSwitchChecked(Z)V

    goto :goto_2

    .line 835
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setFirstFlagPreference(Z)V
    .locals 5
    .parameter "value"

    .prologue
    .line 2044
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const-string v3, "FIRST_FLAG"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2045
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2046
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "f_flag"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2047
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2048
    return-void
.end method

.method public setInitFalse()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1285
    sput-boolean v4, Lcom/android/lgesettings/wifi/WifiApEnabler;->mInit:Z

    .line 1286
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const-string v3, "FIRST_FLAG"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1288
    .local v1, pref_ff:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1289
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "f_flag"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1290
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1291
    return-void
.end method

.method public setSoftapEnabled(Z)V
    .locals 8
    .parameter "enable"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 622
    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 624
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 625
    .local v2, wifiState:I
    const-string v5, "WifiApEnabler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSoftapEnabled(),wifiState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    const/4 v5, 0x2

    if-eq v2, v5, :cond_0

    const/4 v5, 0x3

    if-ne v2, v5, :cond_1

    .line 627
    :cond_0
    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 628
    const-string v5, "wifi_saved_state"

    invoke-static {v0, v5, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 631
    :cond_1
    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, p1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 634
    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 642
    :cond_2
    if-nez p1, :cond_4

    .line 643
    const/4 v1, 0x0

    .line 645
    .local v1, wifiSavedState:I
    :try_start_0
    const-string v5, "wifi_saved_state"

    invoke-static {v0, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 649
    :goto_0
    if-ne v1, v4, :cond_3

    .line 650
    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 651
    const-string v4, "wifi_saved_state"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 670
    .end local v1           #wifiSavedState:I
    :cond_3
    :goto_1
    return-void

    .line 654
    :cond_4
    const-string v5, "KR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 655
    const-string v5, "WifiApEnabler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " condition1  == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const-string v5, "WifiApEnabler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " condition2  == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v7

    if-nez v7, :cond_5

    move v3, v4

    :cond_5
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    invoke-static {}, Lcom/android/lgesettings/wifi/WifiApEnabler;->checkLGU()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v3

    if-nez v3, :cond_7

    .line 661
    :cond_6
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const v5, 0x7f0815e5

    invoke-static {v3, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 665
    :cond_7
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const v5, 0x7f081370

    invoke-static {v3, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 646
    .restart local v1       #wifiSavedState:I
    :catch_0
    move-exception v5

    goto/16 :goto_0
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 11
    .parameter "switch_"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 911
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v8, p1, :cond_1

    .line 992
    :cond_0
    :goto_0
    return-void

    .line 914
    :cond_1
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 915
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    .line 916
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v8, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 918
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    new-instance v9, Lcom/android/lgesettings/wifi/WifiApEnabler$8;

    invoke-direct {v9, p0}, Lcom/android/lgesettings/wifi/WifiApEnabler$8;-><init>(Lcom/android/lgesettings/wifi/WifiApEnabler;)V

    invoke-virtual {v8, v9}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 925
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v5

    .line 926
    .local v5, wifiApState:I
    const/16 v8, 0xd

    if-ne v5, v8, :cond_6

    move v4, v6

    .line 927
    .local v4, isEnabled:Z
    :goto_1
    const/16 v8, 0xb

    if-ne v5, v8, :cond_7

    move v3, v6

    .line 929
    .local v3, isDisabled:Z
    :goto_2
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v8

    const-string v9, "US"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v8

    const-string v9, "TMO"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 930
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 931
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v8, "upsell_svc_started"

    invoke-static {v0, v8, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_2

    .line 932
    const-string v8, "upsell_check_ongoing"

    invoke-static {v0, v8, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 935
    :cond_2
    sget-boolean v8, Lcom/android/lgesettings/wifi/WifiApEnabler;->mTimerSoftApOn:Z

    if-nez v8, :cond_3

    const-string v8, "upsell_check_ongoing"

    invoke-static {v0, v8, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_8

    .line 937
    :cond_3
    invoke-direct {p0, v6}, Lcom/android/lgesettings/wifi/WifiApEnabler;->setSwitchChecked(Z)V

    .line 938
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v8, v7}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 970
    .end local v0           #cr:Landroid/content/ContentResolver;
    :goto_3
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "airplane_mode_on"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_f

    move v2, v6

    .line 972
    .local v2, isAirplaneMode:Z
    :goto_4
    if-eqz v2, :cond_4

    .line 974
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 979
    :cond_4
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v6

    const-string v8, "US"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    const-string v8, "TMO"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 980
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    .line 981
    .local v1, currentSimStatus:I
    const/4 v6, 0x5

    if-eq v1, v6, :cond_5

    .line 982
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setChecked(Z)V

    .line 988
    .end local v1           #currentSimStatus:I
    :cond_5
    sget-boolean v6, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v6, :cond_0

    .line 989
    invoke-static {}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->getInstance()Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;

    move-result-object v6

    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v7}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->setWifiApEnablerMenu(Landroid/widget/Switch;)Z

    goto/16 :goto_0

    .end local v2           #isAirplaneMode:Z
    .end local v3           #isDisabled:Z
    .end local v4           #isEnabled:Z
    :cond_6
    move v4, v7

    .line 926
    goto/16 :goto_1

    .restart local v4       #isEnabled:Z
    :cond_7
    move v3, v7

    .line 927
    goto/16 :goto_2

    .line 940
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v3       #isDisabled:Z
    :cond_8
    packed-switch v5, :pswitch_data_0

    .line 951
    const-string v8, "WifiApEnabler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setSwitch(), wifiApState = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    const-string v8, "WifiApEnabler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setSwitch(), mUpsellSoftApOn = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/android/lgesettings/wifi/WifiApEnabler;->mUpsellSoftApOn:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    sget-boolean v8, Lcom/android/lgesettings/wifi/WifiApEnabler;->mUpsellSoftApOn:Z

    if-eqz v8, :cond_9

    .line 954
    invoke-direct {p0, v6}, Lcom/android/lgesettings/wifi/WifiApEnabler;->setSwitchChecked(Z)V

    .line 955
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v8, v7}, Landroid/widget/Switch;->setEnabled(Z)V

    goto/16 :goto_3

    .line 943
    :pswitch_0
    invoke-direct {p0, v6}, Lcom/android/lgesettings/wifi/WifiApEnabler;->setSwitchChecked(Z)V

    .line 944
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v8, v7}, Landroid/widget/Switch;->setEnabled(Z)V

    goto/16 :goto_3

    .line 947
    :pswitch_1
    invoke-direct {p0, v6}, Lcom/android/lgesettings/wifi/WifiApEnabler;->setSwitchChecked(Z)V

    .line 948
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v8, v6}, Landroid/widget/Switch;->setEnabled(Z)V

    goto/16 :goto_3

    .line 957
    :cond_9
    invoke-direct {p0, v4}, Lcom/android/lgesettings/wifi/WifiApEnabler;->setSwitchChecked(Z)V

    .line 958
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v8, v6}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 959
    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    if-nez v4, :cond_a

    if-eqz v3, :cond_b

    :cond_a
    move v8, v6

    :goto_5
    invoke-virtual {v9, v8}, Landroid/widget/Switch;->setEnabled(Z)V

    goto/16 :goto_3

    :cond_b
    move v8, v7

    goto :goto_5

    .line 965
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_c
    invoke-direct {p0, v4}, Lcom/android/lgesettings/wifi/WifiApEnabler;->setSwitchChecked(Z)V

    .line 966
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v8, v6}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 967
    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    if-nez v4, :cond_d

    if-eqz v3, :cond_e

    :cond_d
    move v8, v6

    :goto_6
    invoke-virtual {v9, v8}, Landroid/widget/Switch;->setEnabled(Z)V

    goto/16 :goto_3

    :cond_e
    move v8, v7

    goto :goto_6

    :cond_f
    move v2, v7

    .line 970
    goto/16 :goto_4

    .line 940
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public showNotavailableDataNetworkPopup()V
    .locals 3

    .prologue
    .line 2051
    const-string v0, "WifiApEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!mConnMgr.getMobileDataEnabled()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2053
    const v1, 0x7f080291

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2054
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 2055
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2056
    const v1, 0x7f081672

    new-instance v2, Lcom/android/lgesettings/wifi/WifiApEnabler$23;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/wifi/WifiApEnabler$23;-><init>(Lcom/android/lgesettings/wifi/WifiApEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2065
    const v1, 0x7f0812bc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2066
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2067
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2068
    return-void
.end method

.method public updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3
    .parameter "wifiConfig"

    .prologue
    .line 673
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const v2, 0x1040434

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 678
    .local v0, s:Ljava/lang/String;
    return-void
.end method
